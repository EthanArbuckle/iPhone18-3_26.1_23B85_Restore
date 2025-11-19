@interface PassThroughView
- (PassThroughViewDelegate)delegate;
- (UIView)targetView;
- (void)didMoveToSuperview;
@end

@implementation PassThroughView

- (void)didMoveToSuperview
{
  v3 = [(PassThroughView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(PassThroughView *)self delegate];
    v5 = [(PassThroughView *)self superview];
    [v6 passThroughView:self didMoveToView:v5];
  }
}

- (PassThroughViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

@end