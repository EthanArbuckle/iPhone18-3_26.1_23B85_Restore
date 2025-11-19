@interface JSSettingsContainerViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation JSSettingsContainerViewControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v2 = v4;
  AXPerformSafeBlock();

  return 1;
}

void __76__JSSettingsContainerViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

@end