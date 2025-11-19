@interface ATDevicePairedSyncManager
+ (id)sharedPairedSyncManager;
- (ATDevicePairedSyncManager)init;
- (BOOL)hasRestriction;
- (void)_cleanupSyncState;
- (void)_triggerInitialSync;
- (void)nanoPairedDeviceStatusMonitor:(id)a3 didFinishInitialSyncForPairingIdentifier:(id)a4;
- (void)nanoPairedDeviceStatusMonitorNewActiveDevice:(id)a3;
- (void)nanoPairedDeviceStatusMonitorPairedDeviceChanged:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation ATDevicePairedSyncManager

- (void)nanoPairedDeviceStatusMonitor:(id)a3 didFinishInitialSyncForPairingIdentifier:(id)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__ATDevicePairedSyncManager_nanoPairedDeviceStatusMonitor_didFinishInitialSyncForPairingIdentifier___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)nanoPairedDeviceStatusMonitorNewActiveDevice:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ATDevicePairedSyncManager_nanoPairedDeviceStatusMonitorNewActiveDevice___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)nanoPairedDeviceStatusMonitorPairedDeviceChanged:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ATDevicePairedSyncManager_nanoPairedDeviceStatusMonitorPairedDeviceChanged___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_triggerInitialSync
{
  v3 = +[ATDeviceSettings sharedInstance];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v3 setPairingSyncCompletionTime:?];
  [v3 setSyncPending:1 forDataClass:@"Media"];
  [(ATDeviceService *)self->_deviceService requestSyncForPairedDeviceWithPriority:1 withCompletion:0];
}

- (void)_cleanupSyncState
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = +[ATDeviceSettings sharedInstance];
  v3 = [MEMORY[0x277D7FBA8] sharedMonitor];
  v4 = MEMORY[0x277CBEB98];
  v18 = v3;
  v5 = [v3 allPairedDeviceGUIDs];
  v6 = [v4 setWithArray:v5];

  v7 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "Cleaning up sync state. allPairedDeviceGUIDs = %{public}@", buf, 0xCu);
  }

  v17 = [v2 endpointInfo];
  v8 = [v17 allKeys];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v2 hostInfoForLibrary:v13];
        v15 = [v14 deviceGUID];
        if (!v15 || ([v6 containsObject:v15] & 1) == 0)
        {
          v16 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v24 = v13;
            v25 = 2114;
            v26 = v15;
            _os_log_impl(&dword_223819000, v16, OS_LOG_TYPE_DEFAULT, "removing endpoint for library %{public}@. GUID=%{public}@", buf, 0x16u);
          }

          [v2 removeEndpointInfoForLibrary:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v10);
  }
}

- (BOOL)hasRestriction
{
  v2 = [MEMORY[0x277D7FBA8] sharedMonitor];
  v3 = [v2 isInitialSyncComplete];

  return v3 ^ 1;
}

- (void)stop
{
  v3 = [MEMORY[0x277D7FBA8] sharedMonitor];
  [v3 removeObserver:self];
}

- (void)start
{
  v3 = [MEMORY[0x277D7FBA8] sharedMonitor];
  [v3 addObserver:self];

  v4 = +[ATDeviceSettings sharedInstance];
  [v4 removePendingSyncSettingForDataClass:@"PlayActivity-Sync"];
  [v4 synchronize];
}

- (ATDevicePairedSyncManager)init
{
  v9.receiver = self;
  v9.super_class = ATDevicePairedSyncManager;
  v2 = [(ATDevicePairedSyncManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.amp.AirTraffic.ATDevicePairedSyncManager.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[ATDeviceService sharedInstance];
    deviceService = v2->_deviceService;
    v2->_deviceService = v6;
  }

  return v2;
}

+ (id)sharedPairedSyncManager
{
  if (sharedPairedSyncManager_onceToken != -1)
  {
    dispatch_once(&sharedPairedSyncManager_onceToken, &__block_literal_global);
  }

  v3 = sharedPairedSyncManager___sharedInstance;

  return v3;
}

uint64_t __52__ATDevicePairedSyncManager_sharedPairedSyncManager__block_invoke()
{
  sharedPairedSyncManager___sharedInstance = objc_alloc_init(ATDevicePairedSyncManager);

  return MEMORY[0x2821F96F8]();
}

@end