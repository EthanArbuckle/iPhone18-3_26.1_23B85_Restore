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
  accessibilityUserDefinedLabel = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKUtilityComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    accessibilityUserDefinedLabel2 = [v5 accessibilityLabel];
  }

  return accessibilityUserDefinedLabel2;
}

- (id)accessibilityValue
{
  accessibilityUserDefinedValue = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedValue];

  if (accessibilityUserDefinedValue)
  {
    accessibilityUserDefinedValue2 = [(NTKUtilityComplicationViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v5 = [(NTKUtilityComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    accessibilityUserDefinedValue2 = [v5 accessibilityValue];
  }

  return accessibilityUserDefinedValue2;
}

@end