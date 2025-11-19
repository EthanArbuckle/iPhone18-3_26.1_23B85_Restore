@interface BCChatButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation BCChatButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BCChatButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(BCChatButtonAccessibility *)&v3 accessibilityTraits];
}

@end