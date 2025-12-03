@interface MapsMenuButton
- (MapsMenuButton)initWithDelegate:(id)delegate;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation MapsMenuButton

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v11.receiver = self;
  v11.super_class = MapsMenuButton;
  [(MapsMenuButton *)&v11 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animatorCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(interaction) = objc_opt_respondsToSelector();

  if (interaction)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 menuWillDismissWithAnimator:animatorCopy];
  }
}

- (MapsMenuButton)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MapsMenuButton;
  v5 = [(MapsMenuButton *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end