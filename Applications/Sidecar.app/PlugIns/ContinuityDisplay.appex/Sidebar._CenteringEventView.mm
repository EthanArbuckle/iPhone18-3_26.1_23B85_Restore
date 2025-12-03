@interface Sidebar._CenteringEventView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation Sidebar._CenteringEventView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_10001BFE0(event, x, y);

  return v10;
}

@end