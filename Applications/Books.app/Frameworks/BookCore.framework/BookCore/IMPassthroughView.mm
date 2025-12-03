@interface IMPassthroughView
- (IMPassthroughViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation IMPassthroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = IMPassthroughView;
  v8 = [(IMPassthroughView *)&v15 hitTest:eventCopy withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    LOBYTE(v11) = [WeakRetained passthroughView:self shouldAcceptHitAtPoint:v8 onView:eventCopy withEvent:{x, y}];
  }

  else
  {
    v11 = self->_acceptsHits || v8 != self;
  }

  if (v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (IMPassthroughViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end