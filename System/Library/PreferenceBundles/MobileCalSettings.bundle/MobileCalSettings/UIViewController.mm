@interface UIViewController
- (void)settingsNavigationProxy_pop;
@end

@implementation UIViewController

- (void)settingsNavigationProxy_pop
{
  v2 = self;
  UIViewController.settingsNavigationProxy_pop()();
}

@end