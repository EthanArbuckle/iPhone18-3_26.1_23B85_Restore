@interface ATDeviceService
+ (ATDeviceService)sharedInstance;
- (ATDeviceService)init;
- (BOOL)run;
- (BOOL)stop;
- (id)_deviceMessageLink;
- (id)allMessageLinkProxyListeners;
- (id)proxyListenerForMessageLink:(id)a3;
- (void)_addObserversToMessageLink:(id)a3;
- (void)_cancelSyncForMessageLink:(id)a3;
- (void)_endStartupTransaction;
- (void)_removeObserversFromMessageLink:(id)a3;
- (void)_requestSyncForLibrary:(id)a3 onMessageLink:(id)a4;
- (void)_scheduleNewSyncIfNeeded;
- (void)_setupStartupTransaction;
- (void)addMessageLink:(id)a3;
- (void)applicationInstallsDidCancel:(id)a3;
- (void)applicationInstallsDidPrioritize:(id)a3;
- (void)cancelAssetTransferForFailedAsset:(id)a3;
- (void)cancelSyncWithCompletion:(id)a3;
- (void)clearSyncDataWithCompletion:(id)a3;
- (void)dealloc;
- (void)getAssetMetricswithCompletion:(id)a3;
- (void)getDataRestoreIsCompleteWithCompletion:(id)a3;
- (void)getSyncStateWithCompletion:(id)a3;
- (void)handleDataMigrationFinished;
- (void)idsServiceDevicesDidChange:(id)a3;
- (void)initiateAssetDownloadSessionsWithCompletion:(id)a3;
- (void)keepATCAlive:(BOOL)a3 withCompletion:(id)a4;
- (void)listener:(id)a3 didReceiveMessageLinkRequest:(id)a4;
- (void)lowBatteryNotificationWithCompletion:(id)a3;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)messageLinkWasClosed:(id)a3;
- (void)openDeviceMessageLinkWithPriority:(int)a3 withCompletion:(id)a4;
- (void)prioritizeAsset:(id)a3 forDataclass:(id)a4 withCompletion:(id)a5;
- (void)prioritizeAsset:(id)a3 withCompletion:(id)a4;
- (void)purgePartialAsset:(id)a3 forDataclass:(id)a4 withCompletion:(id)a5;
- (void)registerForStatusOfDataclasses:(id)a3 enabled:(id)a4 withCompletion:(id)a5;
- (void)removeMessageLink:(id)a3;
- (void)requestKeybagSyncToPairedDeviceWithCompletion:(id)a3;
- (void)requestSyncForLibrary:(id)a3 withCompletion:(id)a4;
- (void)requestSyncForPairedDeviceWithPriority:(int)a3 withCompletion:(id)a4;
- (void)syncChangesForDataClass:(id)a3 withPriority:(int)a4;
- (void)syncClient:(id)a3 hasChangesWithPriority:(int)a4;
@end

@implementation ATDeviceService

+ (ATDeviceService)sharedInstance
{
  if (sharedInstance_onceToken_1319 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1319, &__block_literal_global_1320);
  }

  v3 = __sharedInstance;

  return v3;
}

- (void)handleDataMigrationFinished
{
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "data migration finished - resuming restore", v5, 2u);
  }

  [(ATDeviceSettings *)self->_settings setHasCompletedDataMigration:1];
  [(ATDeviceSettings *)self->_settings synchronize];
  v4 = +[ATRestoreManager sharedManager];
  [v4 restoreSessionActiveWithCompletion:&__block_literal_global_195];
}

void __46__ATDeviceService_handleDataMigrationFinished__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[ATRestoreManager sharedManager];
    [v3 resume];
  }

  else
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "no active restore session - ignoring", buf, 2u);
    }
  }
}

