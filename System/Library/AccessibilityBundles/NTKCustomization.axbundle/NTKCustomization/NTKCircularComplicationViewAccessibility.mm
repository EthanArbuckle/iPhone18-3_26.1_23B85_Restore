@interface NTKCircularComplicationViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NTKCircularComplicationViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NTKCircularComplicationViewAccessibility;
  return [(NTKCircularComplicationViewAccessibility *)&v3 accessibilityTraits]& ~UIAccessibilityTraitNotEnabled;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKCircularComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    accessibilityUserDefinedLabel2 = [v5 accessibilityLabel];
  }

  return accessibilityUserDefinedLabel2;
}

- (id)accessibilityValue
{
  accessibilityUserDefinedValue = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedValue];

  if (accessibilityUserDefinedValue)
  {
    accessibilityUserDefinedValue2 = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v5 = [(NTKCircularComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    accessibilityUserDefinedValue2 = [v5 accessibilityValue];
  }

  return accessibilityUserDefinedValue2;
}

- (id)accessibilityPath
{
  _accessibilityCirclePathBasedOnBoundsWidth = [(NTKCircularComplicationViewAccessibility *)self _accessibilityCirclePathBasedOnBoundsWidth];
  v3 = UIAccessibilityInsetBezierPath();

  return v3;
}

@end