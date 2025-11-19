@interface _UITabBarContentLayoutManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)updateLayout;
@end

@implementation _UITabBarContentLayoutManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UITabBarContentLayoutManager" hasInstanceMethod:@"updateLayout" withFullSignature:{"v", 0}];
  objc_storeStrong(v4, obj);
}

- (void)updateLayout
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UITabBarContentLayoutManagerAccessibility;
  [(_UITabBarContentLayoutManagerAccessibility *)&v2 updateLayout];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end