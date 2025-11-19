@interface UILayoutContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)shouldGroupAccessibilityChildren;
- (int64_t)_accessibilityCompareElement:(id)a3 toElement:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation UILayoutContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = "@";
  [location[0] validateClass:@"UILayoutContainerView" hasInstanceMethod:@"delegate" withFullSignature:0];
  v7 = @"UINavigationController";
  [location[0] validateClass:?];
  v3 = @"UIViewController";
  [location[0] validateClass:v7 isKindOfClass:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"view" withFullSignature:{v8, 0}];
  v6 = "B";
  [location[0] validateClass:v7 hasInstanceMethod:@"isNavigationBarHidden" withFullSignature:0];
  [location[0] validateClass:v7 hasInstanceMethod:@"navigationBar" withFullSignature:{v8, 0}];
  v4 = @"_UINavigationControllerPalette";
  [location[0] validateClass:?];
  [location[0] validateClass:v7 hasInstanceVariable:@"_topPalette" withType:"_UINavigationControllerPalette"];
  v5 = @"_UINavigationPalette";
  [location[0] validateClass:v4 conformsToProtocol:?];
  [location[0] validateProtocol:v5 hasRequiredInstanceMethod:@"isAttached"];
  [location[0] validateProtocol:v5 hasRequiredInstanceMethod:@"paletteIsHidden"];
  [location[0] validateClass:v7 hasInstanceMethod:@"isToolbarHidden" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"toolbar" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"navigationTransitionView" withFullSignature:{v8, 0}];
  objc_storeStrong(v10, v9);
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UILayoutContainerViewAccessibility;
  return [(UILayoutContainerViewAccessibility *)&v3 shouldGroupAccessibilityChildren];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11 = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = UILayoutContainerViewAccessibility;
  [(UILayoutContainerViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v8 = [(UILayoutContainerViewAccessibility *)v11 safeValueForKey:@"delegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v8 view];
    [v2 _accessibilitySetIsSortPriorityContainer:1];
    v7 = 0;
    if (([v8 safeBoolForKey:{@"isNavigationBarHidden", MEMORY[0x29EDC9740](v2).n128_f64[0]}] & 1) == 0)
    {
      v6 = [v8 safeValueForKey:@"navigationBar"];
      [v6 _accessibilitySetSortPriority:1000];
      v7 = 1;
      objc_storeStrong(&v6, 0);
    }

    v5 = [v8 safeValueForKey:@"_topPalette"];
    if (v5 && ([v5 safeBoolForKey:@"isAttached"] & 1) != 0 && (objc_msgSend(v5, "safeBoolForKey:", @"paletteIsHidden") & 1) == 0)
    {
      [v5 _accessibilitySetSortPriority:999];
      v7 = 1;
    }

    if (([v8 safeBoolForKey:@"isToolbarHidden"] & 1) == 0)
    {
      v4 = [v8 safeValueForKey:@"toolbar"];
      [v4 _accessibilitySetSortPriority:997];
      v7 = 1;
      objc_storeStrong(&v4, 0);
    }

    if (v7)
    {
      v3 = [v8 safeValueForKey:@"navigationTransitionView"];
      [v3 _accessibilitySetSortPriority:998];
      [v3 setShouldGroupAccessibilityChildren:1];
      objc_storeStrong(&v3, 0);
    }

    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v8, 0);
}

- (int64_t)_accessibilityCompareElement:(id)a3 toElement:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = [MEMORY[0x29EDC7DA8] viewControllerForView:v20];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((v16 = [v17 viewControllers], v6 = location[0], v8 = objc_msgSend(v16, "firstObject"), v7 = objc_msgSend(v8, "view"), v15 = objc_msgSend(v6, "_accessibilityIsDescendantOfElement:"), MEMORY[0x29EDC9740](v7), *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0], v9 = v18, v11 = objc_msgSend(v16, "firstObject", v4), v10 = objc_msgSend(v11, "view"), v14 = objc_msgSend(v9, "_accessibilityIsDescendantOfElement:"), MEMORY[0x29EDC9740](v10), MEMORY[0x29EDC9740](v11), (v15 & 1) == 0) || (v14 & 1) != 0 ? ((v15 & 1) != 0 || (v14 & 1) == 0 ? (v13 = 0) : (v21 = 1, v13 = 1)) : (v21 = -1, v13 = 1), objc_storeStrong(&v16, 0), !v13))
  {
    v21 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v21;
}

- (void)layoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UILayoutContainerViewAccessibility;
  [(UILayoutContainerViewAccessibility *)&v2 layoutSubviews];
  [(UILayoutContainerViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
}

@end