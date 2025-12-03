@interface _ATXDataStore
+ (BOOL)isSqliteData:(id)data;
+ (BOOL)pareDownForBackup:(sqlite3 *)backup;
+ (_ATXDataStore)sharedInstance;
+ (id)loadDataFromFile:(id)file;
+ (id)removeSensitiveInformationFromModeEntityScoresFile:(id)file shouldBackupContacts:(BOOL)contacts;
+ (id)stringForHistogramType:(int64_t)type;
+ (void)_simulateCrashForMigrationFailure:(id)failure;
- (BOOL)_removeActionsWithoutTitle;
- (BOOL)_reset;
- (BOOL)actionExistsForBundleId:(id)id actionType:(id)type;
- (BOOL)alogContainsActionUUID:(id)d;
- (BOOL)containsActionType:(id)type;
- (BOOL)hasOrphanSlotSetKeys;
- (BOOL)hasRemoteApps;
- (BOOL)migrationUpdateOrInsertTimestamp:(int64_t)timestamp intoColumn:(id)column forBundleId:(id)id;
- (BOOL)restoreFromBackup:(id)backup;
- (BOOL)writeSlotSetKeyParameters:(id)parameters rowId:(id)id slotSet:(id)set success:(int64_t *)success;
- (_ATXDataStore)init;
- (_ATXDataStore)initWithInMemoryDataStore;
- (_ATXDataStore)initWithPath:(id)path andAppInFocusStream:(id)stream;
- (_PASDBIterAction_)_deserializeActionLogRowWithStmt:(id)stmt invokingBlock:(id)block;
- (id)_allAppsRequireInstallDate:(BOOL)date;
- (id)_appInfoForBundleIdNoSync:(id)sync;
- (id)_databaseSchema;
- (id)_lastAppLaunchDateOfType:(int64_t)type;
- (id)_trimMigrationPlan:(id)plan toSchema:(unint64_t)schema;
- (id)actionAndSlotsForRowId:(id)id;
- (id)actionFeedbackLogKeys;
- (id)actionForSlotUUID:(id)d;
- (id)actionLogKeys;
- (id)allActionsAndSlots;
- (id)allAppsLaunchedOrInstalledWithin30Days;
- (id)allRemoteApps;
- (id)appInfoForBundleId:(id)id;
- (id)appIntentDuetEventsForActionsBetweenStartDate:(id)date endDate:(id)endDate;
- (id)appLaunchSequence;
- (id)averageSecondsBetweenAppActionsForAppAction:(id)action;
- (id)blobOfType:(int64_t)type;
- (id)bundleIDForRemoteAppWithUUID:(id)d;
- (id)bundleIdMapping;
- (id)categoricalHistogramDataForHistogramType:(int64_t)type;
- (id)fetchParameterizedSuggestionWithUniqueIdentifier:(id)identifier;
- (id)filenamesAndDataForBackupShouldPareDown:(BOOL)down transport:(unint64_t)transport;
- (id)histogramDataForHistogramType:(int64_t)type;
- (id)isEligibleForWidgetsForCacheKey:(id)key;
- (id)lastAppActionLaunchDateForAppAction:(id)action;
- (id)lastLaunchedApp;
- (id)lastMessageToRecipient:(id)recipient;
- (id)loadAppActionInfo;
- (id)loadAppActionLaunchesFollowing:(id)following;
- (id)loadAppActionsFromAppActionInfo;
- (id)loadAppInfo;
- (id)loadLaunchesFollowingBundle:(id)bundle;
- (id)loadTopNAppActionsByPredictions:(unint64_t)predictions;
- (id)medianSecondsBetweenAppActionsForAppAction:(id)action;
- (id)minimalActionParametersforActionsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit;
- (id)nthMostRecentAppLaunch:(int64_t)launch;
- (id)numActionKeyOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
- (id)subtitleForCacheKey:(id)key;
- (id)supportsBackgroundExecutionForCacheKey:(id)key;
- (id)titleForCacheKey:(id)key;
- (id)totalNumberOfActionTypesForBundleId:(id)id;
- (id)totalSlotsInDatastore;
- (id)validParameterCombinationsWithSchemaForCacheKey:(id)key;
- (id)webClipsForAppClipBundleId:(id)id;
- (int64_t)_regenerateSlotSetKeyForBundleId:(id)id;
- (int64_t)_regenerateSlotSetKeys;
- (int64_t)configureDatabase;
- (int64_t)currentSchemaVersion;
- (int64_t)launchedAppCount;
- (int64_t)migrateToVersion:(unint64_t)version withMigrationPlan:(id)plan;
- (int64_t)migration_AddEnterpriseAppInfo;
- (int64_t)migration_AddExtensionInfo;
- (int64_t)migration_AddFeedbackColumns;
- (int64_t)migration_AppLaunchHistogramToTable;
- (int64_t)migration_DelinkFromCoreLocationVisitMonitoring;
- (int64_t)migration_DeprecateGenericAppIntentModels;
- (int64_t)migration_DeprecateIntentForAllAppsHistograms;
- (int64_t)migration_InstallDateToAppTable;
- (int64_t)migration_LaunchHistoriesToAppTable;
- (int64_t)migration_RecreatePredictionFeedbackInfo;
- (int64_t)migration_RemoveCachedConsumerDB;
- (int64_t)migration_RemoveDeprecatedStartCallIntents;
- (int64_t)migration_RemoveFeedbackForUninstalledApps;
- (int64_t)migration_RemoveLinkActions;
- (int64_t)migration_RemoveRestoreUserDefault;
- (int64_t)migration_SlotSetKeyCreation;
- (int64_t)migration_deleteAllTrainedRelevanceModels;
- (int64_t)migration_deleteFocusSpaceCaches;
- (int64_t)migration_forceUpdateNewAzulSystemAppsInstallDate;
- (int64_t)migration_forceUpdateNewCrystalSystemAppsInstallDate;
- (int64_t)migration_moveCacheFiles;
- (int64_t)migration_overrideNilInstallDateToDistantOldTime;
- (int64_t)migration_populateModeCaches;
- (int64_t)migration_purgeExpensiveCachesFromUserDefaults;
- (int64_t)migration_removeAnchorModelDirectory;
- (int64_t)migration_removeBrokenBlendingStream;
- (int64_t)migration_removeHomeScreenWidgetBlacklistFile;
- (int64_t)migration_removeOldStackStateTrackerFile;
- (int64_t)migration_updateNewAzulSystemAppsInstallDate;
- (int64_t)migration_updateNewCrystalSystemAppsInstallDate;
- (int64_t)runMigrationPlan:(id)plan;
- (int64_t)skipFromZeroSchema;
- (int64_t)updateAlog:(id)alog slotsToMigrate:(id)migrate;
- (unint64_t)numActionKeyOccurrencesForActionKey:(id)key startDate:(id)date endDate:(id)endDate;
- (unint64_t)numActionParameterHashOccurrencesForActionKey:(id)key parameterHash:(unint64_t)hash startDate:(id)date endDate:(id)endDate;
- (unint64_t)numBundleIdOccurrencesForBundleId:(id)id startDate:(id)date endDate:(id)endDate;
- (void)_disconnectFromDb;
- (void)_doAsync:(id)async;
- (void)_enumerateAppInfoAppActionsExecutingBlock:(id)block;
- (void)_enumerateAppInfoBundlesExecutingBlock:(id)block;
- (void)_handleLocalAppInstallForBundleId:(id)id date:(id)date genreId:(id)genreId subGenreIds:(id)ids app2VecCluster:(id)cluster;
- (void)_markBundleId:(id)id asEnterpriseApp:(BOOL)app;
- (void)_markBundleIdAsExtension:(id)extension;
- (void)_markBundleIdsAsExtension:(id)extension;
- (void)_removeFeedbackForBundleId:(id)id;
- (void)_reset;
- (void)_testMigrate;
- (void)_testMigrateToSchema:(unint64_t)schema;
- (void)addAppActionLaunchForAppAction:(id)action date:(id)date;
- (void)addAppInstallForBundleId:(id)id date:(id)date genreId:(id)genreId subGenreIds:(id)ids app2VecCluster:(id)cluster;
- (void)addAppLaunchForAppLaunchSequence:(id)sequence date:(id)date;
- (void)addAppLaunchForBundleId:(id)id date:(id)date withLaunchType:(int64_t)type;
- (void)addCategoricalHistogramData:(id)data forHistogramOfType:(int64_t)type;
- (void)addExtensionLaunchForBundleId:(id)id date:(id)date;
- (void)addHistogramData:(id)data forHistogramOfType:(int64_t)type;
- (void)clearAppInstallInfo;
- (void)clearAppLaunchInfo;
- (void)clearDatabase;
- (void)deleteAllRemoteApps;
- (void)deleteLaunchesFollowingAppAction:(id)action;
- (void)deleteLaunchesFollowingBundle:(id)bundle;
- (void)deleteParameterizedSuggestionWithUniqueIdentifier:(id)identifier;
- (void)deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases;
- (void)enumerateActionOfType:(id)type bundleId:(id)id block:(id)block;
- (void)enumerateActionTypesOlderThan:(id)than block:(id)block;
- (void)enumerateActionsInUUIDSet:(id)set block:(id)block;
- (void)enumerateAppInfoAppActionsExecutingBlock:(id)block;
- (void)enumerateAppInfoBundlesExecutingBlock:(id)block;
- (void)enumerateFeedbackForActionOfType:(id)type bundleId:(id)id block:(id)block;
- (void)enumerateSlotUuidsOfType:(id)type bundleId:(id)id block:(id)block;
- (void)enumerateStateForApps:(id)apps withGlobalBlock:(id)block thenWithPerAppBlock:(id)appBlock readOnly:(BOOL)only;
- (void)integrityCheckOrAbort;
- (void)migrate;
- (void)migrateWithMigrationPlan:(id)plan;
- (void)migrationPre44WriteActionType:(id)type bundleId:(id)id date:(id)date action:(id)action slotSets:(id)sets timeZone:(id)zone prevLocationUUID:(id)d locationUUID:(id)self0 weight:(double)self1 actionUUID:(id)self2 motionType:(int64_t)self3;
- (void)migration_DeprecateGenericAppIntentModels;
- (void)migration_InstallDateToAppTable;
- (void)migration_RemoveLinkActions;
- (void)migration_removeAnchorModelDirectory;
- (void)migration_removeBrokenBlendingStream;
- (void)migration_removeHomeScreenWidgetBlacklistFile;
- (void)migration_removeOldStackStateTrackerFile;
- (void)pruneMessageRecipientsAddedBefore:(id)before;
- (void)recordConfirms:(double)confirms rejects:(double)rejects forFeedbackType:(unint64_t)type forActionType:(id)actionType bundleId:(id)id action:(id)action slotSet:(id)set actionUUID:(id)self0 date:(id)self1 consumerSubType:(unsigned __int8)self2 geohash:(int64_t)self3 coarseGeohash:(int64_t)self4;
- (void)recordParamererizedSuggestionWithUniqueIdentifier:(id)identifier encodedTool:(id)tool encodedSummary:(id)summary;
- (void)regenerateSlotSetKeyForBundleId:(id)id;
- (void)removeActionDataForActionUUID:(id)d;
- (void)removeActionDataForActionUUIDs:(id)ds;
- (void)removeActionDataForBundleId:(id)id;
- (void)removeActionsWithoutTitle;
- (void)removeAllAppActionPredictionFeedbackCounts;
- (void)removeAllCachedIntents;
- (void)removeAllFeedback;
- (void)removeAllSlotsFromActionFeedback;
- (void)removeAllSlotsFromActionLog;
- (void)removeAllSlotsFromSlotSetKey;
- (void)removeAppInfoForBundleId:(id)id;
- (void)removeAppInfoForBundleIdsNotInSet:(id)set;
- (void)removeAppLaunchesForBundleId:(id)id;
- (void)removeCachedIntentsWithBundleId:(id)id;
- (void)removeFeedbackForBundleId:(id)id;
- (void)resetAllRecordedParameterizedSuggestions;
- (void)setInstallDateToDistantOldTimeForRemoteApps:(id)apps;
- (void)skipFromZeroSchema;
- (void)swapInAppInFocusStream:(id)stream;
- (void)trimActionHistoryWithAppWhitelist:(id)whitelist;
- (void)updateInstallDateForBundleID:(id)d timestamp:(double)timestamp;
- (void)updateOrInsertApp2VecCluster:(id)cluster forBundleId:(id)id;
- (void)updateOrInsertAverageSecondsBetweenAppActions:(id)actions forAppAction:(id)action;
- (void)updateOrInsertAverageSecondsBetweenLaunches:(id)launches forBundleId:(id)id;
- (void)updateOrInsertCategoricalHistogramData:(id)data forHistogram:(int64_t)histogram;
- (void)updateOrInsertDataForRemoteAppsWithMappings:(id)mappings;
- (void)updateOrInsertGenreId:(id)id subGenreIds:(id)ids forBundleId:(id)bundleId;
- (void)updateOrInsertHistogramData:(id)data forHistogram:(int64_t)histogram;
- (void)updateOrInsertInstallTimestamp:(int64_t)timestamp genreId:(id)id subGenreIds:(id)ids app2VecCluster:(id)cluster forBundleId:(id)bundleId isExtension:(BOOL)extension isEnterpriseApp:(BOOL)app;
- (void)updateOrInsertMedianSecondsBetweenAppActions:(id)actions forAppAction:(id)action;
- (void)updateOrInsertMedianSecondsBetweenLaunches:(id)launches forBundleId:(id)id;
- (void)updateOrInsertMessageRecipient:(id)recipient dateMessaged:(id)messaged;
- (void)updateOrInsertPredictionsAndFeedbackForAppAction:(id)action feedbackReceived:(BOOL)received forUIType:(id)type;
- (void)updateOrInsertSubsequentAppActionLaunchCountData:(id)data forAppAction:(id)action;
- (void)updateOrInsertSubsequentLaunchCountData:(id)data forBundleId:(id)id;
- (void)updateOrInsertTimestamp:(int64_t)timestamp forAppAction:(id)action;
- (void)updateOrInsertTimestamp:(int64_t)timestamp intoColumn:(id)column forBundleId:(id)id isExtension:(BOOL)extension;
- (void)updateSchemaVersionNumberTo:(int64_t)to;
- (void)vacuumDatabaseWithActivity:(id)activity;
- (void)writeActionType:(id)type bundleId:(id)id date:(id)date action:(id)action slotSets:(id)sets timeZone:(id)zone prevLocationUUID:(id)d locationUUID:(id)self0 weight:(double)self1 actionUUID:(id)self2 motionType:(int64_t)self3 appSessionStartDate:(id)self4 appSessionEndDate:(id)self5 geohash:(int64_t)self6 coarseGeohash:(int64_t)self7;
- (void)writeApp2VecCluster:(id)cluster forBundleId:(id)id;
- (void)writeAppActionLaunches:(id)launches followingAppAction:(id)action;
- (void)writeAverageSecondsBetweenAppActions:(id)actions forAppAction:(id)action;
- (void)writeAverageSecondsBetweenLaunches:(id)launches forBundleId:(id)id;
- (void)writeBlob:(id)blob type:(int64_t)type expirationDate:(id)date;
- (void)writeEligibleForWidgets:(BOOL)widgets cacheKey:(id)key;
- (void)writeGenreId:(id)id subGenreIds:(id)ids forBundleId:(id)bundleId;
- (void)writeLaunches:(id)launches followingBundle:(id)bundle;
- (void)writeMedianSecondsBetweenAppActions:(id)actions forAppAction:(id)action;
- (void)writeMedianSecondsBetweenLaunches:(id)launches forBundleId:(id)id;
- (void)writeSubtitle:(id)subtitle cacheKey:(id)key;
- (void)writeSupportsBackgroundExecution:(BOOL)execution cacheKey:(id)key;
- (void)writeTitle:(id)title cacheKey:(id)key;
- (void)writeValidParameterCombinationsWithSchema:(id)schema cacheKey:(id)key;
- (void)writeWebClip:(id)clip appClip:(id)appClip;
@end

@implementation _ATXDataStore

+ (_ATXDataStore)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[_ATXDataStore sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

- (BOOL)_removeActionsWithoutTitle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43___ATXDataStore__removeActionsWithoutTitle__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASSqliteDatabase *)db writeTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)writeValidParameterCombinationsWithSchema:(id)schema cacheKey:(id)key
{
  schemaCopy = schema;
  keyCopy = key;
  v8 = objc_autoreleasePoolPush();
  v16 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:schemaCopy requiringSecureCoding:1 error:&v16];
  v10 = v16;
  objc_autoreleasePoolPop(v8);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore(IntentCache) writeValidParameterCombinationsWithSchema:cacheKey:];
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81___ATXDataStore_IntentCache__writeValidParameterCombinationsWithSchema_cacheKey___block_invoke;
    v13[3] = &unk_278597828;
    v13[4] = self;
    v14 = keyCopy;
    v15 = v9;
    [(_ATXDataStore *)self _doSync:v13];
  }
}

- (id)validParameterCombinationsWithSchemaForCacheKey:(id)key
{
  keyCopy = key;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke;
  v18[3] = &unk_2785987E0;
  v18[4] = self;
  v5 = keyCopy;
  v19 = v5;
  v20 = &v21;
  [(_ATXDataStore *)self _doSync:v18];
  if (v22[5])
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 initWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = v22[5];
    v17 = 0;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v11 error:&v17];
    v13 = v17;
    if (v13)
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(_ATXDataStore(IntentCache) *)v13 validParameterCombinationsWithSchemaForCacheKey:v14];
      }

      v15 = 0;
    }

    else
    {
      v15 = v12;
    }
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v15;
}

- (void)writeSupportsBackgroundExecution:(BOOL)execution cacheKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72___ATXDataStore_IntentCache__writeSupportsBackgroundExecution_cacheKey___block_invoke;
  v8[3] = &unk_278598A00;
  v8[4] = self;
  v9 = keyCopy;
  executionCopy = execution;
  v7 = keyCopy;
  [(_ATXDataStore *)self _doSync:v8];
}

- (id)supportsBackgroundExecutionForCacheKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke;
  v8[3] = &unk_2785987E0;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  v10 = &v11;
  [(_ATXDataStore *)self _doSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)writeTitle:(id)title cacheKey:(id)key
{
  titleCopy = title;
  keyCopy = key;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50___ATXDataStore_IntentCache__writeTitle_cacheKey___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = keyCopy;
  v12 = titleCopy;
  v8 = titleCopy;
  v9 = keyCopy;
  [(_ATXDataStore *)self _doSync:v10];
}

