@interface MainWindowRootViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityAddSearchToAccessibilityViews:(id)a3;
- (void)_accessibilityAddSwitcherSearchToAccessibilityViews:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityRefreshSearchElementIfNeeded;
- (void)_accessibilitySetAccessibilityElementsForDisplayMode:(int64_t)a3 searchDisplayMode:(int64_t)a4;
- (void)searchBegan;
- (void)searchEnded;
- (void)setupSearchControlForTraitCollection:(id)a3;
- (void)viewDidLoad;
@end

@implementation MainWindowRootViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MainWindowControlHeaderView"];
  [v3 validateClass:@"RootNavigationController"];
  [v3 validateClass:@"MainWindowContentContainerViewController"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceVariable:@"_headerView" withType:"MainWindowControlHeaderView"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceVariable:@"_searchBar" withType:"UISearchBar"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceVariable:@"_searchButton" withType:"UIButton"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceVariable:@"_splitViewController" withType:"UISplitViewController"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceVariable:@"_rootNavigationController" withType:"RootNavigationController"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceVariable:@"_secondaryContainerVC" withType:"MainWindowContentContainerViewController"];
  [v3 validateClass:@"MainWindowContentContainerViewController" hasInstanceVariable:@"_splitViewController" withType:"UISplitViewController"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceVariable:@"_isSearching" withType:"B"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateProtocol:@"UISplitViewControllerDelegate" hasOptionalInstanceMethod:@"splitViewController:willChangeToDisplayMode:"];
  [v3 validateClass:@"MainWindowRootViewController" conformsToProtocol:@"UISplitViewControllerDelegate"];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceMethod:@"setupSearchControlForTraitCollection:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceMethod:@"searchBegan" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MainWindowRootViewController" hasInstanceMethod:@"searchEnded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"RootNavigationController" hasInstanceMethod:@"viewSwitcher" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MainWindowRootViewControllerAccessibility;
  [(MainWindowRootViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MainWindowRootViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsForDisplayMode:0x7FFFFFFFFFFFFFFFLL searchDisplayMode:0x7FFFFFFFFFFFFFFFLL];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MainWindowRootViewControllerAccessibility;
  [(MainWindowRootViewControllerAccessibility *)&v3 viewDidLoad];
  [(MainWindowRootViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsForDisplayMode:0x7FFFFFFFFFFFFFFFLL searchDisplayMode:0x7FFFFFFFFFFFFFFFLL];
}

- (void)setupSearchControlForTraitCollection:(id)a3
{
  v4.receiver = self;
  v4.super_class = MainWindowRootViewControllerAccessibility;
  [(MainWindowRootViewControllerAccessibility *)&v4 setupSearchControlForTraitCollection:a3];
  [(MainWindowRootViewControllerAccessibility *)self _accessibilityRefreshSearchElementIfNeeded];
}

- (void)searchBegan
{
  v3.receiver = self;
  v3.super_class = MainWindowRootViewControllerAccessibility;
  [(MainWindowRootViewControllerAccessibility *)&v3 searchBegan];
  [(MainWindowRootViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsForDisplayMode:0x7FFFFFFFFFFFFFFFLL searchDisplayMode:0x7FFFFFFFFFFFFFFFLL];
}

- (void)searchEnded
{
  v3.receiver = self;
  v3.super_class = MainWindowRootViewControllerAccessibility;
  [(MainWindowRootViewControllerAccessibility *)&v3 searchEnded];
  [(MainWindowRootViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsForDisplayMode:0x7FFFFFFFFFFFFFFFLL searchDisplayMode:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_accessibilitySetAccessibilityElementsForDisplayMode:(int64_t)a3 searchDisplayMode:(int64_t)a4
{
  v7 = objc_opt_new();
  v8 = [(MainWindowRootViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v9 = [(MainWindowRootViewControllerAccessibility *)self safeUIViewForKey:@"_headerView"];
  v10 = [v9 superview];

  if (v10)
  {
    [v7 addObject:v9];
    objc_opt_class();
    v11 = [(MainWindowRootViewControllerAccessibility *)self safeValueForKey:@"_splitViewController"];
    v12 = __UIAccessibilityCastAsClass();

    if ([(MainWindowRootViewControllerAccessibility *)self safeBoolForKey:@"_isSearching"])
    {
      objc_opt_class();
      v13 = [(MainWindowRootViewControllerAccessibility *)self safeValueForKey:@"_secondaryContainerVC"];
      v14 = [v13 safeValueForKey:@"_splitViewController"];
      v15 = __UIAccessibilityCastAsClass();

      if (a4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        a4 = [v15 displayMode];
      }

      v16 = [v15 viewControllerForColumn:0];

      if (v16 && a4 == 3)
      {
        v17 = [(MainWindowRootViewControllerAccessibility *)self safeUIViewForKey:@"_searchBar"];
        [v7 removeAllObjects];
        [v7 axSafelyAddObject:v17];
        v18 = [v12 viewControllerForColumn:2];
        v19 = [v18 safeUIViewForKey:@"view"];

        [v7 axSafelyAddObject:v19];
        [v8 setAccessibilityElements:v7];

LABEL_18:
        goto LABEL_19;
      }
    }

    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a3 = [v12 displayMode];
    }

    v15 = [v12 safeUIViewForKey:@"view"];
    if (a3 == 2)
    {
      v20 = [v12 viewControllerForColumn:0];
      v21 = [v20 safeUIViewForKey:@"view"];

      [v7 axSafelyAddObject:v21];
      [(MainWindowRootViewControllerAccessibility *)self _accessibilityAddSwitcherSearchToAccessibilityViews:v7];
      v22 = [v12 viewControllerForColumn:2];
      v23 = [v22 safeUIViewForKey:@"view"];

      [v7 axSafelyAddObject:v23];
    }

    else
    {
      if (a3 == 1)
      {
        [(MainWindowRootViewControllerAccessibility *)self _accessibilityAddSwitcherSearchToAccessibilityViews:v7];
      }

      [v7 axSafelyAddObject:v15];
    }

    [v8 setAccessibilityElements:v7];
    goto LABEL_18;
  }

  [v8 setAccessibilityElements:0];
LABEL_19:
}

- (void)_accessibilityAddSwitcherSearchToAccessibilityViews:(id)a3
{
  v7 = a3;
  v4 = [(MainWindowRootViewControllerAccessibility *)self safeValueForKey:@"_rootNavigationController"];
  v5 = [v4 safeValueForKey:@"viewSwitcher"];

  v6 = [v5 superview];

  if (v6)
  {
    [v7 addObject:v5];
  }

  [(MainWindowRootViewControllerAccessibility *)self _accessibilityAddSearchToAccessibilityViews:v7];
}

- (BOOL)_accessibilityAddSearchToAccessibilityViews:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(MainWindowRootViewControllerAccessibility *)self safeValueForKey:@"_rootNavigationController"];
    v6 = [v5 safeValueForKey:@"viewSwitcher"];

    v7 = [v4 indexOfObject:v6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v9 = v7;
      v10 = [(MainWindowRootViewControllerAccessibility *)self safeUIViewForKey:@"_searchBar"];
      v11 = [(MainWindowRootViewControllerAccessibility *)self safeUIViewForKey:@"_searchButton"];
      v12 = [v4 indexOfObject:v10];
      v13 = [v4 indexOfObject:v11];
      v14 = [(MainWindowRootViewControllerAccessibility *)self safeUIViewForKey:@"view"];
      v15 = [v10 superview];

      v16 = v10;
      v17 = v11;
      if ((v15 == v14 || ([v11 superview], v18 = objc_claimAutoreleasedReturnValue(), v18, v16 = v11, v17 = v10, v18 == v14)) && (v19 = v16, objc_msgSend(v4, "removeObject:", v17), v19))
      {
        if ([v4 indexOfObject:v19] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = v9 + 1;
          if (v20 == [v4 count])
          {
            [v4 addObject:v19];
          }

          else
          {
            [v4 insertObject:v19 atIndex:v20];
          }

          v8 = 1;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        [v4 removeObject:v10];
        [v4 removeObject:v11];
        v19 = 0;
        v8 = v12 != 0x7FFFFFFFFFFFFFFFLL || v13 != 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_accessibilityRefreshSearchElementIfNeeded
{
  v5 = [(MainWindowRootViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v3 = [v5 accessibilityElements];
  v4 = [v3 mutableCopy];

  if ([(MainWindowRootViewControllerAccessibility *)self _accessibilityAddSearchToAccessibilityViews:v4])
  {
    [v5 setAccessibilityElements:v4];
  }
}

@end