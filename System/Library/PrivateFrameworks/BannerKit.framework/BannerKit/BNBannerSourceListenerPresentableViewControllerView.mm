@interface BNBannerSourceListenerPresentableViewControllerView
- (BNBannerSourceListenerPresentableViewControllerViewDelegate)delegate;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation BNBannerSourceListenerPresentableViewControllerView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(BNBannerSourceListenerPresentableViewControllerView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v21.receiver = self;
  v21.super_class = BNBannerSourceListenerPresentableViewControllerView;
  [(BNBannerSourceListenerPresentableViewControllerView *)&v21 setFrame:x, y, width, height];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(BNBannerSourceListenerPresentableViewControllerView *)self frame];
  v23.origin.x = v17;
  v23.origin.y = v18;
  v23.size.width = v19;
  v23.size.height = v20;
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  if (!CGRectEqualToRect(v22, v23) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained bannerSourceListenerPresentableViewControllerViewDidChangeSize:self];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(BNBannerSourceListenerPresentableViewControllerView *)self bounds];
  v9 = v8;
  v11 = v10;
  v16.receiver = self;
  v16.super_class = BNBannerSourceListenerPresentableViewControllerView;
  [(BNBannerSourceListenerPresentableViewControllerView *)&v16 setBounds:x, y, width, height];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(BNBannerSourceListenerPresentableViewControllerView *)self bounds];
  v15 = v9 == v14 && v11 == v13;
  if (!v15 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained bannerSourceListenerPresentableViewControllerViewDidChangeSize:self];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained contentInsetsForBannerSourceListenerPresentableViewControllerView:self];
    [(BNBannerSourceListenerPresentableViewControllerView *)self bounds];
    UIRectInset();
    v13.x = x;
    v13.y = y;
    v9 = CGRectContainsPoint(v14, v13);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BNBannerSourceListenerPresentableViewControllerView;
    v9 = [(BNBannerSourceListenerPresentableViewControllerView *)&v12 pointInside:eventCopy withEvent:x, y];
  }

  v10 = v9;

  return v10;
}

- (BNBannerSourceListenerPresentableViewControllerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end