@interface PLBatteryUIDisplayTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PLBatteryUIDisplayTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLBatteryUIDisplayTableCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PLBatteryUIDisplayTableCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"PLBatteryUIDisplayTableCell" isKindOfClass:@"UITableViewCell"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = PLBatteryUIDisplayTableCellAccessibility;
  [(PLBatteryUIDisplayTableCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  [(PLBatteryUIDisplayTableCellAccessibility *)self setAccessibilityLabel:0];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  specifier = [v3 specifier];

  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  accessoryView = [v5 accessoryView];
  v7 = __UIAccessibilityCastAsClass();

  if (specifier)
  {
    if (v7)
    {
      v8 = [specifier objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
      intValue = [v8 intValue];

      if (intValue == 1)
      {
        v10 = [specifier objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v10 doubleValue];
        v12 = v11;

        v13 = [specifier objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v13 doubleValue];
        v15 = v14;

        if (v12 >= 60.0 || v15 >= 60.0)
        {
          v16 = MEMORY[0x29C2CCC40](0, v12 + v15);
          [v7 setAccessibilityLabel:v16];
        }
      }
    }
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = PLBatteryUIDisplayTableCellAccessibility;
  [(PLBatteryUIDisplayTableCellAccessibility *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(PLBatteryUIDisplayTableCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityLabel
{
  textLabel = [(PLBatteryUIDisplayTableCellAccessibility *)self textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  detailTextLabel = [(PLBatteryUIDisplayTableCellAccessibility *)self detailTextLabel];
  accessibilityLabel2 = [detailTextLabel accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v2 = __UIAccessibilitySafeClass();
  accessoryView = [v2 accessoryView];
  accessibilityLabel = [accessoryView accessibilityLabel];

  if (([accessibilityLabel isEqualToString:@" —"] & 1) != 0 || (objc_msgSend(accessibilityLabel, "isEqualToString:", @" — ") & 1) != 0 || objc_msgSend(accessibilityLabel, "isEqualToString:", @"—"))
  {
    v5 = accessibilityLocalizedString(@"battery.app.usage.unavailable");

    accessibilityLabel = v5;
  }

  return accessibilityLabel;
}

@end