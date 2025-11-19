@interface BSMutableAnimationSettings
- (void)setBeginTime:(double)a3;
- (void)setDelay:(double)a3;
- (void)setDuration:(double)a3;
- (void)setHighFrameRateReason:(unsigned int)a3;
@end

@implementation BSMutableAnimationSettings

- (void)setDelay:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_delay = a3;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)setHighFrameRateReason:(unsigned int)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_highFrameRateReason = a3;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)setBeginTime:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_beginTime = a3;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)setDuration:(double)a3
{
  if (self)
  {
    if (self->super._isSpring)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel__setDuration_ object:self file:@"BSAnimationSettings.m" lineNumber:604 description:@"cannot set duration on a spring animation"];
    }

    os_unfair_lock_lock(&self->super._lock);
    self->super._lock_storedDuration = a3;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

@end