@interface PreferencesTwoPartValueCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation PreferencesTwoPartValueCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_endDateIsBeforeStartDate" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PreferencesTwoPartValueCell" isKindOfClass:@"EKUITableViewCell"];
  [validationsCopy validateClass:@"EKUITableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PreferencesTwoPartValueCell" hasInstanceMethod:@"twoPartTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PreferencesTwoPartValueCell" hasInstanceMethod:@"largePart2TextLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PreferencesTwoPartValueCellAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(PreferencesTwoPartValueCellAccessibility *)self safeValueForKey:@"twoPartTextLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  if (![accessibilityLabel2 length])
  {
    v7 = [(PreferencesTwoPartValueCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"detailTextLabel, largePart2TextLabel"];

    accessibilityLabel2 = v7;
  }

  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(PreferencesTwoPartValueCellAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];
  v4 = MEMORY[0x29C2D5180]();

  return v4;
}

@end