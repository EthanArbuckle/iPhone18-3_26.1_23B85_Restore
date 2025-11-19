@interface UIAccessibilityElementKBEmojiCategoryChatKitAccessibility
- (id)accessibilityCustomRotors;
@end

@implementation UIAccessibilityElementKBEmojiCategoryChatKitAccessibility

- (id)accessibilityCustomRotors
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityElementKBEmojiCategoryChatKitAccessibility;
  v2 = [(UIAccessibilityElementKBEmojiCategoryChatKitAccessibility *)&v5 accessibilityCustomRotors];
  v3 = addFirstResponderRotorsToRotorArray(v2);

  return v3;
}

@end