@interface UIViewController
- (void)settingsNavigationProxy_popToRoot;
@end

@implementation UIViewController

- (void)settingsNavigationProxy_popToRoot
{
  selfCopy = self;
  UIViewController.settingsNavigationProxy_popToRoot()();
}

@end