- (void)_scheduleNewSyncIfNeeded
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(ATDeviceSettings *)self->_settings dataClassesNeedingSync];
  v4 = [v3 mutableCopy];

  v28 = v4;
  obj = [v4 mutableCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = +[ATClientController sharedInstance];
  v6 = [v5 allClients];

  v7 = [v6 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_2837092A8])
        {
          v12 = [v11 syncDataClass];
          v13 = [v12 length];

          if (v13)
          {
            v14 = [v11 syncDataClass];
            [obj removeObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obja = obj;
  v15 = [obja countByEnumeratingWithState:&v35 objects:v46 count:16];
  v16 = v28;
  if (v15)
  {
    v17 = v15;
    v18 = *v36;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v35 + 1) + 8 * j);
        v21 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v20;
          _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_DEFAULT, "Removing sync-pending flag for unsupported data class '%{public}@'", buf, 0xCu);
        }

        [v28 removeObject:v20];
        [(ATDeviceSettings *)self->_settings setSyncPending:0 forDataClass:v20];
      }

      v17 = [obja countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v17);
  }

  if ([v28 count] && !-[ATDevicePairedSyncManager hasRestriction](self->_pairedSyncManager, "hasRestriction"))
  {
    if ([(ATIDSService *)self->_idsService hasPairedDevice])
    {
      v22 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v28;
        _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_DEFAULT, "still have pending changes - requesting a new sync. dataclasses:%{public}@", buf, 0xCu);
      }

      [(ATDeviceService *)self requestSyncForPairedDeviceWithPriority:1 withCompletion:&__block_literal_global_193];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = v28;
      v24 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v32;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v32 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [(ATDeviceSettings *)self->_settings setSyncPending:0 forDataClass:*(*(&v31 + 1) + 8 * k)];
          }

          v25 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
        }

        while (v25);
      }

      v16 = v28;
    }
  }
}

void __43__ATDeviceService__scheduleNewSyncIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_ERROR, "sync request failed. err=%{public}@", &v4, 0xCu);
    }
  }
}

- (id)_deviceMessageLink
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ATService *)self messageLinks];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_cancelSyncForMessageLink:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "cancelling all sync on message link %{public}@", &v8, 0xCu);
  }

  p_super = self->_deviceSyncManager;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self->_legacyDeviceSyncManager;

    p_super = &v7->super;
  }

  [(ATDeviceSyncManager *)p_super cancelSyncOnMessageLink:v4];
}

- (void)_requestSyncForLibrary:(id)a3 onMessageLink:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ATLegacyDeviceSyncManager *)self->_legacyDeviceSyncManager initiateSyncForLibrary:v7 onMessageLink:v6];
  }

  else
  {
    [(ATDeviceSyncManager *)self->_deviceSyncManager initiateSyncOnMessageLink:v6];
  }
}

- (void)_removeObserversFromMessageLink:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[ATClientController sharedInstance];
  v6 = [v5 allClients];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_2836F68C8])
        {
          [v4 removeObserver:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v4 removeObserver:self->_deviceSyncManager];
  if (self->_pairedSyncManager)
  {
    [v4 removeObserver:?];
  }
}

- (void)_addObserversToMessageLink:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = +[ATClientController sharedInstance];
  v6 = [v5 allClients];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_2836F68C8])
        {
          [v4 addObserver:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v4 addObserver:self->_deviceSyncManager];
  [v4 addRequestHandler:self forDataClass:@"Control"];
  v12 = objc_alloc_init(ATDeviceProvisioningHandler);
  [v4 addObserver:v12];
  [v4 addRequestHandler:v12 forDataClass:@"Provisioning"];
  v13 = [objc_alloc(MEMORY[0x277CE5400]) initWithMessageLink:v4];
  v14 = [MEMORY[0x277CE53F0] sharedInstance];
  [v14 addAssetLink:v13];

  [v13 open];
  if (self->_pairedSyncManager)
  {
    [v4 addObserver:?];
  }
}

- (void)_endStartupTransaction
{
  if ([(MSVXPCTransaction *)self->_startupTransaction isActive])
  {
    startupTransaction = self->_startupTransaction;

    [(MSVXPCTransaction *)startupTransaction endTransaction];
  }
}

- (void)_setupStartupTransaction
{
  [(MSVXPCTransaction *)self->_startupTransaction beginTransaction];
  v3 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, self->_queue);
  sigTermSrc = self->_sigTermSrc;
  self->_sigTermSrc = v3;

  v5 = self->_sigTermSrc;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__ATDeviceService__setupStartupTransaction__block_invoke;
  handler[3] = &unk_2784E5938;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(self->_sigTermSrc);
  v6 = dispatch_time(0, 10000000000);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__ATDeviceService__setupStartupTransaction__block_invoke_2;
  v8[3] = &unk_2784E5938;
  v8[4] = self;
  dispatch_after(v6, queue, v8);
}

