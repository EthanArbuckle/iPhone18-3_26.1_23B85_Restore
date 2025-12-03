@interface ATXIntentMetadataCacheInvalidationMonitor
- (void)_checkForOSUpdate;
- (void)_listenForAppRegistrationAndUninstall;
- (void)_notifyDelegateApplicationsDidUninstall:(id)uninstall;
- (void)_notifyDelegateApplicationsDidUpdate:(id)update;
- (void)_notifyDelegateSystemDidUpdate;
- (void)setDelegateAndStartMonitoring:(id)monitoring;
- (void)setDelegateAndStartMonitoring:(id)monitoring userDefaults:(id)defaults;
@end

@implementation ATXIntentMetadataCacheInvalidationMonitor

- (void)setDelegateAndStartMonitoring:(id)monitoring
{
  v4 = MEMORY[0x277CBEBD0];
  monitoringCopy = monitoring;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [(ATXIntentMetadataCacheInvalidationMonitor *)self setDelegateAndStartMonitoring:monitoringCopy userDefaults:v7];
}

- (void)setDelegateAndStartMonitoring:(id)monitoring userDefaults:(id)defaults
{
  objc_storeStrong(&self->_userDefaults, defaults);
  monitoringCopy = monitoring;
  objc_storeWeak(&self->_delegate, monitoringCopy);

  [(ATXIntentMetadataCacheInvalidationMonitor *)self _listenForAppRegistrationAndUninstall];

  [(ATXIntentMetadataCacheInvalidationMonitor *)self _checkForOSUpdate];
}

- (void)_listenForAppRegistrationAndUninstall
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  appRegistrationListener = self->_appRegistrationListener;
  self->_appRegistrationListener = v3;

  v5 = self->_appRegistrationListener;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__ATXIntentMetadataCacheInvalidationMonitor__listenForAppRegistrationAndUninstall__block_invoke;
  v11[3] = &unk_278596D78;
  objc_copyWeak(&v12, &location);
  [(ATXInternalAppRegistrationNotification *)v5 registerForNotificationsWithRegisterBlock:v11];
  v6 = objc_opt_new();
  appUninstallListener = self->_appUninstallListener;
  self->_appUninstallListener = v6;

  v8 = self->_appUninstallListener;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__ATXIntentMetadataCacheInvalidationMonitor__listenForAppRegistrationAndUninstall__block_invoke_26;
  v9[3] = &unk_278596DA0;
  objc_copyWeak(&v10, &location);
  [(_ATXInternalUninstallNotification *)v8 registerForNotificationsWithUninstallBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __82__ATXIntentMetadataCacheInvalidationMonitor__listenForAppRegistrationAndUninstall__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCacheInvalidationMonitor received ATXInternalAppRegistrationNotification", v7, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
    [WeakRetained _notifyDelegateApplicationsDidUpdate:v6];
  }
}

void __82__ATXIntentMetadataCacheInvalidationMonitor__listenForAppRegistrationAndUninstall__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCacheInvalidationMonitor received _ATXInternalUninstallNotification", v6, 2u);
    }

    [WeakRetained _notifyDelegateApplicationsDidUninstall:v3];
  }
}

- (void)_checkForOSUpdate
{
  v3 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"ATXIntentCache.OSVersion"];
  _getCurrentBuild = [(ATXIntentMetadataCacheInvalidationMonitor *)self _getCurrentBuild];
  if (([v3 isEqualToString:_getCurrentBuild] & 1) == 0)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCacheInvalidationMonitor determined that OS updated", v6, 2u);
    }

    [(ATXIntentMetadataCacheInvalidationMonitor *)self _notifyDelegateSystemDidUpdate];
  }

  [(NSUserDefaults *)self->_userDefaults setObject:_getCurrentBuild forKey:@"ATXIntentCache.OSVersion"];
}

- (void)_notifyDelegateApplicationsDidUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationsDidUpdate:updateCopy];
}

- (void)_notifyDelegateApplicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationsDidUninstall:uninstallCopy];
}

- (void)_notifyDelegateSystemDidUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemDidUpdate];
}

@end