@interface UISplitViewControllerPanelImplAccessibility__Preferences__UIKit
- (void)_viewControllerChildViewControllersDidChange:(id)a3;
@end

@implementation UISplitViewControllerPanelImplAccessibility__Preferences__UIKit

- (void)_viewControllerChildViewControllersDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISplitViewControllerPanelImplAccessibility__Preferences__UIKit;
  [(UISplitViewControllerPanelImplAccessibility__Preferences__UIKit *)&v9 _viewControllerChildViewControllersDidChange:v4];
  objc_opt_class();
  v5 = [(UISplitViewControllerPanelImplAccessibility__Preferences__UIKit *)self safeValueForKey:@"splitViewController"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6 && ([v6 isCollapsed] & 1) == 0)
  {
    v7 = [v6 detailViewController];
    v8 = [v7 view];

    if (v8)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v8);
    }
  }
}

@end