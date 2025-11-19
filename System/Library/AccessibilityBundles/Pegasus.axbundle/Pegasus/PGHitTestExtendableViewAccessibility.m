@interface PGHitTestExtendableViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PGHitTestExtendableViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PGHitTestExtendableViewAccessibility;
  v8 = [(PGHitTestExtendableViewAccessibility *)&v18 _accessibilityHitTest:v7 withEvent:x, y];
  if (!v8)
  {
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    v10 = [(PGHitTestExtendableViewAccessibility *)self safeValueForKey:@"hitTestExtenderView"];
    v11 = __UIAccessibilitySafeClass();

    v12 = [v11 safeUIViewForKey:@"_tab"];

    [v9 convertPoint:v12 toView:{x, y}];
    if ([v12 pointInside:v7 withEvent:?])
    {
      v13 = [(PGHitTestExtendableViewAccessibility *)self _accessibilityViewController];
      v14 = __UIAccessibilitySafeClass();

      v15 = [v14 safeValueForKey:@"_stashView"];

      [v9 convertPoint:v15 toView:{x, y}];
      v16 = [v15 _accessibilityHitTest:v7 withEvent:?];

      goto LABEL_6;
    }
  }

  v16 = v8;
LABEL_6:

  return v16;
}

@end