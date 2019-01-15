//
//  KMUIViewExtension.swift
//  KMUIViewExtension
//
//  Created by 南京兵 on 2019/01/15.
//  Copyright © 2019 kyohei.minami. All rights reserved.
//

import UIKit

public extension UIView {
  /// 枠線の色
  @IBInspectable public var borderColor: UIColor? {
    get {
      return layer.borderColor.map { UIColor(cgColor: $0) }
    }
    set {
      layer.borderColor = newValue?.cgColor
    }
  }
  
  /// 枠線のWidth
  @IBInspectable public var borderWidth: CGFloat {
    get {
      return layer.borderWidth
    }
    set {
      layer.borderWidth = newValue
    }
  }
  
  /// 角丸の大きさ
  @IBInspectable public var cornerRadius: CGFloat {
    get {
      return layer.cornerRadius
    }
    set {
      layer.cornerRadius = newValue
      layer.masksToBounds = newValue > 0
    }
  }
  
  /// 影の色
  @IBInspectable public var shadowColor: UIColor? {
    get {
      return layer.shadowColor.map { UIColor(cgColor: $0) }
    }
    set {
      layer.shadowColor = newValue?.cgColor
      layer.masksToBounds = false
    }
  }
  
  /// 影の透明度
  @IBInspectable public var shadowAlpha: Float {
    get {
      return layer.shadowOpacity
    }
    set {
      layer.shadowOpacity = newValue
    }
  }
  
  /// 影のオフセット
  @IBInspectable public var shadowOffset: CGSize {
    get {
      return layer.shadowOffset
    }
    set {
      layer.shadowOffset = newValue
    }
  }
  
  /// 影のぼかし量
  @IBInspectable public var shadowRadius: CGFloat {
    get {
      return layer.shadowRadius
    }
    set {
      layer.shadowRadius = newValue
    }
  }
  
}
