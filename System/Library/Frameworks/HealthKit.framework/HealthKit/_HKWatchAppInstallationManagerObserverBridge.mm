@interface _HKWatchAppInstallationManagerObserverBridge
- (_HKWatchAppInstallationManagerObserverBridge)initWithHandle:(id)a3;
- (void)watchAppInstallationManagerDidObserveChange:(id)a3;
@end

@implementation _HKWatchAppInstallationManagerObserverBridge

- (_HKWatchAppInstallationManagerObserverBridge)initWithHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HKWatchAppInstallationManagerObserverBridge;
  v6 = [(_HKWatchAppInstallationManagerObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
  }

  return v7;
}

- (void)watchAppInstallationManagerDidObserveChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v7 = [v4 isWatchAppInstalledWithError:&v15];
  v8 = v15;
  if (v8)
  {
    _HKInitializeLogging();
    v9 = HKLogInfrastructure();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v4 bundleIdentifier];
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_19197B000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving value for watch app installation for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    handle = self->_handle;
    v9 = [v4 bundleIdentifier];
    [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:v9 newValue:v7];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end