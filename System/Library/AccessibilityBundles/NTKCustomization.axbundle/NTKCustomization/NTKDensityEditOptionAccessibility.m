@interface NTKDensityEditOptionAccessibility
- (id)_accessibilityEditOptionDescription;
@end

@implementation NTKDensityEditOptionAccessibility

- (id)_accessibilityEditOptionDescription
{
  v2 = [(NTKDensityEditOptionAccessibility *)self safeUnsignedIntegerForKey:@"density"];
  if (v2 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_1C568[v2], v3);
  }

  return v4;
}

@end