- (id)titleForCacheKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke;
  v8[3] = &unk_2785987E0;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  v10 = &v11;
  [(_ATXDataStore *)self _doSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)writeSubtitle:(id)subtitle cacheKey:(id)key
{
  subtitleCopy = subtitle;
  keyCopy = key;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53___ATXDataStore_IntentCache__writeSubtitle_cacheKey___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = keyCopy;
  v12 = subtitleCopy;
  v8 = subtitleCopy;
  v9 = keyCopy;
  [(_ATXDataStore *)self _doSync:v10];
}

- (id)subtitleForCacheKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke;
  v8[3] = &unk_2785987E0;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  v10 = &v11;
  [(_ATXDataStore *)self _doSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)writeEligibleForWidgets:(BOOL)widgets cacheKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXDataStore_IntentCache__writeEligibleForWidgets_cacheKey___block_invoke;
  v8[3] = &unk_278598A00;
  v8[4] = self;
  v9 = keyCopy;
  widgetsCopy = widgets;
  v7 = keyCopy;
  [(_ATXDataStore *)self _doSync:v8];
}

- (id)isEligibleForWidgetsForCacheKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke;
  v8[3] = &unk_2785987E0;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  v10 = &v11;
  [(_ATXDataStore *)self _doSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)removeCachedIntentsWithBundleId:(id)id
{
  idCopy = id;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62___ATXDataStore_IntentCache__removeCachedIntentsWithBundleId___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = idCopy;
  v5 = idCopy;
  [(_ATXDataStore *)self _doSync:v6];
}

- (void)removeAllCachedIntents
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52___ATXDataStore_IntentCache__removeAllCachedIntents__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(_ATXDataStore *)self _doSync:v2];
}

- (id)webClipsForAppClipBundleId:(id)id
{
  idCopy = id;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXDataStore_WebClip__webClipsForAppClipBundleId___block_invoke;
  v8[3] = &unk_2785987E0;
  v8[4] = self;
  v5 = idCopy;
  v9 = v5;
  v10 = &v11;
  [(_ATXDataStore *)self _doSync:v8];
  v6 = [v12[5] copy];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)writeWebClip:(id)clip appClip:(id)appClip
{
  clipCopy = clip;
  appClipCopy = appClip;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47___ATXDataStore_WebClip__writeWebClip_appClip___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = clipCopy;
  v12 = appClipCopy;
  v8 = appClipCopy;
  v9 = clipCopy;
  [(_ATXDataStore *)self _doSync:v10];
}

- (_ATXDataStore)initWithInMemoryDataStore
{
  v3 = objc_opt_new();
  v4 = [(_ATXDataStore *)self initWithPath:@":memory:" andAppInFocusStream:v3];

  return v4;
}

- (_ATXDataStore)init
{
  v3 = +[_ATXDataStore defaultPath];
  v4 = objc_opt_new();
  v5 = [(_ATXDataStore *)self initWithPath:v3 andAppInFocusStream:v4];

  return v5;
}

- (_ATXDataStore)initWithPath:(id)path andAppInFocusStream:(id)stream
{
  v44[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  streamCopy = stream;
  if (!pathCopy)
  {
    [_ATXDataStore initWithPath:andAppInFocusStream:];
  }

  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore initWithPath:andAppInFocusStream:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Cannot call _ATXDataStore init until class c unlocked"];
    [MEMORY[0x277D42578] simulateCrashWithDescription:@"Cannot call _ATXDataStore init until class c unlocked"];
  }

  if (([MEMORY[0x277D42630] isInMemoryPath:pathCopy] & 1) == 0)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager attributesOfFileSystemForPath:pathCopy error:0];

    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
    v12 = v11;
    if (v11 && [v11 longLongValue] < 0x8000)
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [_ATXDataStore initWithPath:andAppInFocusStream:];
      }

      pathCopy = @":memory:";
    }
  }

  v43.receiver = self;
  v43.super_class = _ATXDataStore;
  v14 = [(_ATXDataStore *)&v43 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_path, pathCopy);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.duetexpertd._ATXDataStore", v16);
    queue = v15->_queue;
    v15->_queue = v17;

    v15->_actionHistoryLengthPerAppAction = 200;
    objc_storeStrong(&v15->_appInFocusStream, stream);
    featureIdentifier = [MEMORY[0x277CEB338] featureIdentifier];
    v20 = featureIdentifier;
    v21 = @"DEC";
    if (featureIdentifier)
    {
      v21 = featureIdentifier;
    }

    v22 = v21;

    v23 = +[_ATXDataStoreMigrations migrations];
    v24 = [v23 count];

    v25 = objc_alloc(MEMORY[0x277D41DB8]);
    v26 = [MEMORY[0x277D41DA0] propertyWithName:@"from_version" range:{0, v24 + 1}];
    v44[0] = v26;
    v27 = [MEMORY[0x277D41DA0] propertyWithName:@"to_version" range:{0, v24 + 1}];
    v44[1] = v27;
    v28 = [MEMORY[0x277D41DA0] propertyWithName:@"result" possibleValues:&unk_283A57EC0 autoSanitizeValues:0];
    v44[2] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v30 = [v25 initWithFeatureId:v22 event:@"db_migrate" registerProperties:v29];

    dbMigrationTracker = v15->_dbMigrationTracker;
    v15->_dbMigrationTracker = v30;

    v32 = [MEMORY[0x277D42630] corruptionMarkerPathForPath:v15->_path];
    if (([MEMORY[0x277D42630] isInMemoryPath:v15->_path] & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v34 = [defaultManager2 fileExistsAtPath:v32];

      if (v34)
      {
        v35 = __atxlog_handle_default();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 0;
          _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "Corruption marker detected; flushing data store.", v42, 2u);
        }

        [MEMORY[0x277D42630] truncateDatabaseAtPath:v15->_path];
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager3 removeItemAtPath:v32 error:0];
      }
    }

    v37 = __atxlog_handle_default();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Initializing the data store.", v42, 2u);
    }

    if (![(_ATXDataStore *)v15 _reset])
    {

      v39 = 0;
      goto LABEL_30;
    }

    v38 = __atxlog_handle_default();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Done initializing the data store.", v42, 2u);
    }
  }

  v39 = v15;
LABEL_30:

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (void)_disconnectFromDb
{
  db = self->_db;
  if (db)
  {
    [(_PASSqliteDatabase *)db closePermanently];
    v4 = self->_db;
    self->_db = 0;
  }
}

- (BOOL)_reset
{
  if (self->_db)
  {
    [(_ATXDataStore *)self _disconnectFromDb];
  }

  path = self->_path;
  v10 = 0;
  v4 = [MEMORY[0x277D42630] sqliteDatabaseWithFilename:path contentProtection:3 errorHandler:0 error:&v10];
  v5 = v10;
  db = self->_db;
  self->_db = v4;

  if (self->_db)
  {
    [(_ATXDataStore *)self configureDatabase];
    [(_ATXDataStore *)self migrate];
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_ATXDataStore *)&self->_path _reset];
    }

    [(_ATXDataStore *)self _disconnectFromDb];
  }

  v8 = self->_db != 0;

  return v8;
}

- (void)_doAsync:(id)async
{
  asyncCopy = async;
  pthread_mutex_lock(&_doAsync__txnLock);
  if (!_doAsync__txn)
  {
    v5 = os_transaction_create();
    v6 = _doAsync__txn;
    _doAsync__txn = v5;
  }

  ++_doAsync__txnCount;
  pthread_mutex_unlock(&_doAsync__txnLock);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26___ATXDataStore__doAsync___block_invoke;
  block[3] = &unk_2785969B8;
  v10 = asyncCopy;
  v8 = asyncCopy;
  dispatch_async(queue, block);
}

- (void)removeFeedbackForBundleId:(id)id
{
  idCopy = id;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43___ATXDataStore_removeFeedbackForBundleId___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = idCopy;
  v5 = idCopy;
  [(_ATXDataStore *)self _doAsync:v6];
}

- (void)removeAllFeedback
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34___ATXDataStore_removeAllFeedback__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)removeAllAppActionPredictionFeedbackCounts
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___ATXDataStore_removeAllAppActionPredictionFeedbackCounts__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)pruneMessageRecipientsAddedBefore:(id)before
{
  beforeCopy = before;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51___ATXDataStore_pruneMessageRecipientsAddedBefore___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = beforeCopy;
  v6 = beforeCopy;
  dispatch_sync(queue, v7);
}

- (void)_removeFeedbackForBundleId:(id)id
{
  idCopy = id;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44___ATXDataStore__removeFeedbackForBundleId___block_invoke;
  v8[3] = &unk_278598768;
  v9 = idCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___ATXDataStore__removeFeedbackForBundleId___block_invoke_2;
  v7[3] = &unk_2785987B8;
  v7[4] = self;
  v6 = idCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM app WHERE bundleId=?" onPrep:v8 onRow:0 onError:v7];
}

- (void)enumerateStateForApps:(id)apps withGlobalBlock:(id)block thenWithPerAppBlock:(id)appBlock readOnly:(BOOL)only
{
  appsCopy = apps;
  blockCopy = block;
  appBlockCopy = appBlock;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke;
  block[3] = &unk_27859C438;
  v18 = appsCopy;
  selfCopy = self;
  onlyCopy = only;
  v20 = blockCopy;
  v21 = appBlockCopy;
  v14 = appBlockCopy;
  v15 = blockCopy;
  v16 = appsCopy;
  dispatch_sync(queue, block);
}

- (void)vacuumDatabaseWithActivity:(id)activity
{
  v18 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  [activityCopy setProgressUnits:10];
  if (([(_PASSqliteDatabase *)self->_db isInMemory]& 1) == 0)
  {
    db = self->_db;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44___ATXDataStore_vacuumDatabaseWithActivity___block_invoke;
    v14[3] = &unk_27859C460;
    v6 = activityCopy;
    v15 = v6;
    v13 = 0;
    v7 = [(_PASSqliteDatabase *)db vacuumWithShouldContinueBlock:v14 error:&v13];
    v8 = v13;
    [v6 setProgressUnits:95];
    if (v8)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_ATXDataStore vacuumDatabaseWithActivity:];
      }
    }

    [v6 setDone];
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXDataStore: vacuum completed: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addAppInstallForBundleId:(id)id date:(id)date genreId:(id)genreId subGenreIds:(id)ids app2VecCluster:(id)cluster
{
  idCopy = id;
  dateCopy = date;
  genreIdCopy = genreId;
  clusterCopy = cluster;
  idsCopy = MEMORY[0x277CBEBF8];
  if (ids)
  {
    idsCopy = ids;
  }

  v17 = idsCopy;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82___ATXDataStore_addAppInstallForBundleId_date_genreId_subGenreIds_app2VecCluster___block_invoke;
  v23[3] = &unk_27859BD78;
  v23[4] = self;
  v24 = idCopy;
  v25 = dateCopy;
  v26 = genreIdCopy;
  v27 = v17;
  v28 = clusterCopy;
  v18 = clusterCopy;
  v19 = v17;
  v20 = genreIdCopy;
  v21 = dateCopy;
  v22 = idCopy;
  [(_ATXDataStore *)self _doAsync:v23];
}

- (void)_handleLocalAppInstallForBundleId:(id)id date:(id)date genreId:(id)genreId subGenreIds:(id)ids app2VecCluster:(id)cluster
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dateCopy = date;
  clusterCopy = cluster;
  idsCopy = ids;
  genreIdCopy = genreId;
  v17 = [ATXLaunchServicesHelper bundleIsExtension:idCopy];
  v18 = [MEMORY[0x277CEB3B8] isEnterpriseAppForBundle:idCopy];
  v19 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = idCopy;
    v25 = 2114;
    v26 = dateCopy;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Writing install date for %@ with date: %{public}@", buf, 0x16u);
  }

  [dateCopy timeIntervalSinceReferenceDate];
  LOBYTE(v22) = v18;
  [(_ATXDataStore *)self updateOrInsertInstallTimestamp:v20 genreId:genreIdCopy subGenreIds:idsCopy app2VecCluster:clusterCopy forBundleId:idCopy isExtension:v17 isEnterpriseApp:v22];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addAppLaunchForBundleId:(id)id date:(id)date withLaunchType:(int64_t)type
{
  idCopy = id;
  dateCopy = date;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61___ATXDataStore_addAppLaunchForBundleId_date_withLaunchType___block_invoke;
  v12[3] = &unk_278599FF0;
  v12[4] = self;
  v13 = dateCopy;
  v14 = idCopy;
  typeCopy = type;
  v10 = idCopy;
  v11 = dateCopy;
  [(_ATXDataStore *)self _doAsync:v12];
}

- (void)addAppActionLaunchForAppAction:(id)action date:(id)date
{
  actionCopy = action;
  dateCopy = date;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53___ATXDataStore_addAppActionLaunchForAppAction_date___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = dateCopy;
  v12 = actionCopy;
  v8 = actionCopy;
  v9 = dateCopy;
  [(_ATXDataStore *)self _doAsync:v10];
}

- (void)addExtensionLaunchForBundleId:(id)id date:(id)date
{
  idCopy = id;
  dateCopy = date;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52___ATXDataStore_addExtensionLaunchForBundleId_date___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = dateCopy;
  v12 = idCopy;
  v8 = idCopy;
  v9 = dateCopy;
  [(_ATXDataStore *)self _doAsync:v10];
}

- (id)appInfoForBundleId:(id)id
{
  idCopy = id;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___ATXDataStore_appInfoForBundleId___block_invoke;
  block[3] = &unk_27859A8B0;
  v10 = idCopy;
  v11 = &v12;
  block[4] = self;
  v6 = idCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_appInfoForBundleIdNoSync:(id)sync
{
  syncCopy = sync;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__50;
  v19 = __Block_byref_object_dispose__50;
  v20 = 0;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43___ATXDataStore__appInfoForBundleIdNoSync___block_invoke;
  v13[3] = &unk_278598768;
  v14 = syncCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43___ATXDataStore__appInfoForBundleIdNoSync___block_invoke_2;
  v10[3] = &unk_27859C488;
  v6 = v14;
  v11 = v6;
  v12 = &v15;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43___ATXDataStore__appInfoForBundleIdNoSync___block_invoke_224;
  v9[3] = &unk_2785987B8;
  v9[4] = self;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT installDate onPrep:lastLaunchDate onRow:lastSpotlightLaunchDate onError:genreId, subGenreIds, isExtension, isEnterpriseApp, app2VecCluster, averageSecondsBetweenLaunches, medianSecondsBetweenLaunches FROM appInfo WHERE bundleId=?", v13, v10, v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (id)allAppsLaunchedOrInstalledWithin30Days
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = objc_opt_new();
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___ATXDataStore_allAppsLaunchedOrInstalledWithin30Days__block_invoke;
  v6[3] = &unk_278596C38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_allAppsRequireInstallDate:(BOOL)date
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__50;
  v14 = __Block_byref_object_dispose__50;
  v15 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___ATXDataStore__allAppsRequireInstallDate___block_invoke;
  block[3] = &unk_27859C4B0;
  dateCopy = date;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)allRemoteApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = objc_opt_new();
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30___ATXDataStore_allRemoteApps__block_invoke;
  v6[3] = &unk_278596C38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)nthMostRecentAppLaunch:(int64_t)launch
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___ATXDataStore_nthMostRecentAppLaunch___block_invoke;
  block[3] = &unk_278598830;
  block[5] = &v7;
  block[6] = launch;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_lastAppLaunchDateOfType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___ATXDataStore__lastAppLaunchDateOfType___block_invoke;
  block[3] = &unk_278598830;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)lastLaunchedApp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32___ATXDataStore_lastLaunchedApp__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)removeAppInfoForBundleIdsNotInSet:(id)set
{
  setCopy = set;
  if ([setCopy count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51___ATXDataStore_removeAppInfoForBundleIdsNotInSet___block_invoke;
    v6[3] = &unk_278596C10;
    v6[4] = self;
    v7 = setCopy;
    [(_ATXDataStore *)self _doAsync:v6];
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore removeAppInfoForBundleIdsNotInSet:];
    }
  }
}

