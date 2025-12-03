@interface _UITabBarVisualProviderLegacyIOSAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)createViewForTabBarItem:(id)item;
@end

@implementation _UITabBarVisualProviderLegacyIOSAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UITabBarVisualProviderLegacyIOS" hasInstanceMethod:@"createViewForTabBarItem:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)createViewForTabBarItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v5.receiver = selfCopy;
  v5.super_class = _UITabBarVisualProviderLegacyIOSAccessibility;
  v6 = [(_UITabBarVisualProviderLegacyIOSAccessibility *)&v5 createViewForTabBarItem:location[0]];
  AXApplyTabBarItemPropertiesToView(location[0], v6);
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end