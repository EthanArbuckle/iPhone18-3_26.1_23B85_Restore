@interface UIStatusBarLockViewAccessibility
@end

@implementation UIStatusBarLockViewAccessibility

void __70___UIStatusBarLockViewAccessibility_animateUnlockWithCompletionBlock___block_invoke(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  if (a2)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end