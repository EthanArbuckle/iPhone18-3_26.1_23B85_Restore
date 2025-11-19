@interface UIViewController
- (void)settingsNavigationProxy_popToRoot;
@end

@implementation UIViewController

- (void)settingsNavigationProxy_popToRoot
{
  v2 = self;
  UIViewController.settingsNavigationProxy_popToRoot()();
}

@end