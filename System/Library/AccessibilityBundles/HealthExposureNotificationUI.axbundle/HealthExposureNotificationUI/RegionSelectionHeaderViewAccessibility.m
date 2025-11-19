@interface RegionSelectionHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation RegionSelectionHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = RegionSelectionHeaderViewAccessibility;
  [(RegionSelectionHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(RegionSelectionHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_2];
}

@end