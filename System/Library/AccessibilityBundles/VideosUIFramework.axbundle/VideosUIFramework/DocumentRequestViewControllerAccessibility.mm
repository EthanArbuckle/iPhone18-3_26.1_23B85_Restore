@interface DocumentRequestViewControllerAccessibility
- (id)_accessibilityElementToFocusForAppearanceScreenChange;
@end

@implementation DocumentRequestViewControllerAccessibility

- (id)_accessibilityElementToFocusForAppearanceScreenChange
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  navigationController = [v2 navigationController];
  navigationBar = [navigationController navigationBar];
  accessibilityElements = [navigationBar accessibilityElements];
  firstObject = [accessibilityElements firstObject];

  return firstObject;
}

@end