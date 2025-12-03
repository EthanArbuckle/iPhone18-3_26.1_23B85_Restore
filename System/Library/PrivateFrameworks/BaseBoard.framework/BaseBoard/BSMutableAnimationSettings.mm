@interface BSMutableAnimationSettings
- (void)setBeginTime:(double)time;
- (void)setDelay:(double)delay;
- (void)setDuration:(double)duration;
- (void)setHighFrameRateReason:(unsigned int)reason;
@end

@implementation BSMutableAnimationSettings

- (void)setDelay:(double)delay
{
  if (self)
  {
    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_delay = delay;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  if (self)
  {
    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_highFrameRateReason = reason;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)setBeginTime:(double)time
{
  if (self)
  {
    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_beginTime = time;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)setDuration:(double)duration
{
  if (self)
  {
    if (self->super._isSpring)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setDuration_ object:self file:@"BSAnimationSettings.m" lineNumber:604 description:@"cannot set duration on a spring animation"];
    }

    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_storedDuration = duration;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

@end