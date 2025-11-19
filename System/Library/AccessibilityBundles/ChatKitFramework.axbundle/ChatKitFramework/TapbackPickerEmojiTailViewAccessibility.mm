@interface TapbackPickerEmojiTailViewAccessibility
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation TapbackPickerEmojiTailViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(TapbackPickerEmojiTailViewAccessibility *)self accessibilityContainer];
  NSClassFromString(&cfstr_ChatkitTapback.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TapbackPickerEmojiTailViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TapbackPickerEmojiTailViewAccessibility *)&v3 accessibilityTraits];
}

@end