@interface BCCardStackTransitionCoverMoveAnimationItem
- (CGAffineTransform)coverToTransform;
- (CGPoint)coverToCenter;
- (void)setCoverToTransform:(CGAffineTransform *)a3;
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

- (void)setCoverToTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_coverToTransform.a = *&a3->a;
  *&self->_coverToTransform.c = v4;
  *&self->_coverToTransform.tx = v3;
}

@end