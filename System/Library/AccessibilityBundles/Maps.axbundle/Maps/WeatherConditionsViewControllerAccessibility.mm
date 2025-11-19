@interface WeatherConditionsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation WeatherConditionsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WeatherConditionsViewController" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"WeatherConditionsViewController" hasInstanceMethod:@"weatherConditions" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  if ([(WeatherConditionsViewControllerAccessibility *)self safeBoolForKey:@"isVisible"])
  {
    v3 = [(WeatherConditionsViewControllerAccessibility *)self safeValueForKey:@"weatherConditions"];
    v4 = __UIAccessibilitySafeClass();

    v5 = [v4 safeStringForKey:@"conditionDescription"];
    v6 = [v4 safeValueForKey:@"temperatureDescription"];
    v7 = MEMORY[0x29EDBA0F8];
    v8 = AXMapsLocString(@"TEMPERATURE_DEGREES_FORMAT");
    [v6 doubleValue];
    v10 = [v7 localizedStringWithFormat:v8, v9];

    if (v5 | v10)
    {
      if (!v5 && v10)
      {
        v5 = AXMapsLocString(@"TEMPERATURE");
      }

      v11 = __AXStringForVariables();
    }

    else
    {
      v11 = AXMapKitLocString(@"WEATHER_UNAVAILABLE");
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end