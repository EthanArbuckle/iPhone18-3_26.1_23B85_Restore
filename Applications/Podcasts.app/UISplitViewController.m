@interface UISplitViewController
- (UIViewController)mt_detailViewController;
- (UIViewController)mt_masterViewController;
@end

@implementation UISplitViewController

- (UIViewController)mt_masterViewController
{
  v2 = [(UISplitViewController *)self viewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (UIViewController)mt_detailViewController
{
  v3 = [(UISplitViewController *)self viewControllers];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(UISplitViewController *)self viewControllers];
    v6 = [v5 objectAtIndexedSubscript:1];
  }

  return v6;
}

@end