- (void)removeAppInfoForBundleId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = idCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "_ATXDataStore: Removing appInfo for bundleId: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42___ATXDataStore_removeAppInfoForBundleId___block_invoke;
  v8[3] = &unk_278596C10;
  v9 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  [(_ATXDataStore *)self _doAsync:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeAppLaunchesForBundleId:(id)id
{
  idCopy = id;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46___ATXDataStore_removeAppLaunchesForBundleId___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = idCopy;
  v5 = idCopy;
  [(_ATXDataStore *)self _doAsync:v6];
}

- (void)clearAppLaunchInfo
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35___ATXDataStore_clearAppLaunchInfo__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)clearAppInstallInfo
{
  v3 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Clearing all app install dates", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___ATXDataStore_clearAppInstallInfo__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (int64_t)launchedAppCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___ATXDataStore_launchedAppCount__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)loadAppInfo
{
  v3 = objc_opt_new();
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28___ATXDataStore_loadAppInfo__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)loadAppActionInfo
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__50;
  v17 = __Block_byref_object_dispose__50;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34___ATXDataStore_loadAppActionInfo__block_invoke;
  block[3] = &unk_27859A430;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v3 = objc_alloc(MEMORY[0x277D42648]);
  v4 = [v3 initWithFirst:v14[5] second:v8[5]];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

- (id)lastMessageToRecipient:(id)recipient
{
  recipientCopy = recipient;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___ATXDataStore_lastMessageToRecipient___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v10 = recipientCopy;
  v11 = &v12;
  v6 = recipientCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)loadTopNAppActionsByPredictions:(unint64_t)predictions
{
  v5 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___ATXDataStore_loadTopNAppActionsByPredictions___block_invoke;
  block[3] = &unk_278599E28;
  block[4] = self;
  predictionsCopy = predictions;
  v7 = v5;
  v12 = v7;
  dispatch_sync(queue, block);
  v8 = v12;
  v9 = v7;

  return v7;
}

- (void)writeLaunches:(id)launches followingBundle:(id)bundle
{
  launchesCopy = launches;
  bundleCopy = bundle;
  v8 = bundleCopy;
  if (launchesCopy)
  {
    if (bundleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_ATXDataStore writeLaunches:followingBundle:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [_ATXDataStore writeLaunches:followingBundle:];
LABEL_3:
  v9 = objc_autoreleasePoolPush();
  v10 = objc_autoreleasePoolPush();
  v18 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:launchesCopy requiringSecureCoding:1 error:&v18];
  v12 = v18;
  objc_autoreleasePoolPop(v10);
  if (!v11)
  {
    [_ATXDataStore writeLaunches:followingBundle:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47___ATXDataStore_writeLaunches_followingBundle___block_invoke;
  v15[3] = &unk_278597828;
  v15[4] = self;
  v16 = v11;
  v13 = v8;
  v17 = v13;
  v14 = v11;
  [(_ATXDataStore *)self _doAsync:v15];

  objc_autoreleasePoolPop(v9);
}

- (void)writeAppActionLaunches:(id)launches followingAppAction:(id)action
{
  launchesCopy = launches;
  actionCopy = action;
  v8 = actionCopy;
  if (launchesCopy)
  {
    if (actionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_ATXDataStore writeAppActionLaunches:followingAppAction:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [_ATXDataStore writeAppActionLaunches:followingAppAction:];
LABEL_3:
  v9 = objc_autoreleasePoolPush();
  v10 = objc_autoreleasePoolPush();
  v18 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:launchesCopy requiringSecureCoding:1 error:&v18];
  v12 = v18;
  objc_autoreleasePoolPop(v10);
  if (!v11)
  {
    [_ATXDataStore writeAppActionLaunches:followingAppAction:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59___ATXDataStore_writeAppActionLaunches_followingAppAction___block_invoke;
  v15[3] = &unk_278597828;
  v15[4] = self;
  v16 = v11;
  v13 = v8;
  v17 = v13;
  v14 = v11;
  [(_ATXDataStore *)self _doAsync:v15];

  objc_autoreleasePoolPop(v9);
}

- (void)writeAverageSecondsBetweenLaunches:(id)launches forBundleId:(id)id
{
  launchesCopy = launches;
  idCopy = id;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64___ATXDataStore_writeAverageSecondsBetweenLaunches_forBundleId___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = launchesCopy;
  v12 = idCopy;
  v8 = idCopy;
  v9 = launchesCopy;
  [(_ATXDataStore *)self _doAsync:v10];
}

- (void)writeMedianSecondsBetweenLaunches:(id)launches forBundleId:(id)id
{
  launchesCopy = launches;
  idCopy = id;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63___ATXDataStore_writeMedianSecondsBetweenLaunches_forBundleId___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = launchesCopy;
  v12 = idCopy;
  v8 = idCopy;
  v9 = launchesCopy;
  [(_ATXDataStore *)self _doAsync:v10];
}

- (void)writeAverageSecondsBetweenAppActions:(id)actions forAppAction:(id)action
{
  actionsCopy = actions;
  actionCopy = action;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67___ATXDataStore_writeAverageSecondsBetweenAppActions_forAppAction___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = actionsCopy;
  v12 = actionCopy;
  v8 = actionCopy;
  v9 = actionsCopy;
  [(_ATXDataStore *)self _doAsync:v10];
}

- (void)writeMedianSecondsBetweenAppActions:(id)actions forAppAction:(id)action
{
  actionsCopy = actions;
  actionCopy = action;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66___ATXDataStore_writeMedianSecondsBetweenAppActions_forAppAction___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = actionsCopy;
  v12 = actionCopy;
  v8 = actionCopy;
  v9 = actionsCopy;
  [(_ATXDataStore *)self _doAsync:v10];
}

- (void)writeGenreId:(id)id subGenreIds:(id)ids forBundleId:(id)bundleId
{
  idCopy = id;
  idsCopy = ids;
  bundleIdCopy = bundleId;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54___ATXDataStore_writeGenreId_subGenreIds_forBundleId___block_invoke;
  v14[3] = &unk_2785978C0;
  v14[4] = self;
  v15 = idCopy;
  v16 = idsCopy;
  v17 = bundleIdCopy;
  v11 = bundleIdCopy;
  v12 = idsCopy;
  v13 = idCopy;
  [(_ATXDataStore *)self _doAsync:v14];
}

- (void)writeApp2VecCluster:(id)cluster forBundleId:(id)id
{
  clusterCopy = cluster;
  idCopy = id;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49___ATXDataStore_writeApp2VecCluster_forBundleId___block_invoke;
  v10[3] = &unk_278597828;
  v10[4] = self;
  v11 = clusterCopy;
  v12 = idCopy;
  v8 = idCopy;
  v9 = clusterCopy;
  [(_ATXDataStore *)self _doAsync:v10];
}

- (id)loadLaunchesFollowingBundle:(id)bundle
{
  bundleCopy = bundle;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__50;
  v18 = __Block_byref_object_dispose__50;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v6 = bundleCopy;
  v12 = v6;
  v13 = &v14;
  dispatch_sync(queue, block);
  v7 = v15[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)loadAppActionLaunchesFollowing:(id)following
{
  followingCopy = following;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__50;
  v19 = __Block_byref_object_dispose__50;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48___ATXDataStore_loadAppActionLaunchesFollowing___block_invoke;
  block[3] = &unk_2785987E0;
  v6 = followingCopy;
  v12 = v6;
  selfCopy = self;
  v14 = &v15;
  dispatch_sync(queue, block);
  v7 = v16[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)deleteLaunchesFollowingBundle:(id)bundle
{
  bundleCopy = bundle;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47___ATXDataStore_deleteLaunchesFollowingBundle___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = bundleCopy;
  v5 = bundleCopy;
  [(_ATXDataStore *)self _doAsync:v6];
}

- (void)deleteLaunchesFollowingAppAction:(id)action
{
  actionCopy = action;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50___ATXDataStore_deleteLaunchesFollowingAppAction___block_invoke;
  v6[3] = &unk_278596C10;
  v7 = actionCopy;
  selfCopy = self;
  v5 = actionCopy;
  [(_ATXDataStore *)self _doAsync:v6];
}

- (void)enumerateAppInfoBundlesExecutingBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___ATXDataStore_enumerateAppInfoBundlesExecutingBlock___block_invoke;
  v7[3] = &unk_2785968C8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

- (void)enumerateAppInfoAppActionsExecutingBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___ATXDataStore_enumerateAppInfoAppActionsExecutingBlock___block_invoke;
  v7[3] = &unk_2785968C8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

- (void)_enumerateAppInfoBundlesExecutingBlock:(id)block
{
  blockCopy = block;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56___ATXDataStore__enumerateAppInfoBundlesExecutingBlock___block_invoke;
  v7[3] = &unk_27859C4F8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT bundleId FROM appInfo" onPrep:0 onRow:v7 onError:&__block_literal_global_371];
}

- (void)_enumerateAppInfoAppActionsExecutingBlock:(id)block
{
  blockCopy = block;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___ATXDataStore__enumerateAppInfoAppActionsExecutingBlock___block_invoke;
  v7[3] = &unk_27859C4F8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT appAction FROM appActionInfo" onPrep:0 onRow:v7 onError:&__block_literal_global_379];
}

- (id)loadAppActionsFromAppActionInfo
{
  v3 = objc_opt_new();
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48___ATXDataStore_loadAppActionsFromAppActionInfo__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)totalSlotsInDatastore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = &unk_283A56060;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38___ATXDataStore_totalSlotsInDatastore__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)totalNumberOfActionTypesForBundleId:(id)id
{
  idCopy = id;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = &unk_283A56060;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___ATXDataStore_totalNumberOfActionTypesForBundleId___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v10 = idCopy;
  v11 = &v12;
  v6 = idCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)actionExistsForBundleId:(id)id actionType:(id)type
{
  idCopy = id;
  typeCopy = type;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke;
  v12[3] = &unk_27859C520;
  v12[4] = self;
  v13 = idCopy;
  v14 = typeCopy;
  v15 = &v16;
  v9 = typeCopy;
  v10 = idCopy;
  dispatch_sync(queue, v12);
  LOBYTE(queue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return queue;
}

- (BOOL)containsActionType:(id)type
{
  typeCopy = type;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___ATXDataStore_containsActionType___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v9 = typeCopy;
  v10 = &v11;
  v6 = typeCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (id)lastAppActionLaunchDateForAppAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___ATXDataStore_lastAppActionLaunchDateForAppAction___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v10 = actionCopy;
  v11 = &v12;
  v6 = actionCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)averageSecondsBetweenAppActionsForAppAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___ATXDataStore_averageSecondsBetweenAppActionsForAppAction___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v10 = actionCopy;
  v11 = &v12;
  v6 = actionCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)medianSecondsBetweenAppActionsForAppAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___ATXDataStore_medianSecondsBetweenAppActionsForAppAction___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v10 = actionCopy;
  v11 = &v12;
  v6 = actionCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)filenamesAndDataForBackupShouldPareDown:(BOOL)down transport:(unint64_t)transport
{
  v56 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__50;
  v49 = __Block_byref_object_dispose__50;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__50;
  v43 = __Block_byref_object_dispose__50;
  v44 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___ATXDataStore_filenamesAndDataForBackupShouldPareDown_transport___block_invoke;
  block[3] = &unk_27859C548;
  block[4] = self;
  block[5] = &v45;
  v38 = 1;
  block[6] = &v39;
  dispatch_sync(queue, block);
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v46[5] && v40[5])
  {
    [v27 setObject:? forKeyedSubscript:?];
  }

  if (down)
  {
    goto LABEL_34;
  }

  modeCachesRootDirectory = [MEMORY[0x277CEBCB0] modeCachesRootDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v36 = 0;
  onboardingStackWidgetCacheFilePath = [defaultManager contentsOfDirectoryAtPath:modeCachesRootDirectory error:&v36];
  obj = v36;

  if (obj)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore filenamesAndDataForBackupShouldPareDown:transport:];
    }

    goto LABEL_32;
  }

  v28 = +[ATXCloudStorageSettingsListener isBackupForContactsEnabled];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = onboardingStackWidgetCacheFilePath;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v55 count:16];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *v33;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v32 + 1) + 8 * i);
      v15 = [modeCachesRootDirectory stringByAppendingPathComponent:v14];
      v16 = objc_alloc(MEMORY[0x277CBEA90]);
      v31 = 0;
      v17 = [v16 initWithContentsOfFile:v15 options:1 error:&v31];
      v18 = v31;
      if (v18)
      {
        v19 = __atxlog_handle_default();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v52 = v14;
          v53 = 2112;
          v54 = v18;
          _os_log_error_impl(&dword_2263AA000, v19, OS_LOG_TYPE_ERROR, "Error while converting mode entity score file: %@ into NSData. Error: %@", buf, 0x16u);
        }

        v20 = v17;
      }

      else
      {
        v20 = [objc_opt_class() removeSensitiveInformationFromModeEntityScoresFile:v17 shouldBackupContacts:v28];

        if (!v20)
        {
          goto LABEL_20;
        }

        v19 = [@"mode_" stringByAppendingString:v14];
        [v27 setObject:v20 forKeyedSubscript:v19];
      }

LABEL_20:
    }

    v11 = [obj countByEnumeratingWithState:&v32 objects:v55 count:16];
  }

  while (v11);
LABEL_22:

  if (transport == 1)
  {
    onboardingStackWidgetCacheFilePath = [MEMORY[0x277CEBCB0] onboardingStackWidgetCacheFilePath];
    v21 = __atxlog_handle_backup();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = onboardingStackWidgetCacheFilePath;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "onboarding stacks cache file being backed up: %@", buf, 0xCu);
    }

    v30 = 0;
    v22 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:onboardingStackWidgetCacheFilePath options:1 error:&v30];
    v10 = v30;
    if (v10)
    {
      v23 = __atxlog_handle_backup();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [_ATXDataStore filenamesAndDataForBackupShouldPareDown:transport:];
      }
    }

    else if (v22)
    {
      [v27 setObject:v22 forKeyedSubscript:@"onboardingStacks"];
    }

LABEL_32:
  }

LABEL_34:
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)removeSensitiveInformationFromModeEntityScoresFile:(id)file shouldBackupContacts:(BOOL)contacts
{
  fileCopy = file;
  if (!fileCopy)
  {
    v28 = 0;
    goto LABEL_21;
  }

  contactsCopy = contacts;
  v37 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  v38 = MEMORY[0x277CCAAC8];
  context = v6;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = fileCopy;
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v35 = v13;
  fileCopy = v12;
  v17 = [v8 initWithObjects:{v9, v10, v11, v35, v14, v15, v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  v48[0] = 0;
  v18 = [v38 unarchivedObjectOfClasses:v17 fromData:v12 error:v48];
  v19 = v48[0];

  objc_autoreleasePoolPop(context);
  if (!v18)
  {
    v29 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[_ATXDataStore removeSensitiveInformationFromModeEntityScoresFile:shouldBackupContacts:];
    }

    v28 = 0;
    v30 = v37;
    goto LABEL_20;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__50;
  v46 = __Block_byref_object_dispose__50;
  v47 = objc_opt_new();
  allValues = [v18 allValues];
  firstObject = [allValues firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (contactsCopy)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __89___ATXDataStore_removeSensitiveInformationFromModeEntityScoresFile_shouldBackupContacts___block_invoke;
      v41[3] = &unk_27859C570;
      v41[4] = &v42;
      [v18 enumerateKeysAndObjectsUsingBlock:v41];
      v23 = objc_autoreleasePoolPush();
      v24 = v43[5];
      v40 = 0;
      v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v40];
      v26 = v40;
      objc_autoreleasePoolPop(v23);
      if (v25 || !v26)
      {
        v28 = v25;
      }

      else
      {
        v27 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          +[_ATXDataStore removeSensitiveInformationFromModeEntityScoresFile:shouldBackupContacts:];
        }

        v28 = 0;
      }

      goto LABEL_19;
    }
  }

  else
  {
    allValues2 = [v18 allValues];
    firstObject2 = [allValues2 firstObject];
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if ((v33 & 1) == 0)
    {
      v28 = fileCopy;
      goto LABEL_19;
    }
  }

  v28 = 0;
LABEL_19:
  v30 = v37;
  _Block_object_dispose(&v42, 8);

LABEL_20:
  objc_autoreleasePoolPop(v30);
LABEL_21:

  return v28;
}

+ (BOOL)pareDownForBackup:(sqlite3 *)backup
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = off_27859C590[v4];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %s", v7];
    errmsg = 0;
    if (sqlite3_exec(backup, [v8 UTF8String], 0, 0, &errmsg))
    {
      break;
    }

    objc_autoreleasePoolPop(v6);
    v5 = v4++ > 9;
    if (v4 == 11)
    {
      return 1;
    }
  }

  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(_ATXDataStore *)v7 pareDownForBackup:?];
  }

  objc_autoreleasePoolPop(v6);
  return v5;
}

+ (BOOL)isSqliteData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] < 0x10)
  {
    v6 = 0;
  }

  else
  {
    bytes = [dataCopy bytes];
    v6 = *bytes == 0x66206574694C5153 && bytes[1] == 0x332074616D726FLL;
  }

  return v6;
}

- (BOOL)restoreFromBackup:(id)backup
{
  v59 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35___ATXDataStore_restoreFromBackup___block_invoke;
  block[3] = &unk_27859B1C0;
  v6 = backupCopy;
  selfCopy = self;
  v49 = &v50;
  v47 = v6;
  dispatch_sync(queue, block);
  modeCachesRootDirectory = [MEMORY[0x277CEBCB0] modeCachesRootDirectory];
  v38 = [@"mode_" length];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v8)
  {
    v10 = *v43;
    *&v9 = 138412546;
    v37 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"mode_", v37}])
        {
          v13 = [v12 substringFromIndex:v38];
          v14 = [modeCachesRootDirectory stringByAppendingPathComponent:v13];

          v15 = [v7 objectForKeyedSubscript:v12];
          v41 = 0;
          v16 = [v15 writeToFile:v14 options:1073741825 error:&v41];
          v17 = v41;
          if ((v16 & 1) == 0)
          {
            v18 = __atxlog_handle_backup();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v37;
              v55 = v12;
              v56 = 2112;
              v57 = v17;
              _os_log_error_impl(&dword_2263AA000, v18, OS_LOG_TYPE_ERROR, "Error restoring to mode file %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v8);
  }

  onboardingStackWidgetCacheFilePath = [MEMORY[0x277CEBCB0] onboardingStackWidgetCacheFilePath];
  v20 = [v7 objectForKeyedSubscript:@"onboardingStacks"];
  v21 = v20;
  if (v20)
  {
    v40 = 0;
    v22 = [v20 writeToFile:onboardingStackWidgetCacheFilePath options:1073741825 error:&v40];
    v23 = v40;
    if (v22)
    {
      v24 = __atxlog_handle_backup();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Successfully restored onboarding stacks cache.", buf, 2u);
      }
    }

    else
    {
      v24 = __atxlog_handle_backup();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_ATXDataStore restoreFromBackup:];
      }
    }
  }

  else
  {
    v24 = __atxlog_handle_backup();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(_ATXDataStore *)v24 restoreFromBackup:v25, v26, v27, v28, v29, v30, v31];
    }

    v23 = 0;
  }

  v32 = objc_alloc(MEMORY[0x277CBEBD0]);
  v33 = [v32 initWithSuiteName:*MEMORY[0x277D41CF0]];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v33 setDouble:*MEMORY[0x277D41CC8] forKey:?];
  v34 = *(v51 + 24);

  _Block_object_dispose(&v50, 8);
  v35 = *MEMORY[0x277D85DE8];
  return v34 & 1;
}

- (void)addAppLaunchForAppLaunchSequence:(id)sequence date:(id)date
{
  sequenceCopy = sequence;
  dateCopy = date;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke;
  block[3] = &unk_278597828;
  block[4] = self;
  v12 = dateCopy;
  v13 = sequenceCopy;
  v9 = sequenceCopy;
  v10 = dateCopy;
  dispatch_sync(queue, block);
}

- (id)appLaunchSequence
{
  v3 = objc_opt_new();
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34___ATXDataStore_appLaunchSequence__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)addHistogramData:(id)data forHistogramOfType:(int64_t)type
{
  dataCopy = data;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXDataStore_addHistogramData_forHistogramOfType___block_invoke;
  v8[3] = &unk_278599E28;
  v8[4] = self;
  v9 = dataCopy;
  typeCopy = type;
  v7 = dataCopy;
  [(_ATXDataStore *)self _doAsync:v8];
}

- (id)histogramDataForHistogramType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___ATXDataStore_histogramDataForHistogramType___block_invoke;
  block[3] = &unk_278598830;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)addCategoricalHistogramData:(id)data forHistogramOfType:(int64_t)type
{
  dataCopy = data;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64___ATXDataStore_addCategoricalHistogramData_forHistogramOfType___block_invoke;
  v8[3] = &unk_278599E28;
  v8[4] = self;
  v9 = dataCopy;
  typeCopy = type;
  v7 = dataCopy;
  [(_ATXDataStore *)self _doAsync:v8];
}

- (id)categoricalHistogramDataForHistogramType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___ATXDataStore_categoricalHistogramDataForHistogramType___block_invoke;
  block[3] = &unk_278598830;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)blobOfType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28___ATXDataStore_blobOfType___block_invoke;
  block[3] = &unk_278598830;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)writeBlob:(id)blob type:(int64_t)type expirationDate:(id)date
{
  blobCopy = blob;
  dateCopy = date;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47___ATXDataStore_writeBlob_type_expirationDate___block_invoke;
  v13[3] = &unk_278599FF0;
  v13[4] = self;
  v14 = blobCopy;
  v15 = dateCopy;
  typeCopy = type;
  v11 = dateCopy;
  v12 = blobCopy;
  dispatch_sync(queue, v13);
}

