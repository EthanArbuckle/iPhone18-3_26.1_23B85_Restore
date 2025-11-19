@interface WorkoutPlanBannerCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WorkoutPlanBannerCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = WorkoutPlanBannerCellAccessibility;
  [(WorkoutPlanBannerCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(WorkoutPlanBannerCellAccessibility *)self safeValueForKey:@"contentView"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

@end