@interface CSChargingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CSChargingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_CSSingleBatteryChargingView"];
  [validationsCopy validateClass:@"SBUILegibilityLabel"];
  [validationsCopy validateClass:@"CSChargingViewController" hasInstanceVariable:@"_chargingView" withType:"CSBatteryChargingView"];
  [validationsCopy validateClass:@"_CSSingleBatteryChargingView" hasInstanceVariable:@"_chargePercentLabel" withType:"SBUILegibilityLabel"];
}

@end