@interface STSingleLineHeaderViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation STSingleLineHeaderViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STSingleLineHeaderViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(STSingleLineHeaderViewAccessibility *)&v3 accessibilityTraits];
}

@end