@interface BSMutableSpringAnimationSettings
- (void)setBeginTime:(double)a3;
- (void)setDamping:(double)a3;
- (void)setDelay:(double)a3;
- (void)setHighFrameRateReason:(unsigned int)a3;
- (void)setInitialVelocity:(double)a3;
- (void)setMass:(double)a3;
- (void)setStiffness:(double)a3;
@end

@implementation BSMutableSpringAnimationSettings

- (void)setDelay:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    self->super.super._lock_delay = a3;

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setHighFrameRateReason:(unsigned int)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    self->super.super._lock_highFrameRateReason = a3;

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setBeginTime:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    self->super.super._lock_beginTime = a3;

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setMass:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_mass, a3) >= 2.22044605e-16)
    {
      self->super.super._lock_mass = a3;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setStiffness:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_stiffness, a3) >= 2.22044605e-16)
    {
      self->super.super._lock_stiffness = a3;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setDamping:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_damping, a3) >= 2.22044605e-16)
    {
      self->super.super._lock_damping = a3;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (void)setInitialVelocity:(double)a3
{
  if (self)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    if (vabdd_f64(self->super.super._lock_initialVelocity, a3) >= 2.22044605e-16)
    {
      self->super.super._lock_initialVelocity = a3;
      self->super.super._lock_storedDurationIsDirty = 1;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

@end