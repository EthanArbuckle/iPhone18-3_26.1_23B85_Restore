@interface CAMHDRStatusIndicatorAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMHDRStatusIndicatorAccessibility

- (id)accessibilityValue
{
  v2 = [(CAMHDRStatusIndicatorAccessibility *)self safeValueForKey:@"hdrMode"];
  v3 = [v2 integerValue];

  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2AD448[v3]);
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMHDRStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMHDRStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end