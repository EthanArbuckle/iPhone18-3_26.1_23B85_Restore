@interface UIStatusBarWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_wantsFocusEngine;
- (BOOL)accessibilityElementsHidden;
- (int64_t)_accessibilitySortPriority;
@end

@implementation UIStatusBarWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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

  storedAccessibilityElementsHidden = [(UIStatusBarWindowAccessibility *)self storedAccessibilityElementsHidden];
  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityElementsHidden).n128_u64[0];
  if (!storedAccessibilityElementsHidden)
  {
    return 0;
  }

  storedAccessibilityElementsHidden2 = [(UIStatusBarWindowAccessibility *)self storedAccessibilityElementsHidden];
  v7 = [storedAccessibilityElementsHidden2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](storedAccessibilityElementsHidden2);
  return v7;
}

- (int64_t)_accessibilitySortPriority
{
  selfCopy = self;
  v4 = a2;
  if ((AXProcessIsSpringBoard() & 1) == 0 || (AXDeviceHasJindo() & 1) == 0 || AXRequestingClient() != 3)
  {
    return 0x7FFFFFFFLL;
  }

  v3.receiver = selfCopy;
  v3.super_class = UIStatusBarWindowAccessibility;
  return [(UIStatusBarWindowAccessibility *)&v3 _accessibilitySortPriority];
}

- (BOOL)_wantsFocusEngine
{
  selfCopy = self;
  v4 = a2;
  if (([(UIStatusBarWindowAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v3.receiver = selfCopy;
  v3.super_class = UIStatusBarWindowAccessibility;
  return [(UIStatusBarWindowAccessibility *)&v3 _wantsFocusEngine];
}

@end