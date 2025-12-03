@interface RoutePlanningOverviewViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didTapGoButtonForRouteOverviewCell:(id)cell;
@end

@implementation RoutePlanningOverviewViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RoutePlanningOverviewViewController" hasInstanceMethod:@"didTapGoButtonForRouteOverviewCell:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"RoutePlanningOverviewViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ContaineeViewController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RoutePlanningOverviewViewController" isKindOfClass:@"ContaineeViewController"];
  [validationsCopy validateClass:@"CardView"];
}

- (void)didTapGoButtonForRouteOverviewCell:(id)cell
{
  v3.receiver = self;
  v3.super_class = RoutePlanningOverviewViewControllerAccessibility;
  [(RoutePlanningOverviewViewControllerAccessibility *)&v3 didTapGoButtonForRouteOverviewCell:cell];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = RoutePlanningOverviewViewControllerAccessibility;
  [(RoutePlanningOverviewViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(RoutePlanningOverviewViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = AXMapsLocString(@"collection.routes.label");
  [v3 setAccessibilityLabel:v4];

  v5 = [(RoutePlanningOverviewViewControllerAccessibility *)self safeValueForKey:@"contentView"];
  v6 = NSClassFromString(&cfstr_Cardview.isa);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __94__RoutePlanningOverviewViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v9[4] = v6;
  v7 = [v5 _accessibilityFindViewAncestor:v9 startWithSelf:0];
  v8 = AXMapsLocString(@"group.routeplanner.label");
  [v7 setAccessibilityLabel:v8];
}

@end