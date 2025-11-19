@interface SFAutomaticPasswordInputViewControllerAccessibility
@end

@implementation SFAutomaticPasswordInputViewControllerAccessibility

void __71___SFAutomaticPasswordInputViewControllerAccessibility_viewWillAppear___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeUIViewForKey:@"_inputView"];
  argument = [v1 _accessibilityFindDescendant:&__block_literal_global_1];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
}

@end