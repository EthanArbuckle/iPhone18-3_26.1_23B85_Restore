@interface _UIFloatingTabBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)accessibilityPath;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateSelectionViewVisibilityAnimated:(BOOL)animated;
@end

@implementation _UIFloatingTabBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v21[1] = a2;
  v21[0] = objc_opt_new();
  v20 = [(_UIFloatingTabBarAccessibility *)selfCopy safeUIViewForKey:@"leftArrowButton"];
  [v20 safeCGFloatForKey:@"contentOpacity"];
  if (v2 > 0.0)
  {
    [v21[0] axSafelyAddObject:v20];
  }

  if (([(_UIFloatingTabBarAccessibility *)selfCopy safeBoolForKey:@"showsSidebarButton"]& 1) != 0)
  {
    v14 = [(_UIFloatingTabBarAccessibility *)selfCopy safeUIViewForKey:@"sidebarButton"];
    [v21[0] axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v14);
  }

  v18 = 0;
  objc_opt_class();
  v13 = [(_UIFloatingTabBarAccessibility *)selfCopy safeUIViewForKey:@"collectionView"];
  v17 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v13);
  v16 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  v19 = v16;
  v8 = v21[0];
  _accessibilitySortedElementsWithin = [v16 _accessibilitySortedElementsWithin];
  [v8 axSafelyAddObjectsFromArray:?];
  *&v3 = MEMORY[0x29EDC9740](_accessibilitySortedElementsWithin).n128_u64[0];
  v10 = v21[0];
  v12 = [(_UIFloatingTabBarAccessibility *)selfCopy safeUIViewForKey:@"pinnedItemsView", v3];
  subviews = [v12 subviews];
  [v10 axSafelyAddObjectsFromArray:?];
  MEMORY[0x29EDC9740](subviews);
  *&v4 = MEMORY[0x29EDC9740](v12).n128_u64[0];
  v15 = [(_UIFloatingTabBarAccessibility *)selfCopy safeUIViewForKey:@"rightArrowButton", v4];
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
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIFloatingTabBarAccessibility;
  [(_UIFloatingTabBarAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  if (([(_UIFloatingTabBarAccessibility *)selfCopy safeBoolForKey:@"showsSidebarButton"]& 1) != 0)
  {
    v2 = [(_UIFloatingTabBarAccessibility *)selfCopy safeUIViewForKey:@"sidebarButton"];
    [v2 setAccessibilityIdentifier:@"ToggleSideBar"];
    MEMORY[0x29EDC9740](v2);
  }
}

- (void)_updateSelectionViewVisibilityAnimated:(BOOL)animated
{
  selfCopy = self;
  v5 = a2;
  animatedCopy = animated;
  v3.receiver = self;
  v3.super_class = _UIFloatingTabBarAccessibility;
  [(_UIFloatingTabBarAccessibility *)&v3 _updateSelectionViewVisibilityAnimated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)accessibilityPath
{
  selfCopy = self;
  v10 = a2;
  v5 = [(_UIFloatingTabBarAccessibility *)self safeValueForKey:@"backgroundView"];
  accessibilityPath = [v5 accessibilityPath];
  v7 = 0;
  if (accessibilityPath)
  {
    v2 = MEMORY[0x29EDC9748](accessibilityPath);
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = _UIFloatingTabBarAccessibility;
    accessibilityPath2 = [(_UIFloatingTabBarAccessibility *)&v9 accessibilityPath];
    v7 = 1;
    v2 = MEMORY[0x29EDC9748](accessibilityPath2);
  }

  v12 = v2;
  if (v7)
  {
    MEMORY[0x29EDC9740](accessibilityPath2);
  }

  MEMORY[0x29EDC9740](accessibilityPath);
  MEMORY[0x29EDC9740](v5);
  v3 = v12;

  return v3;
}

@end