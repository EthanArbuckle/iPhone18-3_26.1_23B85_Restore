@interface SplitViewSegmentedControl
- (SplitViewWindowRootViewControllerDelegate)splitViewController;
- (void)didMoveToWindow;
@end

@implementation SplitViewSegmentedControl

- (void)didMoveToWindow
{
  v2 = [(SplitViewSegmentedControl *)self splitViewController];
  [v2 segmentedControlAddedToWindow];
}

- (SplitViewWindowRootViewControllerDelegate)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

@end