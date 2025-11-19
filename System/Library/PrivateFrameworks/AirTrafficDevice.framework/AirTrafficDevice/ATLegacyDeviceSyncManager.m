@interface ATLegacyDeviceSyncManager
+ (id)legacyDeviceSyncManager;
- (ATLegacyDeviceSyncManager)init;
- (id)_currentHostType;
- (id)currentSyncState;
- (void)_cancelExistingSyncSession;
- (void)_handleAssetMetricsMessage:(id)a3 fromLink:(id)a4;
- (void)_handleCapabilitiesMessage:(id)a3 fromLink:(id)a4;
- (void)_handleFinishedSyncingMetadataMessage:(id)a3 fromLink:(id)a4;
- (void)_handleHostInfoMessage:(id)a3 fromLink:(id)a4;
- (void)_handleRequestingSyncMessage:(id)a3 fromLink:(id)a4;
- (void)_handleSyncFailedMessage:(id)a3 fromLink:(id)a4;
- (void)_handleSyncStatusMessage:(id)a3 fromLink:(id)a4;
- (void)_reconcileSyncWithMessage:(id)a3;
- (void)_reportLocalProgress;
- (void)_reset;
- (void)_sendDiskUsage;
- (void)_sendDiskUsageWithUpdatedDataClasses:(id)a3;
- (void)_sendInstalledAssets;
- (void)_sendSyncAllowed;
- (void)assetLink:(id)a3 didUpdateOverallProgress:(double)a4;
- (void)cancelSyncOnMessageLink:(id)a3;
- (void)environmentMonitorDidChangePower:(id)a3;
- (void)initiateSyncForLibrary:(id)a3 onMessageLink:(id)a4;
- (void)messageLinkWasClosed:(id)a3;
- (void)messageLinkWasInitialized:(id)a3;
- (void)messageLinkWasOpened:(id)a3;
- (void)session:(id)a3 didBeginSessionTask:(id)a4;
- (void)session:(id)a3 didUpdateSessionTask:(id)a4;
- (void)session:(id)a3 willBeginSessionTask:(id)a4;
- (void)sessionDidFinish:(id)a3;
- (void)sessionWillBegin:(id)a3;
@end

@implementation ATLegacyDeviceSyncManager

- (void)_cancelExistingSyncSession
{
  if (self->_syncSession)
  {
    v3 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "Canceling existing sync session.", v7, 2u);
    }

    [(ATSession *)self->_syncSession cancel];
    [(ATSession *)self->_syncSession removeObserver:self];
    syncSession = self->_syncSession;
    self->_syncSession = 0;

    assetLink = self->_assetLink;
    if (assetLink)
    {
      [(ATLegacyAssetLink *)assetLink close];
      v6 = self->_assetLink;
      self->_assetLink = 0;
    }
  }
}

- (id)_currentHostType
{
  v3 = [(NSDictionary *)self->_currentSyncHostInfo objectForKey:@"Type"];
  if (!v3)
  {
    v4 = [(NSDictionary *)self->_currentSyncHostInfo objectForKey:@"Version"];
    v5 = v4;
    if (v4 && ([v4 isEqualToString:@"IGNORE"] & 1) != 0)
    {
      v3 = @"Configurator";
    }

    else
    {
      v3 = @"iTunes";
    }
  }

  return v3;
}

- (void)_reset
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Resetting.", &v8, 0xCu);
  }

  if (self->_grappaId)
  {
    PIc2v4FsmbHb6FcVO9Fu();
    self->_grappaId = 0;
  }

  self->_localSyncRequest = 0;
  self->_localSyncRequestCanceled = 0;
  self->_automaticSync = 0;
  self->_currentStage = 0;
  currentDataclass = self->_currentDataclass;
  self->_currentDataclass = 0;

  currentStatus = self->_currentStatus;
  self->_currentStatus = 0;

  self->_currentOverallProgress = 0.0;
  currentMessageLink = self->_currentMessageLink;
  self->_currentMessageLink = 0;

  [(ATLegacyDeviceSyncManager *)self _reportLocalProgress];
  dataclasses = self->_dataclasses;
  self->_dataclasses = 0;

  [(ATLegacyDeviceSyncManager *)self _sendSyncAllowed];
}

