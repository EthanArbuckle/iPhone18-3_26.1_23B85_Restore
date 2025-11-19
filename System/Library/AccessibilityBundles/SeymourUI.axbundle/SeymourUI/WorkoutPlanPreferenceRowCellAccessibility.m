@interface WorkoutPlanPreferenceRowCellAccessibility
- (id)accessibilityLabel;
@end

@implementation WorkoutPlanPreferenceRowCellAccessibility

- (id)accessibilityLabel
{
  v2 = UIAXStringForAllChildren();
  v5 = accessibilityLocalizedString(@"add.button");
  v3 = __UIAXStringForVariables();

  return v3;
}

@end