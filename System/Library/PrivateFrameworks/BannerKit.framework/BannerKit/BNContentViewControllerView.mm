@interface BNContentViewControllerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation BNContentViewControllerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = BNContentViewControllerView;
  v5 = [(BNContentViewControllerView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end