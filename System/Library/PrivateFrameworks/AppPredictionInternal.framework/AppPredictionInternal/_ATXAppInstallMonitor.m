@interface _ATXAppInstallMonitor
+ (id)appInfoDictWithBackDate:(BOOL)a3 assetData:(id)a4 newPreInstalledAppSet:(id)a5 isFromNotification:(BOOL)a6 newApps:(id)a7;
+ (id)newPreInstalledAppSet;
+ (id)removeIntersectionBetweenSet:(id)a3 set:(id)a4;
- (BOOL)restoreInProgress;
- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)a3;
- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)a3 histogramBundleIdTable:(id)a4 appIconState:(id)a5 webClipDataStore:(id)a6 shouldSynchronousUpdate:(BOOL)a7;
- (id)_fetchAllAppsFromDatastore;
- (id)_fetchAllAppsWithInstallDateFromDatastore;
- (id)webClipsForRemovedApps:(id)a3;
- (void)_receivedInstallNotificationWithApps:(id)a3 placeholderInstallNotification:(BOOL)a4;
- (void)_receivedUninstallNotificationWithApps:(id)a3 placeholderUninstallNotification:(BOOL)a4;
- (void)dealloc;
- (void)handleUninstallationOfApps:(id)a3;
- (void)notifyInstallationOfAppsWithInstallDictionary:(id)a3;
- (void)notifyUninstallationOfAppsWithBundleIdsToRemoveSet:(id)a3;
- (void)receivedInstallNotification:(id)a3;
- (void)receivedStateChangeNotification:(id)a3;
- (void)receivedUninstallNotification:(id)a3;
- (void)setUpdateCompletionBlock:(id)a3;
- (void)start;
- (void)stop;
- (void)synchronousUpdateWithUninstallWaitTime:(unint64_t)a3 andBackdate:(BOOL)a4;
- (void)train;
@end

@implementation _ATXAppInstallMonitor

- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)a3
{
  v4 = a3;
  v5 = +[ATXHistogramBundleIdTable sharedInstance];
  v6 = +[_ATXAppIconState sharedInstance];
  v7 = objc_opt_new();
  v8 = [(_ATXAppInstallMonitor *)self initWithAppInfoManager:v4 histogramBundleIdTable:v5 appIconState:v6 webClipDataStore:v7 shouldSynchronousUpdate:1];

  return v8;
}

- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)a3 histogramBundleIdTable:(id)a4 appIconState:(id)a5 webClipDataStore:(id)a6 shouldSynchronousUpdate:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v29.receiver = self;
  v29.super_class = _ATXAppInstallMonitor;
  v17 = [(_ATXAppInstallMonitor *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_appInfoManager, a3);
    objc_storeStrong(&v18->_histogramBundleIdTable, a4);
    objc_storeStrong(&v18->_appIconState, a5);
    objc_storeStrong(&v18->_webClipDataStore, a6);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.duetexpertd._ATXAppInstallMonitor.installQueue", v19);
    installQueue = v18->_installQueue;
    v18->_installQueue = v20;

    v22 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    assetData = v18->_assetData;
    v18->_assetData = v22;

    v24 = [objc_opt_class() newPreInstalledAppSet];
    preInstalledNewSystemApps = v18->_preInstalledNewSystemApps;
    v18->_preInstalledNewSystemApps = v24;

    v26 = [v13 allAppsWithInstallDate];
    if (![v26 count] && v7)
    {
      [(_ATXAppInstallMonitor *)v18 synchronousUpdateAndBackdate:1];
    }

    v27 = __atxlog_handle_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppInstallMonitor initWithAppInfoManager:histogramBundleIdTable:appIconState:webClipDataStore:shouldSynchronousUpdate:];
    }
  }

  return v18;
}

- (void)start
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_receivedInstallNotification_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_receivedUninstallNotification_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
}

- (void)stop
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
}

- (void)dealloc
{
  [(_ATXAppInstallMonitor *)self stop];
  v3.receiver = self;
  v3.super_class = _ATXAppInstallMonitor;
  [(_ATXAppInstallMonitor *)&v3 dealloc];
}

