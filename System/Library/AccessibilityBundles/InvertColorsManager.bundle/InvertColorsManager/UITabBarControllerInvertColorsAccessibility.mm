@interface UITabBarControllerInvertColorsAccessibility
- (void)transitionFromViewController:(id)controller toViewController:(id)viewController;
@end

@implementation UITabBarControllerInvertColorsAccessibility

- (void)transitionFromViewController:(id)controller toViewController:(id)viewController
{
  v7.receiver = self;
  v7.super_class = UITabBarControllerInvertColorsAccessibility;
  [(UITabBarControllerInvertColorsAccessibility *)&v7 transitionFromViewController:controller toViewController:viewController];
  v5 = AXLogInvertColors();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_206D0(self, v5);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0, 1u);
}

@end