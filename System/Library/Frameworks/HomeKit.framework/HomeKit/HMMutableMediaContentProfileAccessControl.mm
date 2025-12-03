@interface HMMutableMediaContentProfileAccessControl
- (void)addAccessory:(id)accessory;
- (void)removeAccessory:(id)accessory;
- (void)setAccessories:(id)accessories;
@end

@implementation HMMutableMediaContentProfileAccessControl

- (void)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (!accessoryCopy)
  {
    v4 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->super.super._lock);
    _Unwind_Resume(v4);
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->super._internalAccessories removeObject:accessoryCopy];
  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)addAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (![HMMediaContentProfileAccessControl isAccessorySupported:?])
  {
    v4 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->super.super._lock);
    _Unwind_Resume(v4);
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->super._internalAccessories addObject:accessoryCopy];
  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)setAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x1E695DFA8];
  v5 = [accessoriesCopy copy];
  v6 = [v4 setWithArray:v5];
  internalAccessories = self->super._internalAccessories;
  self->super._internalAccessories = v6;

  os_unfair_lock_unlock(&self->super.super._lock);
}

@end