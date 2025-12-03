@interface CHTabBarController
- (void)setCustomizableViewControllers:(id)controllers;
@end

@implementation CHTabBarController

- (void)setCustomizableViewControllers:(id)controllers
{
  v3.receiver = self;
  v3.super_class = CHTabBarController;
  [(CHTabBarController *)&v3 setCustomizableViewControllers:0];
}

@end