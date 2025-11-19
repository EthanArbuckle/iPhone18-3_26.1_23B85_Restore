@interface _ATXAppInfoManager
+ (_ATXAppInfoManager)sharedInstance;
+ (id)sortArrayAndComputeMedian:(id)a3;
- (BOOL)hasRemoteApps;
- (_ATXAppInfoManager)initWithDataStore:(id)a3;
- (_ATXAppInfoManager)initWithInMemoryStore;
- (id)_appInfoNoLockForBundleId:(id)a3;
- (id)allActionKeys;
- (id)allApps;
- (id)allAppsLaunchedOrInstalledWithin30Days;
- (id)allAppsWithInstallDate;
- (id)allRemoteApps;
- (id)app2VecClusterForBundleId:(id)a3;
- (id)appInfoForBundleId:(id)a3;
- (id)averageSecondsBetweenAppActionsForActionKey:(id)a3;
- (id)averageSecondsBetweenLaunchesForBundleId:(id)a3;
- (id)bundleIDForRemoteAppWithUUID:(id)a3;
- (id)genreIdForBundleId:(id)a3;
- (id)genreIdsForBundleId:(id)a3;
- (id)lastAppActionLaunch;
- (id)lastAppActionLaunchDate;
- (id)lastAppActionLaunchDateForActionKey:(id)a3;
- (id)lastAppLaunch;
- (id)lastAppLaunchDate;
- (id)lastLaunchDateForBundleId:(id)a3;
- (id)lastUnlockDate;
- (id)medianSecondsBetweenAppActionsForActionKey:(id)a3;
- (id)medianSecondsBetweenLaunchesForBundleId:(id)a3;
- (id)secondMostRecentAppLaunch;
- (id)stopInstallDeltaRecording;
- (id)subGenreIdsForBundleId:(id)a3;
- (id)totalSlotsInDatastore;
- (int64_t)launchedAppCount;
- (void)addAverageSecondsBetweenAppActionsForActionKey:(id)a3 average:(id)a4;
- (void)addAverageSecondsBetweenLaunchesForBundleId:(id)a3 average:(id)a4;
- (void)addExtensionLaunchForBundleId:(id)a3 date:(id)a4;
- (void)addInstallForBundleId:(id)a3 date:(id)a4;
- (void)addInstallForBundleInfoMap:(id)a3;
- (void)addLaunchForAppAction:(id)a3 date:(id)a4;
- (void)addLaunchForBundleId:(id)a3 date:(id)a4;
- (void)addMedianSecondsBetweenAppActionsForActionKey:(id)a3 median:(id)a4;
- (void)addMedianSecondsBetweenLaunchesForBundleId:(id)a3 median:(id)a4;
- (void)addScreenLockAtDate:(id)a3;
- (void)addSpotlightLaunchForBundleId:(id)a3 date:(id)a4;
- (void)appLaunchesCalculations:(id)a3;
- (void)clearAppInstallInfo;
- (void)clearAppLaunchInfo;
- (void)computeAverageAndMedianSecondsBetweenAppActions;
- (void)computeAverageAndMedianSecondsBetweenAppActions:(id)a3;
- (void)computeAverageAndMedianSecondsBetweenAppLaunches;
- (void)dealloc;
- (void)deleteAllRemoteApps;
- (void)removeActionDataForBundleId:(id)a3;
- (void)removeAppInfoForBundleId:(id)a3;
- (void)removeAppInfoForBundleIds:(id)a3;
- (void)removeAppLaunchesForBundleId:(id)a3;
- (void)removeBundleIds:(id)a3;
- (void)removeUninstalledApps;
- (void)startInstallDeltaRecording;
- (void)train;
- (void)updateApp2VecClusterForBundleId:(id)a3 app2VecCluster:(id)a4;
- (void)updateApp2VecClustersForAllApps;
- (void)updateDatabaseWithRemoteAppsInfo;
- (void)updateGenreIdsForAllApps;
- (void)updateGenreIdsForBundleId:(id)a3 genreId:(id)a4 subGenreIds:(id)a5;
- (void)updateInstallDateForBundleID:(id)a3 timestamp:(double)a4;
@end

@implementation _ATXAppInfoManager

