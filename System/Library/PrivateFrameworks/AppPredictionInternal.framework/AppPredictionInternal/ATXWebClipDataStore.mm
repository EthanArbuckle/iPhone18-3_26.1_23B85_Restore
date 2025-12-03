@interface ATXWebClipDataStore
- (ATXWebClipDataStore)init;
- (ATXWebClipDataStore)initWithDataStore:(id)store;
- (ATXWebClipDataStore)initWithDataStore:(id)store contextUpdateListener:(id)listener;
- (id)webClipBundleIdsForAppClip:(id)clip;
- (void)updateWithUsageEvent:(id)event;
@end

@implementation ATXWebClipDataStore

- (ATXWebClipDataStore)init
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = objc_opt_new();
  v5 = [(ATXWebClipDataStore *)self initWithDataStore:v3 contextUpdateListener:v4];

  return v5;
}

- (ATXWebClipDataStore)initWithDataStore:(id)store
{
  storeCopy = store;
  v5 = objc_opt_new();
  v6 = [(ATXWebClipDataStore *)self initWithDataStore:storeCopy contextUpdateListener:v5];

  return v6;
}

- (ATXWebClipDataStore)initWithDataStore:(id)store contextUpdateListener:(id)listener
{
  storeCopy = store;
  listenerCopy = listener;
  v15.receiver = self;
  v15.super_class = ATXWebClipDataStore;
  v9 = [(ATXWebClipDataStore *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataStore, store);
    objc_storeStrong(&v10->_appClipUsageUpdateListener, listener);
    objc_initWeak(&location, v10);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__ATXWebClipDataStore_initWithDataStore_contextUpdateListener___block_invoke;
    v12[3] = &unk_278598070;
    objc_copyWeak(&v13, &location);
    [listenerCopy startListeningWithCallback:v12 clientId:@"ATXWebClipDataStore"];
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

- (void)updateWithUsageEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  clipBundleId = [eventCopy clipBundleId];
  if (clipBundleId)
  {
    v6 = clipBundleId;
    webClipBundleId = [eventCopy webClipBundleId];

    if (webClipBundleId)
    {
      v8 = __atxlog_handle_hero();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        webClipBundleId2 = [eventCopy webClipBundleId];
        clipBundleId2 = [eventCopy clipBundleId];
        v15 = 138412546;
        v16 = webClipBundleId2;
        v17 = 2112;
        v18 = clipBundleId2;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Recording usage event for %@:%@", &v15, 0x16u);
      }

      dataStore = [(ATXWebClipDataStore *)self dataStore];
      webClipBundleId3 = [eventCopy webClipBundleId];
      clipBundleId3 = [eventCopy clipBundleId];
      [dataStore writeWebClip:webClipBundleId3 appClip:clipBundleId3];

      goto LABEL_8;
    }
  }

  dataStore = __atxlog_handle_hero();
  if (os_log_type_enabled(dataStore, OS_LOG_TYPE_DEFAULT))
  {
    webClipBundleId3 = [eventCopy parentAppBundleId];
    v15 = 138412290;
    v16 = webClipBundleId3;
    _os_log_impl(&dword_2263AA000, dataStore, OS_LOG_TYPE_DEFAULT, "Not recording usage event for %@", &v15, 0xCu);
LABEL_8:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)webClipBundleIdsForAppClip:(id)clip
{
  clipCopy = clip;
  dataStore = [(ATXWebClipDataStore *)self dataStore];
  v6 = [dataStore webClipsForAppClipBundleId:clipCopy];

  return v6;
}

@end