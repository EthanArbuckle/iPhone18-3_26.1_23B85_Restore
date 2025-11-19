@interface NTKModularTemplateViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation NTKModularTemplateViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKModularTemplateViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    v4 = [v5 accessibilityLabel];
  }

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedValue];

  if (v3)
  {
    v4 = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v5 = [(NTKModularTemplateViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    v4 = [v5 accessibilityValue];
  }

  return v4;
}

@end