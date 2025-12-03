@interface CSBatteryChargingRingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CSBatteryChargingRingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(CSBatteryChargingRingViewAccessibility *)self safeUIViewForKey:@"chargePercentLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end