@interface PKPencilSqueezeContainerViewOverlay
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PKPencilSqueezeContainerViewOverlay

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 PK_isEventFromPencil] && objc_msgSend(v8, "type") != 11 && (pencilHitTestWithEventHandler = self->_pencilHitTestWithEventHandler) != 0)
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