@interface HMMutableAssistantAccessControl
- (BOOL)allowUnauthenticatedRequests;
- (BOOL)areActivityNotificationsEnabledForPersonalRequests;
- (BOOL)isEnabled;
- (NSArray)accessories;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)options;
- (void)addAccessory:(id)a3;
- (void)removeAccessory:(id)a3;
- (void)setAccessories:(id)a3;
- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)a3;
- (void)setAllowUnauthenticatedRequests:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setOptions:(unint64_t)a3;
@end

@implementation HMMutableAssistantAccessControl

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [HMAssistantAccessControl allocWithZone:?];
  v6 = [(HMAccessControl *)self user];
  v7 = [(HMAssistantAccessControl *)v5 initWithUser:v6];

  *(v7 + 36) = [(HMMutableAssistantAccessControl *)self isEnabled];
  *(v7 + 40) = [(HMMutableAssistantAccessControl *)self options];
  *(v7 + 56) = [(HMMutableAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
  v8 = [(NSSet *)self->super._accessories copyWithZone:a3];
  v9 = *(v7 + 48);
  *(v7 + 48) = v8;

  return v7;
}

- (void)removeAccessory:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->super.super._lock);
    _Unwind_Resume(v8);
  }

  v9 = v4;
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

- (void)addAccessory:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = __validateAccessories(v5);

  if ((v6 & 1) == 0)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  os_unfair_lock_lock_with_options();
  v7 = [(NSSet *)self->super._accessories setByAddingObject:v4];
  accessories = self->super._accessories;
  self->super._accessories = v7;

  os_unfair_lock_unlock(&self->super.super._lock);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setAccessories:(id)a3
{
  v8 = a3;
  if (__validateAccessories(v8))
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v8];
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
  v3 = [(NSSet *)self->super._accessories allObjects];
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (void)setAllowUnauthenticatedRequests:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  self->super._options = self->super._options & 0xFFFFFFFFFFFFFFFELL | v3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)allowUnauthenticatedRequests
{
  os_unfair_lock_lock_with_options();
  options = self->super._options;
  os_unfair_lock_unlock(&self->super.super._lock);
  return options & 1;
}

- (void)setOptions:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->super._options = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (unint64_t)options
{
  os_unfair_lock_lock_with_options();
  options = self->super._options;
  os_unfair_lock_unlock(&self->super.super._lock);
  return options;
}

- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->super._activityNotificationsEnabledForPersonalRequests = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)areActivityNotificationsEnabledForPersonalRequests
{
  os_unfair_lock_lock_with_options();
  activityNotificationsEnabledForPersonalRequests = self->super._activityNotificationsEnabledForPersonalRequests;
  os_unfair_lock_unlock(&self->super.super._lock);
  return activityNotificationsEnabledForPersonalRequests;
}

- (void)setEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  *(&self->super._enabled + 4) = a3;

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