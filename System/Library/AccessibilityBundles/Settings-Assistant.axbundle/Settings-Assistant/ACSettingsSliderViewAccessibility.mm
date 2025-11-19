@interface ACSettingsSliderViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation ACSettingsSliderViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ACSettingsSliderViewAccessibility *)self safeValueForKey:@"slider"];
  v3 = [v2 safeValueForKey:@"allTargets"];
  v4 = [v3 anyObject];

  v5 = [v4 safeValueForKey:@"_setting"];
  v6 = [v5 safeValueForKey:@"name"];

  return v6;
}

- (id)accessibilityValue
{
  v2 = [(ACSettingsSliderViewAccessibility *)self safeValueForKey:@"slider"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (void)accessibilityDecrement
{
  v2 = [(ACSettingsSliderViewAccessibility *)self safeValueForKey:@"slider"];
  [v2 accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  v2 = [(ACSettingsSliderViewAccessibility *)self safeValueForKey:@"slider"];
  [v2 accessibilityIncrement];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(ACSettingsSliderViewAccessibility *)self safeValueForKey:@"slider"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

@end