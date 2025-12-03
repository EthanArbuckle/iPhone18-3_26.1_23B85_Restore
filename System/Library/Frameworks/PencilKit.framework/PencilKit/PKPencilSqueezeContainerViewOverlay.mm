@interface PKPencilSqueezeContainerViewOverlay
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PKPencilSqueezeContainerViewOverlay

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = eventCopy;
  if (eventCopy && [eventCopy PK_isEventFromPencil] && objc_msgSend(v8, "type") != 11 && (pencilHitTestWithEventHandler = self->_pencilHitTestWithEventHandler) != 0)
  {
    v10 = pencilHitTestWithEventHandler[2](pencilHitTestWithEventHandler, v8, x, y);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PKPencilSqueezeContainerViewOverlay;
    v11 = [(PKPencilSqueezeContainerViewOverlay *)&v15 hitTest:v8 withEvent:x, y];
    hitTestHandler = self->_hitTestHandler;
    if (hitTestHandler)
    {
      v13 = hitTestHandler[2](hitTestHandler, v11, v8, x, y);
    }

    else
    {
      v13 = v11;
    }

    v10 = v13;
  }

  return v10;
}

@end