@interface SectionHeaderViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SectionHeaderViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SectionHeaderViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(SectionHeaderViewAccessibility *)&v3 accessibilityTraits];
}

@end