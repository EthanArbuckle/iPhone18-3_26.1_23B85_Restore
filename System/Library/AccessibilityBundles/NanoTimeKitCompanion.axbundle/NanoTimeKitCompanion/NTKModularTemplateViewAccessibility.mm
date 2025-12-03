@interface NTKModularTemplateViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation NTKModularTemplateViewAccessibility

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKModularTemplateViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    accessibilityUserDefinedLabel2 = [v5 accessibilityLabel];
  }

  return accessibilityUserDefinedLabel2;
}

- (id)accessibilityValue
{
  accessibilityUserDefinedValue = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedValue];

  if (accessibilityUserDefinedValue)
  {
    accessibilityUserDefinedValue2 = [(NTKModularTemplateViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v5 = [(NTKModularTemplateViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    accessibilityUserDefinedValue2 = [v5 accessibilityValue];
  }

  return accessibilityUserDefinedValue2;
}

@end