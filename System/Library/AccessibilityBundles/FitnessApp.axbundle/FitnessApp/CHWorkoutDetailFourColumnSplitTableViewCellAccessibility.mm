@interface CHWorkoutDetailFourColumnSplitTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CHWorkoutDetailFourColumnSplitTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSplitTableViewCell" hasInstanceMethod:@"configureWithWorkout:workoutActivity:unit:split:splitIndex:splitDistance:includeHeartRate:isLastCell:dataCalculator:formattingManager:" withFullSignature:{"v", "@", "@", "@", "@", "q", "d", "B", "B", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSplitTableViewCell" hasInstanceMethod:@"configureWithSwimmingSplit:splitIndex:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSplitTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKWorkoutActivity" hasInstanceMethod:@"fiui_activityType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKWorkout" hasInstanceMethod:@"fiui_activityType" withFullSignature:{"@", 0}];
}

uint64_t __194__CHWorkoutDetailFourColumnSplitTableViewCellAccessibility_configureWithWorkout_workoutActivity_unit_split_splitIndex_splitDistance_includeHeartRate_isLastCell_dataCalculator_formattingManager___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = FIUIPaceFormatForWorkoutActivityType();
  *(*(*(a1 + 40) + 8) + 24) = result == 4;
  return result;
}

id __194__CHWorkoutDetailFourColumnSplitTableViewCellAccessibility_configureWithWorkout_workoutActivity_unit_split_splitIndex_splitDistance_includeHeartRate_isLastCell_dataCalculator_formattingManager___block_invoke_2(uint64_t a1)
{
  v2 = accessibilityLocalizedString(@"heart.rate.value");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained text];
  v5 = v4;
  if (v4)
  {
    v6 = [NSString localizedStringWithFormat:v2, v4];
  }

  else
  {
    v7 = accessibilityLocalizedString(@"no.data");
    v6 = [NSString localizedStringWithFormat:v2, v7];
  }

  return v6;
}

@end