+ (_ATXAppInfoManager)sharedInstance
{
  if (sharedInstance__pasOnceToken7_28 != -1)
  {
    +[_ATXAppInfoManager sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_35;

  return v3;
}

- (_ATXAppInfoManager)initWithInMemoryStore
{
  v3 = [[_ATXDataStore alloc] initWithInMemoryDataStore];
  v4 = [(_ATXAppInfoManager *)self initWithDataStore:v3];

  return v4;
}

- (_ATXAppInfoManager)initWithDataStore:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(_ATXAppInfoManager *)a2 initWithDataStore:?];
  }

  v12.receiver = self;
  v12.super_class = _ATXAppInfoManager;
  v7 = [(_ATXAppInfoManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataStore, a3);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_10;
    }

    pthread_rwlock_init(&v8->_rwlock, 0);
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppInstallMonitor initWithAppInfoManager:histogramBundleIdTable:appIconState:webClipDataStore:shouldSynchronousUpdate:];
    }
  }

  v10 = v8;
LABEL_10:

  return v10;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = _ATXAppInfoManager;
  [(_ATXAppInfoManager *)&v3 dealloc];
}

- (id)_appInfoNoLockForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_ATXDataStore *)self->_dataStore appInfoForBundleId:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)appInfoForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)lastLaunchDateForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  v6 = [v5 lastLaunch];

  pthread_rwlock_unlock(&self->_rwlock);

  return v6;
}

- (id)averageSecondsBetweenLaunchesForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  v6 = [v5 averageSecondsBetweenLaunches];

  pthread_rwlock_unlock(&self->_rwlock);

  return v6;
}

- (id)medianSecondsBetweenLaunchesForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  v6 = [v5 medianSecondsBetweenLaunches];

  pthread_rwlock_unlock(&self->_rwlock);

  return v6;
}

- (id)genreIdForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  v6 = [v5 genreId];

  pthread_rwlock_unlock(&self->_rwlock);

  return v6;
}

- (id)subGenreIdsForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  v6 = [v5 subGenreIds];
  v7 = [v6 copy];

  pthread_rwlock_unlock(&self->_rwlock);

  return v7;
}

- (id)genreIdsForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  v6 = [v5 genreId];
  v7 = [v5 subGenreIds];
  v8 = [v7 copy];

  pthread_rwlock_unlock(&self->_rwlock);
  v9 = [MEMORY[0x277D42648] tupleWithFirst:v6 second:v8];

  return v9;
}

- (id)app2VecClusterForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v4];

  v6 = [v5 app2VecCluster];

  pthread_rwlock_unlock(&self->_rwlock);

  return v6;
}

- (id)lastAppLaunch
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore lastLaunchedApp];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)secondMostRecentAppLaunch
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore nthMostRecentAppLaunch:1];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)lastAppLaunchDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore lastLaunchDate];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)allActionKeys
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore loadAppActionsFromAppActionInfo];
  pthread_rwlock_unlock(&self->_rwlock);
  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

- (id)totalSlotsInDatastore
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore totalSlotsInDatastore];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)lastAppActionLaunch
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore loadAppActionInfo];
  v4 = [v3 first];
  pthread_rwlock_unlock(&self->_rwlock);

  return v4;
}

- (id)lastAppActionLaunchDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore loadAppActionInfo];
  v4 = [v3 second];
  pthread_rwlock_unlock(&self->_rwlock);

  return v4;
}

- (id)lastAppActionLaunchDateForActionKey:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore lastAppActionLaunchDateForAppAction:v4];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)averageSecondsBetweenAppActionsForActionKey:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore averageSecondsBetweenAppActionsForAppAction:v4];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)medianSecondsBetweenAppActionsForActionKey:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore medianSecondsBetweenAppActionsForAppAction:v4];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)lastUnlockDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore appInfoForBundleId:@"com.apple.DEC.AppPredictionInternal.backlightActivated"];
  v4 = [v3 lastLaunch];

  pthread_rwlock_unlock(&self->_rwlock);

  return v4;
}

- (int64_t)launchedAppCount
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore launchedAppCount];
  pthread_rwlock_unlock(&self->_rwlock);
  return v3;
}

