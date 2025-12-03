@interface CHWorkoutDetailExpandingHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CHWorkoutDetailExpandingHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailExpandingHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailExpandingHeaderView" hasInstanceVariable:@"_expandButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CHWorkoutDetailExpandingHeaderView" hasInstanceVariable:@"_expanded" withType:"B"];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CHWorkoutDetailExpandingHeaderViewAccessibility *)self safeUIViewForKey:@"_expandButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CHWorkoutDetailExpandingHeaderViewAccessibility *)self safeBoolForKey:@"_expanded"])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end