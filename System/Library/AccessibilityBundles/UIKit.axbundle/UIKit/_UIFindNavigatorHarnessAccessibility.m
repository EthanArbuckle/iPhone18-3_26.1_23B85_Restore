@interface _UIFindNavigatorHarnessAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation _UIFindNavigatorHarnessAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIFindNavigatorView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIFindNavigatorSearchTextField" isKindOfClass:@"UISearchTextField"];
  v7 = "@";
  [location[0] validateClass:@"_UIFindNavigatorView" hasInstanceMethod:@"searchTextField" withFullSignature:0];
  v4 = "B";
  v6 = @"_UIFindNavigatorHarness";
  v5 = "v";
  [location[0] validateClass:"B" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"endHoistingFindNavigator:" withFullSignature:{v5, v4, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"hostView" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"_findNavigatorView" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

@end