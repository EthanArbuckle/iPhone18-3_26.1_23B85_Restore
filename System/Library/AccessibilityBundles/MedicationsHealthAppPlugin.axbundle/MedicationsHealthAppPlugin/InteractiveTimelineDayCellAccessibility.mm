@interface InteractiveTimelineDayCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation InteractiveTimelineDayCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MedicationsHealthAppPlugin.InteractiveTimelineDayCell" hasInstanceMethod:@"startDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MedicationsHealthAppPlugin.InteractiveTimelineDayCell" hasSwiftField:@"timelineDay" withSwiftType:"TimelineDay"];
  [validationsCopy validateSwiftStruct:@"MedicationsHealthAppPlugin.TimelineDay" hasSwiftField:@"logIndicatorAppearance" withSwiftType:"TimelineLogIndicatorAppearance"];
}

- (id)accessibilityLabel
{
  v2 = MEMORY[0x29EDB9F78];
  v3 = [(InteractiveTimelineDayCellAccessibility *)self safeValueForKey:@"startDate"];
  v4 = [v2 localizedStringFromDate:v3 dateStyle:2 timeStyle:0];

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(InteractiveTimelineDayCellAccessibility *)self safeSwiftValueForKey:@"timelineDay"];
  v3 = [v2 safeSwiftValueForKey:@"logIndicatorAppearance"];
  safeSwiftEnumCase = [v3 safeSwiftEnumCase];

  v5 = accessibilityLocalizedString(safeSwiftEnumCase);

  return v5;
}

@end