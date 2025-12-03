@interface BKUITransitionViewAccessibility
- (BOOL)accessibilityViewIsModal;
@end

@implementation BKUITransitionViewAccessibility

- (BOOL)accessibilityViewIsModal
{
  v8.receiver = self;
  v8.super_class = BKUITransitionViewAccessibility;
  accessibilityViewIsModal = [(BKUITransitionViewAccessibility *)&v8 accessibilityViewIsModal];
  accessibilityIdentifier = [(BKUITransitionViewAccessibility *)self accessibilityIdentifier];
  v5 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v6 = [accessibilityIdentifier isEqualToString:v5];

  return (v6 | accessibilityViewIsModal) & 1;
}

@end