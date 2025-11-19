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
  [v3 validateClass:@"SharingViewService.LabelledBatteryView"];
  [v3 validateClass:@"SharingViewService.LabelledBatteryView" hasSwiftField:@"batteryView" withSwiftType:"_UIBatteryView"];
}

- (id)accessibilityLabel
{
  v3 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryView"];
  v4 = [v3 accessibilityLabel];
  v5 = [(LabelledBatteryViewAccessibility *)self _axBatteryType];
  v8 = accessibilityLocalizedString(v5);
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryView"];
  v3 = [v2 accessibilityHint];

  return v3;
}

@end