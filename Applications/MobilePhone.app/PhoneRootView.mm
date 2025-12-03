@interface PhoneRootView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PhoneRootView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = PhoneRootView;
  v5 = [(PhoneRootView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end