- (BOOL)alogContainsActionUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___ATXDataStore_alogContainsActionUUID___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)writeActionType:(id)type bundleId:(id)id date:(id)date action:(id)action slotSets:(id)sets timeZone:(id)zone prevLocationUUID:(id)d locationUUID:(id)self0 weight:(double)self1 actionUUID:(id)self2 motionType:(int64_t)self3 appSessionStartDate:(id)self4 appSessionEndDate:(id)self5 geohash:(int64_t)self6 coarseGeohash:(int64_t)self7
{
  v104 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  idCopy = id;
  dateCopy = date;
  actionCopy = action;
  setsCopy = sets;
  zoneCopy = zone;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  startDateCopy = startDate;
  endDateCopy = endDate;
  if (typeCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
LABEL_3:
  if (actionCopy)
  {
    if (setsCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
    if (setsCopy)
    {
      goto LABEL_5;
    }
  }

  [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
LABEL_5:
  if (weight <= 0.0)
  {
    [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
  }

  if (weight > 1.0)
  {
    [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
  }

  v64 = uIDCopy;
  if (!uIDCopy)
  {
    [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
  }

  v66 = dCopy;
  v29 = __atxlog_handle_default();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    weightCopy = weight;
    v98 = 2112;
    v99 = typeCopy;
    v100 = 2112;
    v101 = idCopy;
    v102 = 2112;
    v103 = actionCopy;
    _os_log_debug_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEBUG, "Recording action (* %0.2f) of type %@ for %@: %@", buf, 0x2Au);
  }

  v68 = idCopy;
  v69 = typeCopy;

  if (!dateCopy)
  {
    dateCopy = objc_opt_new();
  }

  v67 = dateCopy;
  v30 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:dateCopy timeZone:zoneCopy];
  first = [v30 first];
  integerValue = [first integerValue];

  v61 = v30;
  second = [v30 second];
  integerValue2 = [second integerValue];

  v72 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(setsCopy, "count")}];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = setsCopy;
  v33 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v92;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v92 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v91 + 1) + 8 * i);
        v38 = objc_opt_new();
        [v37 setUuid:v38];
        v39 = [objc_alloc(MEMORY[0x277CEB840]) initWithAction:actionCopy slots:v37];
        v40 = [ATXMinimalSlotResolutionParameters alloc];
        v41 = [v39 hash];
        v42 = [v37 hash];
        parameters = [v37 parameters];
        v44 = -[ATXMinimalSlotResolutionParameters initWithParameterHash:slotHash:uuid:paramCount:](v40, "initWithParameterHash:slotHash:uuid:paramCount:", v41, v42, v38, [parameters count]);
        [v72 setObject:v44 forKeyedSubscript:v38];
      }

      v34 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v34);
  }

  v45 = ATXSlotSetsSerialize();
  if (v45)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke;
    block[3] = &unk_27859C690;
    block[4] = self;
    v46 = v68;
    v75 = v68;
    v47 = v69;
    v76 = v69;
    v77 = v45;
    v48 = v67;
    v78 = v67;
    v85 = integerValue;
    v86 = integerValue2;
    v49 = v66;
    v79 = v66;
    v50 = iDCopy;
    v80 = iDCopy;
    weightCopy2 = weight;
    v51 = v64;
    v81 = v64;
    motionTypeCopy = motionType;
    v52 = startDateCopy;
    v82 = startDateCopy;
    v53 = endDateCopy;
    v83 = endDateCopy;
    geohashCopy = geohash;
    coarseGeohashCopy = coarseGeohash;
    v54 = v72;
    v84 = v72;
    dispatch_sync(queue, block);
  }

  else
  {
    v55 = __atxlog_handle_default();
    v47 = v69;
    v49 = v66;
    v48 = v67;
    v50 = iDCopy;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:];
    }

    v46 = v68;
    v52 = startDateCopy;
    v51 = v64;
    v53 = endDateCopy;
    v54 = v72;
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (_PASDBIterAction_)_deserializeActionLogRowWithStmt:(id)stmt invokingBlock:(id)block
{
  stmtCopy = stmt;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [stmtCopy getNSStringForColumn:0];
  v9 = [stmtCopy getNSDataForColumn:1];
  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(stmtCopy, "getInt64ForColumn:", 2)}];
  v36 = [stmtCopy getIntegerForColumn:3];
  v35 = [stmtCopy getIntegerForColumn:4];
  v11 = [stmtCopy getNSDataForColumn:5];
  v38 = [stmtCopy getNSDataForColumn:6];
  v34 = [stmtCopy getIntegerForColumn:7];
  if ([stmtCopy isColumnNull:8])
  {
    v37 = 0;
  }

  else
  {
    v37 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(stmtCopy, "getInt64ForColumn:", 8)}];
  }

  if ([stmtCopy isColumnNull:9])
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(stmtCopy, "getInt64ForColumn:", 9)}];
  }

  v33 = [stmtCopy getInt64ForColumn:10];
  v13 = [stmtCopy getInt64ForColumn:11];
  [stmtCopy getDoubleForColumn:12];
  v15 = v14;
  [stmtCopy getInt64ForColumn:13];
  if (v9 && (ATXSlotSetsDeserialize(), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v31 = v7;
    v32 = v16;
    v30 = v9;
    if ([v11 length] == 16)
    {
      v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v11, "bytes")}];
    }

    else
    {
      v28 = 0;
    }

    v29 = v11;
    v27 = v8;
    v17 = v13;
    v18 = v10;
    if ([v38 length] == 16)
    {
      v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v38, "bytes")}];
    }

    else
    {
      v19 = 0;
    }

    first = [v32 first];
    second = [v32 second];
    v22 = v37;
    v23 = first;
    LODWORD(first) = blockCopy[2](blockCopy, v27, first, second, v18, v36, v35, v28, v15, v19, v34, v37, v12, v33, v17);

    v24 = MEMORY[0x277D42690];
    if (!first)
    {
      v24 = MEMORY[0x277D42698];
    }

    v25.var0 = *v24;

    v8 = v27;
    v10 = v18;

    v9 = v30;
    v7 = v31;
    v11 = v29;
  }

  else
  {
    v25.var0 = *MEMORY[0x277D42690];
    v22 = v37;
  }

  objc_autoreleasePoolPop(v7);
  return v25;
}

- (void)enumerateActionOfType:(id)type bundleId:(id)id block:(id)block
{
  typeCopy = type;
  idCopy = id;
  blockCopy = block;
  if (typeCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [_ATXDataStore enumerateActionOfType:bundleId:block:];
    if (blockCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [_ATXDataStore enumerateActionOfType:bundleId:block:];
    goto LABEL_4;
  }

  [_ATXDataStore enumerateActionOfType:bundleId:block:];
  if (!idCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!blockCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54___ATXDataStore_enumerateActionOfType_bundleId_block___block_invoke;
  v15[3] = &unk_27859A860;
  v15[4] = self;
  v16 = idCopy;
  v17 = typeCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = typeCopy;
  v14 = idCopy;
  dispatch_sync(queue, v15);
}

- (void)enumerateSlotUuidsOfType:(id)type bundleId:(id)id block:(id)block
{
  typeCopy = type;
  idCopy = id;
  blockCopy = block;
  if (typeCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [_ATXDataStore enumerateSlotUuidsOfType:bundleId:block:];
    if (blockCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [_ATXDataStore enumerateSlotUuidsOfType:bundleId:block:];
    goto LABEL_4;
  }

  [_ATXDataStore enumerateSlotUuidsOfType:bundleId:block:];
  if (!idCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!blockCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = -1;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__50;
  v48[4] = __Block_byref_object_dispose__50;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__50;
  v46[4] = __Block_byref_object_dispose__50;
  v47 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__50;
  v42[4] = __Block_byref_object_dispose__50;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__50;
  v40[4] = __Block_byref_object_dispose__50;
  v41 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__50;
  v36[4] = __Block_byref_object_dispose__50;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__50;
  v34[4] = __Block_byref_object_dispose__50;
  v35 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke;
  block[3] = &unk_27859C730;
  block[4] = self;
  v16 = idCopy;
  v19 = v50;
  v20 = v48;
  v21 = v46;
  v22 = v45;
  v23 = v44;
  v24 = v42;
  v25 = v40;
  v26 = v39;
  v27 = v38;
  v28 = v36;
  v29 = v34;
  v30 = v33;
  v31 = v32;
  v17 = typeCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = typeCopy;
  v14 = idCopy;
  dispatch_sync(queue, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);
}

- (void)enumerateActionsInUUIDSet:(id)set block:(id)block
{
  setCopy = set;
  blockCopy = block;
  v8 = blockCopy;
  if (setCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_ATXDataStore enumerateActionsInUUIDSet:block:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [_ATXDataStore enumerateActionsInUUIDSet:block:];
LABEL_3:
  if ([setCopy count])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49___ATXDataStore_enumerateActionsInUUIDSet_block___block_invoke;
    block[3] = &unk_27859A950;
    v11 = setCopy;
    selfCopy = self;
    v13 = v8;
    dispatch_sync(queue, block);
  }
}

- (id)appIntentDuetEventsForActionsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = endDateCopy;
  if (!dateCopy)
  {
    [_ATXDataStore appIntentDuetEventsForActionsBetweenStartDate:endDate:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_ATXDataStore appIntentDuetEventsForActionsBetweenStartDate:endDate:];
    goto LABEL_3;
  }

  if (!endDateCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = objc_opt_new();
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71___ATXDataStore_appIntentDuetEventsForActionsBetweenStartDate_endDate___block_invoke;
  v17[3] = &unk_2785978C0;
  v17[4] = self;
  v18 = dateCopy;
  v19 = v8;
  v11 = v9;
  v20 = v11;
  v12 = v8;
  v13 = dateCopy;
  dispatch_sync(queue, v17);
  v14 = v20;
  v15 = v11;

  return v11;
}

- (id)minimalActionParametersforActionsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (!dateCopy)
  {
    [_ATXDataStore minimalActionParametersforActionsBetweenStartDate:endDate:limit:];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_ATXDataStore minimalActionParametersforActionsBetweenStartDate:endDate:limit:];
    goto LABEL_3;
  }

  if (!endDateCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81___ATXDataStore_minimalActionParametersforActionsBetweenStartDate_endDate_limit___block_invoke;
  block[3] = &unk_278599D90;
  block[4] = self;
  v20 = dateCopy;
  v21 = v10;
  limitCopy = limit;
  v13 = v11;
  v22 = v13;
  v14 = v10;
  v15 = dateCopy;
  dispatch_sync(queue, block);
  v16 = v22;
  v17 = v13;

  return v13;
}

- (id)numActionKeyOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = endDateCopy;
  if (!dateCopy)
  {
    [_ATXDataStore numActionKeyOccurrencesBetweenStartDate:endDate:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_ATXDataStore numActionKeyOccurrencesBetweenStartDate:endDate:];
    goto LABEL_3;
  }

  if (!endDateCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = objc_opt_new();
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65___ATXDataStore_numActionKeyOccurrencesBetweenStartDate_endDate___block_invoke;
  v17[3] = &unk_2785978C0;
  v17[4] = self;
  v18 = dateCopy;
  v19 = v8;
  v11 = v9;
  v20 = v11;
  v12 = v8;
  v13 = dateCopy;
  dispatch_sync(queue, v17);
  v14 = v20;
  v15 = v11;

  return v11;
}

- (unint64_t)numActionKeyOccurrencesForActionKey:(id)key startDate:(id)date endDate:(id)endDate
{
  keyCopy = key;
  dateCopy = date;
  endDateCopy = endDate;
  if (keyCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [_ATXDataStore numActionKeyOccurrencesForActionKey:startDate:endDate:];
    if (endDateCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [_ATXDataStore numActionKeyOccurrencesForActionKey:startDate:endDate:];
    goto LABEL_4;
  }

  [_ATXDataStore numActionKeyOccurrencesForActionKey:startDate:endDate:];
  if (!dateCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!endDateCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:keyCopy];
  first = [v11 first];
  second = [v11 second];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71___ATXDataStore_numActionKeyOccurrencesForActionKey_startDate_endDate___block_invoke;
  v21[3] = &unk_27859C780;
  v21[4] = self;
  v22 = dateCopy;
  v23 = endDateCopy;
  v24 = first;
  v25 = second;
  v26 = &v27;
  v15 = second;
  v16 = first;
  v17 = endDateCopy;
  v18 = dateCopy;
  dispatch_sync(queue, v21);
  v19 = v28[3];

  _Block_object_dispose(&v27, 8);
  return v19;
}

- (unint64_t)numBundleIdOccurrencesForBundleId:(id)id startDate:(id)date endDate:(id)endDate
{
  idCopy = id;
  dateCopy = date;
  endDateCopy = endDate;
  if (idCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [_ATXDataStore numBundleIdOccurrencesForBundleId:startDate:endDate:];
    if (endDateCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [_ATXDataStore numBundleIdOccurrencesForBundleId:startDate:endDate:];
    goto LABEL_4;
  }

  [_ATXDataStore numBundleIdOccurrencesForBundleId:startDate:endDate:];
  if (!dateCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!endDateCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___ATXDataStore_numBundleIdOccurrencesForBundleId_startDate_endDate___block_invoke;
  block[3] = &unk_27859C7A8;
  block[4] = self;
  v18 = dateCopy;
  v19 = endDateCopy;
  v20 = idCopy;
  v21 = &v22;
  v12 = idCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_sync(queue, block);
  v15 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v15;
}

- (unint64_t)numActionParameterHashOccurrencesForActionKey:(id)key parameterHash:(unint64_t)hash startDate:(id)date endDate:(id)endDate
{
  keyCopy = key;
  dateCopy = date;
  endDateCopy = endDate;
  if (keyCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [_ATXDataStore numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:];
    if (endDateCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [_ATXDataStore numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:];
    goto LABEL_4;
  }

  [_ATXDataStore numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:];
  if (!dateCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!endDateCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v13 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:keyCopy];
  first = [v13 first];
  second = [v13 second];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95___ATXDataStore_numActionParameterHashOccurrencesForActionKey_parameterHash_startDate_endDate___block_invoke;
  block[3] = &unk_27859C7F8;
  block[4] = self;
  v24 = dateCopy;
  v25 = endDateCopy;
  v26 = first;
  v27 = second;
  v28 = &v30;
  hashCopy = hash;
  v17 = second;
  v18 = first;
  v19 = endDateCopy;
  v20 = dateCopy;
  dispatch_sync(queue, block);
  v21 = v31[3];

  _Block_object_dispose(&v30, 8);
  return v21;
}

- (id)actionForSlotUUID:(id)d
{
  v40[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__50;
    v37 = __Block_byref_object_dispose__50;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__50;
    v31 = __Block_byref_object_dispose__50;
    v32 = 0;
    v24 = 0;
    v25[0] = &v24;
    v25[1] = 0x3032000000;
    v25[2] = __Block_byref_object_copy__50;
    v25[3] = __Block_byref_object_dispose__50;
    v26 = 0;
    db = self->_db;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __35___ATXDataStore_actionForSlotUUID___block_invoke;
    v22[3] = &unk_278598768;
    v23 = dCopy;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __35___ATXDataStore_actionForSlotUUID___block_invoke_2;
    v21[3] = &unk_27859A588;
    v21[4] = &v27;
    v21[5] = &v33;
    v21[6] = &v24;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __35___ATXDataStore_actionForSlotUUID___block_invoke_3;
    v19 = &unk_2785987B8;
    v20 = v23;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT l.slots FROM alog AS l onPrep:slotSetKey AS s WHERE l.id = s.alogId AND s.uuid = ?" onRow:v22 onError:v21, &v16];
    v7 = v34[5];
    if (!v7)
    {
      if (!v28[5])
      {
        v8 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40[0] = @"Database has no action data for given slot UUID";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:{1, v16, v17, v18, v19}];
        v10 = [v8 errorWithDomain:@"ATXSlotResolutionSerialization" code:0 userInfo:v9];
        v11 = *(v25[0] + 40);
        *(v25[0] + 40) = v10;
      }

      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [_ATXDataStore actionForSlotUUID:v25];
      }

      v7 = v34[5];
    }

    v13 = v7;

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)removeActionDataForActionUUIDs:(id)ds
{
  v14 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (!dsCopy)
  {
    [_ATXDataStore removeActionDataForActionUUIDs:];
  }

  v5 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = dsCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Deleting actions with actionUUIDs: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48___ATXDataStore_removeActionDataForActionUUIDs___block_invoke;
  v9[3] = &unk_278596C10;
  v10 = dsCopy;
  selfCopy = self;
  v7 = dsCopy;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeActionDataForActionUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    [_ATXDataStore removeActionDataForActionUUID:];
  }

  v5 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Deleting actions with actionUUID: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47___ATXDataStore_removeActionDataForActionUUID___block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v10 = dCopy;
  v7 = dCopy;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasOrphanSlotSetKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37___ATXDataStore_hasOrphanSlotSetKeys__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)removeActionDataForBundleId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (!idCopy)
  {
    [_ATXDataStore removeActionDataForBundleId:];
  }

  v5 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = idCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Deleting actions with bundleId: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45___ATXDataStore_removeActionDataForBundleId___block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v10 = idCopy;
  v7 = idCopy;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)actionAndSlotsForRowId:(id)id
{
  idCopy = id;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40___ATXDataStore_actionAndSlotsForRowId___block_invoke;
  v10[3] = &unk_278598768;
  v6 = idCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40___ATXDataStore_actionAndSlotsForRowId___block_invoke_2;
  v9[3] = &unk_278598790;
  v9[4] = &v12;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT slots FROM alog WHERE id=?" onPrep:v10 onRow:v9 onError:&__block_literal_global_619];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (int64_t)_regenerateSlotSetKeyForBundleId:(id)id
{
  v63 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = -1;
  db = self->_db;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke;
  v55[3] = &unk_278598768;
  v28 = idCopy;
  v56 = v28;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_2;
  v54[3] = &unk_278598790;
  v54[4] = &v57;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT id FROM alogBundleId WHERE bundleId=?" onPrep:v55 onRow:v54 onError:0];
  if (v58[3] == -1)
  {
    v30 = 3;
  }

  else
  {
    v6 = self->_db;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_3;
    v53[3] = &unk_27859C5F0;
    v53[4] = &v57;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_4;
    v51[3] = &unk_2785987B8;
    v52 = v28;
    [(_PASSqliteDatabase *)v6 prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId in (SELECT id FROM alog WHERE bundleId=?)" onPrep:v53 onRow:0 onError:v51];
    v7 = objc_opt_new();
    v8 = self->_db;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_626;
    v50[3] = &unk_27859C5F0;
    v50[4] = &v57;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_2_627;
    v48[3] = &unk_278599FC8;
    v9 = v7;
    v49 = v9;
    [(_PASSqliteDatabase *)v8 prepAndRunQuery:@"SELECT id FROM alog WHERE bundleId=?" onPrep:v50 onRow:v48 onError:0];
    v31 = objc_opt_new();
    v47 = 3;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v43 objects:v62 count:16];
    if (v10)
    {
      v32 = *v44;
LABEL_4:
      v36 = 0;
      v33 = v10;
      while (1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * v36);
        context = objc_autoreleasePoolPush();
        v34 = [(_ATXDataStore *)self actionAndSlotsForRowId:v11];
        first = [v34 first];
        if (first && [_ATXActionUtils shouldAcceptAudioOrVideoCallIntent:first])
        {
          v13 = [_ATXActionUtils slotSetsForAction:first intentCache:0];
          v14 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:first second:v13];
          [v31 setObject:v14 forKeyedSubscript:v11];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v61 count:16];
          if (v16)
          {
            v17 = *v38;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v38 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v37 + 1) + 8 * i);
                v20 = objc_opt_new();
                [v19 setUuid:v20];
                v21 = [[ATXMinimalSlotResolutionParameters alloc] initWithAction:first slots:v19];
                [(_ATXDataStore *)self writeSlotSetKeyParameters:v21 rowId:v11 slotSet:v19 success:&v47];
              }

              v16 = [v15 countByEnumeratingWithState:&v37 objects:v61 count:16];
            }

            while (v16);
          }

          if (v47)
          {
            v47 = [(_ATXDataStore *)self updateAlog:v11 slotsToMigrate:v31];
          }

          [v31 removeAllObjects];
          v22 = v47 != 3;
          v23 = v30;
          if (v47 != 3)
          {
            v23 = v47;
          }

          v30 = v23;
        }

        else
        {
          v24 = __atxlog_handle_deletions();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "_ATXDataStore: Deleting INStartAudioCallIntent or INStartVideoCallIntent", buf, 2u);
          }

          v25 = self->_db;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_628;
          v41[3] = &unk_278598768;
          v41[4] = v11;
          [(_PASSqliteDatabase *)v25 prepAndRunQuery:@"DELETE FROM alog WHERE id=?" onPrep:v41 onRow:&__block_literal_global_631 onError:0];
          v22 = 3;
        }

        objc_autoreleasePoolPop(context);
        if (v22 != 3)
        {
          if (v22)
          {
            break;
          }
        }

        if (++v36 == v33)
        {
          v10 = [obj countByEnumeratingWithState:&v43 objects:v62 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_28:
      v30 = 3;
    }
  }

  _Block_object_dispose(&v57, 8);
  v26 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)regenerateSlotSetKeyForBundleId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    [_ATXDataStore regenerateSlotSetKeyForBundleId:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49___ATXDataStore_regenerateSlotSetKeyForBundleId___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = idCopy;
  v5 = idCopy;
  [(_ATXDataStore *)self _doAsync:v6];
}

