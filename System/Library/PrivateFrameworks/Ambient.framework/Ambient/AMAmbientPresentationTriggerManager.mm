@interface AMAmbientPresentationTriggerManager
- (AMAmbientDefaults)ambientDefaults;
- (AMAmbientPresentationTriggerManager)initWithMagicMountManager:(id)a3;
- (BOOL)_analogousTriggerEvents;
- (BOOL)_ignoreBatteryChargingForPresentation;
- (BOOL)_isDeviceBatteryCharging;
- (int64_t)_currentMountState;
- (int64_t)_currentPresentationState;
- (int64_t)_currentTriggerState;
- (void)_deviceBatteryStateChanged;
- (void)_disableMagicMountDetection;
- (void)_notifyObserversUpdatedAmbientMountState:(int64_t)a3;
- (void)_notifyObserversUpdatedAmbientPresentationState:(int64_t)a3;
- (void)_notifyObserversUpdatedAmbientTriggerState:(int64_t)a3;
- (void)_setDeviceBatteryMonitoringEnabled:(BOOL)a3;
- (void)_setEffectiveMountState:(int64_t)a3;
- (void)_setupMagicMountDetectionIfNecessary;
- (void)_updateAmbientMountState;
- (void)_updateAmbientTriggerState;
- (void)_updateEffectiveMountState;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setAmbientDefaults:(id)a3;
@end

@implementation AMAmbientPresentationTriggerManager

- (AMAmbientPresentationTriggerManager)initWithMagicMountManager:(id)a3
{
  v5 = a3;
  v6 = [(AMAmbientPresentationTriggerManager *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overridenMagicMountManager, a3);
  }

  return v7;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (int64_t)_currentTriggerState
{
  if ([(AMAmbientPresentationTriggerManager *)self _effectiveMountState]== 1)
  {
    return [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
  }

  else
  {
    return 0;
  }
}

- (int64_t)_currentMountState
{
  if (![(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging])
  {
    return 0;
  }

  v3 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  if ([v3 isMounted])
  {

    return 3;
  }

  else
  {
    v5 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    v6 = [v5 mountStatus];

    if ((v6 - 2) >= 3)
    {
      return 0;
    }

    else
    {
      return v6 - 1;
    }
  }
}

- (int64_t)_currentPresentationState
{
  if (![(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging])
  {
    return 0;
  }

  v3 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  if ([v3 isMounted])
  {

    return 1;
  }

  v5 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  v6 = [v5 mountStatus];

  if ((v6 - 2) <= 2)
  {
    return qword_23EE4FC00[v6 - 2];
  }

  else
  {
    return 0;
  }
}

- (void)_updateAmbientTriggerState
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
  v4 = [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
  v5 = [(AMAmbientPresentationTriggerManager *)self _currentTriggerState];
  v6 = AMLogPresentation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3 == 1;
    v8 = @"asserted";
    if (v5 != 1)
    {
      v8 = @"unknown";
    }

    if (!v5)
    {
      v8 = @"idle";
    }

    v9 = v8;
    v10 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    v11 = [v10 mountStatus] - 1;
    v12 = @"unknown";
    if (v11 <= 3)
    {
      v12 = off_278C735F0[v11];
    }

    v13 = [(AMAmbientPresentationTriggerManager *)self _ignoreBatteryChargingForPresentation];
    v14 = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
    v15 = @"mounted";
    if (v14 != 1)
    {
      v15 = @"unknown";
    }

    if (!v14)
    {
      v15 = @"unmounted";
    }

    v16 = v15;
    v18 = 138544642;
    v19 = v9;
    v20 = 1024;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    v24 = 1024;
    v25 = v4;
    v26 = 1024;
    v27 = v13;
    v28 = 2114;
    v29 = v16;
    _os_log_impl(&dword_23EE48000, v6, OS_LOG_TYPE_DEFAULT, "Updating ambient trigger state : %{public}@ [ isMounted : %{BOOL}d ; mountStatus : %{public}@ ; isCharging : %{BOOL}d ; ignoreCharging : %{BOOL}d ; effectiveMountState : %{public}@ ]", &v18, 0x32u);
  }

  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientPresentationState:[(AMAmbientPresentationTriggerManager *)self _currentPresentationState]];
  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientTriggerState:v5];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateAmbientMountState
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
  v4 = [(AMAmbientPresentationTriggerManager *)self _currentMountState];
  v5 = AMLogPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 > 3)
    {
      v6 = @"unknown";
    }

    else
    {
      v6 = off_278C735D0[v4];
    }

    v7 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    v8 = [v7 mountStatus] - 1;
    v9 = @"unknown";
    if (v8 <= 3)
    {
      v9 = off_278C735F0[v8];
    }

    v10 = [(AMAmbientPresentationTriggerManager *)self _ignoreBatteryChargingForPresentation];
    v11 = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
    v12 = @"mounted";
    if (v11 != 1)
    {
      v12 = @"unknown";
    }

    if (!v11)
    {
      v12 = @"unmounted";
    }

    v13 = v12;
    v15 = 138544386;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    v19 = 1024;
    v20 = v3;
    v21 = 1024;
    v22 = v10;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_23EE48000, v5, OS_LOG_TYPE_DEFAULT, "Updating ambient mount state : %{public}@ [ mountStatus : %{public}@ ; isCharging : %{BOOL}d ; ignoreCharging : %{BOOL}d ; effectiveMountState : %{public}@ ]", &v15, 0x2Cu);
  }

  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientPresentationState:[(AMAmbientPresentationTriggerManager *)self _currentPresentationState]];
  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientMountState:v4];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateEffectiveMountState
{
  v3 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  v4 = [v3 mountStatus];

  v5 = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
  if (v5 == 1)
  {
    v6 = v4 != 1;
  }

  else
  {
    v6 = v5;
    if (!v5)
    {
      v6 = v4 == 4 || v4 == 3 && [(AMAmbientPresentationTriggerManager *)self _analogousTriggerEvents];
    }
  }

  [(AMAmbientPresentationTriggerManager *)self _setEffectiveMountState:v6];
}

