@interface LabelledBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation LabelledBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HeadphoneProxService.LabelledBatteryView"];
  [v3 validateClass:@"HeadphoneProxService.LabelledBatteryView" hasSwiftField:@"batteryPercentageLabel" withSwiftType:"UILabel"];
  [v3 validateSwiftEnum:@"HeadphoneProxService.position"];
}

- (id)accessibilityLabel
{
  if ([(LabelledBatteryViewAccessibility *)self safeSwiftBoolForKey:@"isCharging"])
  {
    v3 = accessibilityLocalizedString(@"battery.is.charging");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"position"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeSwiftEnumCase];
    v7 = accessibilityLabelForBatteryTypeString(v6);
    v8 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
    v9 = [v8 accessibilityLabel];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 string];

      v9 = v10;
    }

    v11 = __UIAXStringForVariables();
  }

  else
  {
    v6 = [(LabelledBatteryViewAccessibility *)self _axBatteryType];
    v7 = accessibilityLocalizedString(v6);
    v9 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
    v13 = [v9 accessibilityLabel];
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

- (id)accessibilityValue
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
  v3 = [v2 accessibilityHint];

  return v3;
}

@end