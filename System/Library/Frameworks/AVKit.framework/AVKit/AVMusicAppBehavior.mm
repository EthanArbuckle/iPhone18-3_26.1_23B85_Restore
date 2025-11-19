@interface AVMusicAppBehavior
- (AVMusicAppBehaviorContext)behaviorContext;
@end

@implementation AVMusicAppBehavior

- (AVMusicAppBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

@end