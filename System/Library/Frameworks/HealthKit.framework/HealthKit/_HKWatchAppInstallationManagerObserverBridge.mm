@interface _HKWatchAppInstallationManagerObserverBridge
- (_HKWatchAppInstallationManagerObserverBridge)initWithHandle:(id)handle;
- (void)watchAppInstallationManagerDidObserveChange:(id)change;
@end

@implementation _HKWatchAppInstallationManagerObserverBridge

- (_HKWatchAppInstallationManagerObserverBridge)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _HKWatchAppInstallationManagerObserverBridge;
  v6 = [(_HKWatchAppInstallationManagerObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (void)watchAppInstallationManagerDidObserveChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v6 = v17;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed change in watch app installation, notifying observers", buf, 0xCu);
  }

  v15 = 0;
  v7 = [changeCopy isWatchAppInstalledWithError:&v15];
  v8 = v15;
  if (v8)
  {
    _HKInitializeLogging();
    bundleIdentifier2 = HKLogInfrastructure();
    if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      bundleIdentifier = [changeCopy bundleIdentifier];
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = bundleIdentifier;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_19197B000, bundleIdentifier2, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving value for watch app installation for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    handle = self->_handle;
    bundleIdentifier2 = [changeCopy bundleIdentifier];
    [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:bundleIdentifier2 newValue:v7];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end