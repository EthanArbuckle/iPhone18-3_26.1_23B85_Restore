@interface UITabBarControllerInvertColorsAccessibility
- (void)transitionFromViewController:(id)a3 toViewController:(id)a4;
@end

@implementation UITabBarControllerInvertColorsAccessibility

- (void)transitionFromViewController:(id)a3 toViewController:(id)a4
{
  v7.receiver = self;
  v7.super_class = UITabBarControllerInvertColorsAccessibility;
  [(UITabBarControllerInvertColorsAccessibility *)&v7 transitionFromViewController:a3 toViewController:a4];
  v5 = AXLogInvertColors();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_206D0(self, v5);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0, 1u);
}

@end