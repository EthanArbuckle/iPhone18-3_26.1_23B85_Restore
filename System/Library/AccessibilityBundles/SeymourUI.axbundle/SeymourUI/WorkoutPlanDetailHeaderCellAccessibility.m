@interface WorkoutPlanDetailHeaderCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WorkoutPlanDetailHeaderCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = WorkoutPlanDetailHeaderCellAccessibility;
  [(WorkoutPlanDetailHeaderCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(WorkoutPlanDetailHeaderCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end