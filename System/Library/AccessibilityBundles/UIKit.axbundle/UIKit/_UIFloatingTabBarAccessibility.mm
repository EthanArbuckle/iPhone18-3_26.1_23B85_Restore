@interface _UIFloatingTabBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityPath;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateSelectionViewVisibilityAnimated:(BOOL)a3;
@end

@implementation _UIFloatingTabBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = @"_UIFloatingTabBar";
  v3 = @"_UITabMorphing";
  [location[0] validateClass:? conformsToProtocol:?];
  [location[0] validateProtocol:@"_UITabMorphing" hasRequiredInstanceMethod:@"backgroundView"];
  v4 = "@";
  [location[0] validateClass:@"_UIFloatingTabBar" hasInstanceMethod:@"leftArrowButton" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"sidebarButton" withFullSignature:{v4, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"collectionView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"pinnedItemsView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"rightArrowButton" withFullSignature:{v4, 0}];
  v5 = "B";
  [location[0] validateClass:v6 hasInstanceMethod:@"showsSidebarButton" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"_updateSelectionViewVisibilityAnimated:" withFullSignature:{"v", v5, 0}];
  [location[0] validateClass:@"_UIFloatingTabBarPageButton" hasInstanceMethod:@"contentOpacity" withFullSignature:{"d", 0}];
  objc_storeStrong(v8, v7);
}

- (id)accessibilityElements
{
  v22 = self;
  v21[1] = a2;
  v21[0] = objc_opt_new();
  v20 = [(_UIFloatingTabBarAccessibility *)v22 safeUIViewForKey:@"leftArrowButton"];
  [v20 safeCGFloatForKey:@"contentOpacity"];
  if (v2 > 0.0)
  {
    [v21[0] axSafelyAddObject:v20];
  }

  if (([(_UIFloatingTabBarAccessibility *)v22 safeBoolForKey:@"showsSidebarButton"]& 1) != 0)
  {
    v14 = [(_UIFloatingTabBarAccessibility *)v22 safeUIViewForKey:@"sidebarButton"];
    [v21[0] axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v14);
  }

  v18 = 0;
  objc_opt_class();
  v13 = [(_UIFloatingTabBarAccessibility *)v22 safeUIViewForKey:@"collectionView"];
  v17 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v13);
  v16 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  v19 = v16;
  v8 = v21[0];
  v9 = [v16 _accessibilitySortedElementsWithin];
  [v8 axSafelyAddObjectsFromArray:?];
  *&v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v10 = v21[0];
  v12 = [(_UIFloatingTabBarAccessibility *)v22 safeUIViewForKey:@"pinnedItemsView", v3];
  v11 = [v12 subviews];
  [v10 axSafelyAddObjectsFromArray:?];
  MEMORY[0x29EDC9740](v11);
  *&v4 = MEMORY[0x29EDC9740](v12).n128_u64[0];
  v15 = [(_UIFloatingTabBarAccessibility *)v22 safeUIViewForKey:@"rightArrowButton", v4];
  [v15 safeCGFloatForKey:@"contentOpacity"];
  if (v5 > 0.0)
  {
    [v21[0] axSafelyAddObject:v15];
  }

  v7 = MEMORY[0x29EDC9748](v21[0]);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);

  return v7;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIFloatingTabBarAccessibility;
  [(_UIFloatingTabBarAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  if (([(_UIFloatingTabBarAccessibility *)v5 safeBoolForKey:@"showsSidebarButton"]& 1) != 0)
  {
    v2 = [(_UIFloatingTabBarAccessibility *)v5 safeUIViewForKey:@"sidebarButton"];
    [v2 setAccessibilityIdentifier:@"ToggleSideBar"];
    MEMORY[0x29EDC9740](v2);
  }
}

- (void)_updateSelectionViewVisibilityAnimated:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = _UIFloatingTabBarAccessibility;
  [(_UIFloatingTabBarAccessibility *)&v3 _updateSelectionViewVisibilityAnimated:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)accessibilityPath
{
  v11 = self;
  v10 = a2;
  v5 = [(_UIFloatingTabBarAccessibility *)self safeValueForKey:@"backgroundView"];
  v6 = [v5 accessibilityPath];
  v7 = 0;
  if (v6)
  {
    v2 = MEMORY[0x29EDC9748](v6);
  }

  else
  {
    v9.receiver = v11;
    v9.super_class = _UIFloatingTabBarAccessibility;
    v8 = [(_UIFloatingTabBarAccessibility *)&v9 accessibilityPath];
    v7 = 1;
    v2 = MEMORY[0x29EDC9748](v8);
  }

  v12 = v2;
  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v5);
  v3 = v12;

  return v3;
}

@end