- (void)_reportLocalProgress
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = +[ATAssetManager sharedInstance];
  currentMessageLink = self->_currentMessageLink;
  if (currentMessageLink)
  {
    v5 = [(ATConcreteMessageLink *)currentMessageLink identifier];

    if (v5)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = self->_dataclasses;
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v47;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v47 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v46 + 1) + 8 * i);
            v11 = objc_alloc_init(MEMORY[0x277CEA470]);
            v12 = [(ATConcreteMessageLink *)self->_currentMessageLink identifier];
            [v11 setLibraryID:v12];

            [v11 setDataClass:v10];
            [v11 setSyncStage:self->_currentStage];
            [v11 setLocalizedDescription:self->_currentStatus];
            v51 = v10;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
            [v11 setTotalAssetCount:{objc_msgSend(v3, "totalAssetCountForDataClasses:", v13)}];

            v50 = v10;
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
            [v11 setCompletedAssetCount:{objc_msgSend(v3, "completedAssetCountForDataClasses:", v14)}];

            [v11 setAutomaticSync:self->_automaticSync];
            [v11 setWirelessSync:{-[ATLockdownMessageLink isWifiConnection](self->_currentMessageLink, "isWifiConnection")}];
            if ([v11 totalAssetCount])
            {
              v15 = [v11 completedAssetCount];
              *&v16 = v15 / [v11 totalAssetCount];
              [v11 setProgress:v16];
            }

            v17 = [MEMORY[0x277CE5438] sharedMonitor];
            [v17 updateStatus:v11];
          }

          v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v7);
      }
    }
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_syncSession != 0];
  [v18 setObject:v19 forKey:@"Enabled"];

  v20 = MEMORY[0x277CCABB0];
  v21 = self->_currentMessageLink;
  if (v21)
  {
    v22 = [(ATLockdownMessageLink *)v21 isWifiConnection];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v20 numberWithInt:v22];
  [v18 setObject:v23 forKey:@"Wireless"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_automaticSync];
  [v18 setObject:v24 forKey:@"AutoSync"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentStage];
  [v18 setObject:v25 forKey:@"SyncStage"];

  v26 = [(NSMutableArray *)self->_messageLinks valueForKey:@"identifier"];
  [v18 setObject:v26 forKey:@"ConnectedLibraries"];

  v27 = [(ATConcreteMessageLink *)self->_currentMessageLink identifier];

  if (v27)
  {
    v28 = [(ATConcreteMessageLink *)self->_currentMessageLink identifier];
    [v18 setObject:v28 forKey:@"ActiveLibrary"];
  }

  currentDataclass = self->_currentDataclass;
  if (currentDataclass)
  {
    [v18 setObject:currentDataclass forKey:@"Dataclass"];
  }

  currentStatus = self->_currentStatus;
  if (currentStatus)
  {
    [v18 setObject:currentStatus forKey:@"StatusMessage"];
  }

  if (self->_currentStage == 4)
  {
    v31 = [v3 totalAssetCountForDataClasses:self->_dataclasses];
    v32 = [v3 completedAssetCountForDataClasses:self->_dataclasses];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
    [v18 setObject:v33 forKey:@"AssetCount"];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    [v18 setObject:v34 forKey:@"CurrentAssetNum"];

    v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentOverallProgress];
    [v18 setObject:v35 forKey:@"OverallProgress"];

    currentAsset = self->_currentAsset;
    if (currentAsset)
    {
      v37 = MEMORY[0x277CCABB0];
      [(ATAsset *)currentAsset downloadProgress];
      v38 = [v37 numberWithFloat:?];
      [v18 setObject:v38 forKey:@"AssetProgress"];

      v39 = [(ATAsset *)self->_currentAsset identifier];

      if (v39)
      {
        v40 = [(ATAsset *)self->_currentAsset identifier];
        [v18 setObject:v40 forKey:@"CurrentAssetID"];
      }

      v41 = [(ATAsset *)self->_currentAsset prettyName];

      if (v41)
      {
        v42 = [(ATAsset *)self->_currentAsset prettyName];
        [v18 setObject:v42 forKey:@"CurrentAsset"];
      }
    }

    v43 = [v3 assetProgressForAllDataclasses];
    [v18 setObject:v43 forKey:@"DataclassProgress"];
  }

  v44 = [MEMORY[0x277CE5438] sharedMonitor];
  [v44 updateStatusValuesWithDictionary:v18];
}

- (void)_reconcileSyncWithMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_currentStage = 3;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"Media", @"Book", @"Application", @"Photo", @"Podcasts", 0}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = self;
  obj = [(ATSession *)self->_syncSession sessionTasksWithGroupingKey:@"ATLegacySyncSessionTaskGroupingKey"];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [v4 parameterForKey:@"SyncTypes"];
        v12 = [v10 dataClass];
        v13 = [v11 objectForKey:v12];
        v14 = [v13 unsignedIntValue];

        v15 = [v4 parameterForKey:@"DataclassAnchors"];
        v16 = [v10 dataClass];
        v17 = [v15 objectForKey:v16];

        v18 = [v10 dataClass];
        LODWORD(v16) = [v5 containsObject:v18];

        if (v16 && v14)
        {
          dataClassesWithUpdatedDiskUsage = v21->_dataClassesWithUpdatedDiskUsage;
          v20 = [v10 dataClass];
          [(NSMutableSet *)dataClassesWithUpdatedDiskUsage addObject:v20];
        }

        [v10 reconcileWithAnchor:v17 syncType:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  [(ATLegacyDeviceSyncManager *)v21 _reportLocalProgress];
}

- (void)_sendSyncAllowed
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v32 = ATGetDisabledAssetTypes(self->_clientController);
  v4 = [MEMORY[0x277D7FBE8] sharedSecurityInfo];
  v5 = [v4 isDeviceClassCUnlocked];

  v30 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25D18]];
  v29 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25D20]];
  v28 = [v3 isEphemeralMultiUser];
  v25 = v3;
  v6 = [v3 cloudConfigurationDetails];
  v7 = [v6 objectForKey:*MEMORY[0x277D26360]];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = self;
  obj = self->_messageLinks;
  v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v27 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        currentMessageLink = v31->_currentMessageLink;
        if (currentMessageLink)
        {
          v11 = v9 == currentMessageLink;
        }

        else
        {
          v11 = 1;
        }

        v12 = v11;
        v13 = v12 & v5;
        if (v13 == 1)
        {
          v14 = [MEMORY[0x277D7FA90] sharedMonitor];
          v15 = [v14 isCharging];
        }

        else
        {
          v15 = 0;
        }

        v16 = objc_opt_new();
        v17 = [MEMORY[0x277CCABB0] numberWithBool:v15];
        [v16 setObject:v17 forKey:@"AutoSync"];

        v18 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        [v16 setObject:v18 forKey:@"ManualSync"];

        [v16 setObject:v32 forKey:@"DisabledAssetTypes"];
        [v16 setObject:MEMORY[0x277CBEC38] forKey:@"PurgeAllowed"];
        v19 = [MEMORY[0x277CCABB0] numberWithBool:v5 ^ 1];
        [v16 setObject:v19 forKey:@"DataProtected"];

        v20 = [MEMORY[0x277CCABB0] numberWithBool:v30 != 2];
        [v16 setObject:v20 forKey:@"AppInstallationAllowed"];

        v21 = [MEMORY[0x277CCABB0] numberWithBool:v29 != 2];
        [v16 setObject:v21 forKey:@"AppRemovalAllowed"];

        v22 = [MEMORY[0x277CCABB0] numberWithBool:v28];
        [v16 setObject:v22 forKey:@"EducationModeEnabled"];

        v23 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v16 setObject:v23 forKey:@"SupportsFavorites"];

        if (v7)
        {
          [v16 setObject:v7 forKey:@"ManagedOrganizationName"];
        }

        v24 = [MEMORY[0x277CEA448] messageWithName:@"SyncAllowed" parameters:v16];
        [(ATLegacyMessageLink *)v9 sendMessage:v24 withCompletion:&__block_literal_global_301];

        ++v8;
      }

      while (v33 != v8);
      v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }
}

