@interface _UISearchBarVisualProviderIOSAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setUpScopeBar;
@end

@implementation _UISearchBarVisualProviderIOSAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UISearchBarVisualProviderIOS";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"scopeBar" withFullSignature:{"@", 0}];
  objc_storeStrong(v5, obj);
}

- (void)setUpScopeBar
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UISearchBarVisualProviderIOSAccessibility;
  [(_UISearchBarVisualProviderIOSAccessibility *)&v3 setUpScopeBar];
  v2 = [(_UISearchBarVisualProviderIOSAccessibility *)v5 safeValueForKey:?];
  [v2 setAccessibilityIdentifier:@"scopeBar"];
  MEMORY[0x29EDC9740](v2);
}

@end