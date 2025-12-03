@interface PLBatteryUIGraphLastChargeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PLBatteryUIGraphLastChargeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceVariable:@"_lastChargeTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceVariable:@"_percentLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceVariable:@"_timeStrLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PLBatteryUIGraphLastChargeCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"PLBatteryUIGraphLastChargeCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16.receiver = self;
  v16.super_class = PLBatteryUIGraphLastChargeCellAccessibility;
  [(PLBatteryUIGraphLastChargeCellAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  specifier = [v3 specifier];

  v5 = [specifier propertyForKey:@"PLBatteryUILastChargeKey"];
  v6 = [v5 objectForKeyedSubscript:@"PLBatteryUITimestampKey"];
  v7 = __UIAccessibilitySafeClass();

  if (v7)
  {
    unsignedLongValue = [v7 unsignedLongValue];
    v9 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:unsignedLongValue];
    currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
    date = [MEMORY[0x29EDB8DB0] date];
    v12 = [currentCalendar isDate:v9 inSameDayAsDate:date];

    if (unsignedLongValue >> 4 <= 0x2A2 && v12 != 0)
    {
      v14 = [(PLBatteryUIGraphLastChargeCellAccessibility *)self safeValueForKey:@"_timeStrLabel"];
      v15 = AXTimeAgoStringForTimeSince();
      [v14 setAccessibilityLabel:v15];
    }
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = PLBatteryUIGraphLastChargeCellAccessibility;
  [(PLBatteryUIGraphLastChargeCellAccessibility *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(PLBatteryUIGraphLastChargeCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end