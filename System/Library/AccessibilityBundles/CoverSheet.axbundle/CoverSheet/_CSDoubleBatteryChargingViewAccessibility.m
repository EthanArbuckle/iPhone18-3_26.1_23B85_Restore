@interface _CSDoubleBatteryChargingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _CSDoubleBatteryChargingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_CSDoubleBatteryChargingView" hasInstanceVariable:@"_internalChargingNameLabel" withType:"SBUILegibilityLabel"];
  [v3 validateClass:@"_CSDoubleBatteryChargingView" hasInstanceVariable:@"_internalChargePercentLabel" withType:"SBUILegibilityLabel"];
  [v3 validateClass:@"_CSDoubleBatteryChargingView" hasInstanceVariable:@"_externalChargingNameLabel" withType:"SBUILegibilityLabel"];
  [v3 validateClass:@"_CSDoubleBatteryChargingView" hasInstanceVariable:@"_externalChargePercentLabel" withType:"SBUILegibilityLabel"];
  [v3 validateClass:@"_CSDoubleBatteryChargingView" hasInstanceVariable:@"_internalChargingIndicator" withType:"UIImageView"];
  [v3 validateClass:@"_CSDoubleBatteryChargingView" hasInstanceVariable:@"_externalChargingIndicator" withType:"UIImageView"];
}

- (id)accessibilityLabel
{
  v3 = [(_CSDoubleBatteryChargingViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_internalChargingNameLabel, _internalChargePercentLabel"];
  v4 = [(_CSDoubleBatteryChargingViewAccessibility *)self safeUIViewForKey:@"_internalChargingIndicator"];
  v5 = [v4 _accessibilityViewIsVisible];

  if (v5)
  {
    v6 = accessibilitySBLocalizedString(@"charging");
    v15 = v3;
    v16 = @"__AXStringForVariablesSentinel";
    v7 = __AXStringForVariables();

    v3 = v7;
  }

  v8 = [(_CSDoubleBatteryChargingViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_externalChargingNameLabel, _externalChargePercentLabel", v15, v16];
  v9 = [(_CSDoubleBatteryChargingViewAccessibility *)self safeUIViewForKey:@"_externalChargingIndicator"];
  v10 = [v9 _accessibilityViewIsVisible];

  if (v10)
  {
    v11 = accessibilitySBLocalizedString(@"charging");
    v12 = __AXStringForVariables();

    v8 = v12;
  }

  v13 = __AXStringForVariables();

  return v13;
}

@end