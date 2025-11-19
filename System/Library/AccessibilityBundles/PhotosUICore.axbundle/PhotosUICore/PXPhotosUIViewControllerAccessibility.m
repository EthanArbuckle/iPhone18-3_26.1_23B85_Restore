@interface PXPhotosUIViewControllerAccessibility
@end

@implementation PXPhotosUIViewControllerAccessibility

void __67__PXPhotosUIViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"presentingViewController"];
  v3 = __UIAccessibilitySafeClass();

  [v3 dismissViewControllerAnimated:1 completion:0];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

@end