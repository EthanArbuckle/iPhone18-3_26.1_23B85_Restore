@interface NTKUtilityComplicationViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation NTKUtilityComplicationViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 isEqual:@"NTKUtilityComplicationView"];

  return v4 ^ 1;
}

- (id)accessibilityLabel
{
  v3 = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKUtilityComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    v4 = [v5 accessibilityLabel];
  }

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedValue];

  if (v3)
  {
    v4 = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v5 = [(NTKUtilityComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    v4 = [v5 accessibilityValue];
  }

  return v4;
}

@end