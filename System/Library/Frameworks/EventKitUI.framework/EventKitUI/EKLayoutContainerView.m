@interface EKLayoutContainerView
- (EKLayoutContainerViewDelegate)delegate;
- (void)layoutSubviews;
@end

@implementation EKLayoutContainerView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = EKLayoutContainerView;
  [(EKLayoutContainerView *)&v6 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 layoutContainerView:self];
  }
}

- (EKLayoutContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end