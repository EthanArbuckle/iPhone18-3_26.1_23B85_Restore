@interface UINavigationController
- (UIViewController)rootViewController;
@end

@implementation UINavigationController

- (UIViewController)rootViewController
{
  viewControllers = [(UINavigationController *)self viewControllers];
  if ([viewControllers count])
  {
    v3 = [viewControllers objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end