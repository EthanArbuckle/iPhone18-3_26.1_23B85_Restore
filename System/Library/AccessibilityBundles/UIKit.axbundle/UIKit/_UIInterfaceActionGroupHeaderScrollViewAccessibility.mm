@interface _UIInterfaceActionGroupHeaderScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
@end

@implementation _UIInterfaceActionGroupHeaderScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v4 = a2;
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIInterfaceActionGroupHeaderScrollViewAccessibility;
  return [(_UIInterfaceActionGroupHeaderScrollViewAccessibility *)&v3 isAccessibilityElement];
}

@end