- (void)_sendDiskUsageWithUpdatedDataClasses:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "Sending updated disk usage with updated dataclasses %{public}@", buf, 0xCu);
  }

  if (v4)
  {
    diskUsageProvider = self->_diskUsageProvider;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke;
    v10[3] = &unk_2784E55F0;
    v10[4] = self;
    [(ATDeviceDiskUsageProvider *)diskUsageProvider getCurrentUsageWithUpdatedDataClasses:v4 withCompletion:v10];
  }

  else
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_lastDiskUsageUpdateTime = v7;
    v8 = self->_diskUsageProvider;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke_4;
    v9[3] = &unk_2784E55F0;
    v9[4] = self;
    [(ATDeviceDiskUsageProvider *)v8 getUpdatedUsageWithCompletion:v9];
  }
}

void __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke_2;
  v7[3] = &unk_2784E5960;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke_5;
  v7[3] = &unk_2784E5960;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke_5(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CEA448] messageWithName:@"AssetMetrics" parameters:{*(a1 + 40), v9}];
        [v7 sendMessage:v8 withCompletion:&__block_literal_global_272];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __66__ATLegacyDeviceSyncManager__sendDiskUsageWithUpdatedDataClasses___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CEA448] messageWithName:@"AssetMetrics" parameters:{*(a1 + 40), v9}];
        [v7 sendMessage:v8 withCompletion:&__block_literal_global_270];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_sendDiskUsage
{
  v26 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = v3 - self->_lastDiskUsageUpdateTime;
  v6 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v5;
    _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "Sending disk usage. lastUpdate=%.2fs ago", buf, 0xCu);
  }

  v7 = [(ATDeviceDiskUsageProvider *)self->_diskUsageProvider getCurrentUsage];
  v8 = ![v7 count] || self->_lastDiskUsageUpdateTime == 0.0 || v5 > 600.0;
  if ([v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = self;
    v9 = self->_messageLinks;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [MEMORY[0x277CEA448] messageWithName:@"AssetMetrics" parameters:v7];
          [v14 sendMessage:v15 withCompletion:&__block_literal_global_265];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    self = v17;
  }

  if (v8)
  {
    self->_lastDiskUsageUpdateTime = v4;
    diskUsageProvider = self->_diskUsageProvider;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__ATLegacyDeviceSyncManager__sendDiskUsage__block_invoke_2;
    v18[3] = &unk_2784E55F0;
    v18[4] = self;
    [(ATDeviceDiskUsageProvider *)diskUsageProvider getUpdatedUsageWithCompletion:v18];
  }
}

void __43__ATLegacyDeviceSyncManager__sendDiskUsage__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ATLegacyDeviceSyncManager__sendDiskUsage__block_invoke_3;
  v7[3] = &unk_2784E5960;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __43__ATLegacyDeviceSyncManager__sendDiskUsage__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CEA448] messageWithName:@"AssetMetrics" parameters:{*(a1 + 40), v9}];
        [v7 sendMessage:v8 withCompletion:&__block_literal_global_267];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_sendInstalledAssets
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Application", @"Ringtone", @"Media", @"VoiceMemo", @"Book", @"Data", @"Keybag", @"Photo", @"Proofing", @"MessagePart", @"Logs", @"UserData", @"Podcasts", @"File", 0}];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [(ATClientController *)self->_clientController clientForDataclass:v8];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 installedAssets];
          if (v10)
          {
            [v3 setObject:v10 forKey:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_messageLinks;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = [MEMORY[0x277CEA448] messageWithName:@"InstalledAssets" parameters:v3];
        [v16 sendMessage:v17 withCompletion:&__block_literal_global_262];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }
}

- (void)_handleSyncStatusMessage:(id)a3 fromLink:(id)a4
{
  v5 = [a3 parameterForKey:{@"StatusMessage", a4}];
  objc_storeStrong(&self->_currentStatus, v5);
  [(ATSession *)self->_syncSession setLocalizedDescription:v5];
  [(ATLegacyDeviceSyncManager *)self _reportLocalProgress];
}

- (void)_handleAssetMetricsMessage:(id)a3 fromLink:(id)a4
{
  v5 = [a3 parameterForKey:{@"Dataclasses", a4}];
  [(ATLegacyDeviceSyncManager *)self _sendDiskUsageWithUpdatedDataClasses:v5];
}

- (void)_handleSyncFailedMessage:(id)a3 fromLink:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_syncSession)
  {
    v7 = [v11 sessionNumber];
    if (v7 == [MEMORY[0x277CEA448] currentSessionNumber])
    {
      v8 = [v11 parameterForKey:@"ErrorCode"];
      v9 = [v8 intValue] == 2 ? 8 : 1;

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:v9 userInfo:0];
      [(ATSession *)self->_syncSession setError:v10];

      [(ATSession *)self->_syncSession cancel];
      if (self->_cacheDeleteToken)
      {
        CacheDeleteCancelPurge();
        self->_cacheDeleteToken = 0;
      }
    }
  }
}

- (void)_handleFinishedSyncingMetadataMessage:(id)a3 fromLink:(id)a4
{
  v26[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  syncSession = self->_syncSession;
  if (!syncSession || ([(ATSession *)syncSession isCancelled]& 1) != 0 || [(ATSession *)self->_syncSession isFinished])
  {
    v9 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = self;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_ERROR, "%{public}@ no active sync session - failing sync", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CEA448] messageWithName:@"SyncFailed" parameters:&unk_2836F52D0 session:{objc_msgSend(v6, "sessionNumber")}];
    [v7 sendMessage:v10 withCompletion:&__block_literal_global_185];
  }

  else
  {
    v11 = [v6 sessionNumber];
    if (v11 == [MEMORY[0x277CEA448] currentSessionNumber])
    {
      v10 = [v6 parameterForKey:@"PurgeDataBytes"];
      v12 = [v10 unsignedLongLongValue];
      if (v12)
      {
        v13 = v12;
        [(ATSession *)self->_syncSession setSuspended:1];
        v14 = _ATLogCategoryiTunesSync();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v20 = self;
          v21 = 2048;
          *v22 = v13;
          _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting purge for %lld bytes", buf, 0x16u);
        }

        v26[0] = @"/private/var";
        v25[0] = @"CACHE_DELETE_VOLUME";
        v25[1] = @"CACHE_DELETE_AMOUNT";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
        v25[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
        v26[1] = v15;
        v26[2] = &unk_2836F5188;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

        [MEMORY[0x277D2B5F8] setAutoFilledTracksArePurgeable:0];
        v17 = v16;
        self->_cacheDeleteToken = CacheDeletePurgeSpaceWithInfo();
      }

      [(ATLegacyDeviceSyncManager *)self _reconcileSyncWithMessage:v6];
    }

    else
    {
      v18 = _ATLogCategoryiTunesSync();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v20 = self;
        v21 = 1024;
        *v22 = [v6 sessionNumber];
        *&v22[4] = 1024;
        *&v22[6] = [MEMORY[0x277CEA448] currentSessionNumber];
        v23 = 2114;
        v24 = @"FinishedSyncingMetadata";
        _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Session numbers are different - ATLegacyMessage:(%d), ATLegacySession:(%d), ignoring message %{public}@ and cancelling current sync session", buf, 0x22u);
      }

      v10 = [MEMORY[0x277CEA448] messageWithName:@"SyncFailed" parameters:&unk_2836F52F8 session:{objc_msgSend(v6, "sessionNumber")}];
      [v7 sendMessage:v10 withCompletion:&__block_literal_global_213];
      [(ATLegacyDeviceSyncManager *)self _cancelExistingSyncSession];
    }
  }
}

