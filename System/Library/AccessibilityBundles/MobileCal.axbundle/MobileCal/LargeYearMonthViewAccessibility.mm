@interface LargeYearMonthViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation LargeYearMonthViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(LargeYearMonthViewAccessibility *)self _accessibilityVisibleFrame];
  if (CGRectIsEmpty(v12))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LargeYearMonthViewAccessibility;
    v8 = [(LargeYearMonthViewAccessibility *)&v10 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  return v8;
}

@end