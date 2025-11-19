@interface UIStatusBarBluetoothBatteryItemViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarBluetoothBatteryItemViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(UIStatusBarBluetoothBatteryItemViewAccessibility *)self safeValueForKey:@"_capacity"];
  [v3 intValue];
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"status.bluetooth.battery.format");
  v5 = AXFormatFloatWithPercentage();
  v7 = [v4 stringWithFormat:v6, v5];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarBluetoothBatteryItemViewAccessibility;
  return [(UIStatusBarBluetoothBatteryItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end