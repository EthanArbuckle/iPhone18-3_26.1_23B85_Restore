@interface UIButtonAccessibility__TelephonyUI__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonAccessibility__TelephonyUI__UIKit

- (BOOL)isAccessibilityElement
{
  v9.receiver = self;
  v9.super_class = UIButtonAccessibility__TelephonyUI__UIKit;
  isAccessibilityElement = [(UIButtonAccessibility__TelephonyUI__UIKit *)&v9 isAccessibilityElement];
  v4 = [(UIButtonAccessibility__TelephonyUI__UIKit *)self _accessibilityValueForKey:@"IsTPButtonBarButton"];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    currentTitle = [v5 currentTitle];
    if ([currentTitle length])
    {
      isAccessibilityElement = 1;
    }

    else
    {
      currentImage = [v5 currentImage];
      isAccessibilityElement = currentImage != 0;
    }
  }

  return isAccessibilityElement;
}

@end