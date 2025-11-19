@interface _InfiniteScrollViewController
- (_InfiniteScrollViewControllerDelegate)delegate;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation _InfiniteScrollViewController

- (void)viewDidLayoutSubviews
{
  v2 = [(_InfiniteScrollViewController *)self delegate];
  [v2 scrollViewDidLayoutSubviews];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = _InfiniteScrollViewController;
  [(_InfiniteScrollViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = [(_InfiniteScrollViewController *)self delegate];
  [v3 scrollViewSafeAreasDidChange];
}

- (_InfiniteScrollViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end