@interface UISplitViewController
- (UIViewController)mt_detailViewController;
- (UIViewController)mt_masterViewController;
@end

@implementation UISplitViewController

- (UIViewController)mt_masterViewController
{
  viewControllers = [(UISplitViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (UIViewController)mt_detailViewController
{
  viewControllers = [(UISplitViewController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4 < 2)
  {
    v6 = 0;
  }

  else
  {
    viewControllers2 = [(UISplitViewController *)self viewControllers];
    v6 = [viewControllers2 objectAtIndexedSubscript:1];
  }

  return v6;
}

@end