uint64_t __43__ATDeviceService__setupStartupTransaction__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[20])
  {
    dispatch_source_cancel(v2[20]);
    v2 = *(a1 + 32);
  }

  return [(dispatch_source_t *)v2 _endStartupTransaction];
}

- (void)idsServiceDevicesDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (([a3 hasPairedDevice] & 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(ATDeviceSettings *)self->_settings dataClassesNeedingSync];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(ATDeviceSettings *)self->_settings setSyncPending:0 forDataClass:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)syncClient:(id)a3 hasChangesWithPriority:(int)a4
{
  v4 = *&a4;
  v6 = [a3 syncDataClass];
  [(ATDeviceService *)self syncChangesForDataClass:v6 withPriority:v4];
}

- (void)initiateAssetDownloadSessionsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "initiating download sessions", buf, 2u);
  }

  v5 = dispatch_group_create();
  v6 = +[ATClientController sharedInstance];
  v7 = [v6 clientForDataclass:@"Media"];

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dispatch_group_enter(v5);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__ATDeviceService_initiateAssetDownloadSessionsWithCompletion___block_invoke;
    v20[3] = &unk_2784E5938;
    v21 = v5;
    [v7 initiateAssetDownloadsWithCompletion:v20];
    v8 = 0;
    v9 = v21;
  }

  else
  {
    v9 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "Could not load sync client for dataclass=media", buf, 2u);
    }

    v8 = 1;
  }

  if (MSVDeviceIsWatch())
  {
    v10 = +[ATClientController sharedInstance];
    v11 = [v10 clientForDataclass:@"Podcasts"];

    if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      dispatch_group_enter(v5);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __63__ATDeviceService_initiateAssetDownloadSessionsWithCompletion___block_invoke_178;
      v18[3] = &unk_2784E5938;
      v19 = v5;
      [v11 initiateAssetDownloadsWithCompletion:v18];
      v12 = v19;
    }

    else
    {
      v12 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "Could not load sync client for dataclass=podcasts", buf, 2u);
      }

      v8 = 1;
    }
  }

  v13 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__ATDeviceService_initiateAssetDownloadSessionsWithCompletion___block_invoke_179;
  v15[3] = &unk_2784E49B8;
  v17 = v8;
  v16 = v3;
  v14 = v3;
  dispatch_group_notify(v5, v13, v15);
}

void __63__ATDeviceService_initiateAssetDownloadSessionsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "finished initiating download session for dataclass=media", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__ATDeviceService_initiateAssetDownloadSessionsWithCompletion___block_invoke_178(uint64_t a1)
{
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "finished initiating download session for dataclass=podcasts", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __63__ATDeviceService_initiateAssetDownloadSessionsWithCompletion___block_invoke_179(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:*MEMORY[0x277CEA3E0] object:0];
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)syncChangesForDataClass:(id)a3 withPriority:(int)a4
{
  v4 = *&a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ATDeviceSettings *)self->_settings endpointInfo];
  v8 = v7;
  if (v7 && [v7 count])
  {
    v24 = v4;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v8 allValues];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v23 = v8;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v25 + 1) + 8 * i) objectForKey:@"HostInfo"];
          v15 = [v14 enabledDataClasses];
          if (!v15 || (v16 = v15, [v14 enabledDataClasses], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", v6), v17, v16, (v18 & 1) != 0))
          {

            v8 = v23;
            v4 = v24;
            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
        v8 = v23;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v6;
      _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "blocking sync request because no known endpoints support dataClass %{public}@", buf, 0xCu);
    }
  }

  else
  {
LABEL_15:
    [(ATDeviceSettings *)self->_settings setSyncPending:1 forDataClass:v6];
    v20 = [(ATDeviceService *)self _deviceMessageLink];
    if (v20)
    {
      v19 = v20;
      v21 = [(ATDeviceSyncManager *)self->_deviceSyncManager initiateSyncForDataClass:v6 onMessageLink:v20];
    }

    else
    {
      if ([(ATIDSService *)self->_idsService hasPairedDevice])
      {
        [(ATDeviceService *)self openDeviceMessageLinkWithPriority:v4 withCompletion:&__block_literal_global_169];
      }

      else
      {
        v22 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_ERROR, "not initiating a sync as we don't have a paired device", buf, 2u);
        }
      }

      v19 = 0;
    }
  }
}

