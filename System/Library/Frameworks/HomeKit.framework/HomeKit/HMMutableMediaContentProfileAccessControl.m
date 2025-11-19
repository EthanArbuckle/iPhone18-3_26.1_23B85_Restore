@interface HMMutableMediaContentProfileAccessControl
- (void)addAccessory:(id)a3;
- (void)removeAccessory:(id)a3;
- (void)setAccessories:(id)a3;
@end

@implementation HMMutableMediaContentProfileAccessControl

- (void)removeAccessory:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v4 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->super.super._lock);
    _Unwind_Resume(v4);
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->super._internalAccessories removeObject:v5];
  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)addAccessory:(id)a3
{
  v5 = a3;
  if (![HMMediaContentProfileAccessControl isAccessorySupported:?])
  {
    v4 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->super.super._lock);
    _Unwind_Resume(v4);
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->super._internalAccessories addObject:v5];
  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)setAccessories:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x1E695DFA8];
  v5 = [v8 copy];
  v6 = [v4 setWithArray:v5];
  internalAccessories = self->super._internalAccessories;
  self->super._internalAccessories = v6;

  os_unfair_lock_unlock(&self->super.super._lock);
}

@end