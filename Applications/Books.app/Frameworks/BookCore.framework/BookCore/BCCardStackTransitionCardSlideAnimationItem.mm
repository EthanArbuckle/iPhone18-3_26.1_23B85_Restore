@interface BCCardStackTransitionCardSlideAnimationItem
- (CGPoint)cardToCenter;
@end

@implementation BCCardStackTransitionCardSlideAnimationItem

- (CGPoint)cardToCenter
{
  x = self->_cardToCenter.x;
  y = self->_cardToCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end