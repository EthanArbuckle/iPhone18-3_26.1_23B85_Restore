@interface SBAXFakeAppSwitcherAccessibilityElement
- (id)deckSwitcherDelegate;
@end

@implementation SBAXFakeAppSwitcherAccessibilityElement

void __72__SBAXFakeAppSwitcherAccessibilityElement__accessibilityScrollToVisible__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) deckSwitcherDelegate];
  v2 = [*(a1 + 32) appLayout];
  [v3 _scrollToAppLayout:v2 animated:1 alignment:2 completion:0];
}

- (id)deckSwitcherDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deckSwitcherDelegate);

  return WeakRetained;
}

@end