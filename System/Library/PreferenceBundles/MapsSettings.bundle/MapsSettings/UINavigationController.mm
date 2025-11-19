@interface UINavigationController
- (UIViewController)rootViewController;
@end

@implementation UINavigationController

- (UIViewController)rootViewController
{
  v2 = [(UINavigationController *)self viewControllers];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end