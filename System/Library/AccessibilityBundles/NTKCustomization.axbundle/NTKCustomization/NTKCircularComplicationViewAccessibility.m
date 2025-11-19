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
  v3 = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKCircularComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    v4 = [v5 accessibilityLabel];
  }

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedValue];

  if (v3)
  {
    v4 = [(NTKCircularComplicationViewAccessibility *)self accessibilityUserDefinedValue];
  }

  else
  {
    v5 = [(NTKCircularComplicationViewAccessibility *)self safeValueForKey:@"complicationTemplate"];
    v4 = [v5 accessibilityValue];
  }

  return v4;
}

- (id)accessibilityPath
{
  v2 = [(NTKCircularComplicationViewAccessibility *)self _accessibilityCirclePathBasedOnBoundsWidth];
  v3 = UIAccessibilityInsetBezierPath();

  return v3;
}

@end