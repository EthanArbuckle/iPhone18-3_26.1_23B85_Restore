@interface BCCardStackTransitionCardMoveAnimationItem
- (CGAffineTransform)cardSuperviewToTransform;
- (CGAffineTransform)cardToTransform;
- (CGPoint)cardToCenter;
- (void)setCardSuperviewToTransform:(CGAffineTransform *)transform;
- (void)setCardToTransform:(CGAffineTransform *)transform;
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

- (void)setCardToTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_cardToTransform.a = *&transform->a;
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

- (void)setCardSuperviewToTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_cardSuperviewToTransform.a = *&transform->a;
  *&self->_cardSuperviewToTransform.c = v4;
  *&self->_cardSuperviewToTransform.tx = v3;
}

@end