- (void)trimActionHistoryWithAppWhitelist:(id)whitelist
{
  whitelistCopy = whitelist;
  v5 = __atxlog_handle_default();
  v6 = os_signpost_id_generate(v5);

  v7 = __atxlog_handle_default();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "trimActionHistoryWithAppWhitelist", " enableTelemetry=YES ", buf, 2u);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke;
  v13[3] = &unk_278596C10;
  v13[4] = self;
  v14 = whitelistCopy;
  v10 = whitelistCopy;
  dispatch_sync(queue, v13);
  v11 = __atxlog_handle_default();
  v12 = v11;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_END, v6, "trimActionHistoryWithAppWhitelist", " enableTelemetry=YES ", buf, 2u);
  }
}

- (id)actionLogKeys
{
  v3 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30___ATXDataStore_actionLogKeys__block_invoke;
  v7[3] = &unk_278599FC8;
  v5 = v3;
  v8 = v5;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT DISTINCT b.bundleId onPrep:i.actionType FROM alog AS l onRow:alogBundleId AS b onError:alogAction AS i WHERE b.id = l.bundleId AND i.id = l.actionType", 0, v7, 0];

  return v5;
}

- (id)bundleIdMapping
{
  v3 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32___ATXDataStore_bundleIdMapping__block_invoke;
  v7[3] = &unk_278599FC8;
  v5 = v3;
  v8 = v5;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT DISTINCT bundleId onPrep:id FROM alogBundleId" onRow:0 onError:v7, 0];

  return v5;
}

- (void)recordConfirms:(double)confirms rejects:(double)rejects forFeedbackType:(unint64_t)type forActionType:(id)actionType bundleId:(id)id action:(id)action slotSet:(id)set actionUUID:(id)self0 date:(id)self1 consumerSubType:(unsigned __int8)self2 geohash:(int64_t)self3 coarseGeohash:(int64_t)self4
{
  actionTypeCopy = actionType;
  idCopy = id;
  actionCopy = action;
  setCopy = set;
  dCopy = d;
  dateCopy = date;
  if (!setCopy)
  {
    setCopy = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
  }

  v27 = [MEMORY[0x277CBEB98] setWithObject:setCopy];
  v28 = ATXSlotSetsSerialize();

  if (v28)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke;
    block[3] = &unk_27859C8E8;
    block[4] = self;
    v34 = idCopy;
    v29 = actionTypeCopy;
    v35 = actionTypeCopy;
    v36 = v28;
    confirmsCopy = confirms;
    rejectsCopy = rejects;
    v37 = dCopy;
    subTypeCopy = subType;
    v38 = dateCopy;
    typeCopy = type;
    geohashCopy = geohash;
    coarseGeohashCopy = coarseGeohash;
    dispatch_sync(queue, block);
  }

  else
  {
    v30 = __atxlog_handle_default();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore recordConfirms:setCopy rejects:actionCopy forFeedbackType:v30 forActionType:? bundleId:? action:? slotSet:? actionUUID:? date:? consumerSubType:? geohash:? coarseGeohash:?];
    }

    v29 = actionTypeCopy;
  }
}

- (void)enumerateFeedbackForActionOfType:(id)type bundleId:(id)id block:(id)block
{
  typeCopy = type;
  idCopy = id;
  blockCopy = block;
  if (typeCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [_ATXDataStore enumerateFeedbackForActionOfType:bundleId:block:];
    if (blockCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [_ATXDataStore enumerateFeedbackForActionOfType:bundleId:block:];
    goto LABEL_4;
  }

  [_ATXDataStore enumerateFeedbackForActionOfType:bundleId:block:];
  if (!idCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!blockCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke;
  v15[3] = &unk_27859A860;
  v15[4] = self;
  v16 = idCopy;
  v17 = typeCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = typeCopy;
  v14 = idCopy;
  dispatch_sync(queue, v15);
}

- (void)removeAllSlotsFromActionLog
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___ATXDataStore_removeAllSlotsFromActionLog__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)removeAllSlotsFromActionFeedback
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___ATXDataStore_removeAllSlotsFromActionFeedback__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)removeAllSlotsFromSlotSetKey
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___ATXDataStore_removeAllSlotsFromSlotSetKey__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)actionFeedbackLogKeys
{
  v3 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38___ATXDataStore_actionFeedbackLogKeys__block_invoke;
  v7[3] = &unk_278599FC8;
  v5 = v3;
  v8 = v5;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT DISTINCT b.bundleId onPrep:i.actionType FROM afeedback AS l onRow:alogBundleId AS b onError:alogAction AS i WHERE b.id = l.bundleId AND i.id = l.actionType", 0, v7, 0];

  return v5;
}

- (void)removeActionsWithoutTitle
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___ATXDataStore_removeActionsWithoutTitle__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (int64_t)currentSchemaVersion
{
  db = self->_db;
  if (!db)
  {
    [_ATXDataStore currentSchemaVersion];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37___ATXDataStore_currentSchemaVersion__block_invoke;
  v5[3] = &unk_278598790;
  v5[4] = &v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT version FROM meta" onPrep:0 onRow:v5 onError:&__block_literal_global_720];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)migrate
{
  v3 = +[_ATXDataStoreMigrations migrations];
  [(_ATXDataStore *)self migrateWithMigrationPlan:v3];
}

- (void)migrateWithMigrationPlan:(id)plan
{
  v49 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  v32 = [planCopy count];
  selfCopy = self;
  currentSchemaVersion = [(_ATXDataStore *)self currentSchemaVersion];
  self->_schemaVersion = currentSchemaVersion;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v46 = v32;
    v47 = 2048;
    v48 = currentSchemaVersion;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "ATXDataStore: Migrating with maxDBVersion in migration plan: %ld. Current schema version: %lu.", buf, 0x16u);
  }

  schemaVersion = self->_schemaVersion;
  if (schemaVersion - 35 <= 3)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = [&unk_283A57F20 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v6)
    {
      v7 = *v38;
      v8 = MEMORY[0x277D85DD0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v38 != v7)
          {
            objc_enumerationMutation(&unk_283A57F20);
          }

          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE histogramType>5", *(*(&v37 + 1) + 8 * i)];
          db = self->_db;
          v36[0] = v8;
          v36[1] = 3221225472;
          v36[2] = __42___ATXDataStore_migrateWithMigrationPlan___block_invoke;
          v36[3] = &unk_2785987B8;
          v36[4] = self;
          [(_PASSqliteDatabase *)db prepAndRunQuery:v10 onPrep:0 onRow:0 onError:v36];
        }

        v6 = [&unk_283A57F20 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v6);
    }

    schemaVersion = self->_schemaVersion;
  }

  if (schemaVersion <= 2)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Migrating _ATXDataStore schema. Since previous _schemaVersion is from before migrations started, reset to current schema", buf, 2u);
    }

    [(_ATXDataStore *)self clearDatabase];
    skipFromZeroSchema = [(_ATXDataStore *)self skipFromZeroSchema];
LABEL_22:
    switch(skipFromZeroSchema)
    {
      case 2:
        dbMigrationTracker = selfCopy->_dbMigrationTracker;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:currentSchemaVersion];
        v41[0] = v28;
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_schemaVersion];
        v41[1] = v29;
        v41[2] = @"unsupported";
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
        [(PETScalarEventTracker *)dbMigrationTracker trackEventWithPropertyValues:v30];

        break;
      case 1:
        v23 = selfCopy->_dbMigrationTracker;
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:currentSchemaVersion];
        v42[0] = v24;
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_schemaVersion];
        v42[1] = v25;
        v42[2] = @"success";
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
        [(PETScalarEventTracker *)v23 trackEventWithPropertyValues:v26];

        break;
      case 0:
        v18 = __atxlog_handle_default();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_INFO, "_ATXDataStore migration failed!", buf, 2u);
        }

        v19 = selfCopy->_dbMigrationTracker;
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:currentSchemaVersion];
        v43[0] = v20;
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_schemaVersion];
        v43[1] = v21;
        v43[2] = @"failed";
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
        [(PETScalarEventTracker *)v19 trackEventWithPropertyValues:v22];

        [(_PASSqliteDatabase *)selfCopy->_db placeCorruptionMarker];
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277D42688] format:@"_ATXDataStore migration failed. Marking as corrupt."];
        break;
    }

    goto LABEL_33;
  }

  v14 = schemaVersion < v32;
  v15 = __atxlog_handle_default();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "ATXDataStore: Migrating _ATXDataStore schema since current schema version is smaller than maxDbVersion in migration plan.", buf, 2u);
    }

    v17 = os_transaction_create();
    do
    {
      skipFromZeroSchema = [(_ATXDataStore *)selfCopy migrateToVersion:selfCopy->_schemaVersion + 1 withMigrationPlan:planCopy];
    }

    while (skipFromZeroSchema == 3);

    goto LABEL_22;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "ATXDataStore: Not migrating _ATXDataStore since the current schema version is greater than or equal to the maxDBVersion in the migration plan.", buf, 2u);
  }

LABEL_33:
  v31 = *MEMORY[0x277D85DE8];
}

- (int64_t)skipFromZeroSchema
{
  v3 = [_ATXDataStoreMigrations skipFromZeroSchema:&self->_schemaVersion];
  v4 = [(_ATXDataStore *)self runMigrationPlan:v3];

  if (v4 == 3)
  {
    return 1;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(_ATXDataStore *)&self->_schemaVersion skipFromZeroSchema];
  }

  return 0;
}

- (int64_t)configureDatabase
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [&unk_283A57F38 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(&unk_283A57F38);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        db = self->_db;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __34___ATXDataStore_configureDatabase__block_invoke;
        v11[3] = &unk_27859A1A0;
        v11[4] = &v12;
        [(_PASSqliteDatabase *)db prepAndRunQuery:v6 onPrep:0 onRow:0 onError:v11];
        v8 = *(v13 + 24);
        _Block_object_dispose(&v12, 8);
        if (v8)
        {
          result = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [&unk_283A57F38 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)migrateToVersion:(unint64_t)version withMigrationPlan:(id)plan
{
  v17 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  if (self->_schemaVersion == version - 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    v8 = [planCopy objectForKeyedSubscript:v7];

    if (v8)
    {
      ++self->_schemaVersion;
      v9 = [(_ATXDataStore *)self runMigrationPlan:v8];
      v10 = __atxlog_handle_default();
      v11 = v10;
      if (v9 == 3)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = 134217984;
          versionCopy = version;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "ATXDataStore: Migration to version %lu completed.", &v15, 0xCu);
        }

        v12 = 3;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [_ATXDataStore migrateToVersion:withMigrationPlan:];
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migrateToVersion:withMigrationPlan:];
    }

    v12 = 2;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int64_t)runMigrationPlan:(id)plan
{
  planCopy = plan;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34___ATXDataStore_runMigrationPlan___block_invoke;
  v9[3] = &unk_27859C938;
  v6 = planCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [(_PASSqliteDatabase *)db frailWriteTransaction:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (void)updateSchemaVersionNumberTo:(int64_t)to
{
  db = self->_db;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45___ATXDataStore_updateSchemaVersionNumberTo___block_invoke;
  v4[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v4[4] = to;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE meta SET version=? WHERE id=1" onPrep:v4 onRow:0 onError:&__block_literal_global_756];
}

- (void)clearDatabase
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  db = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __30___ATXDataStore_clearDatabase__block_invoke;
  v20[3] = &unk_278599FC8;
  v5 = v3;
  v21 = v5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __30___ATXDataStore_clearDatabase__block_invoke_2;
  v19[3] = &unk_2785987B8;
  v19[4] = self;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT name FROM sqlite_master WHERE type='table' AND NOT name LIKE 'sqlite_%'" onPrep:0 onRow:v20 onError:v19];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE IF EXISTS %@", *(*(&v15 + 1) + 8 * v10)];
        v12 = self->_db;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __30___ATXDataStore_clearDatabase__block_invoke_3;
        v14[3] = &unk_2785987B8;
        v14[4] = self;
        [(_PASSqliteDatabase *)v12 prepAndRunQuery:v11 onPrep:0 onRow:0 onError:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int64_t)migration_LaunchHistoriesToAppTable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 3;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASSqliteDatabase *)db writeTransaction:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)migration_InstallDateToAppTable
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"_ATXAppInstallDate.plist"];
  v39 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:2 error:&v39];
  v5 = v39;
  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v38 = v5;
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v4 error:&v38];
    v12 = v38;

    if (v11)
    {
      v31 = v12;
      v32 = v4;

      objc_autoreleasePoolPop(v6);
      v13 = __atxlog_handle_app_install();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Converting install date plist to app table", buf, 2u);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v35;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = [v14 objectForKeyedSubscript:v19];
            v21 = __atxlog_handle_app_install();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v41 = v20;
              v42 = 2112;
              v43 = v19;
              _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Setting date: %{public}@ for bundle id: %@", buf, 0x16u);
            }

            [v20 timeIntervalSinceReferenceDate];
            [(_ATXDataStore *)self migrationUpdateOrInsertTimestamp:v22 intoColumn:@"installDate" forBundleId:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v16);
      }

      v4 = v32;
      v12 = v31;
    }

    else
    {
      v24 = __atxlog_handle_default();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_ATXDataStore migration_InstallDateToAppTable];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    v23 = __atxlog_handle_default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migration_InstallDateToAppTable];
    }

    v12 = v5;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v33 = v12;
  v26 = [defaultManager removeItemAtPath:v3 error:&v33];
  v27 = v33;

  if ((v26 & 1) == 0)
  {
    v28 = __atxlog_handle_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v3;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Unable to remove %@: %@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return 3;
}

- (int64_t)migration_AppLaunchHistogramToTable
{
  v57 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"_ATXAppLaunchHistogram.v2.dat"];
  v4 = [_ATXDataStore loadDataFromFile:v3];

  [(_ATXDataStore *)self updateOrInsertHistogramData:v4 forHistogram:0];
  v5 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"_ATXSpotlightAppLaunchHistogram.v2.dat"];
  v6 = [_ATXDataStore loadDataFromFile:v5];

  selfCopy = self;
  v36 = v6;
  [(_ATXDataStore *)self updateOrInsertHistogramData:v6 forHistogram:1];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = [&unk_283A57F50 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(&unk_283A57F50);
        }

        v11 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:*(*(&v47 + 1) + 8 * i)];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v46 = 0;
        v13 = [defaultManager removeItemAtPath:v11 error:&v46];
        v14 = v46;

        if ((v13 & 1) == 0)
        {
          v15 = __atxlog_handle_default();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v53 = v11;
            v54 = 2112;
            v55 = v14;
            _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Unable to remove %@: %@", buf, 0x16u);
          }
        }
      }

      v8 = [&unk_283A57F50 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v8);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = [&unk_283A57F68 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v43;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(&unk_283A57F68);
        }

        v21 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:*(*(&v42 + 1) + 8 * j)];
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v41 = 0;
        v23 = [defaultManager2 removeItemAtPath:v21 error:&v41];
        v24 = v41;

        if (v23)
        {
          v18 = 1;
        }

        else
        {
          v25 = __atxlog_handle_default();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v53 = v21;
            v54 = 2112;
            v55 = v24;
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Unable to remove %@: %@", buf, 0x16u);
          }
        }
      }

      v17 = [&unk_283A57F68 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v17);
    if (v18)
    {
      v26 = [[_ATXAppLaunchHistogramWithPersistentBackup alloc] initWithDataStore:self histogramType:0 loadFromDataStore:0 saveOnBackgroundQueue:0];
      v27 = [[_ATXAppLaunchHistogramWithPersistentBackup alloc] initWithDataStore:selfCopy histogramType:1 loadFromDataStore:0 saveOnBackgroundQueue:0];
      date = [MEMORY[0x277CBEAA8] date];
      v29 = [date dateByAddingTimeInterval:-1209600.0];
      appInFocusStream = selfCopy->_appInFocusStream;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __52___ATXDataStore_migration_AppLaunchHistogramToTable__block_invoke;
      v38[3] = &unk_27859C960;
      v39 = v26;
      v40 = v27;
      v31 = v27;
      v32 = v26;
      [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:v29 endDate:date limit:1000000 shouldReverse:0 type:15 displayType:7 bundleIDsFilter:0 block:v38];
      [(_ATXAppLaunchHistogramWithPersistentBackup *)v32 flush];
      [(_ATXAppLaunchHistogramWithPersistentBackup *)v31 flush];
    }
  }

  objc_autoreleasePoolPop(context);
  v33 = *MEMORY[0x277D85DE8];
  return 3;
}

