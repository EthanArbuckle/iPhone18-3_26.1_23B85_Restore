@interface AVHomeIPCameraBehavior
- (AVHomeIPCameraBehaviorContext)behaviorContext;
@end

@implementation AVHomeIPCameraBehavior

- (AVHomeIPCameraBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

@end