@interface HMMutableAssistantAccessControl
- (BOOL)allowUnauthenticatedRequests;
- (BOOL)areActivityNotificationsEnabledForPersonalRequests;
- (BOOL)isEnabled;
- (NSArray)accessories;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)options;
- (void)addAccessory:(id)accessory;
- (void)removeAccessory:(id)accessory;
- (void)setAccessories:(id)accessories;
- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)requests;
- (void)setAllowUnauthenticatedRequests:(BOOL)requests;
- (void)setEnabled:(BOOL)enabled;
- (void)setOptions:(unint64_t)options;
@end

@implementation HMMutableAssistantAccessControl

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [HMAssistantAccessControl allocWithZone:?];
  user = [(HMAccessControl *)self user];
  v7 = [(HMAssistantAccessControl *)v5 initWithUser:user];

  *(v7 + 36) = [(HMMutableAssistantAccessControl *)self isEnabled];
  *(v7 + 40) = [(HMMutableAssistantAccessControl *)self options];
  *(v7 + 56) = [(HMMutableAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
  v8 = [(NSSet *)self->super._accessories copyWithZone:zone];
  v9 = *(v7 + 48);
  *(v7 + 48) = v8;

  return v7;
}

- (void)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (!accessoryCopy)
  {
    v8 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->super.super._lock);
    _Unwind_Resume(v8);
  }

  v9 = accessoryCopy;
  os_unfair_lock_lock_with_options();
  if ([(NSSet *)self->super._accessories containsObject:v9])
  {
    v5 = [(NSSet *)self->super._accessories mutableCopy];
    [v5 removeObject:v9];
    v6 = [v5 copy];
    accessories = self->super._accessories;
    self->super._accessories = v6;
  }

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)addAccessory:(id)accessory
{
  v10[1] = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  v10[0] = accessoryCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = __validateAccessories(v5);

  if ((v6 & 1) == 0)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  os_unfair_lock_lock_with_options();
  v7 = [(NSSet *)self->super._accessories setByAddingObject:accessoryCopy];
  accessories = self->super._accessories;
  self->super._accessories = v7;

  os_unfair_lock_unlock(&self->super.super._lock);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  if (__validateAccessories(accessoriesCopy))
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:accessoriesCopy];
    os_unfair_lock_lock_with_options();
    accessories = self->super._accessories;
    self->super._accessories = v4;

    os_unfair_lock_unlock(&self->super.super._lock);
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMMutableAssistantAccessControl *)v6 accessories];
  }
}

- (NSArray)accessories
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSSet *)self->super._accessories allObjects];
  os_unfair_lock_unlock(&self->super.super._lock);

  return allObjects;
}

- (void)setAllowUnauthenticatedRequests:(BOOL)requests
{
  requestsCopy = requests;
  os_unfair_lock_lock_with_options();
  self->super._options = self->super._options & 0xFFFFFFFFFFFFFFFELL | requestsCopy;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)allowUnauthenticatedRequests
{
  os_unfair_lock_lock_with_options();
  options = self->super._options;
  os_unfair_lock_unlock(&self->super.super._lock);
  return options & 1;
}

- (void)setOptions:(unint64_t)options
{
  os_unfair_lock_lock_with_options();
  self->super._options = options;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (unint64_t)options
{
  os_unfair_lock_lock_with_options();
  options = self->super._options;
  os_unfair_lock_unlock(&self->super.super._lock);
  return options;
}

- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)requests
{
  os_unfair_lock_lock_with_options();
  self->super._activityNotificationsEnabledForPersonalRequests = requests;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)areActivityNotificationsEnabledForPersonalRequests
{
  os_unfair_lock_lock_with_options();
  activityNotificationsEnabledForPersonalRequests = self->super._activityNotificationsEnabledForPersonalRequests;
  os_unfair_lock_unlock(&self->super.super._lock);
  return activityNotificationsEnabledForPersonalRequests;
}

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  *(&self->super._enabled + 4) = enabled;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->super._enabled + 4);
  os_unfair_lock_unlock(&self->super.super._lock);
  return v3;
}

@end