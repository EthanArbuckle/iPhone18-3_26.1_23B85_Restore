@interface CAMNightModeStatusIndicatorAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMNightModeStatusIndicatorAccessibility

- (id)accessibilityValue
{
  v2 = [(CAMNightModeStatusIndicatorAccessibility *)self safeDoubleForKey:@"duration"];
  v3.n128_f64[0] = fmax(round(v3.n128_f64[0]), 1.0);

  return MEMORY[0x2A1C5EC00](v2, v3);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMNightModeStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMNightModeStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end