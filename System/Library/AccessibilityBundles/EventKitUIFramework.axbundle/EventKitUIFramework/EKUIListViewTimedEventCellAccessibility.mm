@interface EKUIListViewTimedEventCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axSafeLabelForUILabelKey:(id)key;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation EKUIListViewTimedEventCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_travelTextLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_travelDepartureTimeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_titleField" withType:"UILabel"];
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_topTimeField" withType:"UILabel"];
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_locationField" withType:"UILabel"];
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_bottomTimeField" withType:"UILabel"];
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasInstanceMethod:@"updateWithEvent:isMultiday:occurrenceStartDate:dimmed:" withFullSignature:{"v", "@", "B", "@", "B", 0}];
  [validationsCopy validateClass:@"EKUIListViewTimedEventCell" hasProperty:@"event" withType:"@"];
}

- (id)_axSafeLabelForUILabelKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(EKUIListViewTimedEventCellAccessibility *)self safeUIViewForKey:keyCopy];
  v6 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v6 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityLabel
{
  v3 = [(EKUIListViewTimedEventCellAccessibility *)self _axSafeLabelForUILabelKey:@"_travelTextLabel"];
  v4 = [(EKUIListViewTimedEventCellAccessibility *)self _axSafeLabelForUILabelKey:@"_travelDepartureTimeLabel"];
  v5 = [(EKUIListViewTimedEventCellAccessibility *)self _axSafeLabelForUILabelKey:@"_titleField"];
  v6 = [(EKUIListViewTimedEventCellAccessibility *)self _axSafeLabelForUILabelKey:@"_topTimeField"];
  v7 = [(EKUIListViewTimedEventCellAccessibility *)self _axSafeLabelForUILabelKey:@"_locationField"];
  v8 = [(EKUIListViewTimedEventCellAccessibility *)self _axSafeLabelForUILabelKey:@"_bottomTimeField"];
  if ([(EKUIListViewTimedEventCellAccessibility *)self _axIsMultiDay])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    if (([v6 isEqualToString:@" "] & 1) == 0)
    {
      [array axSafelyAddObject:v6];
    }

    if (([v8 isEqualToString:@" "] & 1) == 0)
    {
      [array axSafelyAddObject:v8];
    }

    v10 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = MEMORY[0x29EDBA0F8];
    array = accessibilityLocalizedString(@"event.duration");
    v10 = [v11 localizedStringWithFormat:array, v6, v8];
  }

  v12 = v10;

  objc_opt_class();
  v13 = [(EKUIListViewTimedEventCellAccessibility *)self safeValueForKey:@"event"];
  v14 = __UIAccessibilityCastAsClass();

  if (v14)
  {
    v15 = accessibilityCalendarTitleForEventIfNecessary(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = __AXStringForVariables();

  return v16;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  event = [v2 event];
  if ([event status] == 3)
  {
    v4 = accessibilityLocalizedString(@"AX_IS_CANCELED");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end