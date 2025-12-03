@interface THScrollViewWithPassthrough
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation THScrollViewWithPassthrough

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  v10.receiver = self;
  v10.super_class = THScrollViewWithPassthrough;
  v6 = [(THScrollViewWithPassthrough *)&v10 hitTest:event withEvent:test.x];
  if (v6 == self && ([(THScrollViewWithPassthrough *)self heightOfTopZoneForDockingSwipe], y > v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

@end