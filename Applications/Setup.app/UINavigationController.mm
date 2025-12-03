@interface UINavigationController
- (void)buddy_presentAlertController:(id)controller;
@end

@implementation UINavigationController

- (void)buddy_presentAlertController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  topViewController = [(UINavigationController *)selfCopy topViewController];
  presentedViewController = [(UIViewController *)topViewController presentedViewController];

  topViewController2 = [(UINavigationController *)selfCopy topViewController];
  if (presentedViewController)
  {
    presentedViewController2 = [(UIViewController *)topViewController2 presentedViewController];
    [(UIViewController *)presentedViewController2 presentViewController:location[0] animated:1 completion:0];
  }

  else
  {
    [(UIViewController *)topViewController2 presentViewController:location[0] animated:1 completion:0];
  }

  objc_storeStrong(location, 0);
}

@end