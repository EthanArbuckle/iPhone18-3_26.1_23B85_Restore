@interface PKRulerView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setRulerLayer:(uint64_t)a1;
@end

@implementation PKRulerView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  if (self)
  {
    self = self->_rulerLayer;
  }

  if ([(PKRulerView *)self viewPointInRuler:a4, a3.x, a3.y])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRulerLayer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 416), a2);
  }
}

@end