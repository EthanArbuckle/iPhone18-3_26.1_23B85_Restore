@interface HKWatchAppInstallationDataSource
- (HKWatchAppInstallationDataSource)init;
- (HKWatchAppInstallationDataSource)initWithDevicePairingAndSwitchingNotificationDataSource:(id)a3;
- (id)_populateManagersDictionaryForBundleIdentifier:(id)a3;
- (id)isWatchAppInstalledWithBundleIdentifier:(id)a3 error:(id *)a4;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
- (id)watchAppInstallationManagerForBundleIdentifier:(id)a3;
- (void)addWatchAppInstallationManager:(id)a3 forBundleIdentifier:(id)a4;
- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4;
@end

@implementation HKWatchAppInstallationDataSource

- (HKWatchAppInstallationDataSource)init
{
  v3 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v4 = [(HKWatchAppInstallationDataSource *)self initWithDevicePairingAndSwitchingNotificationDataSource:v3];

  return v4;
}

- (HKWatchAppInstallationDataSource)initWithDevicePairingAndSwitchingNotificationDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKWatchAppInstallationDataSource;
  v6 = [(HKObserverBridge *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_devicePairingAndSwitchingDataSource, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    watchAppInstallationManagersByBundleIdentifier = v7->_watchAppInstallationManagersByBundleIdentifier;
    v7->_watchAppInstallationManagersByBundleIdentifier = v8;

    v7->_watchAppInstallationManagersLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)_populateManagersDictionaryForBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[_HKBehavior sharedBehavior];
  v6 = [v5 isAppleWatch];

  if (v6)
  {
    v7 = off_1E7375148;
  }

  else
  {
    v8 = +[_HKBehavior sharedBehavior];
    v9 = [v8 isCompanionCapable];

    if (!v9)
    {
      goto LABEL_7;
    }

    v7 = off_1E7375338;
  }

  v10 = [objc_alloc(*v7) initWithBundleIdentifier:v4];
  if (v10)
  {
    v11 = v10;
    os_unfair_lock_lock(&self->_watchAppInstallationManagersLock);
    [(NSMutableDictionary *)self->_watchAppInstallationManagersByBundleIdentifier setObject:v11 forKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_watchAppInstallationManagersLock);
    goto LABEL_10;
  }

LABEL_7:
  _HKInitializeLogging();
  v12 = HKLogInfrastructure();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    v13 = v17;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Device does not support HKWatchAppInstallationManager", &v16, 0xCu);
  }

  v11 = 0;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)watchAppInstallationManagerForBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_watchAppInstallationManagersLock);
  v5 = [(NSMutableDictionary *)self->_watchAppInstallationManagersByBundleIdentifier copy];
  os_unfair_lock_unlock(&self->_watchAppInstallationManagersLock);
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(HKWatchAppInstallationDataSource *)self _populateManagersDictionaryForBundleIdentifier:v4];
  }

  v9 = v8;

  return v9;
}

- (void)addWatchAppInstallationManager:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_watchAppInstallationManagersLock);
  [(NSMutableDictionary *)self->_watchAppInstallationManagersByBundleIdentifier setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_watchAppInstallationManagersLock);
}

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  v6 = a4;
  v7 = [(HKWatchAppInstallationDataSource *)self watchAppInstallationManagerForBundleIdentifier:a3];
  v8 = [[_HKWatchAppInstallationManagerObserverBridge alloc] initWithHandle:v6];

  [v7 registerObserver:v8];
  v9 = +[_HKBehavior sharedBehavior];
  v10 = [v9 isAppleWatch];

  if ((v10 & 1) == 0)
  {
    devicePairingAndSwitchingDataSource = self->_devicePairingAndSwitchingDataSource;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__HKWatchAppInstallationDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke;
    v13[3] = &unk_1E7385B00;
    v14 = v8;
    v15 = v7;
    [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)devicePairingAndSwitchingDataSource registerObserverForDevicePairingChanges:self block:v13];
  }

  return v8;
}

- (id)isWatchAppInstalledWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HKWatchAppInstallationDataSource *)self watchAppInstallationManagerForBundleIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v19 = 0;
    v9 = [v7 isWatchAppInstalledWithError:&v19];
    v10 = v19;
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }

      _HKInitializeLogging();
      v14 = HKLogInfrastructure();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = v6;
        v24 = 2114;
        v25 = v11;
        v18 = v17;
        _os_log_error_impl(&dword_19197B000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving value for watch app installation from data source for %{public}@: %{public}@", buf, 0x20u);
      }

      v13 = 0;
    }

    else
    {
      v13 = v9;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E110];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v8 = [(HKWatchAppInstallationDataSource *)self watchAppInstallationManagerForBundleIdentifier:a4];
  [v8 unregisterObserver:v6];

  v7 = +[_HKBehavior sharedBehavior];
  LOBYTE(v6) = [v7 isAppleWatch];

  if ((v6 & 1) == 0)
  {
    [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self->_devicePairingAndSwitchingDataSource unregisterObserverForDevicePairingChanges:self];
  }
}

@end