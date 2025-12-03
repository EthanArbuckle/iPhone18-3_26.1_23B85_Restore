@interface BCUIRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation BCUIRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIBatteryView" hasInstanceMethod:@"isLowBattery" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_UIStaticBatteryView" isKindOfClass:@"_UIBatteryView"];
  [validationsCopy validateClass:@"BCUIRowView" hasInstanceVariable:@"_batteryView" withType:"_UIStaticBatteryView"];
  [validationsCopy validateClass:@"BCUIRowView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_batteryView"];
  v4 = [v3 safeBoolForKey:@"isLowBattery"];

  v5 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_batteryView"];
  accessibilityLabel2 = [v7 accessibilityLabel];
  v9 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_batteryView"];
  accessibilityValue = [v9 accessibilityValue];
  if (v4)
  {
    v13 = accessibilityLocalizedString(@"battery.center.low.battery");
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

@end