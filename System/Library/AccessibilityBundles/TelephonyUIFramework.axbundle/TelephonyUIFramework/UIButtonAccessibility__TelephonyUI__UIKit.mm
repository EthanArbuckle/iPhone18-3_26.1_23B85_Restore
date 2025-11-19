@interface UIButtonAccessibility__TelephonyUI__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonAccessibility__TelephonyUI__UIKit

- (BOOL)isAccessibilityElement
{
  v9.receiver = self;
  v9.super_class = UIButtonAccessibility__TelephonyUI__UIKit;
  v3 = [(UIButtonAccessibility__TelephonyUI__UIKit *)&v9 isAccessibilityElement];
  v4 = [(UIButtonAccessibility__TelephonyUI__UIKit *)self _accessibilityValueForKey:@"IsTPButtonBarButton"];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v6 = [v5 currentTitle];
    if ([v6 length])
    {
      v3 = 1;
    }

    else
    {
      v7 = [v5 currentImage];
      v3 = v7 != 0;
    }
  }

  return v3;
}

@end