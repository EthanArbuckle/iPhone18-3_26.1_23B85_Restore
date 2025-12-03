@interface SplitViewSegmentedControl
- (SplitViewWindowRootViewControllerDelegate)splitViewController;
- (void)didMoveToWindow;
@end

@implementation SplitViewSegmentedControl

- (void)didMoveToWindow
{
  splitViewController = [(SplitViewSegmentedControl *)self splitViewController];
  [splitViewController segmentedControlAddedToWindow];
}

- (SplitViewWindowRootViewControllerDelegate)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

@end