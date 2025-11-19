@interface PLBatteryUIGraphLastChargeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PLBatteryUIGraphLastChargeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceVariable:@"_lastChargeTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceVariable:@"_percentLabel" withType:"UILabel"];
  [v3 validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceVariable:@"_timeStrLabel" withType:"UILabel"];
  [v3 validateClass:@"PLBatteryUIGraphLastChargeCell" isKindOfClass:@"PSTableCell"];
  [v3 validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16.receiver = self;
  v16.super_class = PLBatteryUIGraphLastChargeCellAccessibility;
  [(PLBatteryUIGraphLastChargeCellAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 specifier];

  v5 = [v4 propertyForKey:@"PLBatteryUILastChargeKey"];
  v6 = [v5 objectForKeyedSubscript:@"PLBatteryUITimestampKey"];
  v7 = __UIAccessibilitySafeClass();

  if (v7)
  {
    v8 = [v7 unsignedLongValue];
    v9 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:v8];
    v10 = [MEMORY[0x29EDB8D98] currentCalendar];
    v11 = [MEMORY[0x29EDB8DB0] date];
    v12 = [v10 isDate:v9 inSameDayAsDate:v11];

    if (v8 >> 4 <= 0x2A2 && v12 != 0)
    {
      v14 = [(PLBatteryUIGraphLastChargeCellAccessibility *)self safeValueForKey:@"_timeStrLabel"];
      v15 = AXTimeAgoStringForTimeSince();
      [v14 setAccessibilityLabel:v15];
    }
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLBatteryUIGraphLastChargeCellAccessibility;
  [(PLBatteryUIGraphLastChargeCellAccessibility *)&v4 refreshCellContentsWithSpecifier:a3];
  [(PLBatteryUIGraphLastChargeCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end