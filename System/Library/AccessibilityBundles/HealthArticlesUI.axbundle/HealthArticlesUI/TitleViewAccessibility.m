@interface TitleViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TitleViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TitleViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(TitleViewAccessibility *)&v3 accessibilityTraits];
}

@end