- (id)allApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore allApps];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)allRemoteApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore allRemoteApps];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)allAppsWithInstallDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore allAppsWithInstallDate];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)allAppsLaunchedOrInstalledWithin30Days
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore allAppsLaunchedOrInstalledWithin30Days];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)bundleIDForRemoteAppWithUUID:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore bundleIDForRemoteAppWithUUID:v4];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (BOOL)hasRemoteApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore hasRemoteApps];
  pthread_rwlock_unlock(&self->_rwlock);
  return v3;
}

- (void)deleteAllRemoteApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore deleteAllRemoteApps];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)updateDatabaseWithRemoteAppsInfo
{
  pthread_rwlock_rdlock(&self->_rwlock);
  if (![(_ATXDataStore *)self->_dataStore updatedDatabaseWithExistingRemoteApps])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppInfoManager updateDatabaseWithRemoteAppsInfo];
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)updateGenreIdsForBundleId:(id)a3 genreId:(id)a4 subGenreIds:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  pthread_rwlock_wrlock(&self->_rwlock);
  v10 = objc_autoreleasePoolPush();
  v11 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v21];
  if (!v11)
  {
    pthread_rwlock_unlock(&self->_rwlock);
    objc_autoreleasePoolPop(v10);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 genreId];
  if (![v8 isEqual:v13])
  {
    goto LABEL_11;
  }

  v14 = [v12 subGenreIds];
  v15 = v9;
  v16 = v14;
  v17 = v16;
  if (v16 != v15)
  {
    if (v15 && v16)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
      v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v17];
      v20 = [v18 isEqualToSet:v19];

      if (v20)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:
LABEL_12:
    [v12 setGenreId:v8];
    [v12 setSubGenreIds:v9];
    [(_ATXDataStore *)self->_dataStore writeGenreId:v8 subGenreIds:v9 forBundleId:v21];
    goto LABEL_13;
  }

LABEL_13:
  objc_autoreleasePoolPop(v10);
  pthread_rwlock_unlock(&self->_rwlock);
LABEL_14:
}

- (void)updateApp2VecClusterForBundleId:(id)a3 app2VecCluster:(id)a4
{
  v11 = a3;
  v6 = a4;
  pthread_rwlock_wrlock(&self->_rwlock);
  v7 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:v11];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 app2VecCluster];
    v10 = [v6 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      [v8 setApp2VecCluster:v6];
      [(_ATXDataStore *)self->_dataStore writeApp2VecCluster:v6 forBundleId:v11];
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addInstallForBundleId:(id)a3 date:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(_ATXAppInfoManager *)self addInstallForBundleInfoMap:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)addInstallForBundleInfoMap:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        if (ATXIsRemoteAppBundleId())
        {
          [v4 addObject:v11];
        }

        else
        {
          v12 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v30 = v5;
    v31 = v4;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v5;
    v34 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v34)
    {
      v33 = *v37;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * j);
          v15 = objc_autoreleasePoolPush();
          v16 = v6;
          v17 = [v6 objectForKeyedSubscript:v14];
          v18 = __atxlog_handle_app_install();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v46 = v17;
            v47 = 2112;
            v48 = v14;
            _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXAppInfoManager: Adding install date %{public}@ for bundleId %@", buf, 0x16u);
          }

          v19 = [ATXLaunchServicesHelper getGenreIdsForBundleId:v14 remoteBundleIDMappings:0];
          v20 = [v19 first];
          v21 = v20;
          v22 = &unk_283A56E10;
          if (v20)
          {
            v22 = v20;
          }

          v23 = v22;

          v24 = [v19 second];
          v25 = +[ATXApp2VecClustering sharedInstance];
          v26 = [v25 getClosestClusterCentroidForBundleId:v14];

          pthread_rwlock_wrlock(&self->_rwlock);
          [(_ATXDataStore *)self->_dataStore addAppInstallForBundleId:v14 date:v17 genreId:v23 subGenreIds:v24 app2VecCluster:v26];

          installDeltaLog = self->_installDeltaLog;
          if (installDeltaLog)
          {
            v44[0] = v14;
            v44[1] = v17;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
            [(NSMutableArray *)installDeltaLog addObject:v28];
          }

          pthread_rwlock_unlock(&self->_rwlock);

          objc_autoreleasePoolPop(v15);
          v6 = v16;
        }

        v34 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v34);
    }

    v5 = v30;
    v4 = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateInstallDateForBundleID:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore updateInstallDateForBundleID:v6 timestamp:a4];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addExtensionLaunchForBundleId:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addExtensionLaunchForBundleId:v7 date:v6];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addLaunchForBundleId:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addAppLaunchForBundleId:v7 date:v6 withLaunchType:0];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addLaunchForAppAction:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addAppActionLaunchForAppAction:v7 date:v6];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addSpotlightLaunchForBundleId:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addAppLaunchForBundleId:v7 date:v6 withLaunchType:1];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addAverageSecondsBetweenLaunchesForBundleId:(id)a3 average:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeAverageSecondsBetweenLaunches:v6 forBundleId:v7];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addMedianSecondsBetweenLaunchesForBundleId:(id)a3 median:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeMedianSecondsBetweenLaunches:v6 forBundleId:v7];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addAverageSecondsBetweenAppActionsForActionKey:(id)a3 average:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeAverageSecondsBetweenAppActions:v6 forAppAction:v7];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addMedianSecondsBetweenAppActionsForActionKey:(id)a3 median:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeMedianSecondsBetweenAppActions:v6 forAppAction:v7];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addScreenLockAtDate:(id)a3
{
  if (a3)
  {
    [(_ATXAppInfoManager *)self addLaunchForBundleId:@"com.apple.DEC.AppPredictionInternal.backlightActivated" date:a3];
  }
}

