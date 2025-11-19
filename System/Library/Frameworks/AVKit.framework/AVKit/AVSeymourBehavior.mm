@interface AVSeymourBehavior
- (AVSeymourBehaviorContext)behaviorContext;
@end

@implementation AVSeymourBehavior

- (AVSeymourBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

@end