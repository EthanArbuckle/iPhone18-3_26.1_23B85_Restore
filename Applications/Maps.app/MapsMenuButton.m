@interface MapsMenuButton
- (MapsMenuButton)initWithDelegate:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation MapsMenuButton

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v11.receiver = self;
  v11.super_class = MapsMenuButton;
  [(MapsMenuButton *)&v11 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a3) = objc_opt_respondsToSelector();

  if (a3)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 menuWillDismissWithAnimator:v8];
  }
}

- (MapsMenuButton)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MapsMenuButton;
  v5 = [(MapsMenuButton *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end