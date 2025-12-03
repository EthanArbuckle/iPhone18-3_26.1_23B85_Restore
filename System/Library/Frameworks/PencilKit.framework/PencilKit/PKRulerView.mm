@interface PKRulerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setRulerLayer:(uint64_t)layer;
@end

@implementation PKRulerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  if (self)
  {
    self = self->_rulerLayer;
  }

  if ([(PKRulerView *)self viewPointInRuler:event, test.x, test.y])
  {
    v5 = selfCopy;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRulerLayer:(uint64_t)layer
{
  if (layer)
  {
    objc_storeStrong((layer + 416), a2);
  }
}

@end