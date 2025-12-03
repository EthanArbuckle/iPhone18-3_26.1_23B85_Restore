@interface PassThroughView
- (PassThroughViewDelegate)delegate;
- (UIView)targetView;
- (void)didMoveToSuperview;
@end

@implementation PassThroughView

- (void)didMoveToSuperview
{
  delegate = [(PassThroughView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PassThroughView *)self delegate];
    superview = [(PassThroughView *)self superview];
    [delegate2 passThroughView:self didMoveToView:superview];
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