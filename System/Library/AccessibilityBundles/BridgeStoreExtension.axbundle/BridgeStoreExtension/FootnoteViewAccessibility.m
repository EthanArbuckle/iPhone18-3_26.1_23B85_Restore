@interface FootnoteViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation FootnoteViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FootnoteViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FootnoteViewAccessibility *)&v3 accessibilityTraits];
}

@end