void __76__ATLegacyDeviceSyncManager__handleFinishedSyncingMetadataMessage_fromLink___block_invoke_204(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D2B5F8] setAutoFilledTracksArePurgeable:1];
  v4 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Captured %{public}@", buf, 0x16u);
  }

  v7 = [a2 objectForKey:@"CACHE_DELETE_AMOUNT"];
  v8 = [v7 longLongValue];

  v9 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    *buf = 138543618;
    v16 = v10;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Purged %lld bytes", buf, 0x16u);
  }

  v11 = a1[4];
  v12 = *(v11 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ATLegacyDeviceSyncManager__handleFinishedSyncingMetadataMessage_fromLink___block_invoke_205;
  block[3] = &unk_2784E55A0;
  v13 = a1[6];
  block[5] = v8;
  block[6] = v13;
  block[4] = v11;
  dispatch_async(v12, block);
}

uint64_t __76__ATLegacyDeviceSyncManager__handleFinishedSyncingMetadataMessage_fromLink___block_invoke_205(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1[5] >= a1[6])
  {
    v6 = *(a1[4] + 208);

    return [v6 setSuspended:0];
  }

  else
  {
    v2 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      v4 = a1[6];
      v7 = 134218240;
      v8 = v3;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "CacheDelete purged %lli of %lli requested", &v7, 0x16u);
    }

    return [*(a1[4] + 208) setSuspended:0];
  }
}

- (void)_handleRequestingSyncMessage:(id)a3 fromLink:(id)a4
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 parameterForKey:@"HostInfo"];
  if (v8)
  {
    defaults = self->_defaults;
    v10 = ATGetDisabledAssetTypes(self->_clientController);
    [(ATUserDefaults *)defaults updateHostInfo:v8 disabledAssetTypes:v10];
  }

  [(ATLegacyDeviceSyncManager *)self setCurrentSyncHostInfo:v8];
  v11 = [v8 objectForKey:@"Version"];
  v12 = v11;
  if (v11)
  {
    if ([v11 isEqualToString:@"IGNORE"])
    {
      v13 = _ATLogCategoryiTunesSync();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_INFO, "Explicitly ignoring version check", buf, 2u);
      }

LABEL_12:
      [MEMORY[0x277D262A0] sharedConnection];
      v15 = v16 = self;
      v17 = [v15 isEphemeralMultiUser];
      v94 = v16;
      v18 = [(ATLegacyDeviceSyncManager *)v16 _currentHostType];
      v19 = [v18 isEqualToString:@"Configurator"];

      if (v17 && (v19 & 1) == 0)
      {
        v20 = _ATLogCategoryiTunesSync();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_ERROR, "Sending sync disallowed because we are in multi-user mode", buf, 2u);
        }

        v21 = objc_opt_new();
        [(__CFString *)v21 setObject:&unk_2836F5128 forKey:@"ErrorCode"];
        v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [(__CFString *)v21 setObject:v22 forKey:@"EducationModeEnabled"];

        v23 = [v15 cloudConfigurationDetails];
        v24 = [v23 objectForKey:*MEMORY[0x277D26360]];

        if (v24)
        {
          [(__CFString *)v21 setObject:v24 forKey:@"ManagedOrganizationName"];
        }

        v25 = [MEMORY[0x277CEA448] messageWithName:@"SyncFailed" parameters:v21 session:{objc_msgSend(v6, "sessionNumber")}];
        v26 = &__block_literal_global_129;
LABEL_19:
        [(ATLegacyMessageLink *)v7 sendMessage:v25 withCompletion:v26];
