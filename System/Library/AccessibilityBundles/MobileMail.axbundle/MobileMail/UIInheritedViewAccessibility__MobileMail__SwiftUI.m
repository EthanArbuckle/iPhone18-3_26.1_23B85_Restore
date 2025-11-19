@interface UIInheritedViewAccessibility__MobileMail__SwiftUI
- (BOOL)_accessibilityOverridesInvalidFrames;
- (CGRect)accessibilityFrame;
@end

@implementation UIInheritedViewAccessibility__MobileMail__SwiftUI

- (BOOL)_accessibilityOverridesInvalidFrames
{
  v7.receiver = self;
  v7.super_class = UIInheritedViewAccessibility__MobileMail__SwiftUI;
  [(UIInheritedViewAccessibility__MobileMail__SwiftUI *)&v7 accessibilityFrame];
  result = 1;
  if (fabs(v3) >= 0.001 && fabs(v4) >= 0.001 && v3 > 0.0 && v4 > 0.0)
  {
    v6.receiver = self;
    v6.super_class = UIInheritedViewAccessibility__MobileMail__SwiftUI;
    return [(UIInheritedViewAccessibility__MobileMail__SwiftUI *)&v6 _accessibilityOverridesInvalidFrames];
  }

  return result;
}

- (CGRect)accessibilityFrame
{
  v21.receiver = self;
  v21.super_class = UIInheritedViewAccessibility__MobileMail__SwiftUI;
  [(UIInheritedViewAccessibility__MobileMail__SwiftUI *)&v21 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  if (fabs(v2) < 0.001 || fabs(v3) < 0.001 || v2 <= 0.0 || v3 <= 0.0)
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = [v10 superview];
    v12 = v11;
    if (v11)
    {
      [v11 accessibilityFrame];
      v5 = v13;
      v7 = v14;
      v8 = v15;
      v9 = v16;
    }
  }

  v17 = v5;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end