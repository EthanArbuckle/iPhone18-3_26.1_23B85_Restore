@interface ATXEnterLOIUpdateSource
- (ATXEnterLOIUpdateSource)init;
- (ATXEnterLOIUpdateSource)initWithLocationManager:(id)a3 userDefaults:(id)a4;
- (ATXUpdatePredictionsDelegate)delegate;
- (NSDate)now;
- (id)_regionIdentifierForLocationOfInterestType:(int64_t)a3;
- (void)_registerNotificationListeners;
- (void)_start;
- (void)dealloc;
- (void)locationManagerDidEnterRegion:(id)a3;
- (void)locationManagerDidExitRegion:(id)a3;
- (void)updateMonitoredRegionsIfNecessaryWithReply:(id)a3;
@end

@implementation ATXEnterLOIUpdateSource

- (ATXEnterLOIUpdateSource)init
{
  v3 = [MEMORY[0x277D41BF8] sharedInstance];
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [(ATXEnterLOIUpdateSource *)self initWithLocationManager:v3 userDefaults:v5];

  return v6;
}

- (ATXEnterLOIUpdateSource)initWithLocationManager:(id)a3 userDefaults:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXEnterLOIUpdateSource;
  v9 = [(ATXEnterLOIUpdateSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationManager, a3);
    objc_storeStrong(&v10->_userDefaults, a4);
  }

  [(ATXEnterLOIUpdateSource *)v10 _start];

  return v10;
}

- (void)_start
{
  [(ATXEnterLOIUpdateSource *)self updateMonitoredRegionsIfNecessaryWithReply:0];

  [(ATXEnterLOIUpdateSource *)self _registerNotificationListeners];
}

- (void)_registerNotificationListeners
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_locationManagerDidEnterRegion_ name:*MEMORY[0x277D41CA0] object:0];
  [v3 addObserver:self selector:sel_locationManagerDidExitRegion_ name:*MEMORY[0x277D41CA8] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D41CA0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D41CA8] object:0];

  v4.receiver = self;
  v4.super_class = ATXEnterLOIUpdateSource;
  [(ATXEnterLOIUpdateSource *)&v4 dealloc];
}

- (void)updateMonitoredRegionsIfNecessaryWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ATXEnterLOIUpdateSourceLastRefreshDate"];
  if (v5 && (-[ATXEnterLOIUpdateSource now](self, "now"), v6 = objc_claimAutoreleasedReturnValue(), [v5 timeIntervalSinceDate:v6], v8 = v7, v6, v8 <= 86400.0))
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    locationManager = self->_locationManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__ATXEnterLOIUpdateSource_updateMonitoredRegionsIfNecessaryWithReply___block_invoke;
    v10[3] = &unk_27859E900;
    v10[4] = self;
    v11 = v4;
    [(ATXLocationManagerProtocol *)locationManager fetchAllLocationsOfInterest:v10];
  }
}

void __70__ATXEnterLOIUpdateSource_updateMonitoredRegionsIfNecessaryWithReply___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [*(a1 + 32) _regionIdentifierForLocationOfInterestType:i];
    [*(*(a1 + 32) + 16) stopMonitoringRegionWithIdentifier:v5];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * j);
        v12 = [*(a1 + 32) _regionIdentifierForLocationOfInterestType:{objc_msgSend(v11, "type", v20)}];
        v13 = objc_alloc(MEMORY[0x277CBFBC8]);
        [v11 coordinate];
        v14 = [v13 initWithCenter:v12 radius:? identifier:?];
        [*(*(a1 + 32) + 16) beginMonitoringRegion:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = *(a1 + 32);
  v16 = v15[3];
  v17 = [v15 now];
  [v16 setObject:v17 forKey:@"ATXEnterLOIUpdateSourceLastRefreshDate"];

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidEnterRegion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:*MEMORY[0x277D41CB0]];

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = 138412802;
    v12 = v8;
    v13 = 2080;
    v14 = "[ATXEnterLOIUpdateSource locationManagerDidEnterRegion:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - %s: did enter region %@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tryUpdatePredictionsImmediatelyWithReason:8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidExitRegion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:*MEMORY[0x277D41CB0]];

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = 138412802;
    v12 = v8;
    v13 = 2080;
    v14 = "[ATXEnterLOIUpdateSource locationManagerDidExitRegion:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - %s: did enter region %@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tryUpdatePredictionsDefaultIntervalWithReason:9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_regionIdentifierForLocationOfInterestType:(int64_t)a3
{
  v3 = [MEMORY[0x277D41BF8] stringForLOIType:a3];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.duetexpertd.%@", v3];

  return v4;
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (ATXUpdatePredictionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end