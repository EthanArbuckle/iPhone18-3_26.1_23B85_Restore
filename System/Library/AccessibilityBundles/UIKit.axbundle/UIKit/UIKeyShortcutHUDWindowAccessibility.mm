@interface UIKeyShortcutHUDWindowAccessibility
@end

@implementation UIKeyShortcutHUDWindowAccessibility

double __57___UIKeyShortcutHUDWindowAccessibility_makeKeyAndVisible__block_invoke(uint64_t a1)
{
  notification = *MEMORY[0x29EDC7F10];
  v3 = [*(a1 + 32) _accessibilityFirstDescendant];
  UIAccessibilityPostNotification(notification, v3);
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end