@interface CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutDetailFourColumnIntervalTableViewCell" hasInstanceMethod:@"configureWithInterval:index:workout:activityType:activityMoveMode:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "@", "q", "B", "@", 0}];
  [v3 validateClass:@"CHWorkoutDetailFourColumnIntervalTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsDistanceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"fitnessUIFormattingManager" withFullSignature:{"@", 0}];
}

id __158__CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility_configureWithInterval_index_workout_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) supportsDistanceForWorkout:*(a1 + 40) workoutActivity:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __158__CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility_configureWithInterval_index_workout_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = FIUIPaceFormatForWorkoutActivityType();
  *(*(*(a1 + 40) + 8) + 24) = result == 4;
  return result;
}

@end