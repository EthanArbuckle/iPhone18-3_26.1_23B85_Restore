@interface _UIFocusScrollManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)animateOffsetOfEnvironmentScrollableContainer:(id)container toShowFocusItem:(id)item;
@end

@implementation _UIFocusScrollManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIFocusScrollManager" hasInstanceMethod:@"animateOffsetOfEnvironmentScrollableContainer:toShowFocusItem:" withFullSignature:{"v", "@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)animateOffsetOfEnvironmentScrollableContainer:(id)container toShowFocusItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, container);
  v12 = 0;
  objc_storeStrong(&v12, item);
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  _accessibilityIsFKARunningForFocusItem = [v9 _accessibilityIsFKARunningForFocusItem];
  *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (_accessibilityIsFKARunningForFocusItem)
  {
    v8 = 1;
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = _UIFocusScrollManagerAccessibility;
    [(_UIFocusScrollManagerAccessibility *)&v7 animateOffsetOfEnvironmentScrollableContainer:location[0] toShowFocusItem:v12, v4];
    v8 = 0;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end