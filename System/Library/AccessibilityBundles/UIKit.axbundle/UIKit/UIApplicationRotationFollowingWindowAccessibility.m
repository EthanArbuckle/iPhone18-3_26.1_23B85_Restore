@interface UIApplicationRotationFollowingWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_wantsFocusEngine;
@end

@implementation UIApplicationRotationFollowingWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIWindow";
  [location[0] validateClass:@"UIApplicationRotationFollowingWindow" isKindOfClass:?];
  [location[0] validateClass:@"UIWindow" hasInstanceMethod:@"_wantsFocusEngine" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)_wantsFocusEngine
{
  v5 = self;
  v4 = a2;
  if (([(UIApplicationRotationFollowingWindowAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v3.receiver = v5;
  v3.super_class = UIApplicationRotationFollowingWindowAccessibility;
  return [(UIApplicationRotationFollowingWindowAccessibility *)&v3 _wantsFocusEngine];
}

@end