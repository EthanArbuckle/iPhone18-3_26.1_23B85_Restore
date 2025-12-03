@interface PUFilterToolControllerAccessibility
- (id)centerToolbarView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUFilterToolControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PUFilterToolControllerAccessibility;
  [(PUFilterToolControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUFilterToolControllerAccessibility *)self safeUIViewForKey:@"centerToolbarView"];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_7];
}

- (id)centerToolbarView
{
  v4.receiver = self;
  v4.super_class = PUFilterToolControllerAccessibility;
  centerToolbarView = [(PUFilterToolControllerAccessibility *)&v4 centerToolbarView];
  [centerToolbarView _setAccessibilityTraitsBlock:&__block_literal_global_484_1];

  return centerToolbarView;
}

@end