- (void)removeAppInfoForBundleId:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  [(_ATXAppInfoManager *)self removeAppInfoForBundleIds:v4];
}

- (void)removeAppInfoForBundleIds:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = __atxlog_handle_deletions();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "_ATXAppInfoManager: Uninstall occurred for %@ - Deleting appInfo and action data related to it.", buf, 0xCu);
        }

        [(_ATXDataStore *)self->_dataStore removeAppInfoForBundleId:v10];
        [(_ATXDataStore *)self->_dataStore removeActionDataForBundleId:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->_rwlock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeAppLaunchesForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore removeAppLaunchesForBundleId:v4];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)removeActionDataForBundleId:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore removeActionDataForBundleId:v4];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)clearAppLaunchInfo
{
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore clearAppLaunchInfo];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)clearAppInstallInfo
{
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore clearAppInstallInfo];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)startInstallDeltaRecording
{
  pthread_rwlock_wrlock(&self->_rwlock);
  v3 = objc_opt_new();
  installDeltaLog = self->_installDeltaLog;
  self->_installDeltaLog = v3;

  pthread_rwlock_unlock(&self->_rwlock);
}

- (id)stopInstallDeltaRecording
{
  pthread_rwlock_wrlock(&self->_rwlock);
  v3 = self->_installDeltaLog;
  installDeltaLog = self->_installDeltaLog;
  self->_installDeltaLog = 0;

  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (void)train
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default();
  v4 = os_signpost_id_generate(v3);

  v5 = __atxlog_handle_default();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v20 = 136446210;
    v21 = "_ATXAppInfoManager";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v20, 0xCu);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self updateGenreIdsForAllApps];
  objc_autoreleasePoolPop(v7);
  v9 = objc_autoreleasePoolPush();
  v10 = __atxlog_handle_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self updateApp2VecClustersForAllApps];
  objc_autoreleasePoolPop(v9);
  v11 = objc_autoreleasePoolPush();
  v12 = __atxlog_handle_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self computeAverageAndMedianSecondsBetweenAppLaunches];
  objc_autoreleasePoolPop(v11);
  v13 = objc_autoreleasePoolPush();
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self computeAverageAndMedianSecondsBetweenAppActions];
  objc_autoreleasePoolPop(v13);
  v15 = objc_autoreleasePoolPush();
  v16 = __atxlog_handle_default();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self removeUninstalledApps];
  objc_autoreleasePoolPop(v15);
  v17 = __atxlog_handle_default();
  v18 = v17;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = 136446210;
    v21 = "_ATXAppInfoManager";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v18, OS_SIGNPOST_INTERVAL_END, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v20, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeUninstalledApps
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(_ATXDataStore *)self->_dataStore removeAppInfoForBundleIdsNotInSet:v3];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)sortArrayAndComputeMedian:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    [v3 sortUsingSelector:sel_compare_];
    v4 = [v3 count];
    v5 = v4 + (v4 >> 31);
    v6 = [v3 count];
    v7 = [v3 objectAtIndexedSubscript:v5 >> 1];
    v8 = v7;
    if ((v6 & 1) == 0)
    {
      [v7 doubleValue];
      v10 = v9;
      v11 = [v3 objectAtIndexedSubscript:(v5 >> 1) - 1];
      [v11 doubleValue];
      v13 = (v10 + v12) * 0.5;

      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)computeAverageAndMedianSecondsBetweenAppLaunches
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CEBBE0]);
  v6 = [MEMORY[0x277CBEAA8] now];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70___ATXAppInfoManager_computeAverageAndMedianSecondsBetweenAppLaunches__block_invoke;
  v10[3] = &unk_278596DC8;
  v11 = v4;
  v7 = v4;
  [v5 enumerateAppLaunchSessionsBetweenStartDate:v3 endDate:v6 shouldReverse:1 bundleIDFilter:0 block:v10];

  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 allObjects];
  [(_ATXAppInfoManager *)self appLaunchesCalculations:v9];
}

