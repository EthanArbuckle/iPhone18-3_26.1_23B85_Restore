@interface _ATXRecentInstallCache
- (id)_allRecentlyInstalledApplicationsAfterExpirationDate:(id)a3;
- (id)_getRecentInstallationsMap;
- (id)allRecentlyInstalledApplications;
- (id)initTrackingAppsMoreRecentThan:(double)a3;
- (id)initTrackingAppsMoreRecentThan:(double)a3 installMonitor:(id)a4 uninstallMonitor:(id)a5;
- (void)_notifiedOfInstalls:(id)a3;
- (void)_notifiedOfUninstalls:(id)a3;
- (void)reset;
@end

@implementation _ATXRecentInstallCache

- (id)initTrackingAppsMoreRecentThan:(double)a3 installMonitor:(id)a4 uninstallMonitor:(id)a5
{
  v10 = a4;
  v11 = a5;
  if (a3 >= 0.0)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_ATXRecentInstallCache initTrackingAppsMoreRecentThan:a2 installMonitor:self uninstallMonitor:?];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_ATXRecentInstallCache initTrackingAppsMoreRecentThan:a2 installMonitor:self uninstallMonitor:?];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  [_ATXRecentInstallCache initTrackingAppsMoreRecentThan:a2 installMonitor:self uninstallMonitor:?];
LABEL_4:
  v24.receiver = self;
  v24.super_class = _ATXRecentInstallCache;
  v12 = [(_ATXRecentInstallCache *)&v24 init];
  v13 = v12;
  if (v12)
  {
    v12->_ttl = a3;
    v14 = objc_opt_new();
    recentInstallations = v13->_recentInstallations;
    v13->_recentInstallations = v14;

    objc_initWeak(&location, v13);
    objc_storeStrong(&v13->_installNotificationMonitor, a4);
    installNotificationMonitor = v13->_installNotificationMonitor;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __89___ATXRecentInstallCache_initTrackingAppsMoreRecentThan_installMonitor_uninstallMonitor___block_invoke;
    v21[3] = &unk_278597FF8;
    objc_copyWeak(&v22, &location);
    [(_ATXInternalInstallNotification *)installNotificationMonitor registerForNotificationsWithInstallBlock:v21];
    objc_storeStrong(&v13->_uninstallNotificationMonitor, a5);
    uninstallNotificationMonitor = v13->_uninstallNotificationMonitor;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __89___ATXRecentInstallCache_initTrackingAppsMoreRecentThan_installMonitor_uninstallMonitor___block_invoke_2;
    v19[3] = &unk_278596DA0;
    objc_copyWeak(&v20, &location);
    [(_ATXInternalUninstallNotification *)uninstallNotificationMonitor registerForNotificationsWithUninstallBlock:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (id)initTrackingAppsMoreRecentThan:(double)a3
{
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(_ATXRecentInstallCache *)self initTrackingAppsMoreRecentThan:v5 installMonitor:v6 uninstallMonitor:a3];

  return v7;
}

- (void)_notifiedOfInstalls:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:{v10, v13}];
        [(NSMutableDictionary *)v5->_recentInstallations setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifiedOfUninstalls:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  recentInstallations = v4->_recentInstallations;
  v6 = [v7 allObjects];
  [(NSMutableDictionary *)recentInstallations removeObjectsForKeys:v6];

  objc_sync_exit(v4);
}

- (id)allRecentlyInstalledApplications
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-self->_ttl];
  v4 = [(_ATXRecentInstallCache *)self _allRecentlyInstalledApplicationsAfterExpirationDate:v3];

  return v4;
}

- (id)_allRecentlyInstalledApplicationsAfterExpirationDate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v18 = objc_opt_new();
  v6 = self;
  objc_sync_enter(v6);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v6->_recentInstallations;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)v6->_recentInstallations objectForKeyedSubscript:v10];
        v12 = [v11 earlierDate:v4];
        v13 = [v12 isEqualToDate:v4];

        if (v13)
        {
          v14 = v18;
        }

        else
        {
          v14 = v5;
        }

        [v14 addObject:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)v6->_recentInstallations removeObjectsForKeys:v5];
  objc_sync_exit(v6);

  v15 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_getRecentInstallationsMap
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_recentInstallations copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  v2 = objc_opt_new();
  recentInstallations = obj->_recentInstallations;
  obj->_recentInstallations = v2;

  objc_sync_exit(obj);
}

- (void)initTrackingAppsMoreRecentThan:(uint64_t)a1 installMonitor:(uint64_t)a2 uninstallMonitor:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXRecentInstallCache.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"ttl >= 0"}];
}

- (void)initTrackingAppsMoreRecentThan:(uint64_t)a1 installMonitor:(uint64_t)a2 uninstallMonitor:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXRecentInstallCache.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"installMonitor != nil"}];
}

- (void)initTrackingAppsMoreRecentThan:(uint64_t)a1 installMonitor:(uint64_t)a2 uninstallMonitor:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXRecentInstallCache.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"uninstallMonitor != nil"}];
}

@end