void __56__ATDeviceService_syncChangesForDataClass_withPriority___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_ERROR, "failed to open device link. err=%{public}@", &v4, 0xCu);
    }
  }
}

- (void)getDataRestoreIsCompleteWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v5 = [MEMORY[0x277D7FBE8] sharedSecurityInfo];
  v6 = [v5 isDeviceClassCUnlocked];

  if (v6)
  {
    v7 = +[ATRestoreManager sharedManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__ATDeviceService_getDataRestoreIsCompleteWithCompletion___block_invoke;
    v11[3] = &unk_2784E4990;
    v13 = &v14;
    v12 = v4;
    [v7 restoreSessionActiveWithCompletion:v11];
  }

  else
  {
    v8 = [(ATDeviceSettings *)self->_settings activeRestoreType]== 0;
    *(v15 + 24) = v8;
    v9 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v15 + 24);
      *buf = 67109120;
      v19 = v10;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "device is locked - restoreComplete %d", buf, 8u);
    }

    if (v4)
    {
      (*(v4 + 2))(v4, 0, *(v15 + 24));
    }
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __58__ATDeviceService_getDataRestoreIsCompleteWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = a2 ^ 1;
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "restoreComplete %d", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)getAssetMetricswithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ATDeviceDiskUsageProvider sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ATDeviceService_getAssetMetricswithCompletion___block_invoke;
  v6[3] = &unk_2784E4968;
  v7 = v3;
  v5 = v3;
  [v4 getUpdatedUsageWithCompletion:v6];
}

- (void)openDeviceMessageLinkWithPriority:(int)a3 withCompletion:(id)a4
{
  v4 = *&a3;
  idsService = self->_idsService;
  v6 = a4;
  [(ATIDSService *)idsService requestConnectionToPairedDeviceWithPriority:[ATIDSService openSocketPriorityFromATPendingChangePriority:v4]];
  v6[2](v6, 0);
}

- (void)getSyncStateWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(ATLegacyDeviceSyncManager *)self->_legacyDeviceSyncManager currentSyncState];
  if (v5)
  {
    v5[2](v5, 0, v4);
  }
}

- (void)keepATCAlive:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "enabling";
    if (v4)
    {
      v8 = "disabling";
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "idle exit %s", &v9, 0xCu);
  }

  [(MSVXPCTransaction *)self->_xpcTransaction beginTransaction];
  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)lowBatteryNotificationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "low battery notification", v5, 2u);
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)clearSyncDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "clearing sync data", v6, 2u);
  }

  [(ATDeviceSettings *)self->_settings removeEndpointInfoForLibrary:0];
  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)purgePartialAsset:(id)a3 forDataclass:(id)a4 withCompletion:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "purge partial asset dataclass:%{public}@, id:%{public}@", &v12, 0x16u);
  }

  v11 = [MEMORY[0x277CEA430] sharedInstance];
  [v11 purgeAssetWithIdentifier:v7 dataclass:v8];

  if (v9)
  {
    v9[2](v9, 0);
  }
}

- (void)cancelAssetTransferForFailedAsset:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling asset:%{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CE53F0] sharedInstance];
  v7 = MEMORY[0x277CCAC30];
  v8 = [v4 dataclass];
  v9 = [v4 identifier];
  v10 = [v7 predicateWithFormat:@"dataclass = %@ and identifier = %@", v8, v9];
  [v6 cancelAllAssetsMatchingPredicate:v10 excludeActiveDownloads:0 withError:0 completion:0];
}