- (void)appLaunchesCalculations:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v47 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v51 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 bundleID];
        v13 = [v4 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = objc_opt_new();
          [v4 setObject:v14 forKeyedSubscript:v12];
        }

        v15 = [v5 objectForKeyedSubscript:v12];

        if (!v15)
        {
          [v5 setObject:v47 forKeyedSubscript:v12];
        }

        v16 = [v10 appSessionStartTime];
        if (v16)
        {
          v17 = v16;
          v18 = [v5 objectForKeyedSubscript:v12];

          if (v18)
          {
            v19 = [v10 appSessionStartTime];
            v20 = [v5 objectForKeyedSubscript:v12];
            [v19 timeIntervalSinceDate:v20];
            v22 = v21;

            v23 = [v4 objectForKeyedSubscript:v12];
            v24 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
            [v23 addObject:v24];

            v25 = MEMORY[0x277CCABB0];
            v26 = [v51 objectForKeyedSubscript:v12];
            [v26 doubleValue];
            v28 = [v25 numberWithDouble:v22 + v27];
            [v51 setObject:v28 forKeyedSubscript:v12];
          }
        }

        v29 = [v10 appSessionEndTime];
        if (v29)
        {
          [v5 setObject:v29 forKeyedSubscript:v12];
        }

        else
        {
          v30 = [v10 appSessionStartTime];
          [v5 setObject:v30 forKeyedSubscript:v12];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v7);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v31 = [(_ATXAppInfoManager *)self allApps];
  v32 = [v31 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v32)
  {
    v33 = v32;
    v49 = *v53;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v52 + 1) + 8 * j);
        v36 = objc_autoreleasePoolPush();
        v37 = [v51 objectForKeyedSubscript:v35];

        if (v37)
        {
          v38 = [v51 objectForKeyedSubscript:v35];
          [v38 doubleValue];
          v40 = v39;
          v41 = [v4 objectForKeyedSubscript:v35];
          v42 = v40 / [v41 count];

          v43 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenLaunchesForBundleId:v35 average:v43];

          v44 = [v4 objectForKeyedSubscript:v35];
          v45 = [_ATXAppInfoManager sortArrayAndComputeMedian:v44];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenLaunchesForBundleId:v35 median:v45];
        }

        else
        {
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenLaunchesForBundleId:v35 average:0];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenLaunchesForBundleId:v35 median:0];
        }

        objc_autoreleasePoolPop(v36);
      }

      v33 = [v31 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v33);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)computeAverageAndMedianSecondsBetweenAppActions
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [v4 getCombinedIntentEventsBetweenStartDate:v6 endDate:v3 ascending:1];

  [(_ATXAppInfoManager *)self computeAverageAndMedianSecondsBetweenAppActions:v5];
}

