@interface AVEditBehavior
- (AVEditBehaviorContext)behaviorContext;
- (AVEditBehaviorDelegate)delegate;
@end

@implementation AVEditBehavior

- (AVEditBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVEditBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

@end