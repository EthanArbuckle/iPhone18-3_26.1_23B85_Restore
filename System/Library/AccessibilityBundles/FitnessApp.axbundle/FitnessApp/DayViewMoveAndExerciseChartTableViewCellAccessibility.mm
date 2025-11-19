@interface DayViewMoveAndExerciseChartTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation DayViewMoveAndExerciseChartTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.DayViewMoveAndExerciseChartTableViewCell" hasInstanceMethod:@"chartView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.DayViewMoveAndExerciseChartTableViewCell" hasInstanceMethod:@"auxiliaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.DayViewMoveAndExerciseChartTableViewCell" hasInstanceMethod:@"labelPair" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.DayViewTitleAndValueLabelPair"];
}

- (id)accessibilityElements
{
  v3 = [(DayViewMoveAndExerciseChartTableViewCellAccessibility *)self safeValueForKey:@"labelPair"];
  [v3 setIsAccessibilityElement:1];
  v4 = [v3 _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
  [v3 setAccessibilityLabel:v4];

  [v3 _accessibilityAddTrait:UIAccessibilityTraitHeader];
  v5 = [(DayViewMoveAndExerciseChartTableViewCellAccessibility *)self safeValueForKey:@"auxiliaryLabel"];
  v6 = [(DayViewMoveAndExerciseChartTableViewCellAccessibility *)self safeValueForKey:@"chartView"];
  v7 = [(DayViewMoveAndExerciseChartTableViewCellAccessibility *)self safeValueForKey:@"editGoalButton"];
  v8 = accessibilityLocalizedString(@"edit.goal");
  [v7 setAccessibilityLabel:v8];

  v9 = [NSArray axArrayByIgnoringNilElementsWithCount:4, v3, v7, v6, v5];

  return v9;
}

@end