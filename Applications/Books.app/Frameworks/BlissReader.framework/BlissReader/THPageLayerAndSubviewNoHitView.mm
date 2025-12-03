@interface THPageLayerAndSubviewNoHitView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation THPageLayerAndSubviewNoHitView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = THPageLayerAndSubviewNoHitView;
  result = [(THPageLayerAndSubviewNoHitView *)&v6 hitTest:event withEvent:test.x, test.y];
  if (result == self)
  {
    return 0;
  }

  return result;
}

@end