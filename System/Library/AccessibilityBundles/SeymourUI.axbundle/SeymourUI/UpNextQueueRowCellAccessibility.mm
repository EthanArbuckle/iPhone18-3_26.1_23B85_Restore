@interface UpNextQueueRowCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation UpNextQueueRowCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(UpNextQueueRowCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(UpNextQueueRowCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v10 = _accessibilityReplaceStylsticBulletsForSpeaking(accessibilityLabel, v7);
  v8 = __UIAXStringForVariables();

  return v8;
}

@end