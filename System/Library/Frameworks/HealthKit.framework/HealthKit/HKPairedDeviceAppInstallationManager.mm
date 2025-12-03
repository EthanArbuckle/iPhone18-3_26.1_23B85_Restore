@interface HKPairedDeviceAppInstallationManager
- (HKPairedDeviceAppInstallationManager)initWithBundleIdentifier:(id)identifier;
- (HKPairedDeviceAppInstallationManager)initWithBundleIdentifier:(id)identifier forPairedDeviceRegistry:(id)registry;
- (id)handleErrorWithAppConduitFetch:(id)fetch errorOut:(id *)out;
- (id)isWatchAppInstalledWithError:(id *)error;
- (void)_watchAppInstallStateDidChange:(id)change;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation HKPairedDeviceAppInstallationManager

- (HKPairedDeviceAppInstallationManager)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getNRPairedDeviceRegistryClass_softClass;
  v14 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v10[3] = &unk_1E7378388;
    v10[4] = &v11;
    __getNRPairedDeviceRegistryClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  sharedInstance = [v5 sharedInstance];
  v8 = [(HKPairedDeviceAppInstallationManager *)self initWithBundleIdentifier:identifierCopy forPairedDeviceRegistry:sharedInstance];

  return v8;
}

- (HKPairedDeviceAppInstallationManager)initWithBundleIdentifier:(id)identifier forPairedDeviceRegistry:(id)registry
{
  registryCopy = registry;
  v11.receiver = self;
  v11.super_class = HKPairedDeviceAppInstallationManager;
  v8 = [(HKWatchAppInstallationManager *)&v11 initWithBundleIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pairedDeviceRegistry, registry);
  }

  return v9;
}

- (id)isWatchAppInstalledWithError:(id *)error
{
  v19 = 0;
  getActivePairedDevice = [self->_pairedDeviceRegistry getActivePairedDevice];
  if (getActivePairedDevice)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v6 = getNRDevicePropertyIsSetupSymbolLoc_ptr;
    v28 = getNRDevicePropertyIsSetupSymbolLoc_ptr;
    if (!getNRDevicePropertyIsSetupSymbolLoc_ptr)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getNRDevicePropertyIsSetupSymbolLoc_block_invoke;
      v23 = &unk_1E7378388;
      v24 = &v25;
      v7 = NanoRegistryLibrary();
      v26[3] = dlsym(v7, "NRDevicePropertyIsSetup");
      getNRDevicePropertyIsSetupSymbolLoc_ptr = *(v24[1] + 24);
      v6 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v6)
    {
      [HKPairedDeviceAppInstallationManager isWatchAppInstalledWithError:];
    }

    v8 = [getActivePairedDevice valueForProperty:*v6];
    bOOLValue = [v8 BOOLValue];

    mEMORY[0x1E698AB08] = [MEMORY[0x1E698AB08] sharedDeviceConnection];
    bundleIdentifier = [(HKWatchAppInstallationManager *)self bundleIdentifier];
    if (bOOLValue)
    {
      v17 = 0;
      v12 = [mEMORY[0x1E698AB08] getApplicationIsInstalled:&v19 withBundleID:bundleIdentifier onPairedDevice:getActivePairedDevice error:&v17];
      v13 = v17;
    }

    else
    {
      v18 = 0;
      v12 = [mEMORY[0x1E698AB08] getApplicationWithBundleID:bundleIdentifier willInstallAfterPairing:&v19 onDevice:getActivePairedDevice error:&v18];
      v13 = v18;
    }

    v15 = v13;

    if (v12)
    {
      [MEMORY[0x1E696AD98] numberWithBool:v19];
    }

    else
    {
      [(HKPairedDeviceAppInstallationManager *)self handleErrorWithAppConduitFetch:v15 errorOut:error];
    }
    v14 = ;
  }

  else
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:0];
  }

  return v14;
}

- (id)handleErrorWithAppConduitFetch:(id)fetch errorOut:(id *)out
{
  fetchCopy = fetch;
  v7 = fetchCopy;
  if (fetchCopy)
  {
    if (out)
    {
      v8 = fetchCopy;
      *out = v7;
    }

    else
    {
      _HKLogDroppedError(fetchCopy);
    }
  }

  _HKInitializeLogging();
  v9 = HKLogInfrastructure();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(HKPairedDeviceAppInstallationManager *)self handleErrorWithAppConduitFetch:v7 errorOut:v9];
  }

  return 0;
}

- (void)startObserving
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting observation", &v6, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__watchAppInstallStateDidChange_ name:*MEMORY[0x1E698AAF0] object:0];
  [defaultCenter addObserver:self selector:sel__watchAppInstallStateDidChange_ name:*MEMORY[0x1E698AAF8] object:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopObserving
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping observation", &v6, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698AAF0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698AAF8] object:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_watchAppInstallStateDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [changeCopy name];
    *buf = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = name;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received pairing/active notification: %{public}@", buf, 0x16u);
  }

  userInfo = [changeCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E698AAE8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [(HKWatchAppInstallationManager *)self bundleIdentifier];
    v12 = [v10 containsObject:bundleIdentifier];

    if (v12)
    {
      queue = self->super._queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__HKPairedDeviceAppInstallationManager__watchAppInstallStateDidChange___block_invoke;
      block[3] = &unk_1E7376780;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogInfrastructure();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HKPairedDeviceAppInstallationManager _watchAppInstallStateDidChange:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)isWatchAppInstalledWithError:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyIsSetup(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKWatchAppInstallationManager.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)handleErrorWithAppConduitFetch:(NSObject *)a3 errorOut:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 bundleIdentifier];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "Failed to check install status of %@ with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end