- (void)_setEffectiveMountState:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = AMLogPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"unknown";
    v7 = @"mounted";
    if (a3 != 1)
    {
      v7 = @"unknown";
    }

    if (!a3)
    {
      v7 = @"unmounted";
    }

    v8 = v7;
    v9 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    v10 = [v9 mountStatus] - 1;
    if (v10 <= 3)
    {
      v6 = off_278C735F0[v10];
    }

    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v6;
    v16 = 1024;
    v17 = [(AMAmbientPresentationTriggerManager *)self _analogousTriggerEvents];
    _os_log_impl(&dword_23EE48000, v5, OS_LOG_TYPE_DEFAULT, "Updating ambient effective mount state : %{public}@ [ mountStatus : %{public}@ ; analogousTriggerEvents : %{BOOL}d ]", &v12, 0x1Cu);
  }

  if (self->_effectiveMountState != a3)
  {
    self->_effectiveMountState = a3;
    [(AMAmbientPresentationTriggerManager *)self _updateAmbientTriggerState];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversUpdatedAmbientPresentationState:(int64_t)a3
{
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 copy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientPresentationState___block_invoke;
  v7[3] = &unk_278C73560;
  v7[4] = self;
  v7[5] = a3;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __87__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientPresentationState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdatePresentationState:*(a1 + 40) analogousTriggerEvents:{objc_msgSend(*(a1 + 32), "_analogousTriggerEvents")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdatePresentationState:*(a1 + 40)];
  }
}

- (void)_notifyObserversUpdatedAmbientTriggerState:(int64_t)a3
{
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 copy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientTriggerState___block_invoke;
  v7[3] = &unk_278C73560;
  v7[4] = self;
  v7[5] = a3;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __82__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientTriggerState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdateTriggerState:*(a1 + 40) analogousTriggerEvents:{objc_msgSend(*(a1 + 32), "_analogousTriggerEvents")}];
  }
}

- (void)_notifyObserversUpdatedAmbientMountState:(int64_t)a3
{
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 copy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientMountState___block_invoke;
  v7[3] = &unk_278C73560;
  v7[4] = self;
  v7[5] = a3;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __80__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientMountState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdateMountState:*(a1 + 40)];
  }
}

