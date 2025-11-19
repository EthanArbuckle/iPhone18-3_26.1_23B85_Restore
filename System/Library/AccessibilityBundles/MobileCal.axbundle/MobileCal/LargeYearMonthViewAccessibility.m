@interface LargeYearMonthViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation LargeYearMonthViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(LargeYearMonthViewAccessibility *)self _accessibilityVisibleFrame];
  if (CGRectIsEmpty(v12))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LargeYearMonthViewAccessibility;
    v8 = [(LargeYearMonthViewAccessibility *)&v10 _accessibilityHitTest:v7 withEvent:x, y];
  }

  return v8;
}

@end