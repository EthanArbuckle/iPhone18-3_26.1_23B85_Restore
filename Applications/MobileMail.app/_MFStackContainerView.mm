@interface _MFStackContainerView
- (UIEdgeInsets)layoutInsets;
- (_MFStackContainerViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation _MFStackContainerView

- (void)willMoveToWindow:(id)window
{
  if (window)
  {
    delegate = [(_MFStackContainerView *)self delegate];
    [delegate stackContainerViewWillBecomeVisible:self];
  }
}

- (void)didMoveToWindow
{
  window = [(_MFStackContainerView *)self window];

  if (!window)
  {
    delegate = [(_MFStackContainerView *)self delegate];
    [delegate stackContainerViewDidBecomeInvisible:self];
  }
}

- (_MFStackContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)layoutInsets
{
  top = self->_layoutInsets.top;
  left = self->_layoutInsets.left;
  bottom = self->_layoutInsets.bottom;
  right = self->_layoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end