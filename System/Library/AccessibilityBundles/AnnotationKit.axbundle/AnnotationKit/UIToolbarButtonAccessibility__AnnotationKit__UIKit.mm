@interface UIToolbarButtonAccessibility__AnnotationKit__UIKit
- (id)accessibilityLabel;
@end

@implementation UIToolbarButtonAccessibility__AnnotationKit__UIKit

- (id)accessibilityLabel
{
  v12 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 allTargets];
  v5 = [v4 anyObject];
  v6 = [v5 safeIntegerForKey:@"tag"];

  v11.receiver = self;
  v11.super_class = UIToolbarButtonAccessibility__AnnotationKit__UIKit;
  v7 = [(UIToolbarButtonAccessibility__AnnotationKit__UIKit *)&v11 accessibilityLabel];
  v8 = v6 - 764014;
  if (v6 - 764014) <= 6 && ((0x77u >> v8))
  {
    v9 = accessibilityLocalizedString(off_29F29D5F8[v8]);

    v7 = v9;
  }

  return v7;
}

@end