@interface LargeTextLargeMonthWeekViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation LargeTextLargeMonthWeekViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = LargeTextLargeMonthWeekViewAccessibility;
  v4 = [(LargeTextLargeMonthWeekViewAccessibility *)&v7 _accessibilityHitTest:event withEvent:test.x, test.y];
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