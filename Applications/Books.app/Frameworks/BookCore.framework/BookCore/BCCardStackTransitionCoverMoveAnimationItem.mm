@interface BCCardStackTransitionCoverMoveAnimationItem
- (CGAffineTransform)coverToTransform;
- (CGPoint)coverToCenter;
- (void)setCoverToTransform:(CGAffineTransform *)transform;
@end

@implementation BCCardStackTransitionCoverMoveAnimationItem

- (CGPoint)coverToCenter
{
  x = self->_coverToCenter.x;
  y = self->_coverToCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)coverToTransform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)setCoverToTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_coverToTransform.a = *&transform->a;
  *&self->_coverToTransform.c = v4;
  *&self->_coverToTransform.tx = v3;
}

@end