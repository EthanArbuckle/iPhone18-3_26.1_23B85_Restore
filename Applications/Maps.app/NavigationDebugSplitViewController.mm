@interface NavigationDebugSplitViewController
- (BOOL)prefersStatusBarHidden;
@end

@implementation NavigationDebugSplitViewController

- (BOOL)prefersStatusBarHidden
{
  v3 = [(NavigationDebugSplitViewController *)self shouldHideStatusBar];

  if (v3)
  {
    v4 = [(NavigationDebugSplitViewController *)self shouldHideStatusBar];
    v5 = v4[2]();

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