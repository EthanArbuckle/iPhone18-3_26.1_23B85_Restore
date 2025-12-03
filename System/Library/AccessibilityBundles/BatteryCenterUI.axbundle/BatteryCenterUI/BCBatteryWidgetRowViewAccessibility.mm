@interface BCBatteryWidgetRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation BCBatteryWidgetRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BCBatteryWidgetRowView" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BCBatteryWidgetRowView" hasInstanceMethod:@"glyphImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BCBatteryWidgetRowView" hasInstanceVariable:@"_percentCharge" withType:"NSUInteger"];
  [validationsCopy validateClass:@"BCBatteryWidgetRowView" hasInstanceVariable:@"_charging" withType:"B"];
}

- (id)accessibilityLabel
{
  v3 = [(BCBatteryWidgetRowViewAccessibility *)self safeValueForKey:@"name"];
  v4 = [(BCBatteryWidgetRowViewAccessibility *)self safeValueForKey:@"glyphImage"];
  accessibilityLabel = [v4 accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)accessibilityValue
{
  [(BCBatteryWidgetRowViewAccessibility *)self safeUnsignedIntegerForKey:@"_percentCharge"];
  if ([(BCBatteryWidgetRowViewAccessibility *)self safeBoolForKey:@"_charging"])
  {
    v3 = @"device.charge.value.charging";
  }

  else
  {
    v3 = @"device.charge.value";
  }

  v4 = accessibilityLocalizedString(v3);
  v5 = MEMORY[0x29EDBA0F8];
  v6 = AXFormatFloatWithPercentage();
  v7 = [v5 stringWithFormat:v4, v6];

  return v7;
}

@end