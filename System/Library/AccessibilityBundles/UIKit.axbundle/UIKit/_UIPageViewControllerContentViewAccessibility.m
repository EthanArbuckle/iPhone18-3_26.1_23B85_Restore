@interface _UIPageViewControllerContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
@end

@implementation _UIPageViewControllerContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIPageViewControllerContentView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)canBecomeFocused
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIPageViewControllerContentViewAccessibility;
  v4 = [(_UIPageViewControllerContentViewAccessibility *)&v3 canBecomeFocused];
  if (([(_UIPageViewControllerContentViewAccessibility *)v6 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return v4 & 1;
  }
}

@end