@interface UIAccessibilityDismissDraftElement
- (id)mailApplicationScene;
- (void)_accessibilityWithdrawActiveItem;
@end

@implementation UIAccessibilityDismissDraftElement

- (void)_accessibilityWithdrawActiveItem
{
  v5 = [(UIAccessibilityDismissDraftElement *)self mailApplicationScene];
  v3 = v5;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  v4 = [(UIAccessibilityDismissDraftElement *)self accessibilityContainer];
  [v4 _accessibilitySetAdditionalElements:0];
}

- (id)mailApplicationScene
{
  WeakRetained = objc_loadWeakRetained(&self->_mailApplicationScene);

  return WeakRetained;
}

@end