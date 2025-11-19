@interface BCUIRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation BCUIRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIBatteryView" hasInstanceMethod:@"isLowBattery" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_UIStaticBatteryView" isKindOfClass:@"_UIBatteryView"];
  [v3 validateClass:@"BCUIRowView" hasInstanceVariable:@"_batteryView" withType:"_UIStaticBatteryView"];
  [v3 validateClass:@"BCUIRowView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_batteryView"];
  v4 = [v3 safeBoolForKey:@"isLowBattery"];

  v5 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_batteryView"];
  v8 = [v7 accessibilityLabel];
  v9 = [(BCUIRowViewAccessibility *)self safeValueForKey:@"_batteryView"];
  v10 = [v9 accessibilityValue];
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