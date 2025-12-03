@interface UIAccessibilityDismissDraftElement
- (id)mailApplicationScene;
- (void)_accessibilityWithdrawActiveItem;
@end

@implementation UIAccessibilityDismissDraftElement

- (void)_accessibilityWithdrawActiveItem
{
  mailApplicationScene = [(UIAccessibilityDismissDraftElement *)self mailApplicationScene];
  v3 = mailApplicationScene;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  accessibilityContainer = [(UIAccessibilityDismissDraftElement *)self accessibilityContainer];
  [accessibilityContainer _accessibilitySetAdditionalElements:0];
}

- (id)mailApplicationScene
{
  WeakRetained = objc_loadWeakRetained(&self->_mailApplicationScene);

  return WeakRetained;
}

@end