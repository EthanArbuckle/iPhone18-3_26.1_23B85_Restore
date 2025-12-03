@interface BLSHTTRWatchdog
- (BLSHTTRWatchdog)initWithOSProvider:(id)provider configurationProvider:(id)configurationProvider detailProvider:(id)detailProvider;
- (BOOL)_shouldRunWatchdog;
- (BOOL)_test_enabledViaDefaults;
- (id)_test_tryAgainState;
- (void)_setupUserDefaults;
- (void)_test_forceTryAgainNow;
- (void)_watchdogFired:(id)fired;
- (void)dealloc;
- (void)startWatchdog;
- (void)stopWatchdog;
@end

@implementation BLSHTTRWatchdog

- (BLSHTTRWatchdog)initWithOSProvider:(id)provider configurationProvider:(id)configurationProvider detailProvider:(id)detailProvider
{
  providerCopy = provider;
  configurationProviderCopy = configurationProvider;
  detailProviderCopy = detailProvider;
  v19.receiver = self;
  v19.super_class = BLSHTTRWatchdog;
  v12 = [(BLSHTTRWatchdog *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_test_forceShowTTRLater = 0;
    objc_storeStrong(&v12->_osInterfaceProvider, provider);
    v14 = MEMORY[0x223D70730](detailProviderCopy);
    detailProviderBlock = v13->_detailProviderBlock;
    v13->_detailProviderBlock = v14;

    v16 = configurationProviderCopy[2](configurationProviderCopy);
    configuration = v13->_configuration;
    v13->_configuration = v16;

    [(BLSHTTRWatchdog *)v13 _setupUserDefaults];
  }

  return v13;
}

- (void)dealloc
{
  [(BSTimerScheduleQuerying *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  osInterfaceProvider = self->_osInterfaceProvider;
  self->_osInterfaceProvider = 0;

  detailProviderBlock = self->_detailProviderBlock;
  self->_detailProviderBlock = 0;

  v6.receiver = self;
  v6.super_class = BLSHTTRWatchdog;
  [(BLSHTTRWatchdog *)&v6 dealloc];
}

- (BOOL)_shouldRunWatchdog
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
    timerIdentifier = [(BLSHTTRWatchdogConfiguration *)self->_configuration timerIdentifier];
    v6 = [v4 BOOLForKey:timerIdentifier];

    LOBYTE(has_internal_diagnostics) = v6;
  }

  return has_internal_diagnostics;
}

- (void)_watchdogFired:(id)fired
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = bls_diagnostics_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(BLSHTTRWatchdog *)self _watchdogFired:v4];
  }

  v5 = (*(self->_detailProviderBlock + 2))();
  if ([v5 showTTRAlert])
  {
    identifier = [(BLSHTTRWatchdogConfiguration *)self->_configuration identifier];
    [v5 setIdentifier:identifier];

    _BLSHShowWatchdogFailureAlert(v5, self->_test_forceShowTTRLater, 0);
  }

  else
  {
    v7 = bls_diagnostics_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      identifier2 = [(BLSHTTRWatchdogConfiguration *)self->_configuration identifier];
      v11 = 138412290;
      v12 = identifier2;
      _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "TTR watchdog timer fired for %@, was asked to skip showing the alert.", &v11, 0xCu);
    }
  }

  [(BSTimerScheduleQuerying *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startWatchdog
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(BLSHTTRWatchdog *)self _shouldRunWatchdog]&& !self->_timer)
  {
    v3 = bls_diagnostics_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      identifier = [(BLSHTTRWatchdogConfiguration *)self->_configuration identifier];
      [(BLSHTTRWatchdogConfiguration *)self->_configuration timeout];
      *buf = 138412546;
      v18 = identifier;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&dword_21FD11000, v3, OS_LOG_TYPE_INFO, "TTR watchdog starting timer for %@, will fire in %lf seconds.", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    osInterfaceProvider = self->_osInterfaceProvider;
    timerIdentifier = [(BLSHTTRWatchdogConfiguration *)self->_configuration timerIdentifier];
    [(BLSHTTRWatchdogConfiguration *)self->_configuration timeout];
    v9 = v8;
    [(BLSHTTRWatchdogConfiguration *)self->_configuration leeway];
    v11 = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __32__BLSHTTRWatchdog_startWatchdog__block_invoke;
    v15[3] = &unk_27841F898;
    objc_copyWeak(&v16, buf);
    v12 = [(BLSHOSInterfaceProviding *)osInterfaceProvider scheduledTimerWithIdentifier:timerIdentifier interval:v15 leewayInterval:v9 handler:v11];
    timer = self->_timer;
    self->_timer = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __32__BLSHTTRWatchdog_startWatchdog__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _watchdogFired:v3];
}

- (void)stopWatchdog
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_timer)
  {
    v3 = bls_diagnostics_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      identifier = [(BLSHTTRWatchdogConfiguration *)self->_configuration identifier];
      v7 = 138412290;
      v8 = identifier;
      _os_log_impl(&dword_21FD11000, v3, OS_LOG_TYPE_INFO, "TTR watchdog stopping timer for %@.", &v7, 0xCu);
    }

    [(BSTimerScheduleQuerying *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUserDefaults
{
  v11 = *MEMORY[0x277D85DE8];
  identifier = [*(self + 32) identifier];
  enabledByDefault = [*(self + 32) enabledByDefault];
  v7 = 138412546;
  v8 = identifier;
  v9 = 1024;
  v10 = enabledByDefault;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "TTR watchdog timer defaults for %@ - enabled? %x", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_test_forceTryAgainNow
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [__blsh_ttrwatchdog_lastFailureDetails allValues];
  v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        _BLSHShowWatchdogFailureAlert(*(*(&v8 + 1) + 8 * v6++), 0, 1);
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_test_enabledViaDefaults
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  timerIdentifier = [(BLSHTTRWatchdogConfiguration *)self->_configuration timerIdentifier];
  v5 = [v3 BOOLForKey:timerIdentifier];

  return v5;
}

- (id)_test_tryAgainState
{
  v2 = [__blsh_ttrwatchdog_lastFailureDetails copy];

  return v2;
}

- (void)_watchdogFired:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) identifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "TTR watchdog timer fired for %@, requesting details to present alert.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end