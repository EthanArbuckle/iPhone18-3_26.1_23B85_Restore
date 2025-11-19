@interface DayViewActivityRingsTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityPath;
@end

@implementation DayViewActivityRingsTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ARUIRingsView"];
  [v3 validateClass:@"FitnessApp.DayViewActivityRingsTableViewCell" hasSwiftField:@"ringsView" withSwiftType:"ARUIRingsView"];
  [v3 validateClass:@"FitnessApp.DayViewActivityRingsTableViewCell" hasSwiftField:@"pauseRingsDescriptionLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"FitnessApp.DayViewActivityRingsTableViewCell" hasSwiftField:@"pauseRingsResumeDateLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(DayViewActivityRingsTableViewCellAccessibility *)self safeSwiftValueForKey:@"ringsView"];
  v4 = [(DayViewActivityRingsTableViewCellAccessibility *)self safeSwiftValueForKey:@"pauseRingsDescriptionLabel"];
  v5 = [(DayViewActivityRingsTableViewCellAccessibility *)self safeSwiftValueForKey:@"pauseRingsResumeDateLabel"];
  v6 = [NSArray axArrayByIgnoringNilElementsWithCount:3, v3, v4, v5];
  v7 = AXLabelForElements();

  return v7;
}

- (CGRect)accessibilityFrame
{
  v2 = [(DayViewActivityRingsTableViewCellAccessibility *)self safeSwiftValueForKey:@"ringsView"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)accessibilityPath
{
  v2 = [(DayViewActivityRingsTableViewCellAccessibility *)self safeSwiftValueForKey:@"ringsView"];
  v3 = [v2 _accessibilityCirclePathBasedOnBoundsWidth];

  return v3;
}

@end