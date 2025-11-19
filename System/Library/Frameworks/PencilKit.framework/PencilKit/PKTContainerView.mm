@interface PKTContainerView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PKTContainerView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [WeakRetained containerView:self hitTest:v7 withEvent:{x, y}];

  return v9;
}

@end