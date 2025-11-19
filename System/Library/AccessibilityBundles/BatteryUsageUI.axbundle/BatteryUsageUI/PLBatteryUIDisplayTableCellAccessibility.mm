@interface PLBatteryUIDisplayTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PLBatteryUIDisplayTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLBatteryUIDisplayTableCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PLBatteryUIDisplayTableCell" isKindOfClass:@"PSTableCell"];
  [v3 validateClass:@"PLBatteryUIDisplayTableCell" isKindOfClass:@"UITableViewCell"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = PLBatteryUIDisplayTableCellAccessibility;
  [(PLBatteryUIDisplayTableCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  [(PLBatteryUIDisplayTableCellAccessibility *)self setAccessibilityLabel:0];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 specifier];

  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v6 = [v5 accessoryView];
  v7 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
      v9 = [v8 intValue];

      if (v9 == 1)
      {
        v10 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v10 doubleValue];
        v12 = v11;

        v13 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLBatteryUIDisplayTableCellAccessibility;
  [(PLBatteryUIDisplayTableCellAccessibility *)&v4 refreshCellContentsWithSpecifier:a3];
  [(PLBatteryUIDisplayTableCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityLabel
{
  v3 = [(PLBatteryUIDisplayTableCellAccessibility *)self textLabel];
  v4 = [v3 accessibilityLabel];
  v5 = [(PLBatteryUIDisplayTableCellAccessibility *)self detailTextLabel];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v2 = __UIAccessibilitySafeClass();
  v3 = [v2 accessoryView];
  v4 = [v3 accessibilityLabel];

  if (([v4 isEqualToString:@" —"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @" — ") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"—"))
  {
    v5 = accessibilityLocalizedString(@"battery.app.usage.unavailable");

    v4 = v5;
  }

  return v4;
}

@end