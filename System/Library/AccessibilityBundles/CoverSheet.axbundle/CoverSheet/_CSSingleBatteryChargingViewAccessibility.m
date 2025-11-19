@interface _CSSingleBatteryChargingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation _CSSingleBatteryChargingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(_CSSingleBatteryChargingViewAccessibility *)self safeUIViewForKey:@"_chargePercentLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end