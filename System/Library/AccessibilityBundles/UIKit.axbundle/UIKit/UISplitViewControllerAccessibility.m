@interface UISplitViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)_axModalizeViewControllerViews;
- (id)_accessibilitySpeakThisViewController;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setViewControllers:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation UISplitViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UISplitViewController" hasInstanceVariable:@"_impl" withType:"<_UISplitViewControllerImplementing>"];
  [location[0] validateClass:@"UISplitViewControllerClassicImpl" conformsToProtocol:?];
  [location[0] validateClass:@"UISplitViewControllerPanelImpl" conformsToProtocol:@"UISplitViewControllerImpl"];
  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = UISplitViewControllerAccessibility;
  [(UISplitViewControllerAccessibility *)&v3 viewDidAppear:a3];
  [(UISplitViewControllerAccessibility *)v6 _axModalizeViewControllerViews];
}

- (double)_axModalizeViewControllerViews
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = a1;
  if (a1)
  {
    v12 = 1;
    memset(__b, 0, sizeof(__b));
    obj = [v13 safeValueForKey:@"viewControllers"];
    v8 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(__b[1] + 8 * v5);
        location = [v11 view];
        [location setShouldGroupAccessibilityChildren:1];
        if ((v12 & 1) != 0 && ([v13 isCollapsed] & 1) == 0 && objc_msgSend(v13, "displayMode") == 2)
        {
          [location _accessibilitySetIsScannerGroup:1];
          [location _accessibilitySetScannerGroupTraits:16];
        }

        else
        {
          [location _accessibilitySetIsScannerGroup:0];
          [location _accessibilitySetScannerGroupTraits:0];
        }

        v12 = 0;
        objc_storeStrong(&location, 0);
        ++v5;
        v6 = v2;
        if (v3 + 1 >= v2)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    *&result = MEMORY[0x29EDC9740](obj).n128_u64[0];
  }

  return result;
}

- (void)setViewControllers:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UISplitViewControllerAccessibility;
  [(UISplitViewControllerAccessibility *)&v3 setViewControllers:location[0]];
  [(UISplitViewControllerAccessibility *)v5 _axModalizeViewControllerViews];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = UISplitViewControllerAccessibility;
  [(UISplitViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v2 = [(UISplitViewControllerAccessibility *)v12 _axModalizeViewControllerViews];
  v9 = [(UISplitViewControllerAccessibility *)v12 safeValueForKey:@"_impl", v2];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __80__UISplitViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](v9);
  AXPerformSafeBlock();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
}

- (id)_accessibilitySpeakThisViewController
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UISplitViewControllerAccessibility *)self safeValueForKey:@"_impl"];
  v3 = [v4[0] _accessibilitySpeakThisViewController];
  objc_storeStrong(v4, 0);

  return v3;
}

@end