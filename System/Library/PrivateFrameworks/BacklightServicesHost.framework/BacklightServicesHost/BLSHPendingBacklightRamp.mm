@interface BLSHPendingBacklightRamp
- (BLSHPendingBacklightRamp)initWithBacklightRampBlock:(id)block;
- (BOOL)hasPendingRamp;
- (BOOL)performBacklightRampIfNeededWithDuration:(double)duration;
- (id)description;
@end

@implementation BLSHPendingBacklightRamp

- (BLSHPendingBacklightRamp)initWithBacklightRampBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = BLSHPendingBacklightRamp;
  v5 = [(BLSHPendingBacklightRamp *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [blockCopy copy];
    lock_backlightRampBlock = v6->_lock_backlightRampBlock;
    v6->_lock_backlightRampBlock = v7;
  }

  return v6;
}

- (BOOL)hasPendingRamp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_backlightRampBlock != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)performBacklightRampIfNeededWithDuration:(double)duration
{
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x223D70730](self->_lock_backlightRampBlock);
  lock_backlightRampBlock = self->_lock_backlightRampBlock;
  self->_lock_backlightRampBlock = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v5[2](v5, duration);
  }

  return v5 != 0;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  os_unfair_lock_lock(&self->_lock);
  v4 = [v3 appendPointer:self->_lock_backlightRampBlock withName:@"backlightRamp"];
  os_unfair_lock_unlock(&self->_lock);
  build = [v3 build];

  return build;
}

@end