@interface GKDashboardSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)awakeFromNib;
@end

@implementation GKDashboardSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKDashboardSectionHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKDashboardSectionHeaderView" hasInstanceMethod:@"awakeFromNib" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = GKDashboardSectionHeaderViewAccessibility;
  [(GKDashboardSectionHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(GKDashboardSectionHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_6];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKDashboardSectionHeaderViewAccessibility;
  [(GKDashboardSectionHeaderViewAccessibility *)&v3 awakeFromNib];
  [(GKDashboardSectionHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end