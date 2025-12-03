@interface PKTContainerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PKTContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [WeakRetained containerView:self hitTest:eventCopy withEvent:{x, y}];

  return v9;
}

@end