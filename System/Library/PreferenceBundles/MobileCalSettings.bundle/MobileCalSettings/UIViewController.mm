@interface UIViewController
- (void)settingsNavigationProxy_pop;
@end

@implementation UIViewController

- (void)settingsNavigationProxy_pop
{
  selfCopy = self;
  UIViewController.settingsNavigationProxy_pop()();
}

@end