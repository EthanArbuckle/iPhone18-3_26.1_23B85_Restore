@interface UINavigationController
- (void)buddy_presentAlertController:(id)a3;
@end

@implementation UINavigationController

- (void)buddy_presentAlertController:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(UINavigationController *)v8 topViewController];
  v4 = [(UIViewController *)v3 presentedViewController];

  v5 = [(UINavigationController *)v8 topViewController];
  if (v4)
  {
    v6 = [(UIViewController *)v5 presentedViewController];
    [(UIViewController *)v6 presentViewController:location[0] animated:1 completion:0];
  }

  else
  {
    [(UIViewController *)v5 presentViewController:location[0] animated:1 completion:0];
  }

  objc_storeStrong(location, 0);
}

@end