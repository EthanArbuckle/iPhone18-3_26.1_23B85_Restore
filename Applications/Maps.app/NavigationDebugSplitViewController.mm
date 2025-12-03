@interface NavigationDebugSplitViewController
- (BOOL)prefersStatusBarHidden;
@end

@implementation NavigationDebugSplitViewController

- (BOOL)prefersStatusBarHidden
{
  shouldHideStatusBar = [(NavigationDebugSplitViewController *)self shouldHideStatusBar];

  if (shouldHideStatusBar)
  {
    shouldHideStatusBar2 = [(NavigationDebugSplitViewController *)self shouldHideStatusBar];
    v5 = shouldHideStatusBar2[2]();

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NavigationDebugSplitViewController;
    return [(NavigationDebugSplitViewController *)&v7 prefersStatusBarHidden];
  }
}

@end