- (void)train
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default();
  v4 = os_signpost_id_generate(v3);

  v5 = __atxlog_handle_default();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v10 = 136446210;
    v11 = "_ATXInstallMonitor";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v10, 0xCu);
  }

  [(_ATXAppInstallMonitor *)self synchronousUpdateAndBackdate:0];
  v7 = __atxlog_handle_default();
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = 136446210;
    v11 = "_ATXInstallMonitor";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v8, OS_SIGNPOST_INTERVAL_END, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)restoreInProgress
{
  v2 = [MEMORY[0x277CEA468] sessionsWithSessionTypeIdentifier:*MEMORY[0x277CEA410]];
  v3 = [v2 count];
  v4 = __atxlog_handle_default();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      [_ATXAppInstallMonitor restoreInProgress];
    }
  }

  else if (v5)
  {
    [_ATXAppInstallMonitor restoreInProgress];
  }

  return v3 != 0;
}

- (void)synchronousUpdateWithUninstallWaitTime:(unint64_t)a3 andBackdate:(BOOL)a4
{
  installQueue = self->_installQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76___ATXAppInstallMonitor_synchronousUpdateWithUninstallWaitTime_andBackdate___block_invoke;
  block[3] = &unk_278598C48;
  block[4] = self;
  block[5] = a3;
  v6 = a4;
  dispatch_sync(installQueue, block);
}

- (void)receivedStateChangeNotification:(id)a3
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "app install monitor got LS state change notification", v4, 2u);
  }

  ATXUpdatePredictionsImmediatelyWithReason(17);
}

- (void)receivedInstallNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"bundleIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 copy];
    v8 = [v5 objectForKeyedSubscript:@"isPlaceholder"];
    v9 = [v8 BOOLValue];

    if ([v7 count])
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "applications installed: %@", &v12, 0xCu);
      }

      [(_ATXAppInstallMonitor *)self _receivedInstallNotificationWithApps:v7 placeholderInstallNotification:v9];
    }
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(_ATXAppInstallMonitor *)v4 receivedInstallNotification:v7];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_receivedInstallNotificationWithApps:(id)a3 placeholderInstallNotification:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [ATXInternalAppRegistrationNotification postNotificationWithInstallDictionary:v6];
  v7 = [MEMORY[0x277CBEB58] setWithArray:v6];
  v8 = [(_ATXAppInstallMonitor *)self _fetchAllAppsWithInstallDateFromDatastore];
  [v7 minusSet:v8];
  v9 = [v7 count];
  if (v4)
  {
    if (v9)
    {
      v29 = v8;
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = v7;
        v41 = 1024;
        v42 = 1;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Applications Installed: %@; isPlaceholder: %{BOOL}u", buf, 0x12u);
      }

      v11 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = v6;
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            if ([MEMORY[0x277CEB3B8] isInstallingForBundle:v17])
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v14);
      }

      if ([v11 count])
      {
        v18 = [v7 allObjects];
        v19 = [(_ATXAppInstallMonitor *)self _appInfoDictWithBackDate:0 isFromNotification:1 newApps:v18];

        [ATXInternalAppsInstallStartNotification postNotificationWithInstallStartDictionary:v19];
      }

      v8 = v29;
    }

    else
    {
      v11 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = v6;
      v22 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v35;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v34 + 1) + 8 * j);
            if ([MEMORY[0x277CEB3B8] isOffloadedForBundle:v26])
            {
              [v11 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v23);
      }

      if ([v11 count])
      {
        [ATXInternalOffloadAppsNotification postNotificationWithOffloadSet:v11];
        v27 = __atxlog_handle_default();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "app install monitor got app offload notification", buf, 2u);
        }
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  if (v9)
  {
    v20 = __atxlog_handle_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = v7;
      v41 = 1024;
      v42 = 0;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "Applications Installed: %@; isPlaceholder: %{BOOL}u", buf, 0x12u);
    }

    v11 = [v7 allObjects];
    [(_ATXAppInstallMonitor *)self handleInstallationOfApps:v11 isFromNotification:1 andBackdate:0];
    goto LABEL_34;
  }

