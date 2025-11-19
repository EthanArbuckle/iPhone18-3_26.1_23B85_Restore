@interface _UIInterfaceActionGroupHeaderScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
@end

@implementation _UIInterfaceActionGroupHeaderScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (BOOL)isAccessibilityElement
{
  v5 = self;
  v4 = a2;
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = _UIInterfaceActionGroupHeaderScrollViewAccessibility;
  return [(_UIInterfaceActionGroupHeaderScrollViewAccessibility *)&v3 isAccessibilityElement];
}

@end