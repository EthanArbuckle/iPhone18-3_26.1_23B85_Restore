@interface TodayActivityTileAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation TodayActivityTileAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.TodayActivityTile" hasSwiftField:@"moveLabelPair" withSwiftType:"DayViewTitleAndValueLabelPair"];
  [v3 validateClass:@"FitnessApp.TodayActivityTile" hasSwiftField:@"exerciseLabelPair" withSwiftType:"DayViewTitleAndValueLabelPair"];
  [v3 validateClass:@"FitnessApp.TodayActivityTile" hasSwiftField:@"standLabelPair" withSwiftType:"DayViewTitleAndValueLabelPair"];
  [v3 validateClass:@"FitnessApp.TodayActivityTile" hasSwiftField:@"ringsView" withSwiftType:"ARUIRingsView"];
  [v3 validateClass:@"FitnessApp.TodayActivityTile" hasSwiftField:@"stepsLabelPair" withSwiftType:"DayViewTitleAndValueLabelPair"];
  [v3 validateClass:@"FitnessApp.TodayActivityTile" hasSwiftField:@"distanceLabelPair" withSwiftType:"DayViewTitleAndValueLabelPair"];
}

- (id)accessibilityElements
{
  v3 = [(TodayActivityTileAccessibility *)self safeSwiftValueForKey:@"moveLabelPair"];
  v4 = [(TodayActivityTileAccessibility *)self safeSwiftValueForKey:@"exerciseLabelPair"];
  v5 = [(TodayActivityTileAccessibility *)self safeSwiftValueForKey:@"standLabelPair"];
  v6 = [(TodayActivityTileAccessibility *)self safeSwiftValueForKey:@"ringsView"];
  v7 = [(TodayActivityTileAccessibility *)self safeSwiftValueForKey:@"stepsLabelPair"];
  v8 = [(TodayActivityTileAccessibility *)self safeSwiftValueForKey:@"distanceLabelPair"];
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:6];

  return v9;
}

@end