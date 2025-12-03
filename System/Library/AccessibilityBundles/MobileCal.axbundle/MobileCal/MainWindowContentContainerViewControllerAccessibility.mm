@interface MainWindowContentContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MainWindowContentContainerViewControllerAccessibility)initWithRootNavigationController:(id *)controller;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetAccessibilityElements;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
@end

@implementation MainWindowContentContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MainWindowRootViewController"];
  [validationsCopy validateClass:@"RootNavigationController"];
  [validationsCopy validateClass:@"MainWindowContentContainerViewController" hasInstanceVariable:@"_containerViewController" withType:"UIViewController"];
  [validationsCopy validateClass:@"MainWindowContentContainerViewController" hasInstanceVariable:@"_rootNavigationController" withType:"RootNavigationController"];
  [validationsCopy validateClass:@"MainWindowContentContainerViewController" hasInstanceMethod:@"initWithRootNavigationController:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateProtocol:@"UISplitViewControllerDelegate" hasOptionalInstanceMethod:@"splitViewController:willChangeToDisplayMode:"];
  [validationsCopy validateClass:@"MainWindowContentContainerViewController" conformsToProtocol:@"UISplitViewControllerDelegate"];
  [validationsCopy validateClass:@"MainWindowContentContainerViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceMethod:@"viewSwitcher" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MainWindowContentContainerViewControllerAccessibility;
  [(MainWindowContentContainerViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MainWindowContentContainerViewControllerAccessibility *)self _accessibilitySetAccessibilityElements];
}

- (MainWindowContentContainerViewControllerAccessibility)initWithRootNavigationController:(id *)controller
{
  v6.receiver = self;
  v6.super_class = MainWindowContentContainerViewControllerAccessibility;
  v3 = [(MainWindowContentContainerViewControllerAccessibility *)&v6 initWithRootNavigationController:controller];
  v4 = v3;
  if (v3)
  {
    [(MainWindowContentContainerViewControllerAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  objc_opt_class();
  v7 = [(MainWindowContentContainerViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  v8 = __UIAccessibilityCastAsSafeCategory();

  [v8 _accessibilitySetAccessibilityElementsForDisplayMode:0x7FFFFFFFFFFFFFFFLL searchDisplayMode:mode];
}

- (void)_accessibilitySetAccessibilityElements
{
  v3 = [(MainWindowContentContainerViewControllerAccessibility *)self safeValueForKey:@"_rootNavigationController"];
  v4 = [v3 safeUIViewForKey:@"viewSwitcher"];

  v5 = [(MainWindowContentContainerViewControllerAccessibility *)self safeValueForKey:@"_containerViewController"];
  v6 = [v5 safeUIViewForKey:@"view"];

  subviews = [v6 subviews];
  v8 = [subviews mutableCopy];

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __95__MainWindowContentContainerViewControllerAccessibility__accessibilitySetAccessibilityElements__block_invoke;
  v10[3] = &unk_29F2D28F0;
  v11 = v4;
  v9 = v4;
  [v8 ax_removeObjectsFromArrayUsingBlock:v10];
  [v6 setAccessibilityElements:v8];
}

@end