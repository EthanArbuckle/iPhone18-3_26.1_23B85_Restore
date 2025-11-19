@interface HFTemperatureIconDescriptorAccessibility
- (id)accessibilityValue;
@end

@implementation HFTemperatureIconDescriptorAccessibility

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(HFTemperatureIconDescriptorAccessibility *)self safeValueForKey:@"formattedTemperature"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end