- (BOOL)_analogousTriggerEvents
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(AMAmbientPresentationTriggerManager *)self _currentMountState]&& (v3 = self->_batteryStateChangeTimestamp) != 0 && self->_magicMountEventTimestamp)
  {
    [(NSDate *)v3 timeIntervalSinceDate:?];
    v5 = fabs(v4);
    v6 = v5 < 3.0;
    v7 = AMLogPresentation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      batteryStateChangeTimestamp = self->_batteryStateChangeTimestamp;
      magicMountEventTimestamp = self->_magicMountEventTimestamp;
      v12[0] = 67109890;
      v12[1] = v5 < 3.0;
      v13 = 2048;
      v14 = v5;
      v15 = 2114;
      v16 = batteryStateChangeTimestamp;
      v17 = 2114;
      v18 = magicMountEventTimestamp;
      _os_log_impl(&dword_23EE48000, v7, OS_LOG_TYPE_DEFAULT, "Ambient presentation trigger events analogous : %{BOOL}d [ timeInterval : %.2f sec ; batteryTimestamp : %{public}@ ; magicMountTimestamp : %{public}@ ]", v12, 0x26u);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_setupMagicMountDetectionIfNecessary
{
  if (!self->_magicMountManager)
  {
    overridenMagicMountManager = self->_overridenMagicMountManager;
    if (overridenMagicMountManager)
    {
      v4 = overridenMagicMountManager;
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x277CC1CB8]);
    }

    magicMountManager = self->_magicMountManager;
    self->_magicMountManager = v4;

    [(CMMagicMountManager *)self->_magicMountManager setMagicMountConfiguration:2];
    objc_initWeak(&location, self);
    v6 = self->_magicMountManager;
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__AMAmbientPresentationTriggerManager__setupMagicMountDetectionIfNecessary__block_invoke;
    v8[3] = &unk_278C73588;
    objc_copyWeak(&v9, &location);
    [(CMMagicMountManager *)v6 startMagicMountUpdatesToQueue:v7 withHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __75__AMAmbientPresentationTriggerManager__setupMagicMountDetectionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AMLogPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 isMounted];
    v6 = [v3 mountStatus];
    if ((v6 - 1) > 3)
    {
      v7 = @"unknown";
    }

    else
    {
      v7 = off_278C735F0[v6 - 1];
    }

    v12[0] = 67109378;
    v12[1] = v5;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_23EE48000, v4, OS_LOG_TYPE_DEFAULT, "Ambient magic mount state change detected [ isMounted : %{BOOL}d ; status : %{public}@ ]", v12, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedMagicMountState:v3];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = WeakRetained[2];
  WeakRetained[2] = v9;

  [WeakRetained _updateEffectiveMountState];
  [WeakRetained _updateAmbientMountState];
  [WeakRetained _updateAmbientTriggerState];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_disableMagicMountDetection
{
  magicMountManager = self->_magicMountManager;
  if (magicMountManager)
  {
    [(CMMagicMountManager *)magicMountManager stopMagicMountUpdates];
    v4 = self->_magicMountManager;
    self->_magicMountManager = 0;

    cachedMagicMountState = self->_cachedMagicMountState;
    self->_cachedMagicMountState = 0;
  }
}

- (void)_setDeviceBatteryMonitoringEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = v5;
  if (v3)
  {
    [v5 addObserver:self selector:sel__deviceBatteryStateChanged name:*MEMORY[0x277D76870] object:0];
  }

  else
  {
    [v5 removeObserver:self name:*MEMORY[0x277D76870] object:0];
  }
}

- (void)_deviceBatteryStateChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = AMLogPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
    _os_log_impl(&dword_23EE48000, v3, OS_LOG_TYPE_DEFAULT, "Ambient device battery state change detected [ isDeviceBatteryCharging : %{BOOL}d ]", v7, 8u);
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  batteryStateChangeTimestamp = self->_batteryStateChangeTimestamp;
  self->_batteryStateChangeTimestamp = v4;

  [(AMAmbientPresentationTriggerManager *)self _updateEffectiveMountState];
  [(AMAmbientPresentationTriggerManager *)self _updateAmbientMountState];
  [(AMAmbientPresentationTriggerManager *)self _updateAmbientTriggerState];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDeviceBatteryCharging
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(AMAmbientPresentationTriggerManager *)self _ignoreBatteryChargingForPresentation])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(AMAmbientPresentationTriggerManager *)self overriddenBatteryChargingState];

    if (v4)
    {
      v5 = [(AMAmbientPresentationTriggerManager *)self overriddenBatteryChargingState];
      v3 = [v5 BOOLValue];
    }

    else
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v6 batteryState];

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v3 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2;
      v5 = AMLogPresentation();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v8 == 2;
        _os_log_impl(&dword_23EE48000, v5, OS_LOG_TYPE_DEFAULT, "Ambient determining battery charging = %{BOOL}d ", v11, 8u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_ignoreBatteryChargingForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);
  v3 = [WeakRetained ignoreBatteryChargingForPresentation];

  return v3;
}

- (void)setAmbientDefaults:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_ambientDefaults, v4);
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ignoreBatteryChargingForPresentation"];
    v14[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v8 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__AMAmbientPresentationTriggerManager_setAmbientDefaults___block_invoke;
    v11[3] = &unk_278C735B0;
    objc_copyWeak(&v12, &location);
    v9 = [v4 observeDefaults:v7 onQueue:MEMORY[0x277D85CD0] withBlock:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __58__AMAmbientPresentationTriggerManager_setAmbientDefaults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateEffectiveMountState];
  [WeakRetained _updateAmbientTriggerState];
}

- (AMAmbientDefaults)ambientDefaults
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);

  return WeakRetained;
}

@end