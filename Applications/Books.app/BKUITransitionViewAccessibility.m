@interface BKUITransitionViewAccessibility
- (BOOL)accessibilityViewIsModal;
@end

@implementation BKUITransitionViewAccessibility

- (BOOL)accessibilityViewIsModal
{
  v8.receiver = self;
  v8.super_class = BKUITransitionViewAccessibility;
  v3 = [(BKUITransitionViewAccessibility *)&v8 accessibilityViewIsModal];
  v4 = [(BKUITransitionViewAccessibility *)self accessibilityIdentifier];
  v5 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v6 = [v4 isEqualToString:v5];

  return (v6 | v3) & 1;
}

@end