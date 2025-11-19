@interface CAMApertureStatusIndicatorAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CAMApertureStatusIndicatorAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMApertureStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMApertureStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end