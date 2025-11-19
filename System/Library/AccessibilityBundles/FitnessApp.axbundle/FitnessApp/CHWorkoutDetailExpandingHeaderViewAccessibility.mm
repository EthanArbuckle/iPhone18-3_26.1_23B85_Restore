@interface CHWorkoutDetailExpandingHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CHWorkoutDetailExpandingHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutDetailExpandingHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailExpandingHeaderView" hasInstanceVariable:@"_expandButton" withType:"UIButton"];
  [v3 validateClass:@"CHWorkoutDetailExpandingHeaderView" hasInstanceVariable:@"_expanded" withType:"B"];
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