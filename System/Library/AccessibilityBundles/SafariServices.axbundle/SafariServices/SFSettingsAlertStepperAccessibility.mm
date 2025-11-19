@interface SFSettingsAlertStepperAccessibility
@end

@implementation SFSettingsAlertStepperAccessibility

id __82___SFSettingsAlertStepperAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeStringForKey:@"_text"];

  return v2;
}

@end