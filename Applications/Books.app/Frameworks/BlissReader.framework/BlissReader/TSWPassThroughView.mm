@interface TSWPassThroughView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TSWPassThroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v12.receiver = self;
  v12.super_class = TSWPassThroughView;
  v8 = [TSWPassThroughView hitTest:"hitTest:withEvent:" withEvent:?];
  mDelegate = self->mDelegate;
  if (mDelegate)
  {
    LOBYTE(v10) = [(TSWPassThroughViewDelegate *)mDelegate passthroughView:self shouldAcceptHitAtPoint:v8 onView:event withEvent:x, y];
  }

  else
  {
    v10 = self->mAcceptsHits || v8 != self;
  }

  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

@end