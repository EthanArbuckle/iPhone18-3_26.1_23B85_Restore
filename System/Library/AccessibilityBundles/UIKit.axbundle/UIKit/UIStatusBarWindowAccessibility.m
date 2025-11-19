@interface UIStatusBarWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_wantsFocusEngine;
- (BOOL)accessibilityElementsHidden;
- (int64_t)_accessibilitySortPriority;
@end

@implementation UIStatusBarWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIWindow";
  [location[0] validateClass:@"UIStatusBarWindow" isKindOfClass:?];
  [location[0] validateClass:@"UIWindow" hasInstanceMethod:@"_wantsFocusEngine" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)accessibilityElementsHidden
{
  if (_UIApplicationIsExtension())
  {
    return 1;
  }

  v5 = [(UIStatusBarWindowAccessibility *)self storedAccessibilityElementsHidden];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 0;
  }

  v4 = [(UIStatusBarWindowAccessibility *)self storedAccessibilityElementsHidden];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (int64_t)_accessibilitySortPriority
{
  v5 = self;
  v4 = a2;
  if ((AXProcessIsSpringBoard() & 1) == 0 || (AXDeviceHasJindo() & 1) == 0 || AXRequestingClient() != 3)
  {
    return 0x7FFFFFFFLL;
  }

  v3.receiver = v5;
  v3.super_class = UIStatusBarWindowAccessibility;
  return [(UIStatusBarWindowAccessibility *)&v3 _accessibilitySortPriority];
}

- (BOOL)_wantsFocusEngine
{
  v5 = self;
  v4 = a2;
  if (([(UIStatusBarWindowAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v3.receiver = v5;
  v3.super_class = UIStatusBarWindowAccessibility;
  return [(UIStatusBarWindowAccessibility *)&v3 _wantsFocusEngine];
}

@end