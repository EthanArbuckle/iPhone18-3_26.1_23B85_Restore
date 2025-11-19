@interface HighlightsTitleViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HighlightsTitleViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HighlightsTitleViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(HighlightsTitleViewAccessibility *)&v3 accessibilityTraits];
}

@end