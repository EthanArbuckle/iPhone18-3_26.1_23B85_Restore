@interface CardAnimationManager
- (CardAnimation)cardHeightAnimation;
- (id)defaultCardHeightAnimation;
- (void)popCardHeightAnimation;
- (void)pushCardHeightAnimation:(id)a3;
@end

@implementation CardAnimationManager

- (void)popCardHeightAnimation
{
  v2 = self->_cardHeightAnimationPushCount - 1;
  self->_cardHeightAnimationPushCount = v2;
  if (!v2)
  {
    cardHeightAnimation = self->_cardHeightAnimation;
    self->_cardHeightAnimation = 0;
  }
}

- (void)pushCardHeightAnimation:(id)a3
{
  v5 = a3;
  cardHeightAnimationPushCount = self->_cardHeightAnimationPushCount;
  self->_cardHeightAnimationPushCount = cardHeightAnimationPushCount + 1;
  if (!cardHeightAnimationPushCount)
  {
    v7 = v5;
    objc_storeStrong(&self->_cardHeightAnimation, a3);
    v5 = v7;
  }
}

- (CardAnimation)cardHeightAnimation
{
  cardHeightAnimation = self->_cardHeightAnimation;
  if (cardHeightAnimation)
  {
    v3 = cardHeightAnimation;
  }

  else
  {
    v3 = [(CardAnimationManager *)self defaultCardHeightAnimation];
  }

  return v3;
}

- (id)defaultCardHeightAnimation
{
  if (qword_10195F248 != -1)
  {
    dispatch_once(&qword_10195F248, &stru_101655310);
  }

  v3 = qword_10195F240;

  return v3;
}

@end