LABEL_35:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)receivedUninstallNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v5 copy];

  v7 = [v4 objectForKeyedSubscript:@"isPlaceholder"];
  v8 = [v7 BOOLValue];

  if (v6)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "applications uninstalled: %@", &v11, 0xCu);
    }

    [(_ATXAppInstallMonitor *)self _receivedUninstallNotificationWithApps:v6 placeholderUninstallNotification:v8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_receivedUninstallNotificationWithApps:(id)a3 placeholderUninstallNotification:(BOOL)a4
{
  if (!a4)
  {
    [(_ATXAppInstallMonitor *)self handleUninstallationOfApps:a3];
  }
}

+ (id)newPreInstalledAppSet
{
  v2 = [MEMORY[0x277D42590] isiPad];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  if (v2)
  {
    v5 = [v4 initWithObjects:{@"com.apple.games", @"com.apple.Preview", @"com.apple.mobilephone", @"com.apple.journal", 0}];
  }

  else
  {
    v5 = [v4 initWithObjects:{@"com.apple.games", @"com.apple.Preview", 0, v8, v9}];
  }

  v6 = v5;
  objc_autoreleasePoolPop(v3);
  return v6;
}

+ (id)appInfoDictWithBackDate:(BOOL)a3 assetData:(id)a4 newPreInstalledAppSet:(id)a5 isFromNotification:(BOOL)a6 newApps:(id)a7
{
  v48 = a6;
  v61 = *MEMORY[0x277D85DE8];
  v44 = a4;
  v47 = a5;
  v9 = a7;
  v46 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0x277CEB000uLL;
    v49 = *v53;
    *&v12 = 138412546;
    v43 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v52 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = __atxlog_handle_app_install();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v57 = v16;
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: Adding install date for recently installed app: %@", buf, 0xCu);
        }

        if ([*(v14 + 952) isAppClipForBundleId:v16])
        {
          v19 = __atxlog_handle_app_install();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          *buf = 138412290;
          v57 = v16;
          v20 = v19;
          v21 = "ATXAppInstallMonitor: Not adding app clip to appInfoDict: %@";
LABEL_14:
          _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
          goto LABEL_46;
        }

        if ([*(v14 + 952) isLaunchProhibitedForBundle:v16])
        {
          v19 = __atxlog_handle_app_install();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          *buf = 138412290;
          v57 = v16;
          v20 = v19;
          v21 = "ATXAppInstallMonitor: Launch prohibited for bundle: %@";
          goto LABEL_14;
        }

        v22 = [*(v14 + 952) registrationDateForBundle:v16];
        v23 = __atxlog_handle_app_install();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v57 = v22;
          v58 = 2112;
          v59 = v16;
          _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: LS install date: %{public}@ for: %@", buf, 0x16u);
        }

        if (!v22 && v48)
        {
          v24 = __atxlog_handle_app_install();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            [_ATXAppInstallMonitor appInfoDictWithBackDate:v51 assetData:v24 newPreInstalledAppSet:? isFromNotification:? newApps:?];
          }

          v22 = objc_opt_new();
        }

        if (a3 || [*(v14 + 952) isRestoreInstallTypeForBundle:v16])
        {
          v25 = [v44 objectForKeyedSubscript:{@"Backdate time for backup restore apps", v43}];
          if (v44 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v26 = -[NSObject dateByAddingTimeInterval:](v22, "dateByAddingTimeInterval:", -[v25 integerValue]);
          }

          else
          {
            v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1.0];
          }

          v19 = v26;

          v27 = __atxlog_handle_app_install();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v43;
            v57 = v16;
            v58 = 2114;
            v59 = v19;
            _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: Backdating install date for: %@ to: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v19 = v22;
        }

        v28 = v10;
        v29 = [objc_opt_class() appDirectoryAppCategoryMappings];
        v30 = [v29 count];
        v31 = MEMORY[0x277CBEB98];
        if (v30)
        {
          v32 = [v29 allKeys];
          v33 = [v31 setWithArray:v32];
        }

        else
        {
          v33 = objc_opt_new();
        }

        v34 = [v47 containsObject:{v16, v43}];
        v35 = [v33 containsObject:v16];
        v36 = [MEMORY[0x277CEB3B8] isAppleOwnedIncludingInternalOrSystemAppForBundleId:v16] ^ 1 | v34;
        if (!v48)
        {
          v10 = v28;
          if (v36)
          {
            goto LABEL_45;
          }

          v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1.0];

          v38 = __atxlog_handle_app_install();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          *buf = 138412290;
          v57 = v16;
          v39 = v38;
          v40 = "ATXAppInstallMonitor: No LS notification: Backdating install date for system or internal app that is not new in in the current OS version - %@";
          goto LABEL_43;
        }

        v10 = v28;
        if ((v36 | v35))
        {
          goto LABEL_45;
        }

        v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1.0];

        v38 = __atxlog_handle_app_install();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v57 = v16;
          v39 = v38;
          v40 = "ATXAppInstallMonitor: LS notification: Backdating install date for system or internal app that is not approved or new in the current OS version - %@";
