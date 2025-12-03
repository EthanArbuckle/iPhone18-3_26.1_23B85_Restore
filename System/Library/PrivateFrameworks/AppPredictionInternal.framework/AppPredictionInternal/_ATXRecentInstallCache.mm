@interface _ATXRecentInstallCache
- (id)_allRecentlyInstalledApplicationsAfterExpirationDate:(id)date;
- (id)_getRecentInstallationsMap;
- (id)allRecentlyInstalledApplications;
- (id)initTrackingAppsMoreRecentThan:(double)than;
- (id)initTrackingAppsMoreRecentThan:(double)than installMonitor:(id)monitor uninstallMonitor:(id)uninstallMonitor;
- (void)_notifiedOfInstalls:(id)installs;
- (void)_notifiedOfUninstalls:(id)uninstalls;
- (void)reset;
@end

@implementation _ATXRecentInstallCache

- (id)initTrackingAppsMoreRecentThan:(double)than installMonitor:(id)monitor uninstallMonitor:(id)uninstallMonitor
{
  monitorCopy = monitor;
  uninstallMonitorCopy = uninstallMonitor;
  if (than >= 0.0)
  {
    if (monitorCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_ATXRecentInstallCache initTrackingAppsMoreRecentThan:a2 installMonitor:self uninstallMonitor:?];
    if (uninstallMonitorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_ATXRecentInstallCache initTrackingAppsMoreRecentThan:a2 installMonitor:self uninstallMonitor:?];
  if (!monitorCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (uninstallMonitorCopy)
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
    v12->_ttl = than;
    v14 = objc_opt_new();
    recentInstallations = v13->_recentInstallations;
    v13->_recentInstallations = v14;

    objc_initWeak(&location, v13);
    objc_storeStrong(&v13->_installNotificationMonitor, monitor);
    installNotificationMonitor = v13->_installNotificationMonitor;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __89___ATXRecentInstallCache_initTrackingAppsMoreRecentThan_installMonitor_uninstallMonitor___block_invoke;
    v21[3] = &unk_278597FF8;
    objc_copyWeak(&v22, &location);
    [(_ATXInternalInstallNotification *)installNotificationMonitor registerForNotificationsWithInstallBlock:v21];
    objc_storeStrong(&v13->_uninstallNotificationMonitor, uninstallMonitor);
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

- (id)initTrackingAppsMoreRecentThan:(double)than
{
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(_ATXRecentInstallCache *)self initTrackingAppsMoreRecentThan:v5 installMonitor:v6 uninstallMonitor:than];

  return v7;
}

- (void)_notifiedOfInstalls:(id)installs
{
  v18 = *MEMORY[0x277D85DE8];
  installsCopy = installs;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = installsCopy;
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
        [(NSMutableDictionary *)selfCopy->_recentInstallations setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifiedOfUninstalls:(id)uninstalls
{
  uninstallsCopy = uninstalls;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recentInstallations = selfCopy->_recentInstallations;
  allObjects = [uninstallsCopy allObjects];
  [(NSMutableDictionary *)recentInstallations removeObjectsForKeys:allObjects];

  objc_sync_exit(selfCopy);
}

- (id)allRecentlyInstalledApplications
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-self->_ttl];
  v4 = [(_ATXRecentInstallCache *)self _allRecentlyInstalledApplicationsAfterExpirationDate:v3];

  return v4;
}

- (id)_allRecentlyInstalledApplicationsAfterExpirationDate:(id)date
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = objc_opt_new();
  v18 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = selfCopy->_recentInstallations;
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
        v11 = [(NSMutableDictionary *)selfCopy->_recentInstallations objectForKeyedSubscript:v10];
        v12 = [v11 earlierDate:dateCopy];
        v13 = [v12 isEqualToDate:dateCopy];

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

  [(NSMutableDictionary *)selfCopy->_recentInstallations removeObjectsForKeys:v5];
  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_getRecentInstallationsMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_recentInstallations copy];
  objc_sync_exit(selfCopy);

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