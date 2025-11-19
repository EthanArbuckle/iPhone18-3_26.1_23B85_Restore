@interface CAMIntensityStatusIndicatorAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CAMIntensityStatusIndicatorAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMIntensityStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMIntensityStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end