LABEL_43:
          _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 0xCu);
        }

LABEL_44:

        v19 = v37;
LABEL_45:
        [v46 setObject:v19 forKeyedSubscript:v16];

        v14 = 0x277CEB000;
LABEL_46:

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v13);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v46;
}

- (void)handleUninstallationOfApps:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_ATXAppInstallMonitor *)self webClipsForRemovedApps:v4];
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Removing data for uninstalled app(s): %@ and app clip(s): %@", &v10, 0x16u);
  }

  v7 = [v4 arrayByAddingObjectsFromArray:v5];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  if ([v4 count])
  {
    [(_ATXAppInstallMonitor *)self notifyUninstallationOfAppsWithBundleIdsToRemoveSet:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyInstallationOfAppsWithInstallDictionary:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: Received app install notification: %@", &v7, 0xCu);
  }

  [_ATXInternalInstallNotification postNotificationWithInstallDictionary:v4];
  [(_ATXAppInfoManager *)self->_appInfoManager handleAppInstallWithInstallDict:v4];
  ATXUpdatePredictionsImmediatelyWithReason(16);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyUninstallationOfAppsWithBundleIdsToRemoveSet:(id)a3
{
  histogramBundleIdTable = self->_histogramBundleIdTable;
  v5 = a3;
  [_ATXInternalUninstallNotification postNotificationWithUninstallSet:v5 histogramBundleIdTable:histogramBundleIdTable];
  [(_ATXAppInfoManager *)self->_appInfoManager handleAppUninstallWithUninstalledAppSet:v5];

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "App install monitor got app uninstall notification", v7, 2u);
  }

  ATXUpdatePredictionsImmediatelyWithReason(16);
}

- (id)webClipsForRemovedApps:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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

        v11 = [(ATXWebClipDataStore *)self->_webClipDataStore webClipBundleIdsForAppClip:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_fetchAllAppsFromDatastore
{
  v2 = [(_ATXAppInfoManager *)self->_appInfoManager allApps];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)_fetchAllAppsWithInstallDateFromDatastore
{
  v2 = [(_ATXAppInfoManager *)self->_appInfoManager allAppsWithInstallDate];
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)removeIntersectionBetweenSet:(id)a3 set:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = [v8 count];
  v10 = v8;
  v11 = v7;
  if (v9 < [v7 count])
  {

    v10 = v7;
    v11 = v8;
  }

  v12 = [v11 mutableCopy];
  [v12 intersectSet:v10];
  [v7 minusSet:v12];
  [v8 minusSet:v12];

  return v12;
}

- (void)setUpdateCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  updateCompletionBlock = self->_updateCompletionBlock;
  self->_updateCompletionBlock = v4;

  MEMORY[0x2821F96F8]();
}

- (void)receivedInstallNotification:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Invalid value for kLSNotificationBundleIDsKey in install notification: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)appInfoDictWithBackDate:(os_log_t)log assetData:newPreInstalledAppSet:isFromNotification:newApps:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXAppInstallMonitor: LS app registration date shouldn't be nil, falling back to now", buf, 2u);
}

@end