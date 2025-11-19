@interface PKViewWithHitTestHandler
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PKViewWithHitTestHandler

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PKViewWithHitTestHandler;
  v8 = [(PKViewWithHitTestHandler *)&v13 hitTest:v7 withEvent:x, y];
  hitTestHandler = self->_hitTestHandler;
  if (hitTestHandler)
  {
    v10 = hitTestHandler[2](hitTestHandler, v8, v7, x, y);
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

@end