LABEL_68:

        goto LABEL_69;
      }

      v21 = [(ATConcreteMessageLink *)v94->_currentMessageLink identifier];
      v27 = [v6 parameterForKey:@"HostInfo"];
      v91 = [v27 objectForKey:@"LibraryID"];

      currentMessageLink = v94->_currentMessageLink;
      if (currentMessageLink != v7 && currentMessageLink && v21)
      {
        if (![v91 isEqualToString:v21])
        {
          v40 = _ATLogCategoryiTunesSync();
          v24 = v91;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v114 = v91;
            v115 = 2114;
            v116 = v21;
            _os_log_impl(&dword_223819000, v40, OS_LOG_TYPE_ERROR, "Sending sync disallowed message to %{public}@, already syncing with %{public}@", buf, 0x16u);
          }

          v25 = [MEMORY[0x277CEA448] messageWithName:@"SyncFailed" parameters:&unk_2836F5258 session:{objc_msgSend(v6, "sessionNumber")}];
          v26 = &__block_literal_global_136;
          goto LABEL_19;
        }

        currentMessageLink = v94->_currentMessageLink;
      }

      v90 = v15;
      if (currentMessageLink == v7 && v94->_localSyncRequestCanceled)
      {
        v29 = _ATLogCategoryiTunesSync();
        v24 = v91;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v114 = v91;
          _os_log_impl(&dword_223819000, v29, OS_LOG_TYPE_ERROR, "Sending sync canceled message to %{public}@, canceled before we started", buf, 0xCu);
        }

        v25 = [MEMORY[0x277CEA448] messageWithName:@"SyncFailed" parameters:&unk_2836F5280 session:{objc_msgSend(v6, "sessionNumber")}];
        [(ATLegacyMessageLink *)v7 sendMessage:v25 withCompletion:&__block_literal_global_145];
        v94->_localSyncRequestCanceled = 0;
      }

      else
      {
        v87 = v21;
        v88 = v7;
        v30 = [v6 parameterForKey:@"HostInfo"];
        v31 = [v30 objectForKey:@"Grappa"];
        v32 = ATGrappaEstablishSession(v31, &v94->_grappaId);

        v89 = v32;
        if (v32)
        {
          [(ATLegacyDeviceSyncManager *)v94 _cancelExistingSyncSession];
          [MEMORY[0x277CEA448] setSessionNumber:{objc_msgSend(v6, "sessionNumber")}];
          objc_storeStrong(&v94->_currentMessageLink, a4);
          v33 = v94->_defaults;
          v34 = [v6 parameterForKey:@"HostInfo"];
          v35 = ATGetDisabledAssetTypes(v94->_clientController);
          [(ATUserDefaults *)v33 updateHostInfo:v34 disabledAssetTypes:v35];

          v36 = [v6 parameterForKey:@"Dataclasses"];
          v37 = [v36 mutableCopy];
          dataclasses = v94->_dataclasses;
          v94->_dataclasses = v37;

          v94->_localSyncRequest = 0;
          v85 = v8;
          v86 = v6;
          v84 = v12;
          if ([(ATLegacyDeviceSyncManager *)v94 _currentLinkIsWifiConnection])
          {
            v39 = [MEMORY[0x277D7FA90] sharedMonitor];
            v94->_automaticSync = [v39 isCharging];
          }

          else
          {
            v94->_automaticSync = 1;
          }

          v94->_currentStage = 1;
          [(ATLegacyDeviceSyncManager *)v94 _sendSyncAllowed];
          [(ATLegacyDeviceSyncManager *)v94 _reportLocalProgress];
          v43 = objc_alloc(MEMORY[0x277CEA468]);
          v44 = [v43 initWithSessionTypeIdentifier:*MEMORY[0x277CEA418]];
          syncSession = v94->_syncSession;
          v94->_syncSession = v44;

          v46 = [MEMORY[0x277CE5430] sharedSessionServer];
          [v46 addSession:v94->_syncSession];

          [(ATSession *)v94->_syncSession addObserver:v94];
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v83 = 88;
          v47 = v94->_dataclasses;
          v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v103 objects:v112 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v104;
            do
            {
              for (i = 0; i != v49; ++i)
              {
                if (*v104 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = [[ATLegacySyncSessionTask alloc] initWithDataClass:*(*(&v103 + 1) + 8 * i), v83];
                [(ATLegacySyncSessionTask *)v52 setGrappaSessionID:v94->_grappaId];
                v53 = v94->_syncSession;
                v111 = v52;
                v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
                [(ATSession *)v53 addSessionTasks:v54];
              }

              v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v103 objects:v112 count:16];
            }

            while (v49);
          }

          [(ATSession *)v94->_syncSession start];
          [(ATLegacyDeviceSyncManager *)v94 _sendInstalledAssets];
          v55 = v6;
          v56 = [v6 parameterForKey:@"HostInfo"];
          v93 = [v56 objectForKey:@"Version"];

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          obj = [(ATSession *)v94->_syncSession sessionTasksWithGroupingKey:@"ATLegacySyncSessionTaskGroupingKey"];
          v57 = [obj countByEnumeratingWithState:&v99 objects:v110 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v100;
            while (2)
            {
              for (j = 0; j != v58; ++j)
              {
                if (*v100 != v59)
                {
                  objc_enumerationMutation(obj);
                }

                v61 = *(*(&v99 + 1) + 8 * j);
                v62 = v55;
                v63 = [v55 parameterForKey:{@"DataclassAnchors", v83}];
                v64 = [v61 dataClass];
                v65 = [v63 objectForKey:v64];

                [v61 prepareWithHostAnchor:v65 version:v93];
                v66 = [v61 error];

                if (v66)
                {
                  v67 = [v61 error];

                  [(ATSession *)v94->_syncSession setError:v67];
                  [(ATSession *)v94->_syncSession cancel];
                  v21 = v87;
                  v7 = v88;
                  v6 = v62;
                  goto LABEL_66;
                }

                v55 = v62;
              }

              v58 = [obj countByEnumeratingWithState:&v99 objects:v110 count:16];
              if (v58)
              {
                continue;
              }

              break;
            }
          }

          v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v68 = v94;
          v69 = *(&v94->super.super.isa + v83);
          v70 = [v69 countByEnumeratingWithState:&v95 objects:v109 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v96;
            do
            {
              for (k = 0; k != v71; ++k)
              {
                if (*v96 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v74 = *(*(&v95 + 1) + 8 * k);
                v75 = [(ATClientController *)v68->_clientController clientForDataclass:v74, v83];
                if (objc_opt_respondsToSelector())
                {
                  v76 = [v75 currentSyncAnchor];
                  [v67 setObject:v76 forKey:v74];

                  v68 = v94;
                }
              }

              v71 = [v69 countByEnumeratingWithState:&v95 objects:v109 count:16];
            }

            while (v71);
          }

          v77 = [MEMORY[0x277CBEB38] dictionary];
          [v77 setObject:v89 forKey:@"Grappa"];
          v78 = MEMORY[0x277CEA448];
          v107[0] = @"DataclassAnchors";
          v107[1] = @"DeviceInfo";
          v108[0] = v67;
          v108[1] = v77;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
          v80 = v79 = v68;
          v81 = [v78 messageWithName:@"ReadyForSync" parameters:v80];
          v7 = v88;
          [(ATLegacyMessageLink *)v88 sendMessage:v81 withCompletion:&__block_literal_global_177];

          v79->_currentStage = 2;
          currentDataclass = v79->_currentDataclass;
          v79->_currentDataclass = &stru_2836EC190;

          [(ATLegacyDeviceSyncManager *)v79 _reportLocalProgress];
          v6 = v86;
          v21 = v87;
LABEL_66:
          v42 = v93;

          v12 = v84;
          v8 = v85;
          v15 = v90;
        }

        else
        {
          v41 = _ATLogCategoryiTunesSync();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_223819000, v41, OS_LOG_TYPE_ERROR, "Grappa session could not be established. Aborting", buf, 2u);
          }

          v42 = [MEMORY[0x277CEA448] messageWithName:@"SyncFailed" parameters:&unk_2836F52A8 session:{objc_msgSend(v6, "sessionNumber")}];
          v7 = v88;
          [(ATLegacyMessageLink *)v88 sendMessage:v42 withCompletion:&__block_literal_global_157];
          v21 = v87;
        }

        v24 = v91;
        v25 = v89;
      }

      goto LABEL_68;
    }

    if ([@"10.5.0.115" compare:v12 options:64] != 1)
    {
      goto LABEL_12;
    }
  }

  v14 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v114 = v12;
    v115 = 2114;
    v116 = @"10.5.0.115";
    _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_ERROR, "Sending sync disallowed, incompatible version: %{public}@ vs. %{public}@ required", buf, 0x16u);
  }

  v15 = [MEMORY[0x277CEA448] messageWithName:@"SyncFailed" parameters:&unk_2836F5230 session:{objc_msgSend(v6, "sessionNumber")}];
  [(ATLegacyMessageLink *)v7 sendMessage:v15 withCompletion:&__block_literal_global_113];
