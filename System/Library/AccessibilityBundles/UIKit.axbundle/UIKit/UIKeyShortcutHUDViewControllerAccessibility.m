@interface UIKeyShortcutHUDViewControllerAccessibility
@end

@implementation UIKeyShortcutHUDViewControllerAccessibility

void __76___UIKeyShortcutHUDViewControllerAccessibility_setHidden_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  if (*(a1 + 40))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end