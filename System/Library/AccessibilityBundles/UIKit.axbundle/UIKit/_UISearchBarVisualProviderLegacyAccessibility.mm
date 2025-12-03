@interface _UISearchBarVisualProviderLegacyAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setUpScopeBar;
@end

@implementation _UISearchBarVisualProviderLegacyAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UISearchBarVisualProviderLegacy";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"scopeBar" withFullSignature:{"@", 0}];
  objc_storeStrong(v5, obj);
}

- (void)setUpScopeBar
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UISearchBarVisualProviderLegacyAccessibility;
  [(_UISearchBarVisualProviderLegacyAccessibility *)&v3 setUpScopeBar];
  v2 = [(_UISearchBarVisualProviderLegacyAccessibility *)selfCopy safeValueForKey:?];
  [v2 setAccessibilityIdentifier:@"scopeBar"];
  MEMORY[0x29EDC9740](v2);
}

@end