- (int64_t)migration_RemoveFeedbackForUninstalledApps
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifier = [*(*(&v17 + 1) + 8 * v8) bundleIdentifier];
        [v3 addObject:bundleIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  db = self->_db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59___ATXDataStore_migration_RemoveFeedbackForUninstalledApps__block_invoke;
  v14[3] = &unk_27859C820;
  v15 = v3;
  selfCopy = self;
  v11 = v3;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT bundleId FROM app" onPrep:0 onRow:v14 onError:&__block_literal_global_798];

  v12 = *MEMORY[0x277D85DE8];
  return 3;
}

- (int64_t)migration_RemoveRestoreUserDefault
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v3 removeObjectForKey:@"RecentRestoreDate"];

  return 3;
}

- (int64_t)migration_DelinkFromCoreLocationVisitMonitoring
{
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___ATXDataStore_migration_DelinkFromCoreLocationVisitMonitoring__block_invoke;
  block[3] = &unk_278596BB8;
  v6 = v2;
  dispatch_async(v2, block);

  return 3;
}

- (int64_t)migration_AddExtensionInfo
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43___ATXDataStore_migration_AddExtensionInfo__block_invoke;
  v6[3] = &unk_27859C988;
  v7 = v3;
  v4 = v3;
  [(_ATXDataStore *)self _enumerateAppInfoBundlesExecutingBlock:v6];
  [(_ATXDataStore *)self _markBundleIdsAsExtension:v4];

  return 3;
}

- (int64_t)migration_AddEnterpriseAppInfo
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___ATXDataStore_migration_AddEnterpriseAppInfo__block_invoke;
  v3[3] = &unk_27859C988;
  v3[4] = self;
  [(_ATXDataStore *)self _enumerateAppInfoBundlesExecutingBlock:v3];
  return 3;
}

- (void)updateOrInsertHistogramData:(id)data forHistogram:(int64_t)histogram
{
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy)
  {
    db = self->_db;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58___ATXDataStore_updateOrInsertHistogramData_forHistogram___block_invoke;
    v9[3] = &unk_278599E00;
    histogramCopy = histogram;
    v10 = dataCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO histograms (histogramType onPrep:histogramData) VALUES (:histogram_type onRow::histogram_data) ON CONFLICT(histogramType) DO UPDATE SET histogramData=excluded.histogramData" onError:v9, 0, 0];
  }
}

- (void)updateOrInsertCategoricalHistogramData:(id)data forHistogram:(int64_t)histogram
{
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy)
  {
    db = self->_db;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69___ATXDataStore_updateOrInsertCategoricalHistogramData_forHistogram___block_invoke;
    v9[3] = &unk_278599E00;
    histogramCopy = histogram;
    v10 = dataCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO categoricalHistograms (histogramType onPrep:histogramData) VALUES (:histogram_type onRow::histogram_data) ON CONFLICT(histogramType) DO UPDATE SET histogramData=excluded.histogramData" onError:v9, 0, 0];
  }
}

- (int64_t)migration_DeprecateGenericAppIntentModels
{
  v3 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"_APRParzenModel"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  [defaultManager removeItemAtPath:v3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migration_DeprecateGenericAppIntentModels];
    }
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DELETE FROM categoricalHistograms WHERE histogramType = :histogram_type" onPrep:&__block_literal_global_831 onRow:0 onError:&__block_literal_global_833];

  return 3;
}

- (int64_t)migration_moveCacheFiles
{
  v20 = *MEMORY[0x277D85DE8];
  if (([(_PASSqliteDatabase *)self->_db isInMemory]& 1) == 0)
  {
    appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager contentsOfDirectoryAtPath:appPredictionDirectory error:0];

    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 hasPrefix:@"ATXCacheFile-"])
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v12 = [appPredictionDirectory stringByAppendingPathComponent:v10];
            [defaultManager2 removeItemAtPath:v12 error:0];

            v7 = 1;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);

      if (v7)
      {
        ATXUpdatePredictions(18, 1.0);
      }
    }

    else
    {
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 3;
}

- (int64_t)migration_DeprecateIntentForAllAppsHistograms
{
  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DELETE FROM histograms WHERE histogramType IN (:h1 onPrep::h2 onRow::h3 onError::h4, :h5)", &__block_literal_global_841, 0, &__block_literal_global_848];
  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DELETE FROM categoricalHistograms WHERE histogramType = :h1" onPrep:&__block_literal_global_854 onRow:0 onError:&__block_literal_global_857];
  return 3;
}

- (id)allActionsAndSlots
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__50;
  v12 = __Block_byref_object_dispose__50;
  v13 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35___ATXDataStore_allActionsAndSlots__block_invoke;
  v7[3] = &unk_278598790;
  v7[4] = &v8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35___ATXDataStore_allActionsAndSlots__block_invoke_2;
  v6[3] = &unk_27859A1A0;
  v6[4] = &v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT slots onPrep:id FROM alog" onRow:0 onError:v7, v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (BOOL)writeSlotSetKeyParameters:(id)parameters rowId:(id)id slotSet:(id)set success:(int64_t *)success
{
  parametersCopy = parameters;
  idCopy = id;
  setCopy = set;
  uuid = [setCopy uuid];

  if (uuid)
  {
    db = self->_db;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65___ATXDataStore_writeSlotSetKeyParameters_rowId_slotSet_success___block_invoke;
    v22[3] = &unk_278599DB8;
    v23 = idCopy;
    v24 = setCopy;
    v25 = parametersCopy;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65___ATXDataStore_writeSlotSetKeyParameters_rowId_slotSet_success___block_invoke_2;
    v18[3] = &unk_27859C9B0;
    v19 = v24;
    v20 = v23;
    successCopy = success;
    v15 = [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT OR IGNORE INTO slotSetKey (alogId onPrep:uuid onRow:paramHash onError:slotHash, paramCount) VALUES (?, ?, ?, ?, ?)", v22, 0, v18];
  }

  else
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore writeSlotSetKeyParameters:rowId:slotSet:success:];
    }

    v15 = 0;
    *success = 0;
  }

  return v15;
}

- (int64_t)updateAlog:(id)alog slotsToMigrate:(id)migrate
{
  alogCopy = alog;
  migrateCopy = migrate;
  v8 = [migrateCopy objectForKeyedSubscript:alogCopy];
  first = [v8 first];

  v10 = [migrateCopy objectForKeyedSubscript:alogCopy];

  second = [v10 second];

  v12 = ATXSlotSetsSerialize();
  v13 = v12;
  if (v12)
  {
    db = self->_db;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43___ATXDataStore_updateAlog_slotsToMigrate___block_invoke;
    v20[3] = &unk_278598718;
    v21 = v12;
    v22 = alogCopy;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43___ATXDataStore_updateAlog_slotsToMigrate___block_invoke_2;
    v18[3] = &unk_2785987B8;
    v19 = v22;
    if ([(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE alog SET slots = ? WHERE id = ?" onPrep:v20 onRow:0 onError:v18])
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    v16 = v21;
  }

  else
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore updateAlog:slotsToMigrate:];
    }

    v15 = 0;
  }

  return v15;
}

- (int64_t)migration_SlotSetKeyCreation
{
  v36 = *MEMORY[0x277D85DE8];
  allActionsAndSlots = [(_ATXDataStore *)self allActionsAndSlots];
  v4 = allActionsAndSlots;
  if (allActionsAndSlots)
  {
    v33 = 3;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [allActionsAndSlots countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v23)
    {
      v21 = *v30;
      v22 = v4;
      do
      {
        v5 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v4);
          }

          v24 = v5;
          v6 = *(*(&v29 + 1) + 8 * v5);
          v7 = [v4 objectForKeyedSubscript:{v6, v21}];
          first = [v7 first];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v4 objectForKeyedSubscript:v6];
          second = [v9 second];

          v11 = [second countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(second);
                }

                v15 = *(*(&v25 + 1) + 8 * i);
                v16 = objc_opt_new();
                [v15 setUuid:v16];
                v17 = [[ATXMinimalSlotResolutionParameters alloc] initWithAction:first slots:v15];
                [(_ATXDataStore *)self writeSlotSetKeyParameters:v17 rowId:v6 slotSet:v15 success:&v33];
              }

              v12 = [second countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v12);
          }

          v4 = v22;
          if (v33 == 3)
          {
            v33 = [(_ATXDataStore *)self updateAlog:v6 slotsToMigrate:v22];
          }

          v5 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [v22 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v23);
    }

    v18 = v33;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int64_t)_regenerateSlotSetKeys
{
  [(_PASSqliteDatabase *)self->_db prepAndRunNonDataQueries:&unk_283A57F80 onError:0];

  return [(_ATXDataStore *)self migration_SlotSetKeyCreation];
}

- (int64_t)migration_RemoveCachedConsumerDB
{
  v2 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"cachedDataStore"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:v2 error:0];
  v4 = [v2 stringByAppendingString:@"-shm"];
  [defaultManager removeItemAtPath:v4 error:0];

  v5 = [v2 stringByAppendingString:@"-wal"];
  [defaultManager removeItemAtPath:v5 error:0];

  return 3;
}

- (int64_t)migration_AddFeedbackColumns
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  db = self->_db;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45___ATXDataStore_migration_AddFeedbackColumns__block_invoke;
  v23[3] = &unk_278598790;
  v23[4] = &v24;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45___ATXDataStore_migration_AddFeedbackColumns__block_invoke_2;
  v22[3] = &unk_27859A1A0;
  v22[4] = &v24;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT name FROM pragma_table_info('afeedback') WHERE name IN ('consumerSubType' onPrep:'feedbackType')" onRow:0 onError:v23, v22];
  v4 = *(v25 + 6);
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 3;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [&unk_283A57F98 countByEnumeratingWithState:&v14 objects:v28 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(&unk_283A57F98);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          v10 = self->_db;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __45___ATXDataStore_migration_AddFeedbackColumns__block_invoke_3;
          v13[3] = &unk_27859A1A0;
          v13[4] = &v18;
          [(_PASSqliteDatabase *)v10 prepAndRunQuery:v9 onPrep:0 onRow:0 onError:v13];
          if (!v19[3])
          {
            v5 = 0;
            goto LABEL_15;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_283A57F98 countByEnumeratingWithState:&v14 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v5 = v19[3];
LABEL_15:
    _Block_object_dispose(&v18, 8);
  }

  _Block_object_dispose(&v24, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)migration_RecreatePredictionFeedbackInfo
{
  v57 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__50;
  v53 = __Block_byref_object_dispose__50;
  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  db = self->_db;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke;
  v48[3] = &unk_278598790;
  v48[4] = &v49;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT appAction onPrep:predictionsCount onRow:feedbackCount onError:uiType FROM predictionFeedbackInfo WHERE uiType IS NOT NULL", 0, v48, &__block_literal_global_886];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [&unk_283A57FB0 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v4)
  {
    v5 = *v41;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(&unk_283A57FB0);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = self->_db;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke_3;
        v39[3] = &unk_27859A1A0;
        v39[4] = &v44;
        [(_PASSqliteDatabase *)v8 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v39];
        if (!v45[3])
        {
LABEL_19:
          v24 = 0;
          goto LABEL_20;
        }
      }

      v4 = [&unk_283A57FB0 countByEnumeratingWithState:&v40 objects:v56 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v50[5];
  v9 = [obj countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (v9)
  {
    v28 = *v36;
    while (2)
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * j);
        first = [v11 first];
        second = [v11 second];
        v14 = [v50[5] objectForKeyedSubscript:v11];
        first2 = [v14 first];

        v16 = [v50[5] objectForKeyedSubscript:v11];
        second2 = [v16 second];

        v18 = MEMORY[0x277D85DD0];
        v19 = self->_db;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke_4;
        v30[3] = &unk_27859C758;
        v20 = first;
        v31 = v20;
        v21 = first2;
        v32 = v21;
        v22 = second2;
        v33 = v22;
        v23 = second;
        v34 = v23;
        v29[0] = v18;
        v29[1] = 3221225472;
        v29[2] = __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke_5;
        v29[3] = &unk_27859A1A0;
        v29[4] = &v44;
        [(_PASSqliteDatabase *)v19 prepAndRunQuery:@"INSERT INTO predictionFeedbackInfo (appAction onPrep:predictionsCount onRow:feedbackCount onError:uiType) VALUES (:appAction, :predictionsCount, :feedbackCount, :uiType)", v30, 0, v29];
        LOBYTE(v19) = v45[3] == 0;

        if (v19)
        {

          goto LABEL_19;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v55 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v24 = v45[3];
LABEL_20:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v49, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (int64_t)migration_RemoveDeprecatedStartCallIntents
{
  v17 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEA60] arrayWithObjects:{@"com.apple.mobilephone", @"com.apple.facetime", 0}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(_ATXDataStore *)self _regenerateSlotSetKeyForBundleId:*(*(&v12 + 1) + 8 * v7)];
        if (v8 != 3)
        {
          v9 = v8;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 3;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)migration_removeBrokenBlendingStream
{
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [_ATXDataStore migration_removeBrokenBlendingStream];
  }

  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v4 = [appPredictionDirectory stringByAppendingPathComponent:@"streams"];
  v5 = [v4 stringByAppendingPathComponent:@"blending"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  [defaultManager removeItemAtPath:v5 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migration_removeBrokenBlendingStream];
    }
  }

  return 3;
}

- (void)updateOrInsertSubsequentLaunchCountData:(id)data forBundleId:(id)id
{
  dataCopy = data;
  idCopy = id;
  v8 = idCopy;
  if (idCopy)
  {
    db = self->_db;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69___ATXDataStore_updateOrInsertSubsequentLaunchCountData_forBundleId___block_invoke;
    v11[3] = &unk_278598718;
    v12 = idCopy;
    v13 = dataCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appInfo (bundleId onPrep:subsequentLaunchCounts) VALUES (:bundle_id onRow::launch_count) ON CONFLICT(bundleId) DO UPDATE SET subsequentLaunchCounts=excluded.subsequentLaunchCounts" onError:v11, 0, 0];

    v10 = v12;
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_ATXDataStore updateOrInsertSubsequentLaunchCountData:forBundleId:];
    }
  }
}

- (int64_t)migration_removeAnchorModelDirectory
{
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Removing Anchor Model Directory", buf, 2u);
  }

  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v4 = [appPredictionDirectory stringByAppendingPathComponent:@"AnchorModel"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  [defaultManager removeItemAtPath:v4 error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migration_removeAnchorModelDirectory];
    }
  }

  return 3;
}

- (int64_t)migration_updateNewAzulSystemAppsInstallDate
{
  v2 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Setting Azul migration key", v6, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v4 setBool:1 forKey:@"azulMigration"];

  return 3;
}

- (int64_t)migration_forceUpdateNewAzulSystemAppsInstallDate
{
  v3 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Force updating install date of newly added system apps", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 3;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66___ATXDataStore_migration_forceUpdateNewAzulSystemAppsInstallDate__block_invoke_2;
  v7[3] = &unk_27859A1A0;
  v7[4] = buf;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE appInfo SET installDate = :new_timestamp WHERE bundleId IN (:translate_app onPrep::magnifier_app)" onRow:&__block_literal_global_926 onError:0, v7];
  v5 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v5;
}

- (int64_t)migration_updateNewCrystalSystemAppsInstallDate
{
  v2 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Setting Crystal migration key", v6, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v4 setBool:1 forKey:@"crystalMigration"];

  return 3;
}

- (int64_t)migration_forceUpdateNewCrystalSystemAppsInstallDate
{
  v3 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Force updating install date of newly added system apps in Crystal", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 3;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2;
  v9[3] = &unk_27859A1A0;
  v9[4] = buf;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE appInfo SET installDate = :new_timestamp WHERE bundleId IN (:generativePlayground_app onPrep::printCenter_app onRow::tvRemote_app onError::passwords_app)", &__block_literal_global_943, 0, v9];
  if ([MEMORY[0x277D42590] isiPad])
  {
    v5 = self->_db;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2_967;
    v8[3] = &unk_27859A1A0;
    v8[4] = buf;
    [(_PASSqliteDatabase *)v5 prepAndRunQuery:@"UPDATE appInfo SET installDate = :new_timestamp WHERE bundleId IN (:calculator_app)" onPrep:&__block_literal_global_962 onRow:0 onError:v8];
  }

  v6 = *(v11 + 3);
  _Block_object_dispose(buf, 8);
  return v6;
}

- (int64_t)migration_RemoveLinkActions
{
  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DELETE FROM anchorModelTrainingData WHERE candidateType='linkaction'" onPrep:&__block_literal_global_972 onRow:0 onError:&__block_literal_global_974];
  db = self->_db;
  v10 = 0;
  v4 = [(_PASSqliteDatabase *)db vacuumWithShouldContinueBlock:&__block_literal_global_977 error:&v10];
  v5 = v10;
  v6 = __atxlog_handle_default();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Successfully completed migration_RemoveLinkActions", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_ATXDataStore migration_RemoveLinkActions];
  }

  return 3;
}

- (void)updateOrInsertDataForRemoteAppsWithMappings:(id)mappings
{
  v42 = *MEMORY[0x277D85DE8];
  mappingsCopy = mappings;
  if ([mappingsCopy count])
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = mappingsCopy;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "_ATXDataStore: Updating database with remote apps dictionary: %@", buf, 0xCu);
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    array4 = [MEMORY[0x277CBEB18] array];
    array5 = [MEMORY[0x277CBEB18] array];
    array6 = [MEMORY[0x277CBEB18] array];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke;
    v33[3] = &unk_27859C9F8;
    v12 = array;
    v34 = v12;
    v13 = array2;
    v35 = v13;
    v14 = array3;
    v36 = v14;
    v15 = array4;
    v37 = v15;
    v16 = array5;
    v38 = v16;
    v17 = array6;
    v39 = v17;
    [mappingsCopy enumerateKeysAndObjectsUsingBlock:v33];
    db = self->_db;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke_2;
    v26[3] = &unk_27859CA48;
    v26[4] = self;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v19 = v17;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    [(_PASSqliteDatabase *)db writeTransaction:v26];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setInstallDateToDistantOldTimeForRemoteApps:(id)apps
{
  v12 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  if ([appsCopy count])
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = appsCopy;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "_ATXDataStore: Setting install date to 1 for these existing remote apps: %@", buf, 0xCu);
    }

    db = self->_db;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61___ATXDataStore_setInstallDateToDistantOldTimeForRemoteApps___block_invoke;
    v8[3] = &unk_278596C10;
    v8[4] = self;
    v9 = appsCopy;
    [(_PASSqliteDatabase *)db writeTransaction:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)bundleIDForRemoteAppWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___ATXDataStore_bundleIDForRemoteAppWithUUID___block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)hasRemoteApps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30___ATXDataStore_hasRemoteApps__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)deleteAllRemoteApps
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___ATXDataStore_deleteAllRemoteApps__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (int64_t)migration_overrideNilInstallDateToDistantOldTime
{
  v3 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Overriding apps with nil install date with distant old install date", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 3;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65___ATXDataStore_migration_overrideNilInstallDateToDistantOldTime__block_invoke_2;
  v7[3] = &unk_27859A1A0;
  v7[4] = buf;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE appInfo SET installDate = :new_timestamp WHERE installDate IS NULL" onPrep:&__block_literal_global_1003 onRow:0 onError:v7];
  v5 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v5;
}

