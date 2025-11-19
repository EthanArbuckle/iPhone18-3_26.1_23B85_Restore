@interface WGWidgetAttributionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureAttributedString;
@end

@implementation WGWidgetAttributionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WGWidgetAttributionView" isKindOfClass:@"UITextView"];
  [v3 validateClass:@"WGWidgetAttributionView" hasClassMethod:@"requestAttributedStringForIdentifier:withHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateClass:@"WGWidgetAttributionView" hasInstanceMethod:@"_configureAttributedString" withFullSignature:{"v", 0}];
}

- (id)accessibilityLabel
{
  if ([(WGWidgetAttributionViewAccessibility *)self _axIsStockWidget])
  {
    v3 = @"stocks.attribution";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(WGWidgetAttributionViewAccessibility *)self _axIsWeatherWidget])
  {
    v3 = @"weather.attribution";
    goto LABEL_5;
  }

  v6.receiver = self;
  v6.super_class = WGWidgetAttributionViewAccessibility;
  v4 = [(WGWidgetAttributionViewAccessibility *)&v6 accessibilityLabel];
LABEL_7:

  return v4;
}

- (id)accessibilityValue
{
  if ([(WGWidgetAttributionViewAccessibility *)self _axIsStockWidget]|| [(WGWidgetAttributionViewAccessibility *)self _axIsWeatherWidget])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WGWidgetAttributionViewAccessibility;
    v3 = [(WGWidgetAttributionViewAccessibility *)&v5 accessibilityValue];
  }

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = WGWidgetAttributionViewAccessibility;
  [(WGWidgetAttributionViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  AXPerformSafeBlock();
}

uint64_t __82__WGWidgetAttributionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29ED42A50](@"WGWidgetAttributionView");
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __82__WGWidgetAttributionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v6[3] = &unk_29F322910;
  v6[4] = *(a1 + 32);
  [v2 requestAttributedStringForIdentifier:@"com.apple.stocks.widget" withHandler:v6];
  v3 = MEMORY[0x29ED42A50](@"WGWidgetAttributionView");
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __82__WGWidgetAttributionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v5[3] = &unk_29F322910;
  v5[4] = *(a1 + 32);
  return [v3 requestAttributedStringForIdentifier:@"com.apple.weather.WeatherAppTodayWidget" withHandler:v5];
}

void __82__WGWidgetAttributionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  v5 = *(a1 + 32);
  v6 = __UIAccessibilityCastAsClass();
  v7 = [v6 text];
  v8 = [v3 string];
  [v4 _axSetIsStockWidget:{objc_msgSend(v7, "isEqualToString:", v8)}];
}

void __82__WGWidgetAttributionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  v5 = *(a1 + 32);
  v6 = __UIAccessibilityCastAsClass();
  v7 = [v6 text];
  v8 = [v3 string];
  [v4 _axSetIsWeatherWidget:{objc_msgSend(v7, "isEqualToString:", v8)}];
}

- (void)_configureAttributedString
{
  v3.receiver = self;
  v3.super_class = WGWidgetAttributionViewAccessibility;
  [(WGWidgetAttributionViewAccessibility *)&v3 _configureAttributedString];
  [(WGWidgetAttributionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end