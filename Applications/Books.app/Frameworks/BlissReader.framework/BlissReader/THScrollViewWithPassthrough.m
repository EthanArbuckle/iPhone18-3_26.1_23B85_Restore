@interface THScrollViewWithPassthrough
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation THScrollViewWithPassthrough

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  v10.receiver = self;
  v10.super_class = THScrollViewWithPassthrough;
  v6 = [(THScrollViewWithPassthrough *)&v10 hitTest:a4 withEvent:a3.x];
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