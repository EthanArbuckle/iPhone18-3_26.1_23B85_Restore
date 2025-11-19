@interface ATXWebClipDataStore
- (ATXWebClipDataStore)init;
- (ATXWebClipDataStore)initWithDataStore:(id)a3;
- (ATXWebClipDataStore)initWithDataStore:(id)a3 contextUpdateListener:(id)a4;
- (id)webClipBundleIdsForAppClip:(id)a3;
- (void)updateWithUsageEvent:(id)a3;
@end

@implementation ATXWebClipDataStore

- (ATXWebClipDataStore)init
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = objc_opt_new();
  v5 = [(ATXWebClipDataStore *)self initWithDataStore:v3 contextUpdateListener:v4];

  return v5;
}

- (ATXWebClipDataStore)initWithDataStore:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXWebClipDataStore *)self initWithDataStore:v4 contextUpdateListener:v5];

  return v6;
}

- (ATXWebClipDataStore)initWithDataStore:(id)a3 contextUpdateListener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = ATXWebClipDataStore;
  v9 = [(ATXWebClipDataStore *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataStore, a3);
    objc_storeStrong(&v10->_appClipUsageUpdateListener, a4);
    objc_initWeak(&location, v10);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__ATXWebClipDataStore_initWithDataStore_contextUpdateListener___block_invoke;
    v12[3] = &unk_278598070;
    objc_copyWeak(&v13, &location);
    [v8 startListeningWithCallback:v12 clientId:@"ATXWebClipDataStore"];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __63__ATXWebClipDataStore_initWithDataStore_contextUpdateListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateWithUsageEvent:v3];
}

- (void)updateWithUsageEvent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clipBundleId];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 webClipBundleId];

    if (v7)
    {
      v8 = __atxlog_handle_hero();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 webClipBundleId];
        v10 = [v4 clipBundleId];
        v15 = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Recording usage event for %@:%@", &v15, 0x16u);
      }

      v11 = [(ATXWebClipDataStore *)self dataStore];
      v12 = [v4 webClipBundleId];
      v13 = [v4 clipBundleId];
      [v11 writeWebClip:v12 appClip:v13];

      goto LABEL_8;
    }
  }

  v11 = __atxlog_handle_hero();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 parentAppBundleId];
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Not recording usage event for %@", &v15, 0xCu);
LABEL_8:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)webClipBundleIdsForAppClip:(id)a3
{
  v4 = a3;
  v5 = [(ATXWebClipDataStore *)self dataStore];
  v6 = [v5 webClipsForAppClipBundleId:v4];

  return v6;
}

@end