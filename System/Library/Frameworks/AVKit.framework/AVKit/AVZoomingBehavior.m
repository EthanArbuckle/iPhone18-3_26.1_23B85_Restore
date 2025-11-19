@interface AVZoomingBehavior
- (AVZoomingBehaviorContext)behaviorContext;
@end

@implementation AVZoomingBehavior

- (AVZoomingBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

@end