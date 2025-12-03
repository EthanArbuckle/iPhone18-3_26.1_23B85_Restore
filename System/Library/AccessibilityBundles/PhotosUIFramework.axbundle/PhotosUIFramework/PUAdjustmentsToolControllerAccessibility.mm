@interface PUAdjustmentsToolControllerAccessibility
- (id)centerToolbarView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUAdjustmentsToolControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolControllerAccessibility;
  [(PUAdjustmentsToolControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUAdjustmentsToolControllerAccessibility *)self safeUIViewForKey:@"centerToolbarView"];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_4];
}

- (id)centerToolbarView
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolControllerAccessibility;
  centerToolbarView = [(PUAdjustmentsToolControllerAccessibility *)&v4 centerToolbarView];
  [centerToolbarView _setAccessibilityTraitsBlock:&__block_literal_global_484_0];

  return centerToolbarView;
}

@end