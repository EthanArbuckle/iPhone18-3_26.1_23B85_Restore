@interface QLPUTimedAnimationGroup
- (QLPUTimedAnimationGroup)init;
- (double)elapsedTime;
- (void)_update;
- (void)pauseAnimations;
- (void)resumeAnimations;
- (void)setElapsedTime:(double)a3;
@end

@implementation QLPUTimedAnimationGroup

- (QLPUTimedAnimationGroup)init
{
  v6.receiver = self;
  v6.super_class = QLPUTimedAnimationGroup;
  v2 = [(QLPUTimedAnimationGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(QLPUTimedAnimationGroup *)v2 currentTime];
    v3->_beginTime = v4;
  }

  return v3;
}

- (double)elapsedTime
{
  if ([(QLPUAnimationGroup *)self isPaused])
  {
    return self->_pausedElapsedTime;
  }

  [(QLPUTimedAnimationGroup *)self currentTime];
  v5 = v4;
  [(QLPUTimedAnimationGroup *)self beginTime];
  return v5 - v6;
}

- (void)setElapsedTime:(double)a3
{
  if (self->_pausedElapsedTime != a3)
  {
    self->_pausedElapsedTime = a3;
    [(QLPUTimedAnimationGroup *)self _update];
  }
}

- (void)pauseAnimations
{
  v6.receiver = self;
  v6.super_class = QLPUTimedAnimationGroup;
  [(QLPUAnimationGroup *)&v6 pauseAnimations];
  [(QLPUTimedAnimationGroup *)self currentTime];
  v4 = v3;
  [(QLPUTimedAnimationGroup *)self beginTime];
  self->_pausedElapsedTime = v4 - v5;
  [(QLPUTimedAnimationGroup *)self _update];
}

- (void)resumeAnimations
{
  v4.receiver = self;
  v4.super_class = QLPUTimedAnimationGroup;
  [(QLPUAnimationGroup *)&v4 resumeAnimations];
  [(QLPUTimedAnimationGroup *)self currentTime];
  self->_beginTime = v3 - self->_pausedElapsedTime;
  [(QLPUTimedAnimationGroup *)self _update];
}

- (void)_update
{
  v3 = [(QLPUAnimationGroup *)self isPaused];
  v4 = v3;
  if (self->_areAnimationsPaused != v3 || [(QLPUAnimationGroup *)self isPaused])
  {
    self->_areAnimationsPaused = v4;
    [(QLPUTimedAnimationGroup *)self updateAnimations];

    [(QLPUAnimationGroup *)self completeIfNeeded];
  }
}

@end