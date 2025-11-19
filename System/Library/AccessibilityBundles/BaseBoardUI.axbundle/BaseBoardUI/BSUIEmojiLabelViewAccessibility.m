@interface BSUIEmojiLabelViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation BSUIEmojiLabelViewAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7FD0];
  v4.receiver = self;
  v4.super_class = BSUIEmojiLabelViewAccessibility;
  return [(BSUIEmojiLabelViewAccessibility *)&v4 accessibilityTraits]| v2;
}

@end