LABEL_69:
}

void __67__ATLegacyDeviceSyncManager__handleRequestingSyncMessage_fromLink___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_ERROR, "failed to send ReadyForSync back to host. err=%{public}@", &v4, 0xCu);
    }
  }
}

- (void)_handleHostInfoMessage:(id)a3 fromLink:(id)a4
{
  defaults = self->_defaults;
  v7 = a4;
  v8 = a3;
  v9 = [v8 parameterForKey:@"HostInfo"];
  v10 = ATGetDisabledAssetTypes(self->_clientController);
  [(ATUserDefaults *)defaults updateHostInfo:v9 disabledAssetTypes:v10];

  v11 = [v8 parameterForKey:@"LocalCloudSupport"];

  [v7 setHostSupportsLocalCloudDownloads:{objc_msgSend(v11, "BOOLValue")}];

  [(ATLegacyDeviceSyncManager *)self _reportLocalProgress];
}

- (void)_handleCapabilitiesMessage:(id)a3 fromLink:(id)a4
{
  v6 = a4;
  v7 = [a3 parameterForKey:@"LibraryID"];
  [v6 setIdentifier:v7];

  [(ATLegacyDeviceSyncManager *)self _reportLocalProgress];
}

- (void)assetLink:(id)a3 didUpdateOverallProgress:(double)a4
{
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__ATLegacyDeviceSyncManager_assetLink_didUpdateOverallProgress___block_invoke;
  v5[3] = &unk_2784E5578;
  v5[4] = self;
  *&v5[5] = a4;
  dispatch_async(workQueue, v5);
}

- (void)sessionDidFinish:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ATLegacyDeviceSyncManager_sessionDidFinish___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void *__46__ATLegacyDeviceSyncManager_sessionDidFinish___block_invoke(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *(v4 + 208);
  if (v5 != result)
  {
    return result;
  }

  if (*(v4 + 80))
  {
    [*(v4 + 80) close];
    v7 = *(a1 + 40);
    v8 = *(v7 + 80);
    *(v7 + 80) = 0;

    result = *(*(a1 + 40) + 208);
  }

  [result removeObserver:?];
  v9 = *(a1 + 40);
  v10 = *(v9 + 208);
  *(v9 + 208) = 0;

  v11 = [*(a1 + 32) error];
  if (v11)
  {
  }

  else
  {
    [*(a1 + 32) isCancelled];
  }

  ATReportEventIncrementingScalarKey();
  v12 = +[ATClientController sharedInstance];
  [v12 waitToDrain];

  v13 = [*(a1 + 32) error];

  v14 = *(*(a1 + 40) + 72);
  v15 = MEMORY[0x277CEA448];
  if (v13)
  {
    v16 = [*(a1 + 32) error];
    if (v16)
    {
      v46 = @"ErrorCode";
      v17 = MEMORY[0x277CCABB0];
      v1 = [*(a1 + 32) error];
      v2 = [v17 numberWithInteger:{objc_msgSend(v1, "code")}];
      v47[0] = v2;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v15 messageWithName:@"SyncFailed" parameters:v18];
    [v14 sendMessage:v19 withCompletion:&__block_literal_global_89];

    if (v16)
    {
    }
  }

  else
  {
    v16 = [MEMORY[0x277CEA448] messageWithName:@"SyncFinished" parameters:0];
    [v14 sendMessage:v16 withCompletion:&__block_literal_global_94];
  }

  v20 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) duration];
    *buf = 134217984;
    v45 = v21;
    _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_DEFAULT, "---Total Sync Time: %.1fs---", buf, 0xCu);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = [*(a1 + 32) sessionTasks];
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v40;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 += [v28 failedAssetsCount];
          if ([v28 totalItemCount])
          {
            v29 = *(*(a1 + 40) + 192);
            v30 = [v28 dataClass];
            [v29 addObject:v30];
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v24);

    if (v25)
    {
      ATDisplayErrorForAssets(v25);
    }
  }

  else
  {
  }

  v31 = [*(a1 + 32) error];
  if (v31)
  {
    goto LABEL_32;
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v32 = *(a1 + 40);
    v33 = *(v32 + 32);
    v31 = [*(v32 + 72) identifier];
    [v33 updateLastSyncWithHostLibrary:v31];
LABEL_32:
  }

  v34 = [*(*(a1 + 40) + 192) count];
  v35 = _ATLogCategoryiTunesSync();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v34)
  {
    if (v36)
    {
      v37 = *(*(a1 + 40) + 192);
      *buf = 138543362;
      v45 = v37;
      _os_log_impl(&dword_223819000, v35, OS_LOG_TYPE_DEFAULT, "Updating storage metrics after sync changes were applied to dataclasses %{public}@", buf, 0xCu);
    }

    v38 = *(a1 + 40);
    v35 = [v38[24] allObjects];
    [v38 _sendDiskUsageWithUpdatedDataClasses:v35];
  }

  else if (v36)
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v35, OS_LOG_TYPE_DEFAULT, "skipping storage metrics update since no changes were made", buf, 2u);
  }

  [*(a1 + 40) _reset];
  getpid();
  proc_set_cpumon_defaults();
  return SBSSetStatusBarShowsSyncActivity();
}

- (void)sessionWillBegin:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ATLegacyDeviceSyncManager_sessionWillBegin___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

