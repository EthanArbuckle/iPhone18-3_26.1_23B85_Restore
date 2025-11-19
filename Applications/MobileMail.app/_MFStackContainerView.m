@interface _MFStackContainerView
- (UIEdgeInsets)layoutInsets;
- (_MFStackContainerViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _MFStackContainerView

- (void)willMoveToWindow:(id)a3
{
  if (a3)
  {
    v4 = [(_MFStackContainerView *)self delegate];
    [v4 stackContainerViewWillBecomeVisible:self];
  }
}

- (void)didMoveToWindow
{
  v3 = [(_MFStackContainerView *)self window];

  if (!v3)
  {
    v4 = [(_MFStackContainerView *)self delegate];
    [v4 stackContainerViewDidBecomeInvisible:self];
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