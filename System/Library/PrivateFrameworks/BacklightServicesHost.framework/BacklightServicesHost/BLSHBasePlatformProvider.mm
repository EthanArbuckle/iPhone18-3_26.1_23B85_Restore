@interface BLSHBasePlatformProvider
- (BLSHBacklightEnvironmentSessionProviding)sessionProvider;
- (BLSHBasePlatformProvider)init;
- (BLSHFlipbookSpecification)flipbookSpecification;
- (BOOL)isAlwaysOnEnabled;
- (BOOL)isAlwaysOnSettingEnabled;
- (double)backlightDimmingDuration;
- (double)backlightFadeInDuration;
- (double)backlightFadeOutDuration;
- (float)backlightDimmedFactor;
- (id)createInactiveEnvironmentSession;
- (void)addObserver:(id)observer;
- (void)notifyObserversWithBlock:(id)block;
- (void)platformDidDetectSignificantUserInteraction;
- (void)removeObserver:(id)observer;
- (void)serviceInitializing:(id)initializing;
- (void)setAlwaysOnSettingEnabled:(BOOL)enabled;
- (void)setBacklightDimmedFactor:(float)factor;
- (void)setBacklightDimmingDuration:(double)duration;
- (void)setBacklightFadeInDuration:(double)duration;
- (void)setBacklightFadeOutDuration:(double)duration;
- (void)setFlipbookSpecification:(id)specification;
- (void)setSessionProvider:(id)provider;
@end

@implementation BLSHBasePlatformProvider

- (BLSHBasePlatformProvider)init
{
  v9.receiver = self;
  v9.super_class = BLSHBasePlatformProvider;
  v2 = [(BLSHBasePlatformProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    *&v2->_lock_backlightFadeInDuration = vdupq_n_s64(0x3FB999999999999AuLL);
    v2->_lock_backlightDimmingDuration = 0.1;
    v2->_lock_backlightDimmedFactor = 0.05;
    v4 = [[BLSHFlipbookSpecification alloc] initWithSoftMemoryLimit:104857600 frameCapacity:100 framesPerSecond:0 minimumGapDuration:30.0 coaelscingEpsilon:3.0 minimumPrepareInterval:0.0028 maximumRenderInterval:90.0 surfacePoolSize:300.0 surfaceOverallocationFactor:0.0];
    lock_flipbookSpecification = v3->_lock_flipbookSpecification;
    v3->_lock_flipbookSpecification = v4;

    v3->_lock_alwaysOnSettingEnabled = 1;
    objc_storeStrong(&v3->_lock_sessionProvider, v3);
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = v6;
  }

  return v3;
}

- (void)platformDidDetectSignificantUserInteraction
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__BLSHBasePlatformProvider_platformDidDetectSignificantUserInteraction__block_invoke;
  v2[3] = &unk_27841E9D8;
  v2[4] = self;
  [(BLSHBasePlatformProvider *)self notifyObserversWithBlock:v2];
}

- (void)serviceInitializing:(id)initializing
{
  initializingCopy = initializing;
  os_unfair_lock_lock(&self->_lock);
  lock_service = self->_lock_service;
  self->_lock_service = initializingCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)backlightFadeInDuration
{
  os_unfair_lock_lock(&self->_lock);
  lock_backlightFadeInDuration = self->_lock_backlightFadeInDuration;
  os_unfair_lock_unlock(&self->_lock);
  return lock_backlightFadeInDuration;
}

- (void)setBacklightFadeInDuration:(double)duration
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_backlightFadeInDuration = duration;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)backlightFadeOutDuration
{
  os_unfair_lock_lock(&self->_lock);
  lock_backlightFadeOutDuration = self->_lock_backlightFadeOutDuration;
  os_unfair_lock_unlock(&self->_lock);
  return lock_backlightFadeOutDuration;
}

- (void)setBacklightFadeOutDuration:(double)duration
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_backlightFadeOutDuration = duration;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)backlightDimmingDuration
{
  os_unfair_lock_lock(&self->_lock);
  lock_backlightDimmingDuration = self->_lock_backlightDimmingDuration;
  os_unfair_lock_unlock(&self->_lock);
  return lock_backlightDimmingDuration;
}