- (void)prioritizeAsset:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ prioritize asset:%{public}@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CE53F0] sharedInstance];
  if ([v6 isRestore] && (objc_msgSend(v9, "assetIsEnqueued:", v6) & 1) == 0)
  {
    v11 = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v9 enqueueAssets:v10];
  }

  [v9 prioritizeAsset:v6];
  if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)prioritizeAsset:(id)a3 forDataclass:(id)a4 withCompletion:(id)a5
{
  v8 = MEMORY[0x277CEA438];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithIdentifier:v11 dataclass:v10 prettyName:0];

  [v12 setIsRestore:1];
  [(ATDeviceService *)self prioritizeAsset:v12 withCompletion:v9];
}

- (void)registerForStatusOfDataclasses:(id)a3 enabled:(id)a4 withCompletion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = v8;
    v20 = 2050;
    v21 = [v9 longLongValue];
    _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "register for status:%{public}@ enabled:%{public}lld", &v18, 0x16u);
  }

  xpcListener = self->_xpcListener;
  v13 = [MEMORY[0x277CCAE80] currentConnection];
  v14 = [(ATXPCListener *)xpcListener proxyForConnection:v13];

  if (([v9 BOOLValue] & 1) != 0 || objc_msgSend(v8, "count"))
  {
    v15 = [MEMORY[0x277CE5438] sharedMonitor];
    [v15 addObserver:v14];
    v16 = v8;
  }

  else
  {
    v15 = [MEMORY[0x277CE5438] sharedMonitor];
    [v15 removeObserver:v14];
    v16 = 0;
  }

  v17 = [MEMORY[0x277CE5438] sharedMonitor];
  [v17 setDataClasses:v16 forObserver:v14];

  v10[2](v10, 0);
}

- (void)cancelSyncWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ATDeviceService_cancelSyncWithCompletion___block_invoke;
  v7[3] = &unk_2784E4E80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __44__ATDeviceService_cancelSyncWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) messageLinks];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _cancelSyncForMessageLink:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)requestKeybagSyncToPairedDeviceWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "request keybag sync to paired device", v6, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ATSyncKeybagToPairedDeviceRequestNotification" object:0];

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)requestSyncForPairedDeviceWithPriority:(int)a3 withCompletion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(ATDeviceService *)self _deviceMessageLink];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 identifier];
    [(ATDeviceService *)self _requestSyncForLibrary:v9 onMessageLink:v8];

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__ATDeviceService_requestSyncForPairedDeviceWithPriority_withCompletion___block_invoke;
    v10[3] = &unk_2784E5410;
    v11 = v6;
    [(ATDeviceService *)self openDeviceMessageLinkWithPriority:v4 withCompletion:v10];
  }
}

void __73__ATDeviceService_requestSyncForPairedDeviceWithPriority_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "failed to open device link. err=%{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)requestSyncForLibrary:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "request sync for library %{public}@", buf, 0xCu);
  }

  if (v6)
  {
    v9 = [(ATService *)self messageLinkForIdentifier:v6];
    if (v9)
    {
      [(ATDeviceService *)self _requestSyncForLibrary:v6 onMessageLink:v9];
    }
  }

  else
  {
    v10 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(ATService *)self messageLinks];
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "library id not specified - syncing all (%{public}@)", buf, 0xCu);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ATDeviceService_requestSyncForLibrary_withCompletion___block_invoke;
    block[3] = &unk_2784E5938;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v7[2](v7, 0);
}

void __56__ATDeviceService_requestSyncForLibrary_withCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) messageLinks];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v16 = v7;
          _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "requesting sync for %{public}@", buf, 0xCu);
        }

        v9 = *(a1 + 32);
        v10 = [v7 identifier];
        [v9 _requestSyncForLibrary:v10 onMessageLink:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)applicationInstallsDidCancel:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CE53F0] sharedInstance];
        v9 = MEMORY[0x277CCAC30];
        v10 = [v7 bundleIdentifier];
        v11 = [v9 predicateWithFormat:@"dataclass = %@ and identifier = %@", @"Application", v10];
        [v8 cancelAllAssetsMatchingPredicate:v11 excludeActiveDownloads:0 withError:0 completion:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)applicationInstallsDidPrioritize:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) bundleIdentifier];
        [(ATDeviceService *)self prioritizeAsset:v9 forDataclass:@"Application" withCompletion:&__block_literal_global_152];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)listener:(id)a3 didReceiveMessageLinkRequest:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v36 = self;
    v37 = 2114;
    v38 = v7;
    v39 = 2114;
    v40 = v8;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ did receieve message link request %{public}@", buf, 0x20u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [(ATService *)self messageLinks];
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * v16);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v17 close];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v14);
    }