- (int64_t)migration_removeOldStackStateTrackerFile
{
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Removing old Stack State Tracker file", buf, 2u);
  }

  appPredictionCacheDirectory = [MEMORY[0x277CEBCB0] appPredictionCacheDirectory];
  v4 = [appPredictionCacheDirectory stringByAppendingPathComponent:@"ATXStackStates"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  [defaultManager removeItemAtPath:v4 error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migration_removeOldStackStateTrackerFile];
    }
  }

  return 3;
}

- (int64_t)migration_removeHomeScreenWidgetBlacklistFile
{
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Removing home screen widget blacklist file", buf, 2u);
  }

  v3 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"ATXHomeScreenWidgetBlacklist"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  [defaultManager removeItemAtPath:v3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migration_removeHomeScreenWidgetBlacklistFile];
    }
  }

  return 3;
}

- (int64_t)migration_populateModeCaches
{
  v2 = dispatch_get_global_queue(17, 0);
  dispatch_async(v2, &__block_literal_global_1011);

  return 3;
}

- (int64_t)migration_deleteFocusSpaceCaches
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Removing focus space layout cache files", buf, 2u);
  }

  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v3 = [&unk_283A57FC8 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = v3;
  v6 = 0;
  v7 = *v42;
  *&v4 = 138412290;
  v33 = v4;
  do
  {
    v8 = 0;
    v9 = v6;
    do
    {
      if (*v42 != v7)
      {
        objc_enumerationMutation(&unk_283A57FC8);
      }

      v10 = *(*(&v41 + 1) + 8 * v8);
      uiCachesRootDirectory = [MEMORY[0x277CEBCB0] uiCachesRootDirectory];
      v12 = [uiCachesRootDirectory stringByAppendingPathComponent:v10];

      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = v33;
        v47 = v12;
        _os_log_debug_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEBUG, "Deleting deprecated UI cache file: %@", buf, 0xCu);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v40 = v9;
      v15 = [defaultManager removeItemAtPath:v12 error:&v40];
      v6 = v40;

      if ((v15 & 1) == 0)
      {
        code = [v6 code];

        if (code == 4)
        {
          goto LABEL_15;
        }

        defaultManager = __atxlog_handle_default();
        if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
        {
          *buf = v33;
          v47 = v6;
          _os_log_error_impl(&dword_2263AA000, defaultManager, OS_LOG_TYPE_ERROR, "Failed to delete deprecated UI cache file: %@", buf, 0xCu);
        }
      }

LABEL_15:
      ++v8;
      v9 = v6;
    }

    while (v5 != v8);
    v5 = [&unk_283A57FC8 countByEnumeratingWithState:&v41 objects:v48 count:16];
  }

  while (v5);
LABEL_19:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [&unk_283A57FE0 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (!v17)
  {
    goto LABEL_33;
  }

  v19 = v17;
  v20 = *v37;
  *&v18 = 138412290;
  v34 = v18;
  while (2)
  {
    v21 = 0;
    v22 = v6;
    while (2)
    {
      if (*v37 != v20)
      {
        objc_enumerationMutation(&unk_283A57FE0);
      }

      v23 = *(*(&v36 + 1) + 8 * v21);
      clientModelCachesRootDirectory = [MEMORY[0x277CEBCB0] clientModelCachesRootDirectory];
      v25 = [clientModelCachesRootDirectory stringByAppendingPathComponent:v23];

      v26 = __atxlog_handle_default();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = v34;
        v47 = v25;
        _os_log_debug_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEBUG, "Deleting deprecated client model file: %@", buf, 0xCu);
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v35 = v22;
      v28 = [defaultManager2 removeItemAtPath:v25 error:&v35];
      v6 = v35;

      if (v28)
      {
LABEL_30:
      }

      else
      {
        code2 = [v6 code];

        if (code2 != 4)
        {
          defaultManager2 = __atxlog_handle_default();
          if (os_log_type_enabled(defaultManager2, OS_LOG_TYPE_ERROR))
          {
            *buf = v34;
            v47 = v6;
            _os_log_error_impl(&dword_2263AA000, defaultManager2, OS_LOG_TYPE_ERROR, "Failed to delete deprecated client model file: %@", buf, 0xCu);
          }

          goto LABEL_30;
        }
      }

      ++v21;
      v22 = v6;
      if (v19 != v21)
      {
        continue;
      }

      break;
    }

    v19 = [&unk_283A57FE0 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v30 = __atxlog_handle_default();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "Done removing focus space layout cache files", buf, 2u);
  }

  v31 = *MEMORY[0x277D85DE8];
  return 3;
}

- (int64_t)migration_deleteAllTrainedRelevanceModels
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all trained relevance models for migration", buf, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunNonDataQueries:&unk_283A57FF8 onError:0];
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Done deleting all trained relevance models for migration.", v6, 2u);
  }

  return 3;
}

- (int64_t)migration_purgeExpensiveCachesFromUserDefaults
{
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Purging expensive caches from user defaults", v6, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v4 removeObjectForKey:@"cachedFamilyCircle"];
  [v4 removeObjectForKey:@"com.apple.duetexpertd.AnchorModelScheduler.CurrentPredictions"];

  return 3;
}

- (void)updateOrInsertSubsequentAppActionLaunchCountData:(id)data forAppAction:(id)action
{
  dataCopy = data;
  actionCopy = action;
  v8 = actionCopy;
  if (actionCopy)
  {
    if ([actionCopy hasSuffix:@"#AppLaunched"])
    {
      v9 = [v8 substringWithRange:{0, objc_msgSend(v8, "length") - objc_msgSend(@":#AppLaunched", "length")}];
      v10 = @"INSERT INTO appInfo (bundleId, subsequentAppActionLaunchCounts) VALUES (:key, :launch_count) ON CONFLICT(bundleId) DO UPDATE SET subsequentAppActionLaunchCounts=excluded.subsequentAppActionLaunchCounts";
    }

    else
    {
      v9 = v8;
      v10 = @"INSERT INTO appActionInfo (appAction, subsequentAppActionLaunchCounts) VALUES (:key, :launch_count) ON CONFLICT(appAction) DO UPDATE SET subsequentAppActionLaunchCounts=excluded.subsequentAppActionLaunchCounts";
    }

    db = self->_db;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79___ATXDataStore_updateOrInsertSubsequentAppActionLaunchCountData_forAppAction___block_invoke;
    v13[3] = &unk_278598718;
    v14 = v9;
    v15 = dataCopy;
    v11 = v9;
    [(_PASSqliteDatabase *)db prepAndRunQuery:v10 onPrep:v13 onRow:0 onError:0];
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_ATXDataStore updateOrInsertSubsequentAppActionLaunchCountData:forAppAction:];
    }
  }
}

- (void)updateOrInsertPredictionsAndFeedbackForAppAction:(id)action feedbackReceived:(BOOL)received forUIType:(id)type
{
  actionCopy = action;
  typeCopy = type;
  if (actionCopy)
  {
    db = self->_db;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93___ATXDataStore_updateOrInsertPredictionsAndFeedbackForAppAction_feedbackReceived_forUIType___block_invoke;
    v12[3] = &unk_27859CA70;
    v13 = actionCopy;
    v14 = typeCopy;
    receivedCopy = received;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO predictionFeedbackInfo (appAction onPrep:predictionsCount onRow:feedbackCount onError:uiType) VALUES (:app_action, 1, :feedback_count, :ui_type) ON CONFLICT(appAction, uiType) DO UPDATE SET predictionsCount = predictionsCount + 1, feedbackCount = feedbackCount + :feedback_count", v12, 0, 0];

    v11 = v13;
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_ATXDataStore updateOrInsertPredictionsAndFeedbackForAppAction:feedbackReceived:forUIType:];
    }
  }
}

- (void)updateInstallDateForBundleID:(id)d timestamp:(double)timestamp
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Force updating install date for bundle ID: %@", buf, 0xCu);
  }

  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56___ATXDataStore_updateInstallDateForBundleID_timestamp___block_invoke;
  v11[3] = &unk_278599E00;
  timestampCopy = timestamp;
  v12 = dCopy;
  v9 = dCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE appInfo SET installDate = :new_timestamp WHERE bundleId = :bundle_id" onPrep:v11 onRow:0 onError:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateOrInsertMessageRecipient:(id)recipient dateMessaged:(id)messaged
{
  recipientCopy = recipient;
  messagedCopy = messaged;
  if (recipientCopy)
  {
    db = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61___ATXDataStore_updateOrInsertMessageRecipient_dateMessaged___block_invoke;
    v10[3] = &unk_278598718;
    v11 = recipientCopy;
    v12 = messagedCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO messageRecipients (recipientName onPrep:lastDateMessaged) VALUES (:recipient onRow::date_messaged) ON CONFLICT(recipientName) DO UPDATE SET lastDateMessaged=excluded.lastDateMessaged" onError:v10, 0, 0];

    v9 = v11;
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_ATXDataStore updateOrInsertMessageRecipient:dateMessaged:];
    }
  }
}

- (void)updateOrInsertAverageSecondsBetweenLaunches:(id)launches forBundleId:(id)id
{
  launchesCopy = launches;
  idCopy = id;
  v8 = idCopy;
  if (idCopy)
  {
    db = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73___ATXDataStore_updateOrInsertAverageSecondsBetweenLaunches_forBundleId___block_invoke;
    v10[3] = &unk_278598718;
    v11 = idCopy;
    v12 = launchesCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appInfo (bundleId onPrep:averageSecondsBetweenLaunches) VALUES (:bundle_id onRow::average_seconds_between_launches) ON CONFLICT(bundleId) DO UPDATE SET averageSecondsBetweenLaunches=excluded.averageSecondsBetweenLaunches" onError:v10, 0, 0];
  }
}

- (void)updateOrInsertMedianSecondsBetweenLaunches:(id)launches forBundleId:(id)id
{
  launchesCopy = launches;
  idCopy = id;
  v8 = idCopy;
  if (idCopy)
  {
    db = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72___ATXDataStore_updateOrInsertMedianSecondsBetweenLaunches_forBundleId___block_invoke;
    v10[3] = &unk_278598718;
    v11 = idCopy;
    v12 = launchesCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appInfo (bundleId onPrep:medianSecondsBetweenLaunches) VALUES (:bundle_id onRow::median_seconds_between_launches) ON CONFLICT(bundleId) DO UPDATE SET medianSecondsBetweenLaunches=excluded.medianSecondsBetweenLaunches" onError:v10, 0, 0];
  }
}

- (void)updateOrInsertAverageSecondsBetweenAppActions:(id)actions forAppAction:(id)action
{
  actionsCopy = actions;
  actionCopy = action;
  v8 = actionCopy;
  if (actionCopy)
  {
    db = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76___ATXDataStore_updateOrInsertAverageSecondsBetweenAppActions_forAppAction___block_invoke;
    v10[3] = &unk_278598718;
    v11 = actionCopy;
    v12 = actionsCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appActionInfo (appAction onPrep:averageSecondsBetweenAppActions) VALUES (:app_action onRow::average_seconds_between_app_actions) ON CONFLICT(appAction) DO UPDATE SET averageSecondsBetweenAppActions=excluded.averageSecondsBetweenAppActions" onError:v10, 0, 0];
  }
}

- (void)updateOrInsertMedianSecondsBetweenAppActions:(id)actions forAppAction:(id)action
{
  actionsCopy = actions;
  actionCopy = action;
  v8 = actionCopy;
  if (actionCopy)
  {
    db = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75___ATXDataStore_updateOrInsertMedianSecondsBetweenAppActions_forAppAction___block_invoke;
    v10[3] = &unk_278598718;
    v11 = actionCopy;
    v12 = actionsCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appActionInfo (appAction onPrep:medianSecondsBetweenAppActions) VALUES (:app_action onRow::median_seconds_between_app_actions) ON CONFLICT(appAction) DO UPDATE SET medianSecondsBetweenAppActions=excluded.medianSecondsBetweenAppActions" onError:v10, 0, 0];
  }
}

- (void)updateOrInsertGenreId:(id)id subGenreIds:(id)ids forBundleId:(id)bundleId
{
  idCopy = id;
  idsCopy = ids;
  bundleIdCopy = bundleId;
  if (bundleIdCopy)
  {
    if ([idsCopy count])
    {
      v11 = objc_autoreleasePoolPush();
      v20 = 0;
      v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:idsCopy requiringSecureCoding:1 error:&v20];
      v13 = v20;
      objc_autoreleasePoolPop(v11);
      if (v13)
      {
        [_ATXDataStore updateOrInsertGenreId:subGenreIds:forBundleId:];
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    db = self->_db;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63___ATXDataStore_updateOrInsertGenreId_subGenreIds_forBundleId___block_invoke;
    v16[3] = &unk_278599DB8;
    v17 = bundleIdCopy;
    v18 = idCopy;
    v19 = v12;
    v15 = v12;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appInfo (bundleId onPrep:genreId onRow:subGenreIds) VALUES (:bundle_id onError::genreId_data, :subGenreIdsData) ON CONFLICT(bundleId) DO UPDATE SET genreId=excluded.genreId, subGenreIds=excluded.subGenreIds", v16, 0, 0];
  }
}

- (void)updateOrInsertApp2VecCluster:(id)cluster forBundleId:(id)id
{
  clusterCopy = cluster;
  idCopy = id;
  v8 = idCopy;
  if (idCopy)
  {
    db = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58___ATXDataStore_updateOrInsertApp2VecCluster_forBundleId___block_invoke;
    v10[3] = &unk_278598718;
    v11 = idCopy;
    v12 = clusterCopy;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appInfo (bundleId onPrep:app2VecCluster) VALUES (:bundle_id onRow::app2vec_cluster) ON CONFLICT(bundleId) DO UPDATE SET app2VecCluster=excluded.app2VecCluster" onError:v10, 0, 0];
  }
}

- (void)updateOrInsertTimestamp:(int64_t)timestamp intoColumn:(id)column forBundleId:(id)id isExtension:(BOOL)extension
{
  idCopy = id;
  if (idCopy)
  {
    column = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO appInfo (bundleId, %1$@, isExtension) VALUES (:bundle_id, :new_timestamp, :is_extension) ON CONFLICT(bundleId) DO UPDATE SET %1$@ = CASE WHEN %1$@<:new_timestamp OR %1$@ IS NULL THEN :new_timestamp ELSE %1$@ END, isExtension=:is_extension", column];
    db = self->_db;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76___ATXDataStore_updateOrInsertTimestamp_intoColumn_forBundleId_isExtension___block_invoke;
    v13[3] = &unk_27859CA98;
    v14 = idCopy;
    timestampCopy = timestamp;
    extensionCopy = extension;
    [(_PASSqliteDatabase *)db prepAndRunQuery:column onPrep:v13 onRow:0 onError:0];
  }

  else
  {
    column = __atxlog_handle_default();
    if (os_log_type_enabled(column, OS_LOG_TYPE_FAULT))
    {
      [_ATXDataStore updateOrInsertSubsequentLaunchCountData:forBundleId:];
    }
  }
}

- (void)updateOrInsertTimestamp:(int64_t)timestamp forAppAction:(id)action
{
  actionCopy = action;
  v7 = actionCopy;
  if (actionCopy)
  {
    db = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54___ATXDataStore_updateOrInsertTimestamp_forAppAction___block_invoke;
    v10[3] = &unk_278599E00;
    v11 = actionCopy;
    timestampCopy = timestamp;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appActionInfo (appAction onPrep:lastAppActionLaunchDate) VALUES (:app_action onRow::new_timestamp) ON CONFLICT(appAction) DO UPDATE SET lastAppActionLaunchDate=excluded.lastAppActionLaunchDate" onError:v10, 0, 0];
    v9 = v11;
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_ATXDataStore updateOrInsertTimestamp:forAppAction:];
    }
  }
}

