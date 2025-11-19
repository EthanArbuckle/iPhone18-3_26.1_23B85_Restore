@interface SKWeakContainer
- (UIView)scrollingView;
- (UIView)trackingView;
@end

@implementation SKWeakContainer

- (UIView)scrollingView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollingView);

  return WeakRetained;
}

- (UIView)trackingView
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingView);

  return WeakRetained;
}

@end