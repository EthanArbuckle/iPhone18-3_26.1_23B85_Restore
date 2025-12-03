@interface HKWatchAppInstallationDataSource
- (HKWatchAppInstallationDataSource)init;
- (HKWatchAppInstallationDataSource)initWithDevicePairingAndSwitchingNotificationDataSource:(id)source;
- (id)_populateManagersDictionaryForBundleIdentifier:(id)identifier;
- (id)isWatchAppInstalledWithBundleIdentifier:(id)identifier error:(id *)error;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (id)watchAppInstallationManagerForBundleIdentifier:(id)identifier;
- (void)addWatchAppInstallationManager:(id)manager forBundleIdentifier:(id)identifier;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
@end

@implementation HKWatchAppInstallationDataSource

- (HKWatchAppInstallationDataSource)init
{
  v3 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v4 = [(HKWatchAppInstallationDataSource *)self initWithDevicePairingAndSwitchingNotificationDataSource:v3];

  return v4;
}

- (HKWatchAppInstallationDataSource)initWithDevicePairingAndSwitchingNotificationDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HKWatchAppInstallationDataSource;
  v6 = [(HKObserverBridge *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_devicePairingAndSwitchingDataSource, source);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    watchAppInstallationManagersByBundleIdentifier = v7->_watchAppInstallationManagersByBundleIdentifier;
    v7->_watchAppInstallationManagersByBundleIdentifier = v8;

    v7->_watchAppInstallationManagersLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)_populateManagersDictionaryForBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v5 isAppleWatch];

  if (isAppleWatch)
  {
    v7 = off_1E7375148;
  }

  else
  {
    v8 = +[_HKBehavior sharedBehavior];
    isCompanionCapable = [v8 isCompanionCapable];

    if (!isCompanionCapable)
    {
      goto LABEL_7;
    }

    v7 = off_1E7375338;
  }

  v10 = [objc_alloc(*v7) initWithBundleIdentifier:identifierCopy];
  if (v10)
  {
    v11 = v10;
    os_unfair_lock_lock(&self->_watchAppInstallationManagersLock);
    [(NSMutableDictionary *)self->_watchAppInstallationManagersByBundleIdentifier setObject:v11 forKeyedSubscript:identifierCopy];
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

- (id)watchAppInstallationManagerForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_watchAppInstallationManagersLock);
  v5 = [(NSMutableDictionary *)self->_watchAppInstallationManagersByBundleIdentifier copy];
  os_unfair_lock_unlock(&self->_watchAppInstallationManagersLock);
  v6 = [v5 objectForKeyedSubscript:identifierCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(HKWatchAppInstallationDataSource *)self _populateManagersDictionaryForBundleIdentifier:identifierCopy];
  }

  v9 = v8;

  return v9;
}

- (void)addWatchAppInstallationManager:(id)manager forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  managerCopy = manager;
  os_unfair_lock_lock(&self->_watchAppInstallationManagersLock);
  [(NSMutableDictionary *)self->_watchAppInstallationManagersByBundleIdentifier setObject:managerCopy forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_watchAppInstallationManagersLock);
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  handleCopy = handle;
  v7 = [(HKWatchAppInstallationDataSource *)self watchAppInstallationManagerForBundleIdentifier:key];
  v8 = [[_HKWatchAppInstallationManagerObserverBridge alloc] initWithHandle:handleCopy];

  [v7 registerObserver:v8];
  v9 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v9 isAppleWatch];

  if ((isAppleWatch & 1) == 0)
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

- (id)isWatchAppInstalledWithBundleIdentifier:(id)identifier error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(HKWatchAppInstallationDataSource *)self watchAppInstallationManagerForBundleIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v19 = 0;
    v9 = [v7 isWatchAppInstalledWithError:&v19];
    v10 = v19;
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
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
        v23 = identifierCopy;
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

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  observerCopy = observer;
  v8 = [(HKWatchAppInstallationDataSource *)self watchAppInstallationManagerForBundleIdentifier:key];
  [v8 unregisterObserver:observerCopy];

  v7 = +[_HKBehavior sharedBehavior];
  LOBYTE(observerCopy) = [v7 isAppleWatch];

  if ((observerCopy & 1) == 0)
  {
    [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self->_devicePairingAndSwitchingDataSource unregisterObserverForDevicePairingChanges:self];
  }
}

@end