@interface CAMIntensityButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CAMIntensityButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMIntensityButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMIntensityButtonAccessibility *)&v3 accessibilityTraits];
}

@end