@interface BSMutableSpringAnimationSettings
- (void)setBeginTime:(double)time;
- (void)setDamping:(double)damping;
- (void)setDelay:(double)delay;
- (void)setHighFrameRateReason:(unsigned int)reason;
- (void)setInitialVelocity:(double)velocity;
- (void)setMass:(double)mass;
- (void)setStiffness:(double)stiffness;
@end

@implementation BSMutableSpringAnimationSettings

- (void)setDelay:(double)delay
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    self->super.super._lock_delay = delay;

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    self->super.super._lock_highFrameRateReason = reason;

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setBeginTime:(double)time
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    self->super.super._lock_beginTime = time;

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setMass:(double)mass
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_mass, mass) >= 2.22044605e-16)
    {
      self->super.super._lock_mass = mass;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setStiffness:(double)stiffness
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_stiffness, stiffness) >= 2.22044605e-16)
    {
      self->super.super._lock_stiffness = stiffness;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setDamping:(double)damping
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_damping, damping) >= 2.22044605e-16)
    {
      self->super.super._lock_damping = damping;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setInitialVelocity:(double)velocity
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_initialVelocity, velocity) >= 2.22044605e-16)
    {
      self->super.super._lock_initialVelocity = velocity;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

@end