uint64_t __46__ATLegacyDeviceSyncManager_sessionWillBegin___block_invoke(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 208))
  {
    v2 = result;
    ATReportEventIncrementingScalarKey();
    getpid();
    proc_disable_cpumon();
    SBSSetStatusBarShowsSyncActivity();
    v3 = [ATLegacyAssetLink alloc];
    v4 = *(v2 + 40);
    v5 = *(v4 + 72);
    v6 = [*(v4 + 216) valueForKey:@"Version"];
    v7 = [(ATLegacyAssetLink *)v3 initWithMessageLink:v5 hostVersion:v6];
    v8 = *(v2 + 40);
    v9 = *(v8 + 80);
    *(v8 + 80) = v7;

    [*(*(v2 + 40) + 80) setSupportedDataClasses:*(*(v2 + 40) + 88)];
    [*(*(v2 + 40) + 80) setProgressDelegate:?];
    [*(*(v2 + 40) + 192) removeAllObjects];
    v10 = [MEMORY[0x277CEA430] sharedInstance];
    [v10 createAirlockForDataclasses:*(*(v2 + 40) + 88)];

    v11 = [MEMORY[0x277CE53F0] sharedInstance];
    [v11 addAssetLink:*(*(v2 + 40) + 80)];

    v12 = *(*(v2 + 40) + 80);

    return [v12 open];
  }

  return result;
}

- (void)session:(id)a3 willBeginSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ATLegacyDeviceSyncManager_session_willBeginSessionTask___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

void __58__ATLegacyDeviceSyncManager_session_willBeginSessionTask___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 208))
  {
    v2 = [*(a1 + 48) sessionGroupingKey];
    v3 = [v2 isEqualToString:@"ATAssetSessionTaskGroupingKey"];

    if (v3)
    {
      *(*(a1 + 40) + 136) = 4;
      v4 = *(a1 + 40);

      [v4 _reportLocalProgress];
    }
  }
}

- (void)session:(id)a3 didBeginSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ATLegacyDeviceSyncManager_session_didBeginSessionTask___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

void __57__ATLegacyDeviceSyncManager_session_didBeginSessionTask___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 208))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(*(a1 + 40) + 80) readyDataClasses];
      v2 = [*(a1 + 48) dataClass];
      v3 = [v4 arrayByAddingObject:v2];
      [*(*(a1 + 40) + 80) setReadyDataClasses:v3];
    }
  }
}

- (void)session:(id)a3 didUpdateSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ATLegacyDeviceSyncManager_session_didUpdateSessionTask___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

void __58__ATLegacyDeviceSyncManager_session_didUpdateSessionTask___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) == *(*(a1 + 40) + 208))
  {
    v2 = [*(a1 + 48) sessionGroupingKey];
    v3 = [v2 isEqualToString:@"ATAssetSessionTaskGroupingKey"];

    v4 = [*(a1 + 48) dataClass];
    v5 = v4;
    if (v3)
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + 144);
      *(v6 + 144) = v5;
    }

    else
    {
      v8 = [v4 isEqualToString:@"Media"];

      if (v8)
      {
        [*(a1 + 48) progress];
        v10 = v9;
        v11 = *(a1 + 40);
        if (*(v11 + 168) != v9)
        {
          v12 = *(v11 + 72);
          v13 = MEMORY[0x277CEA448];
          v18 = @"OverallProgress";
          v14 = MEMORY[0x277CCABB0];
          [*(a1 + 48) progress];
          v15 = [v14 numberWithDouble:?];
          v19[0] = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
          v17 = [v13 messageWithName:@"Progress" parameters:v16];
          [v12 sendMessage:v17 withCompletion:&__block_literal_global_4050];

          *(*(a1 + 40) + 168) = v10;
        }
      }
    }
  }
}

- (void)environmentMonitorDidChangePower:(id)a3
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ATLegacyDeviceSyncManager_environmentMonitorDidChangePower___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)messageLinkWasClosed:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasClosed___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasClosed___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(a1 + 40) == *(v2 + 72))
  {
    v3 = [*(v2 + 64) count];
    if (v3)
    {
      v4 = [*(*(a1 + 32) + 64) objectAtIndex:0];
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 72), v4);
    if (v3)
    {
    }
  }

  v5 = *(*(a1 + 32) + 208);
  if (v5 && [v5 isRunning] && !*(*(a1 + 32) + 72))
  {
    v6 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "message link closed mid sync - cancelling active session", v10, 2u);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:8 userInfo:0];
    [*(*(a1 + 32) + 208) setError:v7];

    [*(*(a1 + 32) + 208) cancel];
  }

  [*(a1 + 40) removeHandlerForMessage:@"Capabilities"];
  [*(a1 + 40) removeHandlerForMessage:@"HostInfo"];
  [*(a1 + 40) removeHandlerForMessage:@"RequestingSync"];
  [*(a1 + 40) removeHandlerForMessage:@"SyncFailed"];
  [*(a1 + 40) removeHandlerForMessage:@"FinishedSyncingMetadata"];
  [*(a1 + 40) removeHandlerForMessage:@"AssetMetrics"];
  [*(a1 + 40) removeHandlerForMessage:@"SyncStatus"];
  v8 = [MEMORY[0x277CE5438] sharedMonitor];
  v9 = [*(*(a1 + 32) + 64) valueForKey:@"identifier"];
  [v8 updateStatusWithValue:v9 forKey:@"ConnectedLibraries"];
}

- (void)messageLinkWasInitialized:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ATLegacyDeviceSyncManager_messageLinkWasInitialized___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __55__ATLegacyDeviceSyncManager_messageLinkWasInitialized___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = ATGrappaDeviceInfo();
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CEA448];
    v12 = @"GrappaSupportInfo";
    v13[0] = v2;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v4 messageWithName:@"Capabilities" parameters:v5];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__ATLegacyDeviceSyncManager_messageLinkWasInitialized___block_invoke_2;
    v11[3] = &unk_2784E58E8;
    v7 = *(a1 + 32);
    v11[4] = *(a1 + 40);
    [v7 sendMessage:v6 withCompletion:v11];
  }

  else
  {
    v6 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_ERROR, "Could not get grappa device info. Don't expect anything to work properly after this point.", v10, 2u);
    }
  }

  v8 = [MEMORY[0x277CE5438] sharedMonitor];
  v9 = [*(*(a1 + 40) + 64) valueForKey:@"identifier"];
  [v8 updateStatusWithValue:v9 forKey:@"ConnectedLibraries"];
}

void __55__ATLegacyDeviceSyncManager_messageLinkWasInitialized___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    block[5] = v2;
    block[6] = v3;
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ATLegacyDeviceSyncManager_messageLinkWasInitialized___block_invoke_3;
    block[3] = &unk_2784E5938;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