- (void)updateOrInsertInstallTimestamp:(int64_t)timestamp genreId:(id)id subGenreIds:(id)ids app2VecCluster:(id)cluster forBundleId:(id)bundleId isExtension:(BOOL)extension isEnterpriseApp:(BOOL)app
{
  v54 = *MEMORY[0x277D85DE8];
  idCopy = id;
  idsCopy = ids;
  clusterCopy = cluster;
  bundleIdCopy = bundleId;
  if (bundleIdCopy)
  {
    if ([idsCopy count])
    {
      timestampCopy = timestamp;
      v20 = objc_autoreleasePoolPush();
      v47 = 0;
      v35 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:idsCopy requiringSecureCoding:1 error:&v47];
      v21 = v47;
      objc_autoreleasePoolPop(v20);
      if (v21)
      {
        [_ATXDataStore updateOrInsertInstallTimestamp:genreId:subGenreIds:app2VecCluster:forBundleId:isExtension:isEnterpriseApp:];
      }

      timestamp = timestampCopy;
    }

    else
    {
      v21 = 0;
      v35 = 0;
    }

    extensionCopy = extension;
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      timestampCopy2 = timestamp;
      v23 = objc_autoreleasePoolPush();
      v24 = [(_ATXDataStore *)self _appInfoForBundleIdNoSync:bundleIdCopy];
      v25 = __atxlog_handle_app_install();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v23;
        v26 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:timestampCopy2];
        [v24 installDate];
        v27 = v34 = v21;
        *buf = 138543874;
        v49 = v26;
        v50 = 2114;
        v51 = v27;
        v52 = 2112;
        v53 = bundleIdCopy;
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Updating install date: %{public}@ from %{public}@ for bundle id: %@", buf, 0x20u);

        v21 = v34;
        v23 = v33;
      }

      objc_autoreleasePoolPop(v23);
      timestamp = timestampCopy2;
    }

    else
    {
      v28 = __atxlog_handle_app_install();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:timestamp];
        *buf = 138543618;
        v49 = v29;
        v50 = 2112;
        v51 = bundleIdCopy;
        _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "ATXDataStore: Updating install date: %{public}@ for bundle id: %@", buf, 0x16u);
      }
    }

    db = self->_db;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __123___ATXDataStore_updateOrInsertInstallTimestamp_genreId_subGenreIds_app2VecCluster_forBundleId_isExtension_isEnterpriseApp___block_invoke;
    v39[3] = &unk_27859CAC0;
    v40 = bundleIdCopy;
    timestampCopy3 = timestamp;
    v41 = idCopy;
    v42 = v35;
    v45 = extensionCopy;
    appCopy = app;
    v43 = clusterCopy;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __123___ATXDataStore_updateOrInsertInstallTimestamp_genreId_subGenreIds_app2VecCluster_forBundleId_isExtension_isEnterpriseApp___block_invoke_2;
    v37[3] = &unk_2785987B8;
    v38 = v40;
    v31 = v35;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO appInfo (bundleId onPrep:installDate onRow:genreId onError:subGenreIds, isExtension, isEnterpriseApp, app2VecCluster) VALUES (:bundle_id, :new_timestamp, :genreId_data, :subGenreIds_data, :is_extension, :is_enterprise_app, :app2vec_cluster) ON CONFLICT(bundleId) DO UPDATE SET installDate = CASE WHEN installDate IS NULL THEN :new_timestamp ELSE installDate END, genreId=:genreId_data, subGenreIds=:subGenreIds_data, isExtension=:is_extension, isEnterpriseApp=:is_enterprise_app, app2VecCluster=:app2vec_cluster", v39, 0, v37];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_markBundleIdsAsExtension:(id)extension
{
  v15 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [extensionCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(extensionCopy);
        }

        [(_ATXDataStore *)self _markBundleIdAsExtension:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [extensionCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_markBundleIdAsExtension:(id)extension
{
  extensionCopy = extension;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___ATXDataStore__markBundleIdAsExtension___block_invoke;
  v7[3] = &unk_278598768;
  v8 = extensionCopy;
  v6 = extensionCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE appInfo SET isExtension=1 onPrep:lastSpotlightLaunchDate=0 WHERE bundleId=:bundle_id;" onRow:v7 onError:0, &__block_literal_global_1122];
}

- (void)_markBundleId:(id)id asEnterpriseApp:(BOOL)app
{
  appCopy = app;
  v18 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = idCopy;
    v16 = 1024;
    v17 = appCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Mark app: %@ as enterprise: %{BOOL}u", buf, 0x12u);
  }

  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47___ATXDataStore__markBundleId_asEnterpriseApp___block_invoke;
  v11[3] = &unk_2785989D8;
  v12 = idCopy;
  v13 = appCopy;
  v9 = idCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE appInfo SET isEnterpriseApp=:is_enterprise_app WHERE bundleId=:bundle_id;" onPrep:v11 onRow:0 onError:&__block_literal_global_1127];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_simulateCrashForMigrationFailure:(id)failure
{
  v3 = MEMORY[0x277D42578];
  failure = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in migration: %@", failure];
  [v3 simulateCrashWithDescription:failure];
}

+ (id)loadDataFromFile:(id)file
{
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:fileCopy];

  if (v5)
  {
    v10 = 0;
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:fileCopy options:1 error:&v10];
    v7 = v10;
    if (!v6)
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        +[_ATXDataStore loadDataFromFile:];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)migrationUpdateOrInsertTimestamp:(int64_t)timestamp intoColumn:(id)column forBundleId:(id)id
{
  columnCopy = column;
  idCopy = id;
  if (idCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    columnCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO appInfo (bundleId, %1$@) VALUES (:bundle_id, :new_timestamp) ON CONFLICT(bundleId) DO UPDATE SET %1$@ = CASE WHEN %1$@<:new_timestamp OR %1$@ IS NULL THEN :new_timestamp ELSE %1$@ END WHERE bundleId=:bundle_id", columnCopy];
    db = self->_db;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73___ATXDataStore_migrationUpdateOrInsertTimestamp_intoColumn_forBundleId___block_invoke;
    v16[3] = &unk_278599E00;
    v17 = idCopy;
    timestampCopy = timestamp;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73___ATXDataStore_migrationUpdateOrInsertTimestamp_intoColumn_forBundleId___block_invoke_2;
    v15[3] = &unk_27859A1A0;
    v15[4] = &v19;
    [(_PASSqliteDatabase *)db prepAndRunQuery:columnCopy onPrep:v16 onRow:0 onError:v15];
    v12 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_ATXDataStore updateOrInsertSubsequentLaunchCountData:forBundleId:];
    }

    v12 = 0;
  }

  return v12 & 1;
}

- (void)migrationPre44WriteActionType:(id)type bundleId:(id)id date:(id)date action:(id)action slotSets:(id)sets timeZone:(id)zone prevLocationUUID:(id)d locationUUID:(id)self0 weight:(double)self1 actionUUID:(id)self2 motionType:(int64_t)self3
{
  typeCopy = type;
  idCopy = id;
  dateCopy = date;
  actionCopy = action;
  setsCopy = sets;
  zoneCopy = zone;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  if (typeCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_ATXDataStore migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:];
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  [_ATXDataStore migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:];
LABEL_3:
  v27 = actionCopy;
  if (!actionCopy)
  {
    [_ATXDataStore migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:];
  }

  if (weight <= 0.0)
  {
    [_ATXDataStore migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:];
  }

  if (weight > 1.0)
  {
    [_ATXDataStore migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:];
    if (uIDCopy)
    {
      goto LABEL_9;
    }
  }

  else if (uIDCopy)
  {
    goto LABEL_9;
  }

  [_ATXDataStore migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:];
LABEL_9:
  v43 = uIDCopy;
  v44 = iDCopy;
  v45 = dCopy;
  if (!dateCopy)
  {
    dateCopy = objc_opt_new();
  }

  v46 = zoneCopy;
  v28 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:dateCopy timeZone:zoneCopy];
  first = [v28 first];
  integerValue = [first integerValue];

  second = [v28 second];
  integerValue2 = [second integerValue];

  if (!setsCopy)
  {
    v33 = MEMORY[0x277CBEB98];
    initWithOpaqueParameters = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
    setsCopy = [v33 setWithObject:initWithOpaqueParameters];
  }

  v35 = ATXSlotSetsSerialize();
  v42 = setsCopy;
  if (v35)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke;
    block[3] = &unk_27859CB10;
    block[4] = self;
    v49 = idCopy;
    v50 = typeCopy;
    v51 = v35;
    v52 = dateCopy;
    v56 = integerValue;
    v57 = integerValue2;
    v37 = v45;
    v53 = v45;
    v38 = v44;
    v54 = v44;
    weightCopy = weight;
    v39 = v43;
    v55 = v43;
    motionTypeCopy = motionType;
    v27 = actionCopy;
    dispatch_sync(queue, block);
  }

  else
  {
    v40 = __atxlog_handle_default();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [_ATXDataStore migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:];
    }

    v38 = v44;
    v37 = v45;
    v39 = v43;
  }
}

- (void)deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Deleting Action samples that are more than 28 days old.", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2419200.0];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)recordParamererizedSuggestionWithUniqueIdentifier:(id)identifier encodedTool:(id)tool encodedSummary:(id)summary
{
  identifierCopy = identifier;
  toolCopy = tool;
  summaryCopy = summary;
  if (identifierCopy)
  {
    if (toolCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [_ATXDataStore recordParamererizedSuggestionWithUniqueIdentifier:encodedTool:encodedSummary:];
    if (summaryCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [_ATXDataStore recordParamererizedSuggestionWithUniqueIdentifier:encodedTool:encodedSummary:];
    goto LABEL_4;
  }

  [_ATXDataStore recordParamererizedSuggestionWithUniqueIdentifier:encodedTool:encodedSummary:];
  if (!toolCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!summaryCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94___ATXDataStore_recordParamererizedSuggestionWithUniqueIdentifier_encodedTool_encodedSummary___block_invoke;
  v15[3] = &unk_2785978C0;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = toolCopy;
  v18 = summaryCopy;
  v12 = summaryCopy;
  v13 = toolCopy;
  v14 = identifierCopy;
  dispatch_sync(queue, v15);
}

- (void)deleteParameterizedSuggestionWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [_ATXDataStore deleteParameterizedSuggestionWithUniqueIdentifier:];
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___ATXDataStore_deleteParameterizedSuggestionWithUniqueIdentifier___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (void)resetAllRecordedParameterizedSuggestions
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___ATXDataStore_resetAllRecordedParameterizedSuggestions__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)fetchParameterizedSuggestionWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [_ATXDataStore fetchParameterizedSuggestionWithUniqueIdentifier:];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__50;
  v28 = __Block_byref_object_dispose__50;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__50;
  v22 = __Block_byref_object_dispose__50;
  v23 = 0;
  queue = self->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke;
  v13 = &unk_27859A390;
  selfCopy = self;
  v6 = identifierCopy;
  v15 = v6;
  v16 = &v24;
  v17 = &v18;
  dispatch_sync(queue, &v10);
  if (v25[5] && v19[5])
  {
    v7 = objc_alloc(MEMORY[0x277D41FD0]);
    v8 = [v7 initWithEncodedInvocation:v25[5] encodedSummary:v19[5] canonicalActionID:{v6, v10, v11, v12, v13, selfCopy}];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (void)_testMigrate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29___ATXDataStore__testMigrate__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_testMigrateToSchema:(unint64_t)schema
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38___ATXDataStore__testMigrateToSchema___block_invoke;
  v4[3] = &unk_278598278;
  v4[4] = self;
  v4[5] = schema;
  dispatch_sync(queue, v4);
}

- (id)_trimMigrationPlan:(id)plan toSchema:(unint64_t)schema
{
  planCopy = plan;
  v6 = [planCopy mutableCopy];
  v7 = [planCopy count];
  v8 = schema + 1;
  if (v8 <= v7)
  {
    v9 = v7;
    do
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      [v6 removeObjectForKey:v10];

      ++v8;
    }

    while (v8 <= v9);
  }

  return v6;
}

- (void)swapInAppInFocusStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40___ATXDataStore_swapInAppInFocusStream___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = streamCopy;
  v5 = streamCopy;
  [(_ATXDataStore *)self _doAsync:v6];
}

- (id)_databaseSchema
{
  v3 = objc_opt_new();
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32___ATXDataStore__databaseSchema__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)integrityCheckOrAbort
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)stringForHistogramType:(int64_t)type
{
  if ((type - 1) > 0x71)
  {
    return @"_ATXHistogramTypeAnyLaunch";
  }

  else
  {
    return off_27859CB30[type - 1];
  }
}

- (void)enumerateActionTypesOlderThan:(id)than block:(id)block
{
  thanCopy = than;
  blockCopy = block;
  if (!thanCopy)
  {
    [_ATXDataStore(ActionTypes) enumerateActionTypesOlderThan:a2 block:self];
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__70;
  v19[4] = __Block_byref_object_dispose__70;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__70;
  v17[4] = __Block_byref_object_dispose__70;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke;
  v11[3] = &unk_27859F230;
  v11[4] = self;
  v9 = thanCopy;
  v12 = v9;
  v14 = v21;
  v15 = v19;
  v16 = v17;
  v10 = blockCopy;
  v13 = v10;
  [(_ATXDataStore *)self _doSync:v11];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v21, 8);
}

- (void)initWithPath:andAppInFocusStream:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)initWithPath:andAppInFocusStream:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_reset
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *self;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v2, v3, "Could not open sqlite database at %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)vacuumDatabaseWithActivity:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "ATXDataStore: unable to vacuum database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAppInfoForBundleIdsNotInSet:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeLaunches:followingBundle:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"launches" object:? file:? lineNumber:? description:?];
}

- (void)writeLaunches:followingBundle:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)writeLaunches:followingBundle:.cold.3()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)writeAppActionLaunches:followingAppAction:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"appActionlaunches" object:? file:? lineNumber:? description:?];
}

- (void)writeAppActionLaunches:followingAppAction:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"appAction" object:? file:? lineNumber:? description:?];
}

- (void)writeAppActionLaunches:followingAppAction:.cold.3()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)filenamesAndDataForBackupShouldPareDown:transport:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error while reading mode entity files for backup. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)filenamesAndDataForBackupShouldPareDown:transport:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error while serializing onboarding stack widget cache file into NSData: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)removeSensitiveInformationFromModeEntityScoresFile:shouldBackupContacts:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "FAILURE: Unable to archive mode entity scores. Error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)removeSensitiveInformationFromModeEntityScoresFile:shouldBackupContacts:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Couldn't deserialize mode entity scores file data. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pareDownForBackup:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  WORD2(v8) = 2080;
  HIWORD(v8) = v3;
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v4, v5, "Error deleting %s: %s", v7, v8);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)restoreFromBackup:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "Error restoring onboarding stacks cache file to path %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)restoreFromBackup:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "Chunk for key %@ not found while restoring data.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionType" object:? file:? lineNumber:? description:?];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"action" object:? file:? lineNumber:? description:?];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.4()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"slotSets" object:? file:? lineNumber:? description:?];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.5()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"0.0 < weight" object:? file:? lineNumber:? description:?];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.6()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"weight <= 1.0" object:? file:? lineNumber:? description:?];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.7()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionUUID" object:? file:? lineNumber:? description:?];
}

- (void)writeActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:appSessionStartDate:appSessionEndDate:geohash:coarseGeohash:.cold.8()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "Could not serialize slotSets: %@ and action: %@, not writing action type");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)enumerateActionOfType:bundleId:block:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionType" object:? file:? lineNumber:? description:?];
}

- (void)enumerateActionOfType:bundleId:block:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)enumerateActionOfType:bundleId:block:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)enumerateSlotUuidsOfType:bundleId:block:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionType" object:? file:? lineNumber:? description:?];
}

- (void)enumerateSlotUuidsOfType:bundleId:block:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)enumerateSlotUuidsOfType:bundleId:block:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)enumerateActionsInUUIDSet:block:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"uuidSet" object:? file:? lineNumber:? description:?];
}

- (void)enumerateActionsInUUIDSet:block:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)appIntentDuetEventsForActionsBetweenStartDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

- (void)appIntentDuetEventsForActionsBetweenStartDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

- (void)minimalActionParametersforActionsBetweenStartDate:endDate:limit:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

- (void)minimalActionParametersforActionsBetweenStartDate:endDate:limit:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

- (void)numActionKeyOccurrencesBetweenStartDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

- (void)numActionKeyOccurrencesBetweenStartDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

- (void)numActionKeyOccurrencesForActionKey:startDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionKey" object:? file:? lineNumber:? description:?];
}

- (void)numActionKeyOccurrencesForActionKey:startDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

- (void)numActionKeyOccurrencesForActionKey:startDate:endDate:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

- (void)numBundleIdOccurrencesForBundleId:startDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)numBundleIdOccurrencesForBundleId:startDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

- (void)numBundleIdOccurrencesForBundleId:startDate:endDate:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

- (void)numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionKey" object:? file:? lineNumber:? description:?];
}

- (void)numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

- (void)numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

- (void)actionForSlotUUID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_2_2();
  _os_log_fault_impl(&dword_2263AA000, v2, OS_LOG_TYPE_FAULT, "Unable to get action for slot UUID (<rdar://problem/48254976>): %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeActionDataForActionUUIDs:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionUUIDs" object:? file:? lineNumber:? description:?];
}

- (void)removeActionDataForActionUUID:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionUUID" object:? file:? lineNumber:? description:?];
}

- (void)removeActionDataForBundleId:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)regenerateSlotSetKeyForBundleId:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)recordConfirms:(NSObject *)a3 rejects:forFeedbackType:forActionType:bundleId:action:slotSet:actionUUID:date:consumerSubType:geohash:coarseGeohash:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB98] setWithObject:a1];
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "Could not serialize slotSets: %@ and action: %@, not recording feedback", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enumerateFeedbackForActionOfType:bundleId:block:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionType" object:? file:? lineNumber:? description:?];
}

- (void)enumerateFeedbackForActionOfType:bundleId:block:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)enumerateFeedbackForActionOfType:bundleId:block:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)migrateWithMigrationPlan:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Exception getting schema version. Marking as corrupt: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)skipFromZeroSchema
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *self;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v2, v3, "failed to migrate database from zero to %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)migrateToVersion:withMigrationPlan:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)migrateToVersion:withMigrationPlan:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "ATXDataStore: failed to migrate entity db to %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)migration_InstallDateToAppTable
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error reading install dates: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)migration_DeprecateGenericAppIntentModels
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error deleting data associated with old generic app intent parzen model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeSlotSetKeyParameters:rowId:slotSet:success:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "Missing slotSet UUID for slotSet: %@ alog rowId: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateAlog:slotsToMigrate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "Could not serialize slotSets: %@ and action: %@, not updating alog during migration");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)migration_removeBrokenBlendingStream
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Cannot remove blending streams. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)migration_removeAnchorModelDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Cannot remove Anchor Model Directory. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)migration_RemoveLinkActions
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Failed to vacuum database: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)migration_removeOldStackStateTrackerFile
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Cannot remove old Stack State Tracker file. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)migration_removeHomeScreenWidgetBlacklistFile
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Cannot remove home screen widget blacklist file. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateOrInsertGenreId:subGenreIds:forBundleId:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateOrInsertInstallTimestamp:genreId:subGenreIds:app2VecCluster:forBundleId:isExtension:isEnterpriseApp:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)loadDataFromFile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Unable to open %@: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionType" object:? file:? lineNumber:? description:?];
}

- (void)migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"action" object:? file:? lineNumber:? description:?];
}

- (void)migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:.cold.4()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"0.0 < weight" object:? file:? lineNumber:? description:?];
}

- (void)migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:.cold.5()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"weight <= 1.0" object:? file:? lineNumber:? description:?];
}

- (void)migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:.cold.6()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"actionUUID" object:? file:? lineNumber:? description:?];
}

- (void)migrationPre44WriteActionType:bundleId:date:action:slotSets:timeZone:prevLocationUUID:locationUUID:weight:actionUUID:motionType:.cold.7()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "Could not serialize slotSets: %@ and action: %@, not writing action type for migration");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recordParamererizedSuggestionWithUniqueIdentifier:encodedTool:encodedSummary:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"uniqueIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)recordParamererizedSuggestionWithUniqueIdentifier:encodedTool:encodedSummary:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"encodedTool" object:? file:? lineNumber:? description:?];
}

- (void)recordParamererizedSuggestionWithUniqueIdentifier:encodedTool:encodedSummary:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"encodedSummary" object:? file:? lineNumber:? description:?];
}

- (void)deleteParameterizedSuggestionWithUniqueIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"uniqueIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchParameterizedSuggestionWithUniqueIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"uniqueIdentifier" object:? file:? lineNumber:? description:?];
}

@end