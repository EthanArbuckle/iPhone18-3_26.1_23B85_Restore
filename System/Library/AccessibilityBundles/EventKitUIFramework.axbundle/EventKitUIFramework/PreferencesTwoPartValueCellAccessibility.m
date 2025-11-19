@interface PreferencesTwoPartValueCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation PreferencesTwoPartValueCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_endDateIsBeforeStartDate" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PreferencesTwoPartValueCell" isKindOfClass:@"EKUITableViewCell"];
  [v3 validateClass:@"EKUITableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PreferencesTwoPartValueCell" hasInstanceMethod:@"twoPartTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PreferencesTwoPartValueCell" hasInstanceMethod:@"largePart2TextLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PreferencesTwoPartValueCellAccessibility *)self safeValueForKey:@"textLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(PreferencesTwoPartValueCellAccessibility *)self safeValueForKey:@"twoPartTextLabel"];
  v6 = [v5 accessibilityLabel];

  if (![v6 length])
  {
    v7 = [(PreferencesTwoPartValueCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"detailTextLabel, largePart2TextLabel"];

    v6 = v7;
  }

  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(PreferencesTwoPartValueCellAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];
  v4 = MEMORY[0x29C2D5180]();

  return v4;
}

@end