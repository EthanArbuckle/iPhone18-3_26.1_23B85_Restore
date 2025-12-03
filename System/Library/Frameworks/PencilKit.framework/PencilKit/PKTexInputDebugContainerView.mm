@interface PKTexInputDebugContainerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PKTexInputDebugContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = PKTexInputDebugContainerView;
  v5 = [(PKTexInputDebugContainerView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end