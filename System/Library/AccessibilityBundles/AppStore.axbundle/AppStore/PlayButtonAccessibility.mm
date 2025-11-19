@interface PlayButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation PlayButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PlayButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PlayButtonAccessibility *)&v3 accessibilityTraits];
}

@end