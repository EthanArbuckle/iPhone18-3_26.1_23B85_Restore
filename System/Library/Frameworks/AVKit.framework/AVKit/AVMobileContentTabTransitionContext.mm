@interface AVMobileContentTabTransitionContext
- (void)setAnimationCoordinator:(id)coordinator;
- (void)setDirection:(unint64_t)direction;
@end

@implementation AVMobileContentTabTransitionContext

- (void)setAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  animationCoordinator = self->_animationCoordinator;
  p_animationCoordinator = &self->_animationCoordinator;
  if (animationCoordinator != coordinatorCopy)
  {
    v8 = coordinatorCopy;
    objc_storeStrong(p_animationCoordinator, coordinator);
    coordinatorCopy = v8;
  }
}

- (void)setDirection:(unint64_t)direction
{
  if (self->_direction != direction)
  {
    self->_direction = direction;
  }
}

@end