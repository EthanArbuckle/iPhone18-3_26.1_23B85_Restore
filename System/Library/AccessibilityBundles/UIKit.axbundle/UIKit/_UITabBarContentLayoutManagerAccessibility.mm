@interface _UITabBarContentLayoutManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)updateLayout;
@end

@implementation _UITabBarContentLayoutManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UITabBarContentLayoutManager" hasInstanceMethod:@"updateLayout" withFullSignature:{"v", 0}];
  objc_storeStrong(v4, obj);
}

- (void)updateLayout
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UITabBarContentLayoutManagerAccessibility;
  [(_UITabBarContentLayoutManagerAccessibility *)&v2 updateLayout];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end