@interface LabelledBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation LabelledBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HeadphoneProxService.LabelledBatteryView"];
  [validationsCopy validateClass:@"HeadphoneProxService.LabelledBatteryView" hasSwiftField:@"batteryPercentageLabel" withSwiftType:"UILabel"];
  [validationsCopy validateSwiftEnum:@"HeadphoneProxService.position"];
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
    safeSwiftEnumCase = [v4 safeSwiftEnumCase];
    v7 = accessibilityLabelForBatteryTypeString(safeSwiftEnumCase);
    v8 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
    accessibilityLabel = [v8 accessibilityLabel];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [accessibilityLabel string];

      accessibilityLabel = string;
    }

    v11 = __UIAXStringForVariables();
  }

  else
  {
    safeSwiftEnumCase = [(LabelledBatteryViewAccessibility *)self _axBatteryType];
    v7 = accessibilityLocalizedString(safeSwiftEnumCase);
    accessibilityLabel = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
    v9AccessibilityLabel = [accessibilityLabel accessibilityLabel];
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

- (id)accessibilityValue
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityHint
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryPercentageLabel"];
  accessibilityHint = [v2 accessibilityHint];

  return accessibilityHint;
}

@end