LABEL_16:
    [(ATDeviceService *)self _addObserversToMessageLink:v8];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ATConcreteService *)v8 addObserver:self->_legacyDeviceSyncManager];
    v10 = [[ATLocalCloudAssetLink alloc] initWithMessageLink:v8];
    v11 = [MEMORY[0x277CE53F0] sharedInstance];
    [v11 addAssetLink:v10];

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"ATDeviceService.m" lineNumber:387 description:{@"received unknown message link type from lockdown listener: %@", v8}];

LABEL_17:
  [(ATDeviceService *)self addMessageLink:v8];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [(ATService *)self observers];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * v22++) service:self willOpenMessageLink:v8];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  if (([(ATDeviceService *)v8 open]& 1) == 0)
  {
    v23 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v36 = v8;
      v37 = 2114;
      v38 = v7;
      _os_log_impl(&dword_223819000, v23, OS_LOG_TYPE_ERROR, "failed to open message link %{public}@ from listener %{public}@", buf, 0x16u);
    }

    [(ATDeviceService *)v8 close];
  }
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 errorWithDomain:@"ATError" code:21 userInfo:0];
  v9 = [v6 responseWithError:v8 parameters:0];

  [v7 sendResponse:v9 withCompletion:0];
}

- (void)messageLinkWasClosed:(id)a3
{
  v4 = a3;
  [(ATDeviceService *)self _removeObserversFromMessageLink:v4];
  v6.receiver = self;
  v6.super_class = ATDeviceService;
  [(ATConcreteService *)&v6 messageLinkWasClosed:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(ATDeviceService *)self _scheduleNewSyncIfNeeded];
  }
}

- (void)removeMessageLink:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ATDeviceService_removeMessageLink___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __37__ATDeviceService_removeMessageLink___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  [v2 stop];
  [*(*(a1 + 32) + 104) removeObjectForKey:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = ATDeviceService;
  objc_msgSendSuper2(&v4, sel_removeMessageLink_, v3);
  if (![*(*(a1 + 32) + 104) count])
  {
    [*(*(a1 + 32) + 144) endTransaction];
  }
}

- (void)addMessageLink:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ATDeviceService_addMessageLink___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __34__ATDeviceService_addMessageLink___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 104) count])
  {
    [*(*(a1 + 32) + 144) beginTransaction];
  }

  v2 = [objc_alloc(MEMORY[0x277CE5420]) initWithMessageLink:*(a1 + 40)];
  [v2 start];
  [*(*(a1 + 32) + 104) setObject:v2 forKey:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = ATDeviceService;
  objc_msgSendSuper2(&v4, sel_addMessageLink_, v3);
}

- (id)allMessageLinkProxyListeners
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1280;
  v10 = __Block_byref_object_dispose__1281;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ATDeviceService_allMessageLinkProxyListeners__block_invoke;
  v5[3] = &unk_2784E5008;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__ATDeviceService_allMessageLinkProxyListeners__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 104) objectEnumerator];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)proxyListenerForMessageLink:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1280;
  queue = self->_queue;
  v16 = __Block_byref_object_dispose__1281;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ATDeviceService_proxyListenerForMessageLink___block_invoke;
  block[3] = &unk_2784E5988;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __47__ATDeviceService_proxyListenerForMessageLink___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 104) objectForKey:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)stop
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping", buf, 0xCu);
  }

  [(ATXPCListener *)self->_xpcListener stop];
  [(ATLockdownListener *)self->_legacyLockdownListener stop];
  [(ATLockdownListener *)self->_lockdownListener stop];
  [(ATIDSService *)self->_idsService stop];
  [(ATServiceProxyListener *)self->_proxyListener stop];
  [(ATStatusObserverListener *)self->_statusObserverListener stop];
  v4 = +[ATHostWakeupService sharedInstance];
  [v4 stop];

  [(ATDevicePairedSyncManager *)self->_pairedSyncManager stop];
  v5 = [MEMORY[0x277CEA430] sharedInstance];
  [v5 evacuate];

  v6 = [MEMORY[0x277CE5410] sharedInstance];
  [v6 stop];

  v8.receiver = self;
  v8.super_class = ATDeviceService;
  return [(ATConcreteService *)&v8 stop];
}

