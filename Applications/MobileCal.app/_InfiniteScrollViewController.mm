@interface _InfiniteScrollViewController
- (_InfiniteScrollViewControllerDelegate)delegate;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation _InfiniteScrollViewController

- (void)viewDidLayoutSubviews
{
  delegate = [(_InfiniteScrollViewController *)self delegate];
  [delegate scrollViewDidLayoutSubviews];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = _InfiniteScrollViewController;
  [(_InfiniteScrollViewController *)&v4 viewSafeAreaInsetsDidChange];
  delegate = [(_InfiniteScrollViewController *)self delegate];
  [delegate scrollViewSafeAreasDidChange];
}

- (_InfiniteScrollViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end