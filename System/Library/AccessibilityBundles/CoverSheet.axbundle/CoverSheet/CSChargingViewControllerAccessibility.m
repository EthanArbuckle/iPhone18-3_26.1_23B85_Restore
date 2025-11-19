@interface CSChargingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CSChargingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_CSSingleBatteryChargingView"];
  [v3 validateClass:@"SBUILegibilityLabel"];
  [v3 validateClass:@"CSChargingViewController" hasInstanceVariable:@"_chargingView" withType:"CSBatteryChargingView"];
  [v3 validateClass:@"_CSSingleBatteryChargingView" hasInstanceVariable:@"_chargePercentLabel" withType:"SBUILegibilityLabel"];
}

@end