- (BOOL)run
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = self;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting up", buf, 0xCu);
  }

  [(ATDeviceService *)self _setupStartupTransaction];
  v4 = [MEMORY[0x277CEA430] sharedInstance];
  [v4 evacuate];

  v25.receiver = self;
  v25.super_class = ATDeviceService;
  if (-[ATConcreteService run](&v25, sel_run) && ((-[ATServiceProxyListener start](self->_proxyListener, "start"), -[ATStatusObserverListener start](self->_statusObserverListener, "start"), [MEMORY[0x277CE5430] sharedSessionServer], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "start"), v5, +[ATDevicePairedSyncManager sharedPairedSyncManager](ATDevicePairedSyncManager, "sharedPairedSyncManager"), v6 = objc_claimAutoreleasedReturnValue(), pairedSyncManager = self->_pairedSyncManager, self->_pairedSyncManager = v6, pairedSyncManager, -[ATDevicePairedSyncManager start](self->_pairedSyncManager, "start"), (legacyLockdownListener = self->_legacyLockdownListener) == 0) || -[ATLockdownListener start](legacyLockdownListener, "start")))
  {
    lockdownListener = self->_lockdownListener;
    if (lockdownListener)
    {
      v10 = [(ATLockdownListener *)lockdownListener start];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = +[ATClientController sharedInstance];
  v12 = [v11 allClients];

  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([v17 conformsToProtocol:&unk_2837092A8])
        {
          [v17 setDelegate:self];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }

  if (v10)
  {
    v18 = [MEMORY[0x277D7FBE8] sharedSecurityInfo];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __22__ATDeviceService_run__block_invoke;
    v20[3] = &unk_2784E5938;
    v20[4] = self;
    [v18 performBlockAfterFirstUnlock:v20];
  }

  return v10;
}

void __22__ATDeviceService_run__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 80) start] & 1) == 0)
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(*(a1 + 32) + 80);
      v18 = 138543362;
      v19 = v3;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_ERROR, "failed to start %{public}@", &v18, 0xCu);
    }
  }

  v4 = objc_alloc_init(ATStoreAssetLink);
  v5 = [MEMORY[0x277CE53F0] sharedInstance];
  [v5 addAssetLink:v4];

  [(ATStoreAssetLink *)v4 open];
  v6 = [*(*(a1 + 32) + 136) useNewDownloadService];
  v7 = off_2784E3ED0;
  if (!v6)
  {
    v7 = off_2784E3E98;
  }

  v8 = objc_alloc_init(*v7);
  v9 = [MEMORY[0x277CE53F0] sharedInstance];
  [v9 addAssetLink:v8];

  [v8 open];
  v10 = [MEMORY[0x277CE5410] sharedInstance];
  [v10 start];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _handleDataMigratorFinishedNotification, *MEMORY[0x277CEA3C0], 0, CFNotificationSuspensionBehaviorDrop);
  v12 = +[ATRestoreManager sharedManager];
  [v12 restoreSessionActiveWithCompletion:&__block_literal_global_114];

  [*(a1 + 32) _scheduleNewSyncIfNeeded];
  v13 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "atc startup complete", &v18, 2u);
  }

  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  v15 = *MEMORY[0x277CEA428];
  CFNotificationCenterPostNotification(v14, *MEMORY[0x277CEA428], 0, 0, 1u);
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotificationName:v15 object:0];

  v17 = +[ATHostWakeupService sharedInstance];
  [v17 start];
}

void __22__ATDeviceService_run__block_invoke_111(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"not active";
    if (a2)
    {
      v4 = @"active";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "A restore session is %{public}@", &v6, 0xCu);
  }

  if (a2)
  {
    v5 = +[ATRestoreManager sharedManager];
    [v5 resume];
  }
}

