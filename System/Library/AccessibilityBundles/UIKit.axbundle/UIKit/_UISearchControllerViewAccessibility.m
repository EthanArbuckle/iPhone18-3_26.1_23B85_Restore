@interface _UISearchControllerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UISearchControllerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UISearchControllerView" isKindOfClass:@"UIView"];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v11 = a3;
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v6 = [(_UISearchControllerViewAccessibility *)v10 hitTest:location[0] withEvent:v11.x, v11.y];
  MEMORY[0x29EDC9740](v6);
  if (v6)
  {
    v7.receiver = v10;
    v7.super_class = _UISearchControllerViewAccessibility;
    v12 = [(_UISearchControllerViewAccessibility *)&v7 _accessibilityHitTest:location[0] withEvent:v11.x, v11.y];
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