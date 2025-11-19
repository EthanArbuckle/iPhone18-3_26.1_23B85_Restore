@interface CSPasscodeViewControllerAccessibility
@end

@implementation CSPasscodeViewControllerAccessibility

void __107__CSPasscodeViewControllerAccessibility_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

@end