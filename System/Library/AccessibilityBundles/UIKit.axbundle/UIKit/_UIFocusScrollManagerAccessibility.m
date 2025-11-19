@interface _UIFocusScrollManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)animateOffsetOfEnvironmentScrollableContainer:(id)a3 toShowFocusItem:(id)a4;
@end

@implementation _UIFocusScrollManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIFocusScrollManager" hasInstanceMethod:@"animateOffsetOfEnvironmentScrollableContainer:toShowFocusItem:" withFullSignature:{"v", "@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)animateOffsetOfEnvironmentScrollableContainer:(id)a3 toShowFocusItem:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v5 = [v9 _accessibilityIsFKARunningForFocusItem];
  *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v7.receiver = v14;
    v7.super_class = _UIFocusScrollManagerAccessibility;
    [(_UIFocusScrollManagerAccessibility *)&v7 animateOffsetOfEnvironmentScrollableContainer:location[0] toShowFocusItem:v12, v4];
    v8 = 0;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end