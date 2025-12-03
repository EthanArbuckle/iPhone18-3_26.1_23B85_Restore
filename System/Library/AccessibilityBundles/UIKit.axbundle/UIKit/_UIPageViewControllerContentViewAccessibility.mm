@interface _UIPageViewControllerContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
@end

@implementation _UIPageViewControllerContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIPageViewControllerContentView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIPageViewControllerContentViewAccessibility;
  canBecomeFocused = [(_UIPageViewControllerContentViewAccessibility *)&v3 canBecomeFocused];
  if (([(_UIPageViewControllerContentViewAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return canBecomeFocused & 1;
  }
}

@end