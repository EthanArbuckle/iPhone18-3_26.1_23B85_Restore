@interface EKUIListViewTimedEventCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axSafeLabelForUILabelKey:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation EKUIListViewTimedEventCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_travelTextLabel" withType:"UILabel"];
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_travelDepartureTimeLabel" withType:"UILabel"];
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_titleField" withType:"UILabel"];
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_topTimeField" withType:"UILabel"];
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_locationField" withType:"UILabel"];
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasInstanceVariable:@"_bottomTimeField" withType:"UILabel"];
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasInstanceMethod:@"updateWithEvent:isMultiday:occurrenceStartDate:dimmed:" withFullSignature:{"v", "@", "B", "@", "B", 0}];
  [v3 validateClass:@"EKUIListViewTimedEventCell" hasProperty:@"event" withType:"@"];
}

- (id)_axSafeLabelForUILabelKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(EKUIListViewTimedEventCellAccessibility *)self safeUIViewForKey:v4];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 accessibilityLabel];

  return v7;
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
    v9 = [MEMORY[0x29EDB8DE8] array];
    if (([v6 isEqualToString:@" "] & 1) == 0)
    {
      [v9 axSafelyAddObject:v6];
    }

    if (([v8 isEqualToString:@" "] & 1) == 0)
    {
      [v9 axSafelyAddObject:v8];
    }

    v10 = [v9 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"event.duration");
    v10 = [v11 localizedStringWithFormat:v9, v6, v8];
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
  v3 = [v2 event];
  if ([v3 status] == 3)
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