uint64_t __55__ATLegacyDeviceSyncManager_messageLinkWasInitialized___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _sendInstalledAssets];
  [*(a1 + 32) _sendDiskUsage];
  v2 = *(a1 + 32);

  return [v2 _sendSyncAllowed];
}

- (void)messageLinkWasOpened:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(workQueue, v7);
}

uint64_t __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_2;
  v26[3] = &unk_2784E5548;
  v26[4] = *(a1 + 40);
  [v2 setHandlerForMessage:@"Capabilities" handler:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_4;
  v25[3] = &unk_2784E5548;
  v3 = *(a1 + 32);
  v25[4] = *(a1 + 40);
  [v3 setHandlerForMessage:@"HostInfo" handler:v25];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_6;
  v24[3] = &unk_2784E5548;
  v4 = *(a1 + 32);
  v24[4] = *(a1 + 40);
  [v4 setHandlerForMessage:@"RequestingSync" handler:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_8;
  v23[3] = &unk_2784E5548;
  v5 = *(a1 + 32);
  v23[4] = *(a1 + 40);
  [v5 setHandlerForMessage:@"SyncFailed" handler:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_10;
  v22[3] = &unk_2784E5548;
  v6 = *(a1 + 32);
  v22[4] = *(a1 + 40);
  [v6 setHandlerForMessage:@"FinishedSyncingMetadata" handler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_12;
  v21[3] = &unk_2784E5548;
  v7 = *(a1 + 32);
  v21[4] = *(a1 + 40);
  [v7 setHandlerForMessage:@"AssetMetrics" handler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_14;
  v20[3] = &unk_2784E5548;
  v8 = *(a1 + 32);
  v20[4] = *(a1 + 40);
  [v8 setHandlerForMessage:@"SyncStatus" handler:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [*(*(a1 + 40) + 40) allClients];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 registerMessageHandlersWithLink:*(a1 + 32)];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v11);
  }

  return [*(*(a1 + 40) + 64) addObject:*(a1 + 32)];
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_3;
  block[3] = &unk_2784E59B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_5;
  block[3] = &unk_2784E59B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_7;
  block[3] = &unk_2784E59B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_9;
  block[3] = &unk_2784E59B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_11;
  block[3] = &unk_2784E59B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_13;
  block[3] = &unk_2784E59B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyDeviceSyncManager_messageLinkWasOpened___block_invoke_15;
  block[3] = &unk_2784E59B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)currentSyncState
{
  v16 = *MEMORY[0x277D85DE8];
  syncSession = self->_syncSession;
  v3 = [(ATLegacyDeviceSyncManager *)self _currentLinkIsWifiConnection];
  v4 = [MEMORY[0x277D7FA90] sharedMonitor];
  if ([v4 isCharging])
  {
    v5 = [MEMORY[0x277D7FBE8] sharedSecurityInfo];
    v6 = [v5 isDeviceClassCUnlocked];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CBEAC0];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:syncSession != 0];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v11 = [v7 dictionaryWithObjectsAndKeys:{v8, @"Syncing", v9, @"Wireless", v10, @"Automatic", 0}];

  v12 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "iTunes Sync State=%{public}@.", buf, 0xCu);
  }

  return v11;
}

- (void)cancelSyncOnMessageLink:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ATLegacyDeviceSyncManager_cancelSyncOnMessageLink___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void *__53__ATLegacyDeviceSyncManager_cancelSyncOnMessageLink___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 72) == result[5])
  {
    result = *(v1 + 208);
    if (result)
    {
      return [result cancel];
    }
  }

  return result;
}

- (void)initiateSyncForLibrary:(id)a3 onMessageLink:(id)a4
{
  v6 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ATLegacyDeviceSyncManager_initiateSyncForLibrary_onMessageLink___block_invoke;
  block[3] = &unk_2784E5520;
  v11 = self;
  v12 = a2;
  v10 = v6;
  v8 = v6;
  dispatch_async(workQueue, block);
}

void __66__ATLegacyDeviceSyncManager_initiateSyncForLibrary_onMessageLink___block_invoke(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    [v3 handleFailureInMethod:a1[6] object:a1[5] file:@"ATLegacyDeviceSyncManager.m" lineNumber:119 description:&stru_2836EC190];
  }

  v2 = a1[4];
  v4 = [MEMORY[0x277CEA448] messageWithName:@"RequestingSync" parameters:0];
  [v2 sendMessage:v4 withCompletion:0];
}

- (ATLegacyDeviceSyncManager)init
{
  v24.receiver = self;
  v24.super_class = ATLegacyDeviceSyncManager;
  v2 = [(ATDeviceSyncManager *)&v24 init];
  if (v2)
  {
    v3 = +[ATUserDefaults sharedInstance];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = +[ATClientController sharedInstance];
    clientController = v2->_clientController;
    v2->_clientController = v5;

    v7 = +[ATDeviceDiskUsageProvider sharedInstance];
    diskUsageProvider = v2->_diskUsageProvider;
    v2->_diskUsageProvider = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    messageLinks = v2->_messageLinks;
    v2->_messageLinks = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    dataclasses = v2->_dataclasses;
    v2->_dataclasses = v11;

    currentAsset = v2->_currentAsset;
    v2->_currentAsset = 0;

    v14 = [MEMORY[0x277CBEB58] set];
    dataClassesWithUpdatedDiskUsage = v2->_dataClassesWithUpdatedDiskUsage;
    v2->_dataClassesWithUpdatedDiskUsage = v14;

    v16 = dispatch_queue_create("com.apple.atc.workq", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v16;

    v18 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v18 registerObserver:v2];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _ATBuddyCallback, @"com.apple.purplebuddy.setupdone", 0, 0);
    v20 = [MEMORY[0x277D7FBE8] sharedSecurityInfo];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __33__ATLegacyDeviceSyncManager_init__block_invoke;
    v22[3] = &unk_2784E5938;
    v23 = v2;
    [v20 performBlockAfterFirstUnlock:v22];
  }

  return v2;
}

uint64_t __33__ATLegacyDeviceSyncManager_init__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _sendSyncAllowed];
  }

  return result;
}

+ (id)legacyDeviceSyncManager
{
  v2 = objc_alloc_init(ATLegacyDeviceSyncManager);

  return v2;
}

@end