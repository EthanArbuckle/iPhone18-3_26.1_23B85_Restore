@interface UpNextQueueRowCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UpNextQueueRowCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(UpNextQueueRowCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(UpNextQueueRowCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v6 = [v5 accessibilityLabel];
  v10 = _accessibilityReplaceStylsticBulletsForSpeaking(v4, v7);
  v8 = __UIAXStringForVariables();

  return v8;
}

@end