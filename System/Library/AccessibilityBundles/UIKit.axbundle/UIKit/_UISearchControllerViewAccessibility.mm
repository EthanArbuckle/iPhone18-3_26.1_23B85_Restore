@interface _UISearchControllerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UISearchControllerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UISearchControllerView" isKindOfClass:@"UIView"];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v6 = [(_UISearchControllerViewAccessibility *)selfCopy hitTest:location[0] withEvent:testCopy.x, testCopy.y];
  MEMORY[0x29EDC9740](v6);
  if (v6)
  {
    v7.receiver = selfCopy;
    v7.super_class = _UISearchControllerViewAccessibility;
    v12 = [(_UISearchControllerViewAccessibility *)&v7 _accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
  }

  else
  {
    v12 = 0;
  }

  v8 = 1;
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

@end