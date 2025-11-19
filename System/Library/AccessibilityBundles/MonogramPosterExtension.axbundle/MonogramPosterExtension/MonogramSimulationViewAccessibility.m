@interface MonogramSimulationViewAccessibility
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation MonogramSimulationViewAccessibility

- (CGRect)accessibilityFrame
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 frame];
  v12 = v11 * 0.25;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v22 = CGRectInset(v21, 0.0, v12);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v8 = v7;
  if (v7 && ([v7 accessibilityFrame], v12.x = x, v12.y = y, CGRectContainsPoint(v13, v12)))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end