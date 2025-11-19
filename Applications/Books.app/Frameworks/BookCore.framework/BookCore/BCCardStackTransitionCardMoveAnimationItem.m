@interface BCCardStackTransitionCardMoveAnimationItem
- (CGAffineTransform)cardSuperviewToTransform;
- (CGAffineTransform)cardToTransform;
- (CGPoint)cardToCenter;
- (void)setCardSuperviewToTransform:(CGAffineTransform *)a3;
- (void)setCardToTransform:(CGAffineTransform *)a3;
@end

@implementation BCCardStackTransitionCardMoveAnimationItem

- (CGPoint)cardToCenter
{
  x = self->_cardToCenter.x;
  y = self->_cardToCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)cardToTransform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)setCardToTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_cardToTransform.a = *&a3->a;
  *&self->_cardToTransform.c = v4;
  *&self->_cardToTransform.tx = v3;
}

- (CGAffineTransform)cardSuperviewToTransform
{
  v3 = *&self[2].d;
  *&retstr->a = *&self[2].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].ty;
  return self;
}

- (void)setCardSuperviewToTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_cardSuperviewToTransform.a = *&a3->a;
  *&self->_cardSuperviewToTransform.c = v4;
  *&self->_cardSuperviewToTransform.tx = v3;
}

@end