- (void)computeAverageAndMedianSecondsBetweenAppActions:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v46 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v3;
  v51 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v51)
  {
    v48 = *v58;
    do
    {
      v7 = 0;
      do
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v57 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = MEMORY[0x277CEB2C8];
        v11 = [v8 bundleId];
        v12 = [v8 intentType];
        v13 = [v10 getActionKeyForBundleId:v11 actionType:v12];

        v14 = [v4 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = objc_opt_new();
          [v4 setObject:v15 forKeyedSubscript:v13];
        }

        v16 = [v5 objectForKeyedSubscript:v13];

        if (!v16)
        {
          [v5 setObject:v46 forKeyedSubscript:v13];
        }

        v17 = [v8 startDate];
        v18 = [v5 objectForKeyedSubscript:v13];
        [v17 timeIntervalSinceDate:v18];
        v20 = v19;

        v21 = [v4 objectForKeyedSubscript:v13];
        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
        [v21 addObject:v22];

        v23 = MEMORY[0x277CCABB0];
        v24 = [v6 objectForKeyedSubscript:v13];
        [v24 doubleValue];
        v26 = [v23 numberWithDouble:v20 + v25];
        [v6 setObject:v26 forKeyedSubscript:v13];

        v27 = [v8 endDate];
        [v5 setObject:v27 forKeyedSubscript:v13];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v51 != v7);
      v51 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v51);
  }

  v28 = [(_ATXAppInfoManager *)self allActionKeys];
  v29 = [v6 allKeys];
  v30 = [v28 setByAddingObjectsFromArray:v29];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v49 = v30;
  v31 = [v49 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v31)
  {
    v32 = v31;
    v52 = *v54;
    do
    {
      v33 = 0;
      do
      {
        if (*v54 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v34 = *(*(&v53 + 1) + 8 * v33);
        v35 = objc_autoreleasePoolPush();
        v36 = [v6 objectForKeyedSubscript:v34];

        if (v36)
        {
          v37 = [v6 objectForKeyedSubscript:v34];
          [v37 doubleValue];
          v39 = v38;
          v40 = [v4 objectForKeyedSubscript:v34];
          v41 = v39 / [v40 count];

          v42 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenAppActionsForActionKey:v34 average:v42];

          v43 = [v4 objectForKeyedSubscript:v34];
          v44 = [_ATXAppInfoManager sortArrayAndComputeMedian:v43];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenAppActionsForActionKey:v34 median:v44];
        }

        else
        {
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenLaunchesForBundleId:v34 average:0];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenLaunchesForBundleId:v34 median:0];
        }

        objc_autoreleasePoolPop(v35);
        ++v33;
      }

      while (v32 != v33);
      v32 = [v49 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v32);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)updateGenreIdsForAllApps
{
  v23 = *MEMORY[0x277D85DE8];
  [(_ATXAppInfoManager *)self allApps];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [ATXLaunchServicesHelper getGenreIdsForBundleId:v7 remoteBundleIDMappings:0];
        v10 = [v9 first];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &unk_283A56E10;
        }

        v13 = [v9 second];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = MEMORY[0x277CBEBF8];
        }

        [(_ATXAppInfoManager *)self updateGenreIdsForBundleId:v7 genreId:v12 subGenreIds:v15];

        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateApp2VecClustersForAllApps
{
  v3 = [(_ATXAppInfoManager *)self allApps];
  v4 = [v3 allObjects];
  v11 = [v4 mutableCopy];

  v5 = +[ATXApp2VecClustering sharedInstance];
  v6 = [v5 getClusterCentroidsForBundleIds:v11];
  if ([v11 count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v11 objectAtIndexedSubscript:v7];
      v10 = [v6 objectAtIndexedSubscript:v7];
      [(_ATXAppInfoManager *)self updateApp2VecClusterForBundleId:v9 app2VecCluster:v10];

      objc_autoreleasePoolPop(v8);
      ++v7;
    }

    while ([v11 count] > v7);
  }
}

- (void)removeBundleIds:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(_ATXAppInfoManager *)self removeAppLaunchesForBundleId:v9];
        [(_ATXAppInfoManager *)self removeActionDataForBundleId:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppInfoManager.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"dataStore"}];
}

@end