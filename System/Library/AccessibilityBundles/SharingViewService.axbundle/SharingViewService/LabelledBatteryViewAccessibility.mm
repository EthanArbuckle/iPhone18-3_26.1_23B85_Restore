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
  [validationsCopy validateClass:@"SharingViewService.LabelledBatteryView"];
  [validationsCopy validateClass:@"SharingViewService.LabelledBatteryView" hasSwiftField:@"batteryView" withSwiftType:"_UIBatteryView"];
}

- (id)accessibilityLabel
{
  v3 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryView"];
  accessibilityLabel = [v3 accessibilityLabel];
  _axBatteryType = [(LabelledBatteryViewAccessibility *)self _axBatteryType];
  v8 = accessibilityLocalizedString(_axBatteryType);
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityHint
{
  v2 = [(LabelledBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryView"];
  accessibilityHint = [v2 accessibilityHint];

  return accessibilityHint;
}

@end