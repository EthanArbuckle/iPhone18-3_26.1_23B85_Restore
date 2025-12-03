@interface UISplitViewControllerPanelImplAccessibility__Preferences__UIKit
- (void)_viewControllerChildViewControllersDidChange:(id)change;
@end

@implementation UISplitViewControllerPanelImplAccessibility__Preferences__UIKit

- (void)_viewControllerChildViewControllersDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = UISplitViewControllerPanelImplAccessibility__Preferences__UIKit;
  [(UISplitViewControllerPanelImplAccessibility__Preferences__UIKit *)&v9 _viewControllerChildViewControllersDidChange:changeCopy];
  objc_opt_class();
  v5 = [(UISplitViewControllerPanelImplAccessibility__Preferences__UIKit *)self safeValueForKey:@"splitViewController"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6 && ([v6 isCollapsed] & 1) == 0)
  {
    detailViewController = [v6 detailViewController];
    view = [detailViewController view];

    if (view)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], view);
    }
  }
}

@end