- (void)dealloc
{
  dispatch_source_cancel(self->_sigTermSrc);
  sigTermSrc = self->_sigTermSrc;
  self->_sigTermSrc = 0;

  atcRunningToken = self->_atcRunningToken;
  if (atcRunningToken)
  {
    notify_set_state(atcRunningToken, 0);
    notify_post("com.apple.atc.started");
    notify_cancel(self->_atcRunningToken);
    self->_atcRunningToken = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEA3C0], 0);
  }

  v6.receiver = self;
  v6.super_class = ATDeviceService;
  [(ATDeviceService *)&v6 dealloc];
}

- (ATDeviceService)init
{
  v34.receiver = self;
  v34.super_class = ATDeviceService;
  v2 = [(ATConcreteService *)&v34 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.amp.AirTrafficDevice.ATDeviceService.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(ATXPCListener);
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v5;

    [(ATXPCListener *)v2->_xpcListener run];
    v7 = [objc_alloc(MEMORY[0x277CE5428]) initWithService:v2];
    proxyListener = v2->_proxyListener;
    v2->_proxyListener = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAB00]);
    messageLinkProxyListeners = v2->_messageLinkProxyListeners;
    v2->_messageLinkProxyListeners = v9;

    v11 = objc_alloc_init(MEMORY[0x277CE5440]);
    statusObserverListener = v2->_statusObserverListener;
    v2->_statusObserverListener = v11;

    v13 = [[ATLockdownListener alloc] initWithServiceName:@"com.apple.atc"];
    legacyLockdownListener = v2->_legacyLockdownListener;
    v2->_legacyLockdownListener = v13;

    [(ATMessageLinkListener *)v2->_legacyLockdownListener setDelegate:v2];
    v15 = [[ATLockdownListener alloc] initWithServiceName:@"com.apple.atc2"];
    lockdownListener = v2->_lockdownListener;
    v2->_lockdownListener = v15;

    [(ATMessageLinkListener *)v2->_lockdownListener setDelegate:v2];
    v17 = objc_alloc_init(ATLegacyDeviceSyncManager);
    legacyDeviceSyncManager = v2->_legacyDeviceSyncManager;
    v2->_legacyDeviceSyncManager = v17;

    v19 = +[ATDeviceSettings sharedInstance];
    settings = v2->_settings;
    v2->_settings = v19;

    v21 = +[ATDeviceSyncManager deviceSyncManager];
    deviceSyncManager = v2->_deviceSyncManager;
    v2->_deviceSyncManager = v21;

    v23 = [ATIDSService alloc];
    v24 = [(ATDeviceSettings *)v2->_settings serviceName];
    v25 = [(ATIDSService *)v23 initWithServiceName:v24];
    idsService = v2->_idsService;
    v2->_idsService = v25;

    [(ATMessageLinkListener *)v2->_idsService setDelegate:v2];
    [(ATIDSService *)v2->_idsService addListener:v2];
    notify_register_check("com.apple.atc.started", &v2->_atcRunningToken);
    notify_set_state(v2->_atcRunningToken, 1uLL);
    notify_post("com.apple.atc.started");
    v27 = dispatch_get_global_queue(0, 0);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v27, &__block_literal_global_25);

    v28 = [objc_alloc(MEMORY[0x277D27F58]) initWithName:@"com.apple.atc.service.startup"];
    startupTransaction = v2->_startupTransaction;
    v2->_startupTransaction = v28;

    v30 = [objc_alloc(MEMORY[0x277D27F58]) initWithName:@"com.apple.atc.service"];
    xpcTransaction = v2->_xpcTransaction;
    v2->_xpcTransaction = v30;

    if (MGGetSInt32Answer() == 6)
    {
      v32 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:10485760 diskPath:0];
      [MEMORY[0x277CCACD8] setSharedURLCache:v32];
    }
  }

  return v2;
}

uint64_t __33__ATDeviceService_sharedInstance__block_invoke()
{
  __sharedInstance = objc_alloc_init(ATDeviceService);

  return MEMORY[0x2821F96F8]();
}

@end