@interface LargeTextLargeMonthWeekViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation LargeTextLargeMonthWeekViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = LargeTextLargeMonthWeekViewAccessibility;
  v4 = [(LargeTextLargeMonthWeekViewAccessibility *)&v7 _accessibilityHitTest:a4 withEvent:a3.x, a3.y];
  [v4 _accessibilityVisibleFrame];
  if (CGRectIsEmpty(v9))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

@end