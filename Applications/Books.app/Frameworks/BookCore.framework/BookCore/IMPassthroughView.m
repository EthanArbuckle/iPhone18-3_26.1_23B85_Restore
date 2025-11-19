@interface IMPassthroughView
- (IMPassthroughViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation IMPassthroughView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = IMPassthroughView;
  v8 = [(IMPassthroughView *)&v15 hitTest:v7 withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    LOBYTE(v11) = [WeakRetained passthroughView:self shouldAcceptHitAtPoint:v8 onView:v7 withEvent:{x, y}];
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