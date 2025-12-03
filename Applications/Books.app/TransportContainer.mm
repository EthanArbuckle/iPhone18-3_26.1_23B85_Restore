@interface TransportContainer
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TransportContainer

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_100395A10(event, x, y);

  return v10;
}

@end