@interface DocumentRequestViewControllerAccessibility
- (id)_accessibilityElementToFocusForAppearanceScreenChange;
@end

@implementation DocumentRequestViewControllerAccessibility

- (id)_accessibilityElementToFocusForAppearanceScreenChange
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 navigationController];
  v4 = [v3 navigationBar];
  v5 = [v4 accessibilityElements];
  v6 = [v5 firstObject];

  return v6;
}

@end