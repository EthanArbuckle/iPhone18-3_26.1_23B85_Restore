@interface _UITabBarVisualProviderLegacyIOSAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)createViewForTabBarItem:(id)a3;
@end

@implementation _UITabBarVisualProviderLegacyIOSAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UITabBarVisualProviderLegacyIOS" hasInstanceMethod:@"createViewForTabBarItem:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)createViewForTabBarItem:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = _UITabBarVisualProviderLegacyIOSAccessibility;
  v6 = [(_UITabBarVisualProviderLegacyIOSAccessibility *)&v5 createViewForTabBarItem:location[0]];
  AXApplyTabBarItemPropertiesToView(location[0], v6);
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end