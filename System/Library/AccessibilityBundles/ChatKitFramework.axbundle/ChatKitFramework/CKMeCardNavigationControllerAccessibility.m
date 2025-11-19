@interface CKMeCardNavigationControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation CKMeCardNavigationControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return 1;
}

@end