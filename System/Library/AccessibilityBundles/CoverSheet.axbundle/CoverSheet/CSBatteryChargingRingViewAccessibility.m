@interface CSBatteryChargingRingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CSBatteryChargingRingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(CSBatteryChargingRingViewAccessibility *)self safeUIViewForKey:@"chargePercentLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end