@interface AirQualityConditionsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation AirQualityConditionsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AirQualityConditions" hasInstanceMethod:@"airQualityIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"AirQualityConditions" hasInstanceMethod:@"hasNumericalAirQualityIndex" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AirQualityConditionsViewController" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AirQualityConditionsViewController" hasInstanceMethod:@"airQualityConditions" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AirQualityConditions" hasInstanceMethod:@"airQualityDescription" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  if ([(AirQualityConditionsViewControllerAccessibility *)self safeBoolForKey:@"isVisible"])
  {
    v3 = [(AirQualityConditionsViewControllerAccessibility *)self safeValueForKey:@"airQualityConditions"];
    v4 = [v3 safeValueForKey:@"airQualityDescription"];
    if (v4)
    {
      v5 = MEMORY[0x29EDBA0F8];
      v6 = AXMapsLocString(@"AQI_STRING");
      v7 = [v5 localizedStringWithFormat:v6, v4];
    }

    else if ([v3 safeBoolForKey:@"hasNumericalAirQualityIndex"])
    {
      v8 = [v3 safeUnsignedIntegerForKey:@"airQualityIndex"];
      v9 = MEMORY[0x29EDBA0F8];
      v10 = AXMapsLocString(@"AQI_STRING");
      v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v8];
      v12 = [v11 stringValue];
      v7 = [v9 localizedStringWithFormat:v10, v12];
    }

    else
    {
      v7 = AXMapsLocString(@"AQI_STRING_NO_INDEX");
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end