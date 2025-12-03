@interface HKLocalAppInstallationManager
- (HKLocalAppInstallationManager)initWithBundleIdentifier:(id)identifier;
- (id)isWatchAppInstalledWithError:(id *)error;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation HKLocalAppInstallationManager

- (HKLocalAppInstallationManager)initWithBundleIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = HKLocalAppInstallationManager;
  return [(HKWatchAppInstallationManager *)&v4 initWithBundleIdentifier:identifier];
}

- (id)isWatchAppInstalledWithError:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  bundleIdentifier = [(HKWatchAppInstallationManager *)self bundleIdentifier];
  v7 = [v4 numberWithBool:{objc_msgSend(defaultWorkspace, "applicationIsInstalled:", bundleIdentifier)}];

  return v7;
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

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace addObserver:self];

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

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidInstall:(id)install
{
  v20 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v8) bundleIdentifier];
        bundleIdentifier2 = [(HKWatchAppInstallationManager *)self bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:bundleIdentifier2];

        if (v11)
        {
          queue = self->super._queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __56__HKLocalAppInstallationManager_applicationsDidInstall___block_invoke;
          block[3] = &unk_1E7376780;
          block[4] = self;
          dispatch_async(queue, block);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [installCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v20 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v8) bundleIdentifier];
        bundleIdentifier2 = [(HKWatchAppInstallationManager *)self bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:bundleIdentifier2];

        if (v11)
        {
          queue = self->super._queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __58__HKLocalAppInstallationManager_applicationsDidUninstall___block_invoke;
          block[3] = &unk_1E7376780;
          block[4] = self;
          dispatch_async(queue, block);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [uninstallCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end