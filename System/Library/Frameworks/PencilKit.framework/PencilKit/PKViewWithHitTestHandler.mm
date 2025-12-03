@interface PKViewWithHitTestHandler
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PKViewWithHitTestHandler

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = PKViewWithHitTestHandler;
  v8 = [(PKViewWithHitTestHandler *)&v13 hitTest:eventCopy withEvent:x, y];
  hitTestHandler = self->_hitTestHandler;
  if (hitTestHandler)
  {
    v10 = hitTestHandler[2](hitTestHandler, v8, eventCopy, x, y);
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

@end