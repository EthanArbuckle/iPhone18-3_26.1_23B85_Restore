@interface UIAccessibilityElementKBEmojiCategoryChatKitAccessibility
- (id)accessibilityCustomRotors;
@end

@implementation UIAccessibilityElementKBEmojiCategoryChatKitAccessibility

- (id)accessibilityCustomRotors
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityElementKBEmojiCategoryChatKitAccessibility;
  accessibilityCustomRotors = [(UIAccessibilityElementKBEmojiCategoryChatKitAccessibility *)&v5 accessibilityCustomRotors];
  v3 = addFirstResponderRotorsToRotorArray(accessibilityCustomRotors);

  return v3;
}

@end