- (void)setBacklightDimmingDuration:(double)duration
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_backlightDimmingDuration = duration;

  os_unfair_lock_unlock(&self->_lock);
}

- (float)backlightDimmedFactor
{
  os_unfair_lock_lock(&self->_lock);
  lock_backlightDimmedFactor = self->_lock_backlightDimmedFactor;
  os_unfair_lock_unlock(&self->_lock);
  return lock_backlightDimmedFactor;
}

- (void)setBacklightDimmedFactor:(float)factor
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_backlightDimmedFactor = self->_lock_backlightDimmedFactor;
  self->_lock_backlightDimmedFactor = factor;
  lock_service = self->_lock_service;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_backlightDimmedFactor != factor && lock_service != 0)
  {
    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    backlightState = [mEMORY[0x277CF0880] backlightState];

    if (backlightState == 3)
    {
      v10 = bls_backlight_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 134218496;
        selfCopy = self;
        v14 = 2048;
        v15 = lock_backlightDimmedFactor;
        v16 = 2048;
        factorCopy = factor;
        _os_log_error_impl(&dword_21FD11000, v10, OS_LOG_TYPE_ERROR, "%p changed dimmed factor (%.2lf->%.2lf) while currently dimmed - change will not be reflected until next update", &v12, 0x20u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAlwaysOnEnabled
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isAlwaysOnEnabled = [(BLSHBasePlatformProvider *)self _lock_isAlwaysOnEnabled];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_isAlwaysOnEnabled;
}

- (BOOL)isAlwaysOnSettingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnSettingEnabled = self->_lock_alwaysOnSettingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnSettingEnabled;
}

- (void)setAlwaysOnSettingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  deviceSupportsAlwaysOn = [(BLSHService *)self->_lock_service deviceSupportsAlwaysOn];
  lock_alwaysOnSettingEnabled = self->_lock_alwaysOnSettingEnabled;
  self->_lock_alwaysOnSettingEnabled = enabledCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (deviceSupportsAlwaysOn && lock_alwaysOnSettingEnabled != enabledCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__BLSHBasePlatformProvider_setAlwaysOnSettingEnabled___block_invoke;
    v8[3] = &unk_27841EA00;
    v8[4] = self;
    v9 = enabledCopy;
    [(BLSHBasePlatformProvider *)self notifyObserversWithBlock:v8];
  }
}

- (BLSHFlipbookSpecification)flipbookSpecification
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_flipbookSpecification;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFlipbookSpecification:(id)specification
{
  specificationCopy = specification;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_service)
  {
    [(BLSHBasePlatformProvider *)self setFlipbookSpecification:a2];
  }

  lock_flipbookSpecification = self->_lock_flipbookSpecification;
  self->_lock_flipbookSpecification = specificationCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BLSHBacklightEnvironmentSessionProviding)sessionProvider
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_sessionProvider;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSessionProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_service)
  {
    [(BLSHBasePlatformProvider *)self setSessionProvider:a2];
  }

  lock_sessionProvider = self->_lock_sessionProvider;
  self->_lock_sessionProvider = providerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];
  _lock_isAlwaysOnEnabled = [(BLSHBasePlatformProvider *)self _lock_isAlwaysOnEnabled];
  os_unfair_lock_unlock(&self->_lock);
  [observerCopy platformProvider:self didChangeAlwaysOnSetting:_lock_isAlwaysOnEnabled];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)createInactiveEnvironmentSession
{
  v2 = [BLSHBacklightEnvironmentPresentation alloc];
  v3 = [(BLSHBacklightEnvironmentPresentation *)v2 initWithPresentationEntries:MEMORY[0x277CBEBF8] flipbookContext:0 expirationDate:0];
  v4 = [BLSHBacklightInactiveEnvironmentSession sessionWithPresentation:v3];

  return v4;
}

- (void)notifyObserversWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFlipbookSpecification:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot mutate flipbookSpecification after service initialization : %@", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHBasePlatformProvider.m";
    v10 = 1024;
    v11 = 175;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSessionProvider:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot mutate sessionProvider after service initialization : %@", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHBasePlatformProvider.m";
    v10 = 1024;
    v11 = 189;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end