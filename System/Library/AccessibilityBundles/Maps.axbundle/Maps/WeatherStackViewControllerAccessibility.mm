@interface WeatherStackViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation WeatherStackViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WeatherStackViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"WeatherStackViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WeatherStackViewController" hasInstanceVariable:@"_weatherConditionsViewController" withType:"WeatherConditionsViewController"];
  [validationsCopy validateClass:@"WeatherStackViewController" hasInstanceVariable:@"_airQualityConditionsViewController" withType:"AirQualityConditionsViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = WeatherStackViewControllerAccessibility;
  [(WeatherStackViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(WeatherStackViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  objc_initWeak(&location, v3);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __85__WeatherStackViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2CC710;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityActivateBlock:v7];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __85__WeatherStackViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v6[3] = &unk_29F2CC468;
  v6[4] = self;
  [v3 _setAccessibilityLabelBlock:v6];
  v4 = AXMapsLocString(@"WEATHER");
  v5 = MEMORY[0x29C2DCCD0]();
  [v3 setAccessibilityUserInputLabels:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __85__WeatherStackViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 _accessibilityShowContextMenuForElement:v1 targetPointValue:0];

  return 1;
}

id __85__WeatherStackViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_weatherConditionsViewController"];
  v3 = [v2 accessibilityLabel];
  v4 = [*(a1 + 32) safeValueForKey:@"_airQualityConditionsViewController"];
  v7 = [v4 accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = WeatherStackViewControllerAccessibility;
  [(WeatherStackViewControllerAccessibility *)&v3 loadView];
  [(WeatherStackViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end