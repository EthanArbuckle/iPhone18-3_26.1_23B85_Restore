@interface ATXNotificationAndSuggestionDatabase
- (ATXNotificationAndSuggestionDatabase)init;
- (ATXNotificationAndSuggestionDatastorePerfMetrics)notificationAndSuggestionDatastorePerfMetrics;
- (BOOL)_anyColumnWithNameFromColumnNames:(id)names existsOnTable:(id)table;
- (BOOL)_hasColumnOnTable:(id)table named:(id)named;
- (BOOL)_hasIndexNamed:(id)named;
- (BOOL)_runMigrationSteps:(id)steps;
- (BOOL)hasSuggestionBeenShownForEntityId:(id)id suggestionType:(int64_t)type scope:(int64_t)scope sinceTimestamp:(double)timestamp;
- (BOOL)migrate;
- (double)receiveTimeStampOfFirstNotification;
- (id)_countNotificationsPerAppWithFilters:(id)filters stmtBinder:(id)binder;
- (id)_makeNotificationTelemetryQueryResultFromDatabaseResult:(id)result queryTimeInterval:(double)interval;
- (id)allBundleIdsOfNotificationsOnLockscreen;
- (id)allNotificationsBetweenStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp limit:(unint64_t)limit;
- (id)allNotificationsFromBundleId:(id)id sinceTimestamp:(double)timestamp;
- (id)appSortedByNumOfNotificationsSinceTimestamp:(double)timestamp;
- (id)currentActiveSuggestions;
- (id)deleteAllData;
- (id)engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp:(double)timestamp;
- (id)engagementStatusOfActiveAndProminentNotificationsSinceTimestamp:(double)timestamp;
- (id)engagementStatusOfActiveAndProminentNotificationsWithUrgency:(int64_t)urgency sinceTimestamp:(double)timestamp;
- (id)feedbackHistoriesForKeys:(id)keys;
- (id)getBookmarkDataFromName:(id)name;
- (id)getSmartPauseFeaturesForBundleIds:(id)ids sinceTimestamp:(double)timestamp positiveEngagementEnums:(id)enums;
- (id)getTopOfNonProminentStackNotificationsWithLimit:(unint64_t)limit;
- (id)getTopOfProminentStackNotificationsWithLimit:(unint64_t)limit;
- (id)messageNotificationsPerAppFromStartTime:(double)time toEndTime:(double)endTime;
- (id)metricsForSuggestionsSinceCompletionTimestamp:(double)timestamp;
- (id)mostRecentActiveNotifications;
- (id)notificationsReceivedPerBundleIdSinceDate:(id)date;
- (id)numProminentActiveNotificationsByGroupingColumn:(id)column;
- (id)pruneNotificationsBeforeTimestamp:(double)timestamp;
- (id)pruneSuggestionsBeforeTimestamp:(double)timestamp;
- (id)resolutionsForNotifications:(id)notifications;
- (id)suggestionEventTypeShownForEntityId:(id)id suggestionType:(int64_t)type scope:(int64_t)scope sinceTimestamp:(double)timestamp;
- (id)telemetryDataForNotificationWithBundleId:(id)id notificationId:(id)notificationId recordTimestamp:(double)timestamp;
- (id)telemetryDataForNotificationsFromTimestamp:(double)timestamp endTimestamp:(double)endTimestamp;
- (id)timeSensitiveNonmessageNotificationsPerAppFromStartTime:(double)time toEndTime:(double)endTime;
- (id)totalNotificationsPerAppFromStartTime:(double)time toEndTime:(double)endTime;
- (id)vacuumDatabase;
- (void)_pruneNotificationsBasedOnHardLimitsForBundleId:(id)id XPCActivity:(id)activity;
- (void)analyze;
- (void)insertNotificationFromEvent:(id)event deliveryMethod:(int64_t)method modeIdentifier:(id)identifier deliveryReason:(id)reason;
- (void)insertSuggestion:(id)suggestion;
- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler;
- (void)prepAndRunQuery:(id)query batchSize:(int64_t)size XPCActivity:(id)activity onPrep:(id)prep onRow:(id)row onError:(id)error;
- (void)pruneNotificationsBasedOnHardLimitsWithXPCActivity:(id)activity;
- (void)pruneSuggestionsBasedOnHardLimitsWithXPCActivity:(id)activity;
- (void)setAllNotificationsToClearedExceptProminent;
- (void)setAllNotificationsToModified;
- (void)setBookmarkData:(id)data forName:(id)name;
- (void)updateNotificationFromEvent:(id)event;
- (void)updateNotificationUIForNotifications:(id)notifications nextUI:(unint64_t)i;
- (void)updateNotificationsWithNextAppLaunchDate:(id)date receivedDateAfter:(id)after forBundleId:(id)id;
- (void)updateSuggestionFromEvent:(id)event;
@end

@implementation ATXNotificationAndSuggestionDatabase

- (ATXNotificationAndSuggestionDatabase)init
{
  v3 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"notificationAndSuggestionDB.db"];
  v8.receiver = self;
  v8.super_class = ATXNotificationAndSuggestionDatabase;
  v4 = [(ATXAbstractVersionedDatabase *)&v8 initWithDbPath:v3];
  if (v4)
  {
    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    mobileAssetConstants = v4->_mobileAssetConstants;
    v4->_mobileAssetConstants = mEMORY[0x277CEB710];
  }

  return v4;
}

- (BOOL)migrate
{
  v47[3] = *MEMORY[0x277D85DE8];
  currentSchemaVersion = [(ATXAbstractVersionedDatabase *)self currentSchemaVersion];
  if (currentSchemaVersion != [(ATXNotificationAndSuggestionDatabase *)self latestVersion])
  {
    switch(currentSchemaVersion)
    {
      case 0:
        v47[0] = @"CREATE TABLE IF NOT EXISTS notifications( uuid TEXT PRIMARY KEY,   receiveTimestamp REAL NOT NULL,   deliveryMethod INTEGER NOT NULL,   urgency INTEGER NOT NULL,   bundleId TEXT,   threadId TEXT,   contactId TEXT,   isGroupMessage INTEGER NOT NULL,   isMessage INTEGER NOT NULL,   latestOutcome INTEGER,   latestOutcomeTimestamp REAL,   isProminent INTEGER NOT NULL,   isActive INTEGER NOT NULL) WITHOUT ROWID";
        v47[1] = @"CREATE TABLE IF NOT EXISTS suggestions( uuid TEXT PRIMARY KEY,   createdTimestamp REAL NOT NULL,   triggerNotificationUUID TEXT,   deliverySuggestion BLOB NOT NULL,   suggestionType INTEGER NOT NULL,   scope INTEGER NOT NULL,   entityIdentifier TEXT,   shownTimestamp REAL,   latestOutcome INTEGER NOT NULL,   latestOutcomeTimestamp REAL NOT NULL,   isActive INTEGER NOT NULL) WITHOUT ROWID";
        v47[2] = @"CREATE TABLE IF NOT EXISTS biome_bookmark( bookmarkName TEXT PRIMARY KEY,   updatedTimestamp REAL NOT NULL,   bookmarkData BLOB) WITHOUT ROWID";
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
        v15 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v14];

        if (v15)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      case 1:
LABEL_22:
        v46 = @"ALTER TABLE notifications ADD COLUMN numExpansions INTEGER NOT NULL DEFAULT 0";
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v17 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v16];

        if (v17)
        {
          goto LABEL_23;
        }

        goto LABEL_30;
      case 2:
LABEL_23:
        v45 = @"ALTER TABLE notifications ADD COLUMN rawIdentifier TEXT";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        v19 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v18];

        if (v19)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      case 3:
LABEL_24:
        v44[0] = @"CREATE INDEX smartPauseIndex ON notifications (bundleId, threadId, receiveTimestamp)";
        v44[1] = @"CREATE INDEX urgencyTuningIndex ON notifications (urgency, deliveryMethod, bundleId, receiveTimestamp)";
        v44[2] = @"CREATE INDEX candidateSelectionIndex ON notifications (bundleId, threadId, receiveTimestamp) WHERE isActive=1 AND isProminent=1";
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
        v21 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v20];

        if (v21)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      case 4:
LABEL_25:
        v43[0] = @"ALTER TABLE suggestions ADD COLUMN feedbackKey TEXT";
        v43[1] = @"CREATE INDEX feedbackIndex ON suggestions (feedbackKey, shownTimestamp)";
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
        v23 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v22];

        if (v23)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      case 5:
LABEL_26:
        v42 = @"CREATE INDEX nonprominentCandidateSelectionIndex ON notifications (bundleId, threadId, receiveTimestamp) WHERE isActive=1 AND isProminent=0";
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v25 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v24];

        if (v25)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      case 6:
LABEL_27:
        v41[0] = @"ALTER TABLE notifications ADD COLUMN receivedMode TEXT";
        v41[1] = @"ALTER TABLE notifications ADD COLUMN firstUI INTEGER";
        v41[2] = @"ALTER TABLE notifications ADD COLUMN mostRecentUI INTEGER";
        v41[3] = @"ALTER TABLE notifications ADD COLUMN deliveryReason INTEGER";
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
        v27 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v26];

        if (v27)
        {
          goto LABEL_28;
        }

        goto LABEL_30;
      case 7:
LABEL_28:
        v40[0] = @"CREATE INDEX sendMessagesToDigestIndex ON notifications(bundleId, receiveTimestamp)";
        v40[1] = @"CREATE INDEX receiveTimestampIndex ON notifications(receiveTimestamp)";
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
        v29 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v28];

        if (v29)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      case 8:
LABEL_29:
        v39 = @"CREATE INDEX feedbackAndCreatedTimestamp ON suggestions (feedbackKey, createdTimestamp)";
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        v31 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v30];

        if (!v31)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
LABEL_4:
        if ([(ATXNotificationAndSuggestionDatabase *)self _hasIndexNamed:@"latestOutcomeIndex"])
        {
          goto LABEL_6;
        }

        v38 = @"CREATE INDEX IF NOT EXISTS latestOutcomeIndex ON notifications (latestOutcome);";
        v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        v6 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v5];

        if (v6)
        {
          goto LABEL_6;
        }

        goto LABEL_30;
      case 19:
LABEL_6:
        if ([(ATXNotificationAndSuggestionDatabase *)self _hasColumnOnTable:@"notifications" named:@"recordTimestamp"])
        {
          goto LABEL_9;
        }

        if ([(ATXNotificationAndSuggestionDatabase *)self _hasColumnOnTable:@"notifications" named:@"notificationID"])
        {
          goto LABEL_9;
        }

        v37[0] = @"ALTER TABLE notifications ADD COLUMN recordTimestamp REAL";
        v37[1] = @"ALTER TABLE notifications ADD COLUMN notificationID TEXT";
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
        v8 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v7];

        if (v8)
        {
          goto LABEL_9;
        }

        goto LABEL_30;
      case 20:
LABEL_9:
        if ([(ATXNotificationAndSuggestionDatabase *)self _hasColumnOnTable:@"notifications" named:@"notificationBodyLength"])
        {
          goto LABEL_11;
        }

        v36 = @"ALTER TABLE notifications ADD COLUMN notificationBodyLength INTEGER";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v10 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v9];

        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      case 21:
LABEL_11:
        v35[0] = @"ALTER TABLE notifications ADD COLUMN notificationTitleLength INTEGER";
        v35[1] = @"ALTER TABLE notifications ADD COLUMN notificationSubtitleLength INTEGER";
        v35[2] = @"ALTER TABLE notifications ADD COLUMN summaryLength INTEGER";
        v35[3] = @"ALTER TABLE notifications ADD COLUMN isDeliveredInPrioritySection INTEGER NOT NULL DEFAULT 0";
        v35[4] = @"ALTER TABLE notifications ADD COLUMN isSummarized INTEGER NOT NULL DEFAULT 0";
        v35[5] = @"ALTER TABLE notifications ADD COLUMN isPartOfStack INTEGER NOT NULL DEFAULT 0";
        v35[6] = @"ALTER TABLE notifications ADD COLUMN isStackSummary INTEGER NOT NULL DEFAULT 0";
        v35[7] = @"ALTER TABLE notifications ADD COLUMN isDeterminedUrgentByModel INTEGER NOT NULL DEFAULT 0";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
        if (![(ATXNotificationAndSuggestionDatabase *)self _anyColumnWithNameFromColumnNames:&unk_283A57DA0 existsOnTable:@"notifications"]&& ![(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v11])
        {
          goto LABEL_20;
        }

LABEL_14:
        v34[0] = @"ALTER TABLE notifications ADD COLUMN numberOfNotificationsInStack INTEGER NOT NULL DEFAULT 0";
        v34[1] = @"ALTER TABLE notifications ADD COLUMN notificationPriorityStatus INTEGER NOT NULL DEFAULT 0";
        v34[2] = @"ALTER TABLE notifications ADD COLUMN notificationSummaryStatus INTEGER NOT NULL DEFAULT 0";
        v34[3] = @"ALTER TABLE notifications ADD COLUMN isPriorityNotificationEnabled INTEGER NOT NULL DEFAULT 0";
        v34[4] = @"ALTER TABLE notifications ADD COLUMN isNotificationSummaryEnabled INTEGER NOT NULL DEFAULT 0";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
        if ([(ATXNotificationAndSuggestionDatabase *)self _anyColumnWithNameFromColumnNames:&unk_283A57DB8 existsOnTable:@"notifications"]|| [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v11])
        {

LABEL_17:
          if ([(ATXNotificationAndSuggestionDatabase *)self _hasColumnOnTable:@"notifications" named:@"nextAppLaunchTimestamp"])
          {
            break;
          }

          v33 = @"ALTER TABLE notifications ADD COLUMN nextAppLaunchTimestamp REAL";
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
          v13 = [(ATXNotificationAndSuggestionDatabase *)self _runMigrationSteps:v12];

          if (v13)
          {
            break;
          }
        }

        else
        {
LABEL_20:
        }

LABEL_30:
        result = 0;
        goto LABEL_31;
      case 22:
        goto LABEL_14;
      case 23:
        goto LABEL_17;
      default:
        break;
    }
  }

  result = 1;
LABEL_31:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_runMigrationSteps:(id)steps
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = steps;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [(ATXAbstractVersionedDatabase *)self db];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__ATXNotificationAndSuggestionDatabase__runMigrationSteps___block_invoke;
        v13[3] = &unk_2785986F0;
        v13[4] = v7;
        v13[5] = &v18;
        [v8 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v13];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v4);
  }

  v9 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t __59__ATXNotificationAndSuggestionDatabase__runMigrationSteps___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __59__ATXNotificationAndSuggestionDatabase__runMigrationSteps___block_invoke_cold_1(a1, v3, v4);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x277D42698];

  return *v5;
}

- (BOOL)_hasColumnOnTable:(id)table named:(id)named
{
  namedCopy = named;
  tableCopy = table;
  v8 = [(ATXAbstractVersionedDatabase *)self db];
  v9 = [v8 hasColumnOnTable:tableCopy named:namedCopy];

  return v9;
}

- (BOOL)_anyColumnWithNameFromColumnNames:(id)names existsOnTable:(id)table
{
  v23 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  tableCopy = table;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = namesCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(ATXAbstractVersionedDatabase *)self db];
        LOBYTE(v13) = [v14 hasColumnOnTable:tableCopy named:v13];

        if (v13)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_hasIndexNamed:(id)named
{
  namedCopy = named;
  v5 = [(ATXAbstractVersionedDatabase *)self db];
  v6 = [v5 hasIndexNamed:namedCopy];

  return v6;
}

- (id)getBookmarkDataFromName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__31;
  queue = self->super._queue;
  v16 = __Block_byref_object_dispose__31;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v10 = nameCopy;
  v11 = &v12;
  v6 = nameCopy;
  dispatch_sync_notxn_0(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT bookmarkData FROM biome_bookmark WHERE bookmarkName = :bookmarkName" onPrep:v6 onRow:v5 onError:v3];
}

uint64_t __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42690];
}

uint64_t __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke_4_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)setBookmarkData:(id)data forName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  queue = self->super._queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke;
  v11[3] = &unk_278597828;
  v11[4] = self;
  v12 = nameCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = nameCopy;
  dispatch_sync_notxn_0(queue, v11);
}

void __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke_2;
  v5[3] = &unk_278598718;
  v6 = a1[5];
  v7 = a1[6];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke_3;
  v3[3] = &unk_2785987B8;
  v4 = a1[5];
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO biome_bookmark VALUES (:bookmarkName onPrep::ts onRow::bookmarkData)" onError:{v5, 0, v3}];
}

void __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bookmarkName" toNSString:v3];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":ts" toDouble:?];
  [v4 bindNamedParam:":bookmarkData" toNSData:*(a1 + 40)];
}

uint64_t __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke_3_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)insertNotificationFromEvent:(id)event deliveryMethod:(int64_t)method modeIdentifier:(id)identifier deliveryReason:(id)reason
{
  eventCopy = event;
  identifierCopy = identifier;
  reasonCopy = reason;
  queue = self->super._queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke;
  v17[3] = &unk_278599D90;
  v17[4] = self;
  v18 = eventCopy;
  v20 = reasonCopy;
  methodCopy = method;
  v19 = identifierCopy;
  v14 = reasonCopy;
  v15 = identifierCopy;
  v16 = eventCopy;
  dispatch_sync_notxn_0(queue, v17);
}

void __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke_2;
  v7[3] = &unk_278599D68;
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v8 = v3;
  v11 = v4;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke_3;
  v5[3] = &unk_2785987B8;
  v6 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO notifications VALUES (:uuid onPrep::receiveTimestamp onRow::deliveryMethod onError:{:urgency, :bundleId, :threadId, :contactId, :isGroupMessage, :isMessage, :latestOutcome, :latestOutcomeTimestamp, :isProminent, :isActive, 0, :rawIdentifier, :receivedMode, NULL, NULL, :deliveryReason, :recordTimestamp, :notificationID, :notificationBodyLength, :notificationTitleLength, :notificationSubtitleLength, :summaryLength, :isDeliveredInPrioritySection, :isSummarized, :isPartOfStack, :isStackSummary, 0, :numberOfNotificationsInStack, :notificationPriorityStatus, :notificationSummaryStatus, :isPriorityNotificationEnabled, :isNotificationSummaryEnabled, NULL)", v7, 0, v5}];
}

void __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = a2;
  v3 = [*(a1 + 32) notification];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];
  [v41 bindNamedParam:":uuid" toNSString:v5];

  [*(a1 + 32) timestamp];
  [v41 bindNamedParam:":receiveTimestamp" toDouble:?];
  [v41 bindNamedParam:":deliveryMethod" toInteger:*(a1 + 56)];
  v6 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":urgency" toInteger:{objc_msgSend(v6, "urgency")}];

  v7 = [*(a1 + 32) notification];
  v8 = [v7 bundleID];
  [v41 bindNamedParam:":bundleId" toNSString:v8];

  v9 = [*(a1 + 32) notification];
  v10 = [v9 threadID];
  [v41 bindNamedParam:":threadId" toNSString:v10];

  v11 = [*(a1 + 32) notification];
  v12 = [v11 contactIDs];
  if (v12)
  {
    v13 = [*(a1 + 32) notification];
    v14 = [v13 contactIDs];
    v15 = [v14 firstObject];
  }

  else
  {
    v15 = 0;
  }

  [v41 bindNamedParam:":contactId" toNSString:v15];
  v16 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":isGroupMessage" toInt64:{objc_msgSend(v16, "isGroupMessage")}];

  v17 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":isMessage" toInt64:{objc_msgSend(v17, "isMessage")}];

  [v41 bindNamedParam:":latestOutcome" toInteger:{objc_msgSend(*(a1 + 32), "eventType")}];
  [*(a1 + 32) timestamp];
  [v41 bindNamedParam:":latestOutcomeTimestamp" toDouble:?];
  [v41 bindNamedParam:":isProminent" toInt64:{objc_msgSend(*(a1 + 32), "eventCausesNotificationNonprominence") ^ 1}];
  [v41 bindNamedParam:":isActive" toInt64:1];
  v18 = [*(a1 + 32) notification];
  v19 = [v18 rawIdentifiers];
  if (v19)
  {
    v20 = [*(a1 + 32) notification];
    v21 = [v20 rawIdentifiers];
    v22 = [v21 firstObject];
  }

  else
  {
    v22 = 0;
  }

  [v41 bindNamedParam:":rawIdentifier" toNSString:v22];
  [v41 bindNamedParam:":receivedMode" toNSString:*(a1 + 40)];
  [v41 bindNamedParam:":deliveryReason" toInt64AsNSNumber:*(a1 + 48)];
  v23 = [*(a1 + 32) notification];
  v24 = [v23 recordDate];

  if (v24)
  {
    v25 = [*(a1 + 32) notification];
    v26 = [v25 recordDate];
    [v26 timeIntervalSinceReferenceDate];
    [v41 bindNamedParam:":recordTimestamp" toDouble:?];
  }

  v27 = [*(a1 + 32) notification];
  v28 = [v27 notificationID];
  [v41 bindNamedParam:":notificationID" toNSString:v28];

  v29 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":notificationBodyLength" toInteger:{objc_msgSend(v29, "bodyLength")}];

  v30 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":notificationTitleLength" toInteger:{objc_msgSend(v30, "titleLength")}];

  v31 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":notificationSubtitleLength" toInteger:{objc_msgSend(v31, "subtitleLength")}];

  v32 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":summaryLength" toInteger:{objc_msgSend(v32, "summaryLength")}];

  [v41 bindNamedParam:":isDeliveredInPrioritySection" toInt64:{objc_msgSend(*(a1 + 32), "isDeliveredInPrioritySection")}];
  v33 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":isSummarized" toInt64:{objc_msgSend(v33, "isSummarized")}];

  v34 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":isPartOfStack" toInt64:{objc_msgSend(v34, "isPartOfStack")}];

  v35 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":isStackSummary" toInt64:{objc_msgSend(v35, "isStackSummary")}];

  v36 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":numberOfNotificationsInStack" toInteger:{objc_msgSend(v36, "numberOfNotificationsInStack")}];

  v37 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":notificationPriorityStatus" toInteger:{objc_msgSend(v37, "priorityStatus")}];

  v38 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":notificationSummaryStatus" toInteger:{objc_msgSend(v38, "summaryStatus")}];

  v39 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":isPriorityNotificationEnabled" toInt64:{objc_msgSend(v39, "isPriorityNotificationEnabled")}];

  v40 = [*(a1 + 32) notification];
  [v41 bindNamedParam:":isNotificationSummaryEnabled" toInt64:{objc_msgSend(v40, "isNotificationSummaryEnabled")}];
}

uint64_t __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke_3_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)updateNotificationFromEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy eventType] == 5)
  {
    notification = [eventCopy notification];
    uuid = [notification uuid];

    v7 = [MEMORY[0x277CBEB98] setWithObject:uuid];
    v8 = [(ATXNotificationAndSuggestionDatabase *)self resolutionsForNotifications:v7];
    v9 = [v8 objectForKeyedSubscript:uuid];

    if (v9)
    {
      v10 = [v9 resolutionType] != 3;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  eventType = [eventCopy eventType];
  queue = self->super._queue;
  if (eventType == 19)
  {
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke;
    v17[3] = &unk_278596C10;
    v17[4] = self;
  }

  else
  {
    v13 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_127;
    v15[3] = &unk_278598A00;
    v15[4] = self;
    v16 = v10;
  }

  v13[5] = eventCopy;
  v14 = eventCopy;
  dispatch_sync_notxn_0(queue, v13);
}

void __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_3;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"UPDATE notifications SET numExpansions = numExpansions + 1 WHERE uuid = :uuid" onPrep:v5 onRow:0 onError:v3];
}

void __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 notification];
  v4 = [v6 uuid];
  v5 = [v4 UUIDString];
  [v3 bindNamedParam:":uuid" toNSString:v5];
}

uint64_t __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_3_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

void __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_127(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3 = *(a1 + 48);
  v4 = &kATXUpdateNotificationExcludingLatestOutcomeQuery;
  if (!v3)
  {
    v4 = &kATXUpdateNotificationIncludingLatestOutcomeQuery;
  }

  v5 = *v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_2_128;
  v8[3] = &unk_2785989D8;
  v10 = v3;
  v9 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_3_129;
  v6[3] = &unk_2785987B8;
  v7 = *(a1 + 40);
  [v2 prepAndRunQuery:v5 onPrep:v8 onRow:0 onError:v6];
}

void __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_2_128(uint64_t a1, void *a2)
{
  v6 = a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    [v6 bindNamedParam:":latestOutcome" toInteger:{objc_msgSend(*(a1 + 32), "eventType")}];
    [*(a1 + 32) timestamp];
    [v6 bindNamedParam:":latestOutcomeTimestamp" toDouble:?];
  }

  [v6 bindNamedParam:":isProminent" toInt64:{objc_msgSend(*(a1 + 32), "eventCausesNotificationNonprominence") ^ 1}];
  [v6 bindNamedParam:":isActive" toInt64:{objc_msgSend(*(a1 + 32), "eventCausesNotificationInactivity") ^ 1}];
  v3 = [*(a1 + 32) notification];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];
  [v6 bindNamedParam:":uuid" toNSString:v5];
}

uint64_t __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_3_129(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_3_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)updateNotificationsWithNextAppLaunchDate:(id)date receivedDateAfter:(id)after forBundleId:(id)id
{
  dateCopy = date;
  afterCopy = after;
  idCopy = id;
  queue = self->super._queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__ATXNotificationAndSuggestionDatabase_updateNotificationsWithNextAppLaunchDate_receivedDateAfter_forBundleId___block_invoke;
  v15[3] = &unk_2785978C0;
  v15[4] = self;
  v16 = dateCopy;
  v17 = afterCopy;
  v18 = idCopy;
  v12 = idCopy;
  v13 = afterCopy;
  v14 = dateCopy;
  dispatch_sync_notxn_0(queue, v15);
}

void __111__ATXNotificationAndSuggestionDatabase_updateNotificationsWithNextAppLaunchDate_receivedDateAfter_forBundleId___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __111__ATXNotificationAndSuggestionDatabase_updateNotificationsWithNextAppLaunchDate_receivedDateAfter_forBundleId___block_invoke_2;
  v3[3] = &unk_278599DB8;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  [v2 prepAndRunQuery:@"UPDATE notifications SET nextAppLaunchTimestamp = :nextAppLaunchTimestamp WHERE bundleId = :bundleId AND receiveTimestamp >= :receivedDateAfter AND receiveTimestamp < :nextAppLaunchTimestamp" onPrep:v3 onRow:0 onError:&__block_literal_global_66];
}

void __111__ATXNotificationAndSuggestionDatabase_updateNotificationsWithNextAppLaunchDate_receivedDateAfter_forBundleId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":nextAppLaunchTimestamp" toDouble:?];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":receivedDateAfter" toDouble:?];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 48)];
}

uint64_t __111__ATXNotificationAndSuggestionDatabase_updateNotificationsWithNextAppLaunchDate_receivedDateAfter_forBundleId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __111__ATXNotificationAndSuggestionDatabase_updateNotificationsWithNextAppLaunchDate_receivedDateAfter_forBundleId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)updateNotificationUIForNotifications:(id)notifications nextUI:(unint64_t)i
{
  notificationsCopy = notifications;
  queue = self->super._queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__ATXNotificationAndSuggestionDatabase_updateNotificationUIForNotifications_nextUI___block_invoke;
  v9[3] = &unk_278599E28;
  v10 = notificationsCopy;
  iCopy = i;
  v9[4] = self;
  v8 = notificationsCopy;
  dispatch_sync_notxn_0(queue, v9);
}

void __84__ATXNotificationAndSuggestionDatabase_updateNotificationUIForNotifications_nextUI___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__ATXNotificationAndSuggestionDatabase_updateNotificationUIForNotifications_nextUI___block_invoke_2;
  v4[3] = &unk_278599E00;
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = v3;
  [v2 prepAndRunQuery:@" UPDATE notifications SET   firstUI = COALESCE(firstUI onPrep::nextUI) onRow:mostRecentUI = :nextUI WHERE   uuid IN _pas_nsarray(:notificationUUIDs) " onError:{v4, 0, &__block_literal_global_138_0}];
}

void __84__ATXNotificationAndSuggestionDatabase_updateNotificationUIForNotifications_nextUI___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 bindNamedParam:":nextUI" toInteger:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_135];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  [v5 bindNamedParam:":notificationUUIDs" toNSArray:v4];
}

uint64_t __84__ATXNotificationAndSuggestionDatabase_updateNotificationUIForNotifications_nextUI___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __84__ATXNotificationAndSuggestionDatabase_updateNotificationUIForNotifications_nextUI___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)insertSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = suggestionCopy;
  v6 = suggestionCopy;
  dispatch_sync_notxn_0(queue, v7);
}

void __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke_3;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO suggestions VALUES (:uuid onPrep::createdTimestamp onRow::triggerNotificationUUID onError:{:deliverySuggestion, :suggestionType, :scope, :entityIdentifier, :shownTimestamp, :latestOutcome, :latestOutcomeTimestamp, :isActive, :feedbackKey)", v5, 0, v3}];
}

void __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [v5 UUIDString];
  [v4 bindNamedParam:":uuid" toNSString:v6];

  v7 = [*(a1 + 32) timestamp];
  [v7 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":createdTimestamp" toDouble:?];

  v8 = [*(a1 + 32) triggerNotificationUUID];
  v9 = [v8 UUIDString];
  [v4 bindNamedParam:":triggerNotificationUUID" toNSString:v9];

  v10 = [*(a1 + 32) encodeAsProto];
  [v4 bindNamedParam:":deliverySuggestion" toNSData:v10];

  [v4 bindNamedParam:":suggestionType" toInt64:{objc_msgSend(*(a1 + 32), "subtype")}];
  [v4 bindNamedParam:":scope" toInt64:{objc_msgSend(*(a1 + 32), "scope")}];
  v11 = [*(a1 + 32) entityIdentifier];
  [v4 bindNamedParam:":entityIdentifier" toNSString:v11];

  [v4 bindNamedParamToNull:":shownTimestamp"];
  [v4 bindNamedParam:":latestOutcome" toInt64:7];
  v12 = [*(a1 + 32) timestamp];
  [v12 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":latestOutcomeTimestamp" toDouble:?];

  [v4 bindNamedParam:":isActive" toInt64:1];
  v13 = [*(a1 + 32) feedbackKey];
  [v4 bindNamedParam:":feedbackKey" toNSString:v13];
}

uint64_t __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke_3_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)updateSuggestionFromEvent:(id)event
{
  eventCopy = event;
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync_notxn_0(queue, v7);
}

void __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke_3;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"UPDATE suggestions SET shownTimestamp = COALESCE(shownTimestamp onPrep::shownTimestamp) onRow:latestOutcome = :latestOutcome onError:{latestOutcomeTimestamp = :latestOutcomeTimestamp, isActive = (isActive & :isActive) WHERE uuid = :uuid", v5, 0, v3}];
}

void __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) eventType] == 3)
  {
    v3 = [*(a1 + 32) eventDate];
    [v3 timeIntervalSinceReferenceDate];
    [v7 bindNamedParam:":shownTimestamp" toDouble:?];
  }

  else
  {
    [v7 bindNamedParamToNull:":shownTimestamp"];
  }

  [v7 bindNamedParam:":latestOutcome" toInt64:{objc_msgSend(*(a1 + 32), "eventType")}];
  v4 = [*(a1 + 32) eventDate];
  [v4 timeIntervalSinceReferenceDate];
  [v7 bindNamedParam:":latestOutcomeTimestamp" toDouble:?];

  [v7 bindNamedParam:":isActive" toInt64:{objc_msgSend(*(a1 + 32), "eventCausesSuggestionInactivity") ^ 1}];
  v5 = [*(a1 + 32) suggestionUUID];
  v6 = [v5 UUIDString];
  [v7 bindNamedParam:":uuid" toNSString:v6];
}

uint64_t __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke_3_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (BOOL)hasSuggestionBeenShownForEntityId:(id)id suggestionType:(int64_t)type scope:(int64_t)scope sinceTimestamp:(double)timestamp
{
  idCopy = id;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  queue = self->super._queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke;
  v15[3] = &unk_278599EA0;
  typeCopy = type;
  scopeCopy = scope;
  v15[4] = self;
  v16 = idCopy;
  timestampCopy = timestamp;
  v17 = &v22;
  v21 = a2;
  v13 = idCopy;
  dispatch_sync_notxn_0(queue, v15);
  LOBYTE(type) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return type;
}

void __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_2;
  v9[3] = &unk_278599E50;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  v12 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4;
  v5[3] = &unk_278599E78;
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v6 = v3;
  v7 = v4;
  [v2 prepAndRunQuery:@"SELECT count(*) AS numOfSuggestions FROM suggestions WHERE suggestionType = :suggestionType AND scope = :scope AND entityIdentifier = :entityId AND createdTimestamp >= :timestamp" onPrep:v9 onRow:v8 onError:v5];
}

void __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":suggestionType" toInteger:v3];
  [v4 bindNamedParam:":scope" toInteger:*(a1 + 48)];
  [v4 bindNamedParam:":entityId" toNSString:*(a1 + 32)];
  [v4 bindNamedParam:":timestamp" toDouble:*(a1 + 56)];
}

uint64_t __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)suggestionEventTypeShownForEntityId:(id)id suggestionType:(int64_t)type scope:(int64_t)scope sinceTimestamp:(double)timestamp
{
  idCopy = id;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__31;
  v27 = __Block_byref_object_dispose__31;
  v28 = 0;
  queue = self->super._queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke;
  v16[3] = &unk_278599EA0;
  typeCopy = type;
  scopeCopy = scope;
  v16[4] = self;
  v17 = idCopy;
  timestampCopy = timestamp;
  v18 = &v23;
  v22 = a2;
  v13 = idCopy;
  dispatch_sync_notxn_0(queue, v16);
  v14 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_2;
  v9[3] = &unk_278599E50;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  v12 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4;
  v5[3] = &unk_278599E78;
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v6 = v3;
  v7 = v4;
  [v2 prepAndRunQuery:@"SELECT latestOutcome AS eventType FROM suggestions WHERE suggestionType = :suggestionType AND scope = :scope AND entityIdentifier = :entityId AND createdTimestamp >= :timestamp ORDER BY createdTimestamp DESC LIMIT 1" onPrep:v9 onRow:v8 onError:v5];
}

void __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":suggestionType" toInteger:v3];
  [v4 bindNamedParam:":scope" toInteger:*(a1 + 48)];
  [v4 bindNamedParam:":entityId" toNSString:*(a1 + 32)];
  [v4 bindNamedParam:":timestamp" toDouble:*(a1 + 56)];
}

uint64_t __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getIntegerForColumnAlias:"eventType"];

  v7 = [v5 initWithLong:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *MEMORY[0x277D42690];
}

uint64_t __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)engagementStatusOfActiveAndProminentNotificationsWithUrgency:(int64_t)urgency sinceTimestamp:(double)timestamp
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__31;
  v25[4] = __Block_byref_object_dispose__31;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__31;
  v23[4] = __Block_byref_object_dispose__31;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__31;
  v21[4] = __Block_byref_object_dispose__31;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__31;
  v19[4] = __Block_byref_object_dispose__31;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__31;
  v17 = __Block_byref_object_dispose__31;
  v8 = objc_opt_new();
  queue = self->super._queue;
  v18 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke;
  v12[3] = &unk_278599F30;
  *&v12[10] = timestamp;
  v12[4] = self;
  v12[5] = v25;
  v12[6] = v23;
  v12[7] = v21;
  v12[8] = v19;
  v12[9] = &v13;
  v12[11] = urgency;
  v12[12] = a2;
  dispatch_sync_notxn_0(queue, v12);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  return v10;
}

void __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_2;
  v9[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v9[4] = *(a1 + 80);
  v9[5] = *(a1 + 88);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_3;
  v5[3] = &unk_278599EE8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = *(a1 + 96);
  [v2 prepAndRunQuery:@"SELECT MAX(IIF(isActive=1 onPrep:receiveTimestamp onRow:0)) AS latestTimestamp onError:{uuid, SUM(IIF(latestOutcome IN (:defaultAction, :supplementaryAction, :longLook, :appLaunch), 1, 0)) AS numEngagedNotifications, SUM(1) AS numNotifications, bundleId FROM notifications WHERE receiveTimestamp >= :timestamp AND deliveryMethod = :deliveryMethod AND urgency = :urgency GROUP BY bundleId LIMIT :limit", v9, v5, v4}];
}

void __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":defaultAction" toInteger:1];
  [v3 bindNamedParam:":supplementaryAction" toInteger:2];
  [v3 bindNamedParam:":longLook" toInteger:7];
  [v3 bindNamedParam:":appLaunch" toInteger:9];
  [v3 bindNamedParam:":limit" toInt64:1000];
  [v3 bindNamedParam:":timestamp" toDouble:*(a1 + 32)];
  [v3 bindNamedParam:":deliveryMethod" toInteger:1];
  [v3 bindNamedParam:":urgency" toInteger:*(a1 + 40)];
}

uint64_t __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "getIntegerForColumnAlias:", "numEngagedNotifications")}];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "getIntegerForColumnAlias:", "numNotifications") - objc_msgSend(*(*(a1[4] + 8) + 40), "integerValue")}];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = [v4 getNSStringForColumnAlias:"uuid"];
  v13 = [v11 initWithUUIDString:v12];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [v4 getNSStringForColumnAlias:"bundleId"];

  v17 = *(a1[7] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:*(*(a1[4] + 8) + 40) second:*(*(a1[5] + 8) + 40)];
  v20 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:*(*(a1[6] + 8) + 40) second:v19];
  [*(*(a1[8] + 8) + 40) setObject:v20 forKey:*(*(a1[7] + 8) + 40)];
  v21 = MEMORY[0x277D42690];

  return *v21;
}

uint64_t __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp:(double)timestamp
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__31;
  v25[4] = __Block_byref_object_dispose__31;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__31;
  v23[4] = __Block_byref_object_dispose__31;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__31;
  v21[4] = __Block_byref_object_dispose__31;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__31;
  v19[4] = __Block_byref_object_dispose__31;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__31;
  v17[4] = __Block_byref_object_dispose__31;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__31;
  v15 = __Block_byref_object_dispose__31;
  v6 = objc_opt_new();
  queue = self->super._queue;
  v16 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke;
  v10[3] = &unk_278599FA0;
  *&v10[11] = timestamp;
  v10[4] = self;
  v10[5] = v25;
  v10[6] = v23;
  v10[7] = v19;
  v10[8] = v21;
  v10[9] = v17;
  v10[10] = &v11;
  v10[12] = a2;
  dispatch_sync_notxn_0(queue, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);

  return v8;
}

void __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke_2;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v9[4] = *(a1 + 88);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke_3;
  v5[3] = &unk_278599F78;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke_4;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = *(a1 + 96);
  [v2 prepAndRunQuery:@"SELECT MAX(IIF(isActive=1 AND isProminent=1 onPrep:receiveTimestamp onRow:0)) AS latestTimestamp onError:{IIF(isActive=1 AND isProminent=1, uuid, NULL) AS uuid, SUM(IIF(latestOutcome IN (:defaultAction, :supplementaryAction, :longLook, :appLaunch), 1, 0)) AS numEngagedNotifications, SUM(1) AS numNotifications, bundleId FROM notifications WHERE receiveTimestamp >= :timestamp AND deliveryMethod = :deliveryMethod AND isMessage = 1 GROUP BY bundleId LIMIT :limit", v9, v5, v4}];
}

void __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":defaultAction" toInteger:1];
  [v3 bindNamedParam:":supplementaryAction" toInteger:2];
  [v3 bindNamedParam:":longLook" toInteger:7];
  [v3 bindNamedParam:":appLaunch" toInteger:9];
  [v3 bindNamedParam:":limit" toInt64:1000];
  [v3 bindNamedParam:":timestamp" toDouble:*(a1 + 32)];
  [v3 bindNamedParam:":deliveryMethod" toInteger:1];
}

uint64_t __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumnAlias:", "numEngagedNotifications")}];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumnAlias:", "numNotifications") - objc_msgSend(*(*(a1[4] + 8) + 40), "integerValue")}];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v3 getNSStringForColumnAlias:"uuid"];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(a1[6] + 8) + 40))
  {
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(a1[6] + 8) + 40)];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v3 getNSStringForColumnAlias:"bundleId"];
    v17 = *(a1[8] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:*(*(a1[4] + 8) + 40) second:*(*(a1[5] + 8) + 40)];
    v20 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:*(*(a1[7] + 8) + 40) second:v19];
    [*(*(a1[9] + 8) + 40) setObject:v20 forKey:*(*(a1[8] + 8) + 40)];
    v21 = *MEMORY[0x277D42690];
  }

  else
  {
    v21 = *MEMORY[0x277D42690];
  }

  return v21;
}

uint64_t __114__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)engagementStatusOfActiveAndProminentNotificationsSinceTimestamp:(double)timestamp
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__31;
  v25[4] = __Block_byref_object_dispose__31;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__31;
  v23[4] = __Block_byref_object_dispose__31;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__31;
  v21[4] = __Block_byref_object_dispose__31;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__31;
  v19[4] = __Block_byref_object_dispose__31;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__31;
  v17[4] = __Block_byref_object_dispose__31;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__31;
  v15 = __Block_byref_object_dispose__31;
  v6 = objc_opt_new();
  queue = self->super._queue;
  v16 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke;
  v10[3] = &unk_278599FA0;
  *&v10[11] = timestamp;
  v10[4] = self;
  v10[5] = v25;
  v10[6] = v23;
  v10[7] = v19;
  v10[8] = v21;
  v10[9] = v17;
  v10[10] = &v11;
  v10[12] = a2;
  dispatch_sync_notxn_0(queue, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);

  return v8;
}

void __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke_2;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v9[4] = *(a1 + 88);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke_3;
  v5[3] = &unk_278599F78;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke_4;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = *(a1 + 96);
  [v2 prepAndRunQuery:@"SELECT MAX(IIF(isActive=1 AND isProminent=1 onPrep:receiveTimestamp onRow:0)) AS latestTimestamp onError:{IIF(isActive=1 AND isProminent=1, uuid, NULL) AS uuid, SUM(IIF(latestOutcome IN (:defaultAction, :supplementaryAction, :longLook, :appLaunch), 1, 0)) AS numEngagedNotifications, SUM(1) AS numNotifications, bundleId FROM notifications WHERE receiveTimestamp >= :timestamp AND deliveryMethod = :deliveryMethod GROUP BY bundleId LIMIT :limit", v9, v5, v4}];
}

void __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":defaultAction" toInteger:1];
  [v3 bindNamedParam:":supplementaryAction" toInteger:2];
  [v3 bindNamedParam:":longLook" toInteger:7];
  [v3 bindNamedParam:":appLaunch" toInteger:9];
  [v3 bindNamedParam:":limit" toInt64:1000];
  [v3 bindNamedParam:":timestamp" toDouble:*(a1 + 32)];
  [v3 bindNamedParam:":deliveryMethod" toInteger:1];
}

uint64_t __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumnAlias:", "numEngagedNotifications")}];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumnAlias:", "numNotifications") - objc_msgSend(*(*(a1[4] + 8) + 40), "integerValue")}];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v3 getNSStringForColumnAlias:"uuid"];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(a1[6] + 8) + 40))
  {
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(a1[6] + 8) + 40)];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v3 getNSStringForColumnAlias:"bundleId"];
    v17 = *(a1[8] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:*(*(a1[4] + 8) + 40) second:*(*(a1[5] + 8) + 40)];
    v20 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:*(*(a1[7] + 8) + 40) second:v19];
    [*(*(a1[9] + 8) + 40) setObject:v20 forKey:*(*(a1[8] + 8) + 40)];
    v21 = *MEMORY[0x277D42690];
  }

  else
  {
    v21 = *MEMORY[0x277D42690];
  }

  return v21;
}

uint64_t __104__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsSinceTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)mostRecentActiveNotifications
{
  v4 = objc_opt_new();
  queue = self->super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ATXNotificationAndSuggestionDatabase_mostRecentActiveNotifications__block_invoke;
  v10[3] = &unk_278599E28;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v12 = a2;
  dispatch_sync_notxn_0(queue, v10);
  v7 = v11;
  v8 = v6;

  return v6;
}

void __69__ATXNotificationAndSuggestionDatabase_mostRecentActiveNotifications__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__ATXNotificationAndSuggestionDatabase_mostRecentActiveNotifications__block_invoke_2;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__ATXNotificationAndSuggestionDatabase_mostRecentActiveNotifications__block_invoke_3;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT uuid onPrep:receiveTimestamp onRow:urgency onError:{bundleId, threadId, contactId, rawIdentifier, isGroupMessage FROM notifications WHERE isActive=1 ORDER BY receiveTimestamp DESC LIMIT 100", 0, v4, v3}];
}

uint64_t __69__ATXNotificationAndSuggestionDatabase_mostRecentActiveNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 getNSStringForColumnName:"uuid" table:0];
  v6 = [v4 initWithUUIDString:v5];

  [v3 getDoubleForColumnName:"receiveTimestamp" table:0];
  v8 = v7;
  v9 = [v3 getIntegerForColumnName:"urgency" table:0];
  v10 = [v3 getNSStringForColumnName:"bundleId" table:0];
  v11 = [v3 getNSStringForColumnName:"threadId" table:0];
  v12 = [v3 getNSStringForColumnName:"contactId" table:0];
  v13 = [v3 getNSStringForColumnName:"rawIdentifier" table:0];
  v14 = [v3 getIntegerForColumnName:"isGroupMessage" table:0];

  v15 = objc_alloc(MEMORY[0x277CEB958]);
  if (v12)
  {
    v28[0] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  }

  else
  {
    v16 = 0;
  }

  if (!v13)
  {
    LOBYTE(v25) = v14 == 1;
    v22 = [v15 initFromNotificationData:v6 timestamp:0 title:0 subtitle:0 body:0 badge:0 userInfo:v8 bundleID:v10 threadID:v11 categoryID:0 sectionID:0 contactIDs:v16 rawIdentifiers:0 isGroupMessage:v25 derivedData:0 urgency:v9];
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = v11;
  v18 = v10;
  v19 = v6;
  v20 = v14 == 1;
  v27 = v13;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  LOBYTE(v25) = v20;
  v6 = v19;
  v10 = v18;
  v11 = v17;
  v22 = [v15 initFromNotificationData:v6 timestamp:0 title:0 subtitle:0 body:0 badge:0 userInfo:v8 bundleID:v10 threadID:v17 categoryID:0 sectionID:0 contactIDs:v16 rawIdentifiers:v21 isGroupMessage:v25 derivedData:0 urgency:v9];

  if (v12)
  {
LABEL_6:
  }

LABEL_7:
  [*(a1 + 32) addObject:v22];

  v23 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

uint64_t __69__ATXNotificationAndSuggestionDatabase_mostRecentActiveNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)numProminentActiveNotificationsByGroupingColumn:(id)column
{
  v5 = MEMORY[0x277CCACA8];
  columnCopy = column;
  columnCopy = [[v5 alloc] initWithFormat:@"    SELECT %@ as groupVal, uuid, MAX(receiveTimestamp), COUNT(*) as groupCount     FROM notifications     WHERE isActive=1 AND isProminent=1 AND groupVal IS NOT NULL     GROUP BY groupVal    LIMIT 1000    ", columnCopy];

  v8 = objc_opt_new();
  queue = self->super._queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__ATXNotificationAndSuggestionDatabase_numProminentActiveNotificationsByGroupingColumn___block_invoke;
  v15[3] = &unk_278599FF0;
  v15[4] = self;
  v16 = columnCopy;
  v10 = v8;
  v17 = v10;
  v18 = a2;
  v11 = columnCopy;
  dispatch_sync_notxn_0(queue, v15);
  v12 = v17;
  v13 = v10;

  return v10;
}

void __88__ATXNotificationAndSuggestionDatabase_numProminentActiveNotificationsByGroupingColumn___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__ATXNotificationAndSuggestionDatabase_numProminentActiveNotificationsByGroupingColumn___block_invoke_2;
  v5[3] = &unk_278599FC8;
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__ATXNotificationAndSuggestionDatabase_numProminentActiveNotificationsByGroupingColumn___block_invoke_3;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = *(a1 + 56);
  [v2 prepAndRunQuery:v3 onPrep:0 onRow:v5 onError:v4];
}

uint64_t __88__ATXNotificationAndSuggestionDatabase_numProminentActiveNotificationsByGroupingColumn___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"groupVal"];
  v5 = [v3 getNSStringForColumnName:"uuid" table:0];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  v7 = [v3 getIntegerForColumnAlias:"groupCount"];

  v8 = objc_alloc(MEMORY[0x277D42648]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v10 = [v8 initWithFirst:v9 second:v6];

  [*(a1 + 32) setObject:v10 forKey:v4];
  v11 = MEMORY[0x277D42690];

  return *v11;
}

uint64_t __88__ATXNotificationAndSuggestionDatabase_numProminentActiveNotificationsByGroupingColumn___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke;
  block[3] = &unk_278598318;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

void __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__31;
  v16 = __Block_byref_object_dispose__31;
  v17 = 0;
  v3 = [*(a1 + 32) db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_278599FC8;
  v4 = v2;
  v11 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_278598808;
  v5 = *(a1 + 48);
  v9[4] = &v12;
  v9[5] = v5;
  v6 = [v3 prepAndRunQuery:@"SELECT bundleId FROM notifications WHERE isActive = 1" onPrep:0 onRow:v10 onError:v9];

  if (v6)
  {
    [v4 count];
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
    [v7 count];
  }

  else
  {
    v8 = v13[5];
  }

  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(&v12, 8);
}

uint64_t __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"bundleId"];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke_3_cold_1();
  }

  v6 = MEMORY[0x277D42698];
  return *v6;
}

- (void)setAllNotificationsToClearedExceptProminent
{
  queue = self->super._queue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__ATXNotificationAndSuggestionDatabase_setAllNotificationsToClearedExceptProminent__block_invoke;
  v3[3] = &unk_278596BB8;
  v3[4] = self;
  dispatch_sync_notxn_0(queue, v3);
}

void __83__ATXNotificationAndSuggestionDatabase_setAllNotificationsToClearedExceptProminent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) db];
  [v1 prepAndRunQuery:@"UPDATE notifications SET latestOutcome = :latestOutcome onPrep:isActive = :isActive WHERE isProminent = :isProminent" onRow:&__block_literal_global_187 onError:{0, &__block_literal_global_189}];
}

void __83__ATXNotificationAndSuggestionDatabase_setAllNotificationsToClearedExceptProminent__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 bindNamedParam:":isActive" toInt64:0];
  [v2 bindNamedParam:":latestOutcome" toInteger:3];
  [v2 bindNamedParam:":isProminent" toInt64:0];
}

uint64_t __83__ATXNotificationAndSuggestionDatabase_setAllNotificationsToClearedExceptProminent__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __83__ATXNotificationAndSuggestionDatabase_setAllNotificationsToClearedExceptProminent__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)setAllNotificationsToModified
{
  queue = self->super._queue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__ATXNotificationAndSuggestionDatabase_setAllNotificationsToModified__block_invoke;
  v3[3] = &unk_278596BB8;
  v3[4] = self;
  dispatch_sync_notxn_0(queue, v3);
}

void __69__ATXNotificationAndSuggestionDatabase_setAllNotificationsToModified__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) db];
  [v1 prepAndRunQuery:@"UPDATE notifications SET latestOutcome = :latestOutcome onPrep:isActive = :isActive onRow:isProminent = (isProminent & :isActive) WHERE isActive != :isActive " onError:{&__block_literal_global_191, 0, &__block_literal_global_193}];
}

void __69__ATXNotificationAndSuggestionDatabase_setAllNotificationsToModified__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 bindNamedParam:":isActive" toInt64:0];
  [v2 bindNamedParam:":latestOutcome" toInteger:18];
}

uint64_t __69__ATXNotificationAndSuggestionDatabase_setAllNotificationsToModified__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69__ATXNotificationAndSuggestionDatabase_setAllNotificationsToModified__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)currentActiveSuggestions
{
  v4 = objc_opt_new();
  queue = self->super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke;
  v10[3] = &unk_278599FF0;
  v10[4] = self;
  v11 = @"    SELECT entityIdentifier, deliverySuggestion     FROM suggestions     WHERE isActive=1 LIMIT 1000";
  v13 = a2;
  v6 = v4;
  v12 = v6;
  dispatch_sync_notxn_0(queue, v10);
  v7 = v12;
  v8 = v6;

  return v6;
}

void __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke_2;
  v7[3] = &unk_27859A038;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke_200;
  v6[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v6[4] = *(a1 + 56);
  [v2 prepAndRunQuery:v3 onPrep:0 onRow:v7 onError:v6];
}

uint64_t __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"entityIdentifier" table:0];
  if (v4)
  {
    v5 = [v3 getNSDataForColumnName:"deliverySuggestion" table:0];
    v6 = [objc_alloc(MEMORY[0x277CEB6F0]) initWithProtoData:v5];
    if (v6)
    {
      [*(a1 + 32) setObject:v6 forKey:v4];
    }

    else
    {
      v10 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke_2_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    v9 = *MEMORY[0x277D42690];
  }

  else
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Encountered nil entityIdentifier in %@. Skipping result.", &v20, 0xCu);
    }

    v9 = *MEMORY[0x277D42690];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke_200(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)getTopOfProminentStackNotificationsWithLimit:(unint64_t)limit
{
  v6 = objc_opt_new();
  queue = self->super._queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke;
  v12[3] = &unk_27859A060;
  v12[4] = self;
  limitCopy = limit;
  v8 = v6;
  v13 = v8;
  v15 = a2;
  dispatch_sync_notxn_0(queue, v12);
  v9 = v13;
  v10 = v8;

  return v8;
}

void __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_2;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_3;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_4;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT     bundleId onPrep:threadId onRow:MAX(receiveTimestamp) AS receiveTimestamp onError:{uuid, contactId, urgency, isMessage, isGroupMessage FROM notifications WHERE     isActive = 1 AND     isProminent = 1 GROUP BY     bundleId, threadId ORDER BY     receiveTimestamp DESC LIMIT     :numStacksLimit ", v6, v4, v3}];
}

uint64_t __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_3(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundleId"];
  v5 = [v3 getNSStringForColumnAlias:"threadId"];
  [v3 getDoubleForColumnAlias:"receiveTimestamp"];
  v7 = v6;
  v8 = [v3 getNSStringForColumnAlias:"uuid"];
  v9 = [v3 getNSStringForColumnAlias:"contactId"];
  v10 = [v3 getIntegerForColumnAlias:"urgency"];
  v11 = [v3 getIntegerForColumnAlias:"isMessage"];
  v12 = [v3 getIntegerForColumnAlias:"isGroupMessage"];

  v13 = objc_alloc(MEMORY[0x277CEB958]);
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
  v15 = [v13 initWithUUID:v14 timestamp:v7];

  [v15 setBundleID:v4];
  [v15 setThreadID:v5];
  if (v9)
  {
    v19[0] = v9;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v15 setContactIDs:v16];
  }

  [v15 setUrgency:v10];
  [v15 setIsMessage:v11 != 0];
  [v15 setIsGroupMessage:v12 != 0];
  [*(a1 + 32) addObject:v15];

  v17 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

uint64_t __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)getTopOfNonProminentStackNotificationsWithLimit:(unint64_t)limit
{
  v6 = objc_opt_new();
  queue = self->super._queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__ATXNotificationAndSuggestionDatabase_getTopOfNonProminentStackNotificationsWithLimit___block_invoke;
  v12[3] = &unk_27859A060;
  v12[4] = self;
  limitCopy = limit;
  v8 = v6;
  v13 = v8;
  v15 = a2;
  dispatch_sync_notxn_0(queue, v12);
  v9 = v13;
  v10 = v8;

  return v8;
}

void __88__ATXNotificationAndSuggestionDatabase_getTopOfNonProminentStackNotificationsWithLimit___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__ATXNotificationAndSuggestionDatabase_getTopOfNonProminentStackNotificationsWithLimit___block_invoke_2;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__ATXNotificationAndSuggestionDatabase_getTopOfNonProminentStackNotificationsWithLimit___block_invoke_3;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88__ATXNotificationAndSuggestionDatabase_getTopOfNonProminentStackNotificationsWithLimit___block_invoke_4;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT     bundleId onPrep:threadId onRow:MAX(receiveTimestamp) AS receiveTimestamp onError:{uuid, contactId, urgency, isMessage, isGroupMessage FROM notifications WHERE     isActive = 1 AND     isProminent = 0 GROUP BY     bundleId, threadId ORDER BY     receiveTimestamp DESC LIMIT     :numStacksLimit ", v6, v4, v3}];
}

uint64_t __88__ATXNotificationAndSuggestionDatabase_getTopOfNonProminentStackNotificationsWithLimit___block_invoke_3(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundleId"];
  v5 = [v3 getNSStringForColumnAlias:"threadId"];
  [v3 getDoubleForColumnAlias:"receiveTimestamp"];
  v7 = v6;
  v8 = [v3 getNSStringForColumnAlias:"uuid"];
  v9 = [v3 getNSStringForColumnAlias:"contactId"];
  v10 = [v3 getIntegerForColumnAlias:"urgency"];
  v11 = [v3 getIntegerForColumnAlias:"isMessage"];
  v12 = [v3 getIntegerForColumnAlias:"isGroupMessage"];

  v13 = objc_alloc(MEMORY[0x277CEB958]);
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
  v15 = [v13 initWithUUID:v14 timestamp:v7];

  [v15 setBundleID:v4];
  [v15 setThreadID:v5];
  if (v9)
  {
    v19[0] = v9;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v15 setContactIDs:v16];
  }

  [v15 setUrgency:v10];
  [v15 setIsMessage:v11 != 0];
  [v15 setIsGroupMessage:v12 != 0];
  [*(a1 + 32) addObject:v15];

  v17 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

uint64_t __88__ATXNotificationAndSuggestionDatabase_getTopOfNonProminentStackNotificationsWithLimit___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)getSmartPauseFeaturesForBundleIds:(id)ids sinceTimestamp:(double)timestamp positiveEngagementEnums:(id)enums
{
  enumsCopy = enums;
  idsCopy = ids;
  v11 = objc_opt_new();
  v12 = MEMORY[0x277CBEBF8];
  if (enumsCopy)
  {
    v13 = enumsCopy;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = v13;

  if (idsCopy)
  {
    v15 = idsCopy;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v18 = v17 + -300.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v20 = v19 + -3600.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v22 = v21 + -86400.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  queue = self->super._queue;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke;
  v31[3] = &unk_27859A0B0;
  v35 = v18;
  v36 = v20;
  v37 = v22;
  v38 = v24 + -604800.0;
  timestampCopy = timestamp;
  v31[4] = self;
  v32 = v14;
  v33 = v16;
  v25 = v11;
  v34 = v25;
  v40 = a2;
  v26 = v16;
  v27 = v14;
  dispatch_sync_notxn_0(queue, v31);
  v28 = v34;
  v29 = v25;

  return v25;
}

void __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke_2;
  v7[3] = &unk_27859A088;
  v3 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = v3;
  v12 = *(a1 + 96);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke_3;
  v5[3] = &unk_278599FC8;
  v6 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke_4;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = *(a1 + 104);
  [v2 prepAndRunQuery:@"SELECT bundleId onPrep:threadId onRow:SUM(IIF(notifications.receiveTimestamp > :lastFiveMinutesTimestamp onError:{1, 0)) AS lastFiveMinutesNotifications, SUM(IIF(notifications.receiveTimestamp > :lastFiveMinutesTimestamp AND latestOutcome IN _pas_nsarray(:positiveEngagementOutcomes), 1, 0)) AS lastFiveMinutesPositiveEngagements, SUM(IIF(notifications.receiveTimestamp > :lastHourTimestamp, 1, 0)) AS lastHourNotifications, SUM(IIF(notifications.receiveTimestamp > :lastHourTimestamp AND latestOutcome IN _pas_nsarray(:positiveEngagementOutcomes), 1, 0)) AS lastHourPositiveEngagements, SUM(IIF(notifications.receiveTimestamp > :lastDayTimestamp, 1, 0)) AS lastDayNotifications, SUM(IIF(notifications.receiveTimestamp > :lastDayTimestamp AND latestOutcome IN _pas_nsarray(:positiveEngagementOutcomes), 1, 0)) AS lastDayPositiveEngagements, SUM(IIF(notifications.receiveTimestamp > :lastWeekTimestamp, 1, 0)) AS lastWeekNotifications, SUM(IIF(notifications.receiveTimestamp > :lastWeekTimestamp AND latestOutcome IN _pas_nsarray(:positiveEngagementOutcomes), 1, 0)) AS lastWeekPositiveEngagements, SUM(IIF(notifications.receiveTimestamp > :cutoffTimestamp, 1, 0)) AS allNotifications, SUM(IIF(notifications.receiveTimestamp > :cutoffTimestamp AND latestOutcome IN _pas_nsarray(:positiveEngagementOutcomes), 1, 0)) AS allPositiveEngagements FROM notifications WHERE bundleId IN _pas_nsarray(:candidateNotificationBundleIds) AND receiveTimestamp > :cutoffTimestamp GROUP BY bundleId, threadId ", v7, v5, v4}];
}

void __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 bindNamedParam:":lastFiveMinutesTimestamp" toDouble:v3];
  [v4 bindNamedParam:":lastHourTimestamp" toDouble:*(a1 + 56)];
  [v4 bindNamedParam:":lastDayTimestamp" toDouble:*(a1 + 64)];
  [v4 bindNamedParam:":lastWeekTimestamp" toDouble:*(a1 + 72)];
  [v4 bindNamedParam:":cutoffTimestamp" toDouble:*(a1 + 80)];
  [v4 bindNamedParam:":positiveEngagementOutcomes" toNSArray:*(a1 + 32)];
  [v4 bindNamedParam:":candidateNotificationBundleIds" toNSArray:*(a1 + 40)];
}

uint64_t __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundleId"];
  v5 = [v3 getNSStringForColumnAlias:"threadId"];
  v6 = [[ATXSmartPauseDatabaseQueryResult alloc] initWithBundleId:v4 threadId:v5];
  -[ATXSmartPauseDatabaseQueryResult setCountLastFiveMinutesNotifications:](v6, "setCountLastFiveMinutesNotifications:", [v3 getIntegerForColumnAlias:"lastFiveMinutesNotifications"]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastFiveMinutesPositiveEngagements:](v6, "setCountLastFiveMinutesPositiveEngagements:", [v3 getIntegerForColumnAlias:"lastFiveMinutesPositiveEngagements"]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastHourNotifications:](v6, "setCountLastHourNotifications:", [v3 getIntegerForColumnAlias:"lastHourNotifications"]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastHourPositiveEngagements:](v6, "setCountLastHourPositiveEngagements:", [v3 getIntegerForColumnAlias:"lastHourPositiveEngagements"]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastDayNotifications:](v6, "setCountLastDayNotifications:", [v3 getIntegerForColumnAlias:"lastDayNotifications"]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastDayPositiveEngagements:](v6, "setCountLastDayPositiveEngagements:", [v3 getIntegerForColumnAlias:"lastDayPositiveEngagements"]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastWeekNotifications:](v6, "setCountLastWeekNotifications:", [v3 getIntegerForColumnAlias:"lastWeekNotifications"]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastWeekPositiveEngagements:](v6, "setCountLastWeekPositiveEngagements:", [v3 getIntegerForColumnAlias:"lastWeekPositiveEngagements"]);
  -[ATXSmartPauseDatabaseQueryResult setCountNotifications:](v6, "setCountNotifications:", [v3 getIntegerForColumnAlias:"allNotifications"]);
  v7 = [v3 getIntegerForColumnAlias:"allPositiveEngagements"];

  [(ATXSmartPauseDatabaseQueryResult *)v6 setCountPositiveEngagements:v7];
  [*(a1 + 32) addObject:v6];
  v8 = MEMORY[0x277D42690];

  return *v8;
}

uint64_t __113__ATXNotificationAndSuggestionDatabase_getSmartPauseFeaturesForBundleIds_sinceTimestamp_positiveEngagementEnums___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)allNotificationsBetweenStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp limit:(unint64_t)limit
{
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  v11 = objc_opt_new();
  queue = self->super._queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke;
  v19[3] = &unk_27859A100;
  v19[4] = self;
  v20 = timestampCopy;
  v21 = endTimestampCopy;
  limitCopy = limit;
  v13 = v11;
  v22 = v13;
  v24 = a2;
  v14 = endTimestampCopy;
  v15 = timestampCopy;
  dispatch_sync_notxn_0(queue, v19);
  v16 = v22;
  v17 = v13;

  return v13;
}

void __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke_2;
  v8[3] = &unk_27859A0D8;
  v9 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v10 = v3;
  v11 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke_3;
  v6[3] = &unk_278599FC8;
  v7 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke_4;
  v5[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v5[4] = *(a1 + 72);
  [v2 prepAndRunQuery:@"SELECT uuid onPrep:receiveTimestamp onRow:urgency onError:{bundleId, threadId, contactId, rawIdentifier, isGroupMessage, isMessage   FROM notifications   WHERE receiveTimestamp > :startTimestamp AND receiveTimestamp < :endTimestamp   LIMIT :limit", v8, v6, v5}];
}

void __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":startTimestamp" toDouble:?];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":endTimestamp" toDouble:?];
  [v4 bindNamedParam:":limit" toInt64:*(a1 + 48)];
}

uint64_t __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getNSStringForColumnAlias:"uuid"];
  v7 = [v5 initWithUUIDString:v6];

  [v4 getDoubleForColumnAlias:"receiveTimestamp"];
  v9 = v8;
  v10 = [v4 getIntegerForColumnAlias:"urgency"];
  v11 = [v4 getNSStringForColumnAlias:"bundleId"];
  v12 = [v4 getNSStringForColumnAlias:"threadId"];
  v13 = [v4 getNSStringForColumnAlias:"contactId"];
  v14 = [v4 getIntegerForColumnAlias:"isGroupMessage"];
  v15 = [v4 getIntegerForColumnAlias:"isMessage"];

  v16 = objc_alloc(MEMORY[0x277CEB958]);
  v17 = v16;
  if (v13)
  {
    v18 = v14 == 1;
    v24[0] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    LOBYTE(v23) = v18;
    v20 = [v17 initFromNotificationData:v7 timestamp:0 title:0 subtitle:0 body:0 badge:0 userInfo:v9 bundleID:v11 threadID:v12 sectionID:0 contactIDs:v19 isGroupMessage:v23 derivedData:0 urgency:v10];
  }

  else
  {
    LOBYTE(v23) = v14 == 1;
    v20 = [v16 initFromNotificationData:v7 timestamp:0 title:0 subtitle:0 body:0 badge:0 userInfo:v9 bundleID:v11 threadID:v12 sectionID:0 contactIDs:MEMORY[0x277CBEBF8] isGroupMessage:v23 derivedData:0 urgency:v10];
  }

  [v20 setIsMessage:v15 == 1];
  [*(a1 + 32) addObject:v20];

  v21 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

uint64_t __97__ATXNotificationAndSuggestionDatabase_allNotificationsBetweenStartTimestamp_endTimestamp_limit___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)notificationsReceivedPerBundleIdSinceDate:(id)date
{
  dateCopy = date;
  v6 = objc_opt_new();
  queue = self->super._queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke;
  v13[3] = &unk_278599FF0;
  v13[4] = self;
  v14 = dateCopy;
  v8 = v6;
  v15 = v8;
  v16 = a2;
  v9 = dateCopy;
  dispatch_sync_notxn_0(queue, v13);
  v10 = v15;
  v11 = v8;

  return v8;
}

void __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke_3;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke_4;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT count(*) AS received onPrep:bundleId FROM notifications WHERE receiveTimestamp > :startTimestamp GROUP BY bundleId" onRow:v6 onError:{v4, v3}];
}

void __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v3 bindNamedParam:":startTimestamp" toDouble:?];
}

uint64_t __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundleId"];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 getIntegerForColumnAlias:"received"];

  v7 = [v5 numberWithInteger:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v4];
  v8 = MEMORY[0x277D42690];

  return *v8;
}

uint64_t __82__ATXNotificationAndSuggestionDatabase_notificationsReceivedPerBundleIdSinceDate___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)resolutionsForNotifications:(id)notifications
{
  allObjects = [notifications allObjects];
  v6 = [allObjects _pas_mappedArrayWithTransform:&__block_literal_global_225];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = objc_opt_new();
  queue = self->super._queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_2;
  v17[3] = &unk_278599FF0;
  v17[4] = self;
  v18 = v9;
  v12 = v10;
  v19 = v12;
  v20 = a2;
  v13 = v9;
  dispatch_sync_notxn_0(queue, v17);
  v14 = v19;
  v15 = v12;

  return v12;
}

void __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_3;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_4;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_5;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT uuid onPrep:numExpansions onRow:latestOutcome onError:{latestOutcomeTimestamp FROM notifications WHERE uuid IN _pas_nsarray(:notificationUUIDs) LIMIT :limit", v6, v4, v3}];
}

void __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":notificationUUIDs" toNSArray:v2];
  [v3 bindNamedParam:":limit" toInt64:1000];
}

uint64_t __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getNSStringForColumnAlias:"uuid"];
  v7 = [v5 initWithUUIDString:v6];

  [v4 getDoubleForColumnAlias:"latestOutcomeTimestamp"];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v9 = [v4 getInt64ForColumnAlias:"numExpansions"];
  v10 = [v4 getIntegerForColumnAlias:"latestOutcome"];

  v11 = [[ATXUserNotificationResolution alloc] initWithNotificationUUID:v7 numExpansions:v9 resolutionType:ATXUserNotificationResolutionTypeForNotificationEventType(v10) resolutionTimestamp:v8];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
  v12 = MEMORY[0x277D42690];

  return *v12;
}

uint64_t __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_5_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)_countNotificationsPerAppWithFilters:(id)filters stmtBinder:(id)binder
{
  binderCopy = binder;
  v8 = [filters componentsJoinedByString:@" AND "];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT bundleId, COUNT(*) AS numNotifications FROM notifications WHERE %@ GROUP BY bundleId LIMIT :numRowsLimit", v8];
  v10 = objc_opt_new();
  queue = self->super._queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke;
  v18[3] = &unk_27859A150;
  v18[4] = self;
  v19 = v9;
  v21 = binderCopy;
  v12 = v10;
  v20 = v12;
  v22 = a2;
  v13 = binderCopy;
  v14 = v9;
  dispatch_sync_notxn_0(queue, v18);
  v15 = v20;
  v16 = v12;

  return v12;
}

void __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_2;
  v7[3] = &unk_27859A128;
  v8 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_3;
  v5[3] = &unk_278599FC8;
  v6 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_4;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = *(a1 + 64);
  [v2 prepAndRunQuery:v3 onPrep:v7 onRow:v5 onError:v4];
}

void __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  [v4 bindNamedParam:":numRowsLimit" toInt64:1000];
}

uint64_t __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundleId"];
  v5 = [v3 getInt64AsNSNumberForColumnAlias:"numNotifications"];

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  v6 = MEMORY[0x277D42690];

  return *v6;
}

uint64_t __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)messageNotificationsPerAppFromStartTime:(double)time toEndTime:(double)endTime
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__ATXNotificationAndSuggestionDatabase_messageNotificationsPerAppFromStartTime_toEndTime___block_invoke;
  v8[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  *&v8[4] = time;
  *&v8[5] = endTime;
  v5 = _Block_copy(v8);
  v6 = [(ATXNotificationAndSuggestionDatabase *)self _countNotificationsPerAppWithFilters:&unk_283A57DD0 stmtBinder:v5];

  return v6;
}

void __90__ATXNotificationAndSuggestionDatabase_messageNotificationsPerAppFromStartTime_toEndTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":startTime" toDouble:v3];
  [v4 bindNamedParam:":endTime" toDouble:*(a1 + 40)];
}

- (id)timeSensitiveNonmessageNotificationsPerAppFromStartTime:(double)time toEndTime:(double)endTime
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106__ATXNotificationAndSuggestionDatabase_timeSensitiveNonmessageNotificationsPerAppFromStartTime_toEndTime___block_invoke;
  v8[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  *&v8[4] = time;
  *&v8[5] = endTime;
  v5 = _Block_copy(v8);
  v6 = [(ATXNotificationAndSuggestionDatabase *)self _countNotificationsPerAppWithFilters:&unk_283A57DE8 stmtBinder:v5];

  return v6;
}

void __106__ATXNotificationAndSuggestionDatabase_timeSensitiveNonmessageNotificationsPerAppFromStartTime_toEndTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":startTime" toDouble:v3];
  [v4 bindNamedParam:":endTime" toDouble:*(a1 + 40)];
  [v4 bindNamedParam:":timeSensitiveUrgency" toInt64:1];
}

- (id)totalNotificationsPerAppFromStartTime:(double)time toEndTime:(double)endTime
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__ATXNotificationAndSuggestionDatabase_totalNotificationsPerAppFromStartTime_toEndTime___block_invoke;
  v8[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  *&v8[4] = time;
  *&v8[5] = endTime;
  v5 = _Block_copy(v8);
  v6 = [(ATXNotificationAndSuggestionDatabase *)self _countNotificationsPerAppWithFilters:&unk_283A57E00 stmtBinder:v5];

  return v6;
}

void __88__ATXNotificationAndSuggestionDatabase_totalNotificationsPerAppFromStartTime_toEndTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":startTime" toDouble:v3];
  [v4 bindNamedParam:":endTime" toDouble:*(a1 + 40)];
}

- (id)appSortedByNumOfNotificationsSinceTimestamp:(double)timestamp
{
  v6 = objc_opt_new();
  queue = self->super._queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke;
  v12[3] = &unk_27859A060;
  v12[4] = self;
  timestampCopy = timestamp;
  v8 = v6;
  v13 = v8;
  v15 = a2;
  dispatch_sync_notxn_0(queue, v12);
  v9 = v13;
  v10 = v8;

  return v8;
}

void __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke_2;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke_3;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke_4;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT bundleId onPrep:SUM(IIF(isMessage = 0 AND urgency != :urgency onRow:1 onError:{0)) AS numBasicNotifications, SUM(IIF(isMessage = 1, 1, 0)) AS numMessageNotifications, SUM(IIF(isMessage = 0 AND urgency = :urgency, 1, 0)) AS numTimeSenstiveNonMessageNotifications FROM notifications WHERE receiveTimestamp >= :startTime GROUP BY bundleId ORDER BY numBasicNotifications DESC", v6, v4, v3}];
}

void __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":startTime" toDouble:v2];
  [v3 bindNamedParam:":urgency" toInteger:1];
}

uint64_t __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundleId"];
  v5 = [v3 getIntegerForColumnAlias:"numBasicNotifications"];
  v6 = [v3 getIntegerForColumnAlias:"numMessageNotifications"];
  v7 = [v3 getIntegerForColumnAlias:"numTimeSenstiveNonMessageNotifications"];

  v8 = [objc_alloc(MEMORY[0x277CEB348]) initWithBundleId:v4 numBasicNotifications:v5 numMessageNotifications:v6 numTimeSenstiveNonMessageNotifications:v7];
  [*(a1 + 32) addObject:v8];
  v9 = MEMORY[0x277D42690];

  return *v9;
}

uint64_t __84__ATXNotificationAndSuggestionDatabase_appSortedByNumOfNotificationsSinceTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_5_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (double)receiveTimeStampOfFirstNotification
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  queue = self->super._queue;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke;
  v5[3] = &unk_278598830;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a2;
  dispatch_sync_notxn_0(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke_2;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke_3;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT receiveTimestamp FROM notifications WHERE receiveTimestamp != 0 ORDER BY receiveTimestamp ASC LIMIT 1" onPrep:0 onRow:v4 onError:v3];
}

uint64_t __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumnAlias:"receiveTimestamp"];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return *MEMORY[0x277D42698];
}

uint64_t __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)allNotificationsFromBundleId:(id)id sinceTimestamp:(double)timestamp
{
  idCopy = id;
  v7 = objc_opt_new();
  queue = self->super._queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke;
  v14[3] = &unk_278599FF0;
  timestampCopy = timestamp;
  v14[4] = self;
  v15 = idCopy;
  v9 = v7;
  v16 = v9;
  v10 = idCopy;
  dispatch_sync_notxn_0(queue, v14);
  v11 = v16;
  v12 = v9;

  return v9;
}

void __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_2;
  v7[3] = &unk_278599E00;
  v9 = *(a1 + 56);
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_3;
  v5[3] = &unk_278599FC8;
  v6 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_272;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT uuid onPrep:isActive FROM notifications WHERE receiveTimestamp > :timestamp and bundleId == :bundleId ORDER BY receiveTimestamp ASC" onRow:v7 onError:{v5, v3}];
}

void __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":timestamp" toDouble:v3];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
}

uint64_t __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"uuid"];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  if (!v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_3_cold_1();
    }
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumnAlias:", "isActive")}];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277D42648] tupleWithFirst:v5 second:v7];
  [v8 addObject:v9];

  v10 = MEMORY[0x277D42690];
  return *v10;
}

uint64_t __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_272(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_272_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)allBundleIdsOfNotificationsOnLockscreen
{
  v3 = objc_opt_new();
  queue = self->super._queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync_notxn_0(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_3;
  v3[3] = &unk_278599FC8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT DISTINCT bundleId FROM notifications WHERE isActive = 1 AND receiveTimestamp > :cutoff AND latestOutcome IN (:receivedAndDeliveredProminently onPrep::receivedAndDeliveredNonprominently) ORDER BY receiveTimestamp LIMIT 100" onRow:&__block_literal_global_278 onError:{v3, &__block_literal_global_284}];
}

void __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":receivedAndDeliveredProminently" toInteger:16];
  [v3 bindNamedParam:":receivedAndDeliveredNonprominently" toInteger:17];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v3 bindNamedParam:":cutoff" toDouble:v2 + -86400.0];
}

uint64_t __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"bundleId"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v4 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_3_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = MEMORY[0x277D42690];

  return *v12;
}

uint64_t __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_282(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_282_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)deleteAllData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  queue = self->super._queue;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke;
  v5[3] = &unk_278598830;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a2;
  dispatch_sync_notxn_0(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_2;
  v9[3] = &unk_278598808;
  v10 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM suggestions" onPrep:0 onRow:0 onError:v9];

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = [*(a1 + 32) db];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_285;
    v7[3] = &unk_278598808;
    v8 = *(a1 + 40);
    [v3 prepAndRunQuery:@"DELETE FROM notifications" onPrep:0 onRow:0 onError:v7];

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v4 = [*(a1 + 32) db];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_286;
      v5[3] = &unk_278598808;
      v6 = *(a1 + 40);
      [v4 prepAndRunQuery:@"DELETE FROM biome_bookmark" onPrep:0 onRow:0 onError:v5];
    }
  }
}

uint64_t __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_2_cold_1();
  }

  v8 = MEMORY[0x277D42698];
  return *v8;
}

uint64_t __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_285(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_285_cold_1();
  }

  v8 = MEMORY[0x277D42698];
  return *v8;
}

uint64_t __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_286(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_286_cold_1();
  }

  v8 = MEMORY[0x277D42698];
  return *v8;
}

- (id)pruneNotificationsBeforeTimestamp:(double)timestamp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  queue = self->super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke;
  v6[3] = &unk_27859A178;
  *&v6[6] = timestamp;
  v6[4] = self;
  v6[5] = &v7;
  v6[7] = a2;
  dispatch_sync_notxn_0(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke_2;
  v5[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v5[4] = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke_3;
  v4[3] = &unk_278598808;
  v3 = *(a1 + 56);
  v4[4] = *(a1 + 40);
  v4[5] = v3;
  [v2 prepAndRunQuery:@"DELETE FROM notifications WHERE bundleId != :excludeBundleId AND (receiveTimestamp < :deletionCutoffTimestamp OR receiveTimestamp > :nowTimestamp)" onPrep:v5 onRow:0 onError:v4];
}

void __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":deletionCutoffTimestamp" toDouble:v2];
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":nowTimestamp" toDouble:?];

  [v4 bindNamedParam:":excludeBundleId" toNonnullNSString:@"com.apple.tips"];
}

uint64_t __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke_3_cold_1();
  }

  v8 = MEMORY[0x277D42698];
  return *v8;
}

- (id)pruneSuggestionsBeforeTimestamp:(double)timestamp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  queue = self->super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBeforeTimestamp___block_invoke;
  v6[3] = &unk_27859A178;
  *&v6[6] = timestamp;
  v6[4] = self;
  v6[5] = &v7;
  v6[7] = a2;
  dispatch_sync_notxn_0(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __72__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBeforeTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBeforeTimestamp___block_invoke_2;
  v5[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v5[4] = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBeforeTimestamp___block_invoke_3;
  v4[3] = &unk_278598808;
  v3 = *(a1 + 56);
  v4[4] = *(a1 + 40);
  v4[5] = v3;
  [v2 prepAndRunQuery:@"DELETE FROM suggestions WHERE createdTimestamp < :deletionCutoffTimestamp" onPrep:v5 onRow:0 onError:v4];
}

uint64_t __72__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBeforeTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __72__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBeforeTimestamp___block_invoke_3_cold_1();
  }

  v8 = MEMORY[0x277D42698];
  return *v8;
}

- (void)pruneNotificationsBasedOnHardLimitsWithXPCActivity:(id)activity
{
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  queue = self->super._queue;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke;
  v12 = &unk_278596C10;
  selfCopy = self;
  v6 = activityCopy;
  v14 = v6;
  dispatch_sync_notxn_0(queue, &v9);
  if ([v6 didDefer])
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[ATXNotificationAndSuggestionDatabase pruneNotificationsBasedOnHardLimitsWithXPCActivity:]";
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: XPC Activity deferred, skipping remaining work.", buf, 0xCu);
    }
  }

  else
  {
    [(ATXNotificationAndSuggestionDatabase *)self analyze];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__31;
  v43 = __Block_byref_object_dispose__31;
  v44 = 0;
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[ATXNotificationAndSuggestionDatabase pruneNotificationsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Pruning notifications", buf, 0xCu);
  }

  v3 = objc_opt_new();
  v4 = [*(a1 + 32) db];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_296;
  v37[3] = &unk_278599FC8;
  v5 = v3;
  v38 = v5;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_2;
  v36[3] = &unk_27859A1A0;
  v36[4] = &v39;
  [v4 prepAndRunQuery:@"SELECT DISTINCT bundleId FROM notifications GROUP BY bundleId ORDER BY count(*) DESC " onPrep:0 onRow:v37 onError:v36];

  if (v40[5] && ![v5 count])
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_cold_1(v9, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_cold_2();
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v49 count:16];
    if (v10)
    {
      v11 = *v33;
LABEL_9:
      v12 = 0;
      while (1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        [*(a1 + 32) _pruneNotificationsBasedOnHardLimitsForBundleId:v13 XPCActivity:*(a1 + 40)];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        if (v15 - v8 > 5.0 && [*(a1 + 40) didDefer])
        {
          v16 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v46 = "[ATXNotificationAndSuggestionDatabase pruneNotificationsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "%s: XPC Activity deferred, skipping remaining work.", buf, 0xCu);
          }

          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        objc_autoreleasePoolPop(v14);
        if (!v17)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v32 objects:v49 count:16];
          if (v10)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:

      v18 = [*(*(a1 + 32) + 40) ATXNotificationAndSuggestionDatabase_maxNumberOfNotifications];
      v19 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "[ATXNotificationAndSuggestionDatabase pruneNotificationsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
        v47 = 2048;
        v48 = v18;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "%s: Pruning notifications table to max %ld rows", buf, 0x16u);
      }

      v20 = *(a1 + 32);
      v21 = [v20[5] ATXNotificationAndSuggestionDatabase_pruningBatchSize];
      v22 = *(a1 + 40);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_300;
      v31[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
      v31[4] = v18;
      [v20 prepAndRunQuery:@"DELETE FROM notifications RETURNING 1 ORDER BY receiveTimestamp DESC LIMIT :batchSize OFFSET :maxNumberOfNotifications " batchSize:v21 XPCActivity:v22 onPrep:v31 onRow:0 onError:&__block_literal_global_304];
      v9 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v46 = "[ATXNotificationAndSuggestionDatabase pruneNotificationsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: Finished pruning notifications", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v39, 8);
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_296(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"bundleId"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_2_cold_1();
  }

  v8 = MEMORY[0x277D42698];
  return *v8;
}

uint64_t __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_2_302(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_2_302_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)prepAndRunQuery:(id)query batchSize:(int64_t)size XPCActivity:(id)activity onPrep:(id)prep onRow:(id)row onError:(id)error
{
  v52 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  activityCopy = activity;
  prepCopy = prep;
  rowCopy = row;
  errorCopy = error;
  v14 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(ATXNotificationAndSuggestionDatabase *)size prepAndRunQuery:v14 batchSize:v15 XPCActivity:v16 onPrep:v17 onRow:v18 onError:v19, v20];
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v22 = v21;
  v23 = 1000;
  do
  {
    v24 = objc_autoreleasePoolPush();
    *v50 = 0;
    *&v50[8] = v50;
    *&v50[16] = 0x2020000000;
    v51 = 0;
    v25 = [(ATXAbstractVersionedDatabase *)self db];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __99__ATXNotificationAndSuggestionDatabase_prepAndRunQuery_batchSize_XPCActivity_onPrep_onRow_onError___block_invoke;
    v43[3] = &unk_27859A1C8;
    v26 = prepCopy;
    v44 = v26;
    sizeCopy = size;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __99__ATXNotificationAndSuggestionDatabase_prepAndRunQuery_batchSize_XPCActivity_onPrep_onRow_onError___block_invoke_2;
    v40[3] = &unk_27859A1F0;
    v27 = rowCopy;
    v41 = v27;
    v42 = v50;
    [v25 prepAndRunQuery:queryCopy onPrep:v43 onRow:v40 onError:errorCopy];

    if (!*(*&v50[8] + 24))
    {
      v31 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [ATXNotificationAndSuggestionDatabase prepAndRunQuery:v31 batchSize:? XPCActivity:? onPrep:? onRow:? onError:?];
      }

      goto LABEL_18;
    }

    v28 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(*&v50[8] + 24);
      *buf = 136315394;
      v47 = "[ATXNotificationAndSuggestionDatabase prepAndRunQuery:batchSize:XPCActivity:onPrep:onRow:onError:]";
      v48 = 1024;
      v49 = v30;
      _os_log_debug_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEBUG, "%s: Deleted %d rows", buf, 0x12u);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v29 - v22 > 5.0 && [activityCopy didDefer])
    {
      v31 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v47 = "[ATXNotificationAndSuggestionDatabase prepAndRunQuery:batchSize:XPCActivity:onPrep:onRow:onError:]";
        _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "%s: XPC deferral, unable to finish batched deletion", buf, 0xCu);
      }

LABEL_18:

      _Block_object_dispose(v50, 8);
      objc_autoreleasePoolPop(v24);
      goto LABEL_19;
    }

    _Block_object_dispose(v50, 8);
    objc_autoreleasePoolPop(v24);
    --v23;
  }

  while (v23);
  v32 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 136315394;
    *&v50[4] = "[ATXNotificationAndSuggestionDatabase prepAndRunQuery:batchSize:XPCActivity:onPrep:onRow:onError:]";
    *&v50[12] = 2048;
    *&v50[14] = 1000 * size;
    _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "%s: Reached maximum number of rows to delete: %ld", v50, 0x16u);
  }

LABEL_19:
  v34 = *MEMORY[0x277D85DE8];
}

void __99__ATXNotificationAndSuggestionDatabase_prepAndRunQuery_batchSize_XPCActivity_onPrep_onRow_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v5;
  }

  [v3 bindNamedParam:":batchSize" toInteger:*(a1 + 40)];
}

uint64_t __99__ATXNotificationAndSuggestionDatabase_prepAndRunQuery_batchSize_XPCActivity_onPrep_onRow_onError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  return *MEMORY[0x277D42690];
}

- (void)_pruneNotificationsBasedOnHardLimitsForBundleId:(id)id XPCActivity:(id)activity
{
  idCopy = id;
  activityCopy = activity;
  v8 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXNotificationAndSuggestionDatabase _pruneNotificationsBasedOnHardLimitsForBundleId:XPCActivity:];
  }

  aTXNotificationAndSuggestionDatabase_pruningBatchSize = [(ATXNotificationManagementMAConstants *)self->_mobileAssetConstants ATXNotificationAndSuggestionDatabase_pruningBatchSize];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__ATXNotificationAndSuggestionDatabase__pruneNotificationsBasedOnHardLimitsForBundleId_XPCActivity___block_invoke;
  v14[3] = &unk_278598718;
  v15 = idCopy;
  selfCopy = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__ATXNotificationAndSuggestionDatabase__pruneNotificationsBasedOnHardLimitsForBundleId_XPCActivity___block_invoke_2;
  v12[3] = &unk_2785987B8;
  v10 = v15;
  v13 = v10;
  [(ATXNotificationAndSuggestionDatabase *)self prepAndRunQuery:@"DELETE FROM notifications WHERE bundleId = :bundleId RETURNING 1 ORDER BY receiveTimestamp DESC LIMIT :batchSize OFFSET :maxNumberOfNotificationsPerApp " batchSize:aTXNotificationAndSuggestionDatabase_pruningBatchSize XPCActivity:activityCopy onPrep:v14 onRow:0 onError:v12];

  v11 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXNotificationAndSuggestionDatabase _pruneNotificationsBasedOnHardLimitsForBundleId:XPCActivity:];
  }
}

void __100__ATXNotificationAndSuggestionDatabase__pruneNotificationsBasedOnHardLimitsForBundleId_XPCActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNSString:v3];
  [v4 bindNamedParam:":maxNumberOfNotificationsPerApp" toInteger:{objc_msgSend(*(*(a1 + 40) + 40), "ATXNotificationAndSuggestionDatabase_maxNumberOfNotificationsPerApp")}];
}

uint64_t __100__ATXNotificationAndSuggestionDatabase__pruneNotificationsBasedOnHardLimitsForBundleId_XPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __100__ATXNotificationAndSuggestionDatabase__pruneNotificationsBasedOnHardLimitsForBundleId_XPCActivity___block_invoke_2_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)pruneSuggestionsBasedOnHardLimitsWithXPCActivity:(id)activity
{
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  queue = self->super._queue;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke;
  v12 = &unk_278596C10;
  selfCopy = self;
  v6 = activityCopy;
  v14 = v6;
  dispatch_sync_notxn_0(queue, &v9);
  if ([v6 didDefer])
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[ATXNotificationAndSuggestionDatabase pruneSuggestionsBasedOnHardLimitsWithXPCActivity:]";
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: XPC Activity deferred, skipping remaining work.", buf, 0xCu);
    }
  }

  else
  {
    [(ATXNotificationAndSuggestionDatabase *)self analyze];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXNotificationAndSuggestionDatabase pruneSuggestionsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Pruning suggestions", buf, 0xCu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3 + -2419200.0;
  v5 = [*(a1 + 32) db];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_313;
  v13[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  *&v13[4] = v4;
  [v5 prepAndRunQuery:@"DELETE FROM suggestions WHERE latestOutcome = :latestOutcomeCreated     AND triggerNotificationUUID IN(        SELECT triggerNotificationUUID         FROM suggestions         WHERE latestOutcome = :latestOutcomeCouldNotShow             AND latestOutcomeTimestamp < :timestamp28DaysAgo    ) " onPrep:v13 onRow:0 onError:&__block_literal_global_318];

  if ([*(a1 + 40) didDefer])
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[ATXNotificationAndSuggestionDatabase pruneSuggestionsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
      v7 = "%s: XPC Activity deferred, skipping remaining work.";
LABEL_11:
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
    }
  }

  else
  {
    v8 = [*(a1 + 32) db];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_322;
    v12[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
    *&v12[4] = v4;
    [v8 prepAndRunQuery:@"DELETE FROM suggestions WHERE latestOutcome = :latestOutcomeCouldNotShow     AND latestOutcomeTimestamp < :timestamp28DaysAgo " onPrep:v12 onRow:0 onError:&__block_literal_global_325];

    if ([*(a1 + 40) didDefer])
    {
      v6 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[ATXNotificationAndSuggestionDatabase pruneSuggestionsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
        v7 = "%s: XPC Activity deferred, skipping remaining work.";
        goto LABEL_11;
      }
    }

    else
    {
      v9 = [*(a1 + 32) db];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_329;
      v11[3] = &unk_278598768;
      v11[4] = *(a1 + 32);
      [v9 prepAndRunQuery:@"DELETE FROM suggestions ORDER BY latestOutcomeTimestamp DESC LIMIT -1 OFFSET :maxNumberOfSuggestions" onPrep:v11 onRow:0 onError:&__block_literal_global_333];

      v6 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[ATXNotificationAndSuggestionDatabase pruneSuggestionsBasedOnHardLimitsWithXPCActivity:]_block_invoke";
        v7 = "%s: Finished pruning suggestions";
        goto LABEL_11;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":latestOutcomeCreated" toInteger:7];
  [v3 bindNamedParam:":latestOutcomeCouldNotShow" toInteger:8];
  [v3 bindNamedParam:":timestamp28DaysAgo" toInteger:*(a1 + 32)];
}

uint64_t __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_322(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":latestOutcomeCouldNotShow" toInteger:8];
  [v3 bindNamedParam:":timestamp28DaysAgo" toInteger:*(a1 + 32)];
}

uint64_t __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_323(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_323_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_329(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = a2;
  [v3 bindNamedParam:":maxNumberOfSuggestions" toInteger:{objc_msgSend(v2, "ATXNotificationAndSuggestionDatabase_maxNumberOfSuggestions")}];
}

uint64_t __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_331(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_331_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)analyze
{
  queue = self->super._queue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ATXNotificationAndSuggestionDatabase_analyze__block_invoke;
  v3[3] = &unk_278596BB8;
  v3[4] = self;
  dispatch_sync_notxn_0(queue, v3);
}

void __47__ATXNotificationAndSuggestionDatabase_analyze__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXNotificationAndSuggestionDatabase analyze]_block_invoke";
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Analyzing the db", &v6, 0xCu);
  }

  v3 = [*(a1 + 32) db];
  [v3 prepAndRunQuery:@"ANALYZE" onPrep:0 onRow:0 onError:&__block_literal_global_339];

  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXNotificationAndSuggestionDatabase analyze]_block_invoke";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: Finished analyzing the db", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __47__ATXNotificationAndSuggestionDatabase_analyze__block_invoke_337(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __47__ATXNotificationAndSuggestionDatabase_analyze__block_invoke_337_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)vacuumDatabase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  queue = self->super._queue;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXNotificationAndSuggestionDatabase_vacuumDatabase__block_invoke;
  v5[3] = &unk_278598830;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a2;
  dispatch_sync_notxn_0(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__ATXNotificationAndSuggestionDatabase_vacuumDatabase__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__ATXNotificationAndSuggestionDatabase_vacuumDatabase__block_invoke_2;
  v3[3] = &unk_278598808;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"VACUUM" onPrep:0 onRow:0 onError:v3];
}

uint64_t __54__ATXNotificationAndSuggestionDatabase_vacuumDatabase__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __54__ATXNotificationAndSuggestionDatabase_vacuumDatabase__block_invoke_2_cold_1();
  }

  v8 = MEMORY[0x277D42698];
  return *v8;
}

- (id)metricsForSuggestionsSinceCompletionTimestamp:(double)timestamp
{
  v6 = objc_opt_new();
  queue = self->super._queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__ATXNotificationAndSuggestionDatabase_metricsForSuggestionsSinceCompletionTimestamp___block_invoke;
  v12[3] = &unk_27859A060;
  v12[4] = self;
  timestampCopy = timestamp;
  v8 = v6;
  v13 = v8;
  v15 = a2;
  dispatch_sync_notxn_0(queue, v12);
  v9 = v13;
  v10 = v8;

  return v8;
}

void __86__ATXNotificationAndSuggestionDatabase_metricsForSuggestionsSinceCompletionTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__ATXNotificationAndSuggestionDatabase_metricsForSuggestionsSinceCompletionTimestamp___block_invoke_2;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__ATXNotificationAndSuggestionDatabase_metricsForSuggestionsSinceCompletionTimestamp___block_invoke_3;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__ATXNotificationAndSuggestionDatabase_metricsForSuggestionsSinceCompletionTimestamp___block_invoke_4;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT suggestions.latestOutcome onPrep:suggestions.createdTimestamp onRow:suggestions.latestOutcomeTimestamp onError:{suggestions.deliverySuggestion, notifications.bundleId FROM suggestions INNER JOIN notifications ON suggestions.triggerNotificationUUID = notifications.uuid WHERE suggestions.isActive = 0 AND suggestions.latestOutcomeTimestamp > :previouslyLoggedOutcomeTimestamp ORDER BY suggestions.latestOutcomeTimestamp ASC ", v6, v4, v3}];
}

uint64_t __86__ATXNotificationAndSuggestionDatabase_metricsForSuggestionsSinceCompletionTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 getDoubleForColumnAlias:"latestOutcomeTimestamp"];
  v5 = v4;
  [v3 getDoubleForColumnAlias:"createdTimestamp"];
  v7 = v6;
  v8 = [v3 getNSStringForColumnAlias:"bundleId"];
  [v3 getIntegerForColumnAlias:"latestOutcome"];
  v9 = [v3 getNSDataForColumnAlias:"deliverySuggestion"];

  v10 = [objc_alloc(MEMORY[0x277CEB6F0]) initWithProtoData:v9];
  v11 = objc_opt_new();
  [v11 setBundleId:v8];
  [v11 setTimeToOutcome:v5 - v7];
  [v11 setTargetMode:0];
  [v11 setIsAddToMode:0];
  v12 = [v10 subObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [v10 subObject];
    [v11 setIsAddToMode:{objc_msgSend(v14, "tuningSuggestionType") == 1}];
  }

  [v10 subtype];
  v15 = ATXSuggestionTypeToString();
  [v11 setSuggestionType:v15];

  [v10 scope];
  v16 = ATXNotificationSuggestionScopeToString();
  [v11 setSuggestionScope:v16];

  v17 = ATXNotificationSuggestionEventTypeToString();
  [v11 setSuggestionOutcome:v17];

  [v11 setSuggestionCompletionTimestamp:v5];
  [*(a1 + 32) addObject:v11];
  v18 = MEMORY[0x277D42690];

  return *v18;
}

uint64_t __86__ATXNotificationAndSuggestionDatabase_metricsForSuggestionsSinceCompletionTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (ATXNotificationAndSuggestionDatastorePerfMetrics)notificationAndSuggestionDatastorePerfMetrics
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_226931DDF;
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__ATXNotificationAndSuggestionDatabase_notificationAndSuggestionDatastorePerfMetrics__block_invoke;
  v7[3] = &unk_2785980E8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync_notxn_0(queue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

void __85__ATXNotificationAndSuggestionDatabase_notificationAndSuggestionDatastorePerfMetrics__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) db];
  v2 = [v6 atx_countRowsOfTable:@"notifications" returnValueOnError:-1];
  v3 = [*(a1 + 32) db];
  v4 = [v3 atx_countRowsOfTable:@"suggestions" returnValueOnError:-1];
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
}

- (id)feedbackHistoriesForKeys:(id)keys
{
  keysCopy = keys;
  v6 = objc_opt_new();
  v7 = MEMORY[0x277CBEBF8];
  if (keysCopy)
  {
    v7 = keysCopy;
  }

  v8 = v7;

  queue = self->super._queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke;
  v15[3] = &unk_278599FF0;
  v15[4] = self;
  v16 = v8;
  v10 = v6;
  v17 = v10;
  v18 = a2;
  v11 = v8;
  dispatch_sync_notxn_0(queue, v15);
  v12 = v17;
  v13 = v10;

  return v10;
}

void __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke_3;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke_4;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT     feedbackKey onPrep:latestOutcome onRow:createdTimestamp FROM suggestions WHERE     feedbackKey IN _pas_nsarray(:feedbackKeyArray) AND     isActive = 0 ORDER BY     feedbackKey DESC onError:{createdTimestamp DESC ", v6, v4, v3}];
}

uint64_t __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"feedbackKey"];
  v5 = [v3 getInt64ForColumnAlias:"latestOutcome"];
  v6 = MEMORY[0x277CBEAA8];
  [v3 getDoubleForColumnAlias:"createdTimestamp"];
  v8 = v7;

  v9 = [v6 dateWithTimeIntervalSinceReferenceDate:v8];
  v10 = [[ATXNotificationSuggestionFeedbackHistoryQueryResult alloc] initWithFeedbackKey:v4 latestOutcome:v5 createdTimestamp:v9];
  v11 = [*(a1 + 32) objectForKeyedSubscript:v4];

  if (!v11)
  {
    v12 = objc_opt_new();
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v4];
  }

  v13 = [*(a1 + 32) objectForKeyedSubscript:v4];
  [v13 addObject:v10];

  v14 = MEMORY[0x277D42690];
  return *v14;
}

uint64_t __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)_makeNotificationTelemetryQueryResultFromDatabaseResult:(id)result queryTimeInterval:(double)interval
{
  resultCopy = result;
  v6 = objc_opt_new();
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [resultCopy getNSStringForColumnAlias:"uuid"];
  v9 = [v7 initWithUUIDString:v8];
  [v6 setNotificationUUID:v9];

  v10 = MEMORY[0x277CBEAA8];
  [resultCopy getDoubleForColumnAlias:"receiveTimestamp"];
  v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  [v6 setReceiveTimestamp:v11];

  [v6 setDeliveryMethod:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "deliveryMethod")}];
  [v6 setUrgency:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "urgency")}];
  v12 = [resultCopy getNSStringForColumnAlias:"bundleId"];
  [v6 setBundleId:v12];

  v13 = [resultCopy getInt64AsNSNumberForColumnAlias:"isMessage"];
  [v6 setIsMessage:{objc_msgSend(v13, "BOOLValue")}];

  [resultCopy getIntegerForColumnAlias:"deliveryReason"];
  v14 = ATXUserNotificationDeliveryReasonToString();
  [v6 setDestinationReason:v14];

  if ([resultCopy isNullForColumnAlias:"firstUI"])
  {
    [v6 setOriginalDestination:@"Unknown"];
  }

  else
  {
    [resultCopy getIntegerForColumnAlias:"firstUI"];
    v15 = ATXNotificationDeliveryUIToString();
    [v6 setOriginalDestination:v15];
  }

  if ([resultCopy isNullForColumnAlias:"mostRecentUI"])
  {
    [v6 setFinalDestination:@"Unknown"];
  }

  else
  {
    [resultCopy getIntegerForColumnAlias:"mostRecentUI"];
    v16 = ATXNotificationDeliveryUIToString();
    [v6 setFinalDestination:v16];
  }

  v17 = [resultCopy getNSStringForColumnAlias:"receivedMode"];
  [v6 setReceiveModeIdentifier:v17];

  v18 = MEMORY[0x277CBEAA8];
  [resultCopy getDoubleForColumnAlias:"latestOutcomeTimestamp"];
  v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
  v20 = [resultCopy getInt64ForColumnAlias:"numExpansions"];
  v21 = [resultCopy getIntegerForColumnAlias:"latestOutcome"];
  [v6 setBodyLength:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "notificationBodyLength")}];
  [v6 setTitleLength:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "notificationTitleLength")}];
  [v6 setSubtitleLength:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "notificationSubtitleLength")}];
  [v6 setSummaryLength:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "summaryLength")}];
  v22 = [resultCopy getInt64AsNSNumberForColumnAlias:"isSummarized"];
  [v6 setIsSummarized:{objc_msgSend(v22, "BOOLValue")}];

  v23 = [resultCopy getInt64AsNSNumberForColumnAlias:"isPartOfStack"];
  [v6 setIsPartOfStack:{objc_msgSend(v23, "BOOLValue")}];

  v24 = [resultCopy getInt64AsNSNumberForColumnAlias:"isStackSummary"];
  [v6 setIsStackSummary:{objc_msgSend(v24, "BOOLValue")}];

  v25 = [resultCopy getInt64AsNSNumberForColumnAlias:"isDeliveredInPrioritySection"];
  [v6 setIsDeliveredInPrioritySection:{objc_msgSend(v25, "BOOLValue")}];

  [v6 setNumberOfNotificationsInStack:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "numberOfNotificationsInStack")}];
  [v6 setNotificationPriorityStatus:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "notificationPriorityStatus")}];
  [v6 setNotificationSummaryStatus:{objc_msgSend(resultCopy, "getIntegerForColumnAlias:", "notificationSummaryStatus")}];
  v26 = [resultCopy getInt64AsNSNumberForColumnAlias:"isPriorityNotificationEnabled"];
  [v6 setIsPriorityNotificationEnabled:{objc_msgSend(v26, "BOOLValue")}];

  v27 = [resultCopy getInt64AsNSNumberForColumnAlias:"isNotificationSummaryEnabled"];
  [v6 setIsNotificationSummaryEnabled:{objc_msgSend(v27, "BOOLValue")}];

  v28 = ATXUserNotificationResolutionTypeForNotificationEventType(v21);
  v29 = [ATXUserNotificationResolution alloc];
  notificationUUID = [v6 notificationUUID];
  v31 = [(ATXUserNotificationResolution *)v29 initWithNotificationUUID:notificationUUID numExpansions:v20 resolutionType:v28 resolutionTimestamp:v19];

  [v6 setResolution:v31];
  if (([resultCopy isNullForColumnAlias:"nextAppLaunchTimestamp"] & 1) == 0)
  {
    v32 = MEMORY[0x277CBEAA8];
    [resultCopy getDoubleForColumnAlias:"nextAppLaunchTimestamp"];
    v33 = [v32 dateWithTimeIntervalSinceReferenceDate:?];
    [v6 setNextAppLaunchTimestamp:v33];
  }

  [v6 setQueryTimeInterval:interval];

  return v6;
}

- (id)telemetryDataForNotificationsFromTimestamp:(double)timestamp endTimestamp:(double)endTimestamp
{
  v8 = objc_opt_new();
  queue = self->super._queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke;
  v14[3] = &unk_27859A240;
  v14[4] = self;
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  v10 = v8;
  v15 = v10;
  v18 = endTimestamp - timestamp;
  v19 = a2;
  dispatch_sync_notxn_0(queue, v14);
  v11 = v15;
  v12 = v10;

  return v10;
}

void __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_2;
  v10[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v11 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_3;
  v6[3] = &unk_27859A218;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_4;
  v5[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v5[4] = *(a1 + 72);
  [v2 prepAndRunQuery:@"SELECT     uuid onPrep:receiveTimestamp onRow:deliveryMethod onError:{urgency, bundleId, isMessage, latestOutcome, latestOutcomeTimestamp, numExpansions, receivedMode, firstUI, mostRecentUI, deliveryReason, notificationBodyLength, notificationTitleLength, notificationSubtitleLength, summaryLength, isDeliveredInPrioritySection, isSummarized, isPartOfStack, isStackSummary, numberOfNotificationsInStack, notificationPriorityStatus, notificationSummaryStatus, isPriorityNotificationEnabled, isNotificationSummaryEnabled, nextAppLaunchTimestamp FROM notifications WHERE     receiveTimestamp > :startTimestamp AND     receiveTimestamp < :endTimestamp ", v10, v6, v5}];
}

void __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":startTimestamp" toDouble:v3];
  [v4 bindNamedParam:":endTimestamp" toDouble:*(a1 + 40)];
}

uint64_t __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _makeNotificationTelemetryQueryResultFromDatabaseResult:a2 queryTimeInterval:*(a1 + 48)];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

uint64_t __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)telemetryDataForNotificationWithBundleId:(id)id notificationId:(id)notificationId recordTimestamp:(double)timestamp
{
  idCopy = id;
  notificationIdCopy = notificationId;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__31;
  v26 = __Block_byref_object_dispose__31;
  v27 = 0;
  queue = self->super._queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke;
  v16[3] = &unk_27859A290;
  v16[4] = self;
  v17 = idCopy;
  timestampCopy = timestamp;
  v18 = notificationIdCopy;
  v19 = &v22;
  v21 = a2;
  v12 = notificationIdCopy;
  v13 = idCopy;
  dispatch_sync_notxn_0(queue, v16);
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke_2;
  v6[3] = &unk_27859A0D8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke_3;
  v5[3] = &unk_27859A268;
  v3 = *(a1 + 56);
  v5[4] = *(a1 + 32);
  v5[5] = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke_4;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = *(a1 + 72);
  [v2 prepAndRunQuery:@"SELECT     uuid onPrep:receiveTimestamp onRow:deliveryMethod onError:{urgency, bundleId, isMessage, latestOutcome, latestOutcomeTimestamp, numExpansions, receivedMode, firstUI, mostRecentUI, deliveryReason, notificationBodyLength, notificationTitleLength, notificationSubtitleLength, summaryLength, isDeliveredInPrioritySection, isSummarized, isPartOfStack, isStackSummary, numberOfNotificationsInStack, notificationPriorityStatus, notificationSummaryStatus, isPriorityNotificationEnabled, isNotificationSummaryEnabled, nextAppLaunchTimestamp FROM notifications WHERE     bundleId = :bundleId AND     notificationId = :notificationId AND     recordTimestamp = :recordTimestamp ORDER BY recordTimestamp DESC LIMIT 1 ", v6, v5, v4}];
}

void __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNSString:v3];
  [v4 bindNamedParam:":notificationId" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":recordTimestamp" toDouble:*(a1 + 48)];
}

uint64_t __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _makeNotificationTelemetryQueryResultFromDatabaseResult:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42690];
}

uint64_t __112__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationWithBundleId_notificationId_recordTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __59__ATXNotificationAndSuggestionDatabase__runMigrationSteps___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  OUTLINED_FUNCTION_13(&dword_2263AA000, a3, a3, "Error running migration query: %@ %@", &v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __64__ATXNotificationAndSuggestionDatabase_getBookmarkDataFromName___block_invoke_4_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_4(a1 a2)];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __64__ATXNotificationAndSuggestionDatabase_setBookmarkData_forName___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_4(a1 a2)];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __113__ATXNotificationAndSuggestionDatabase_insertNotificationFromEvent_deliveryMethod_modeIdentifier_deliveryReason___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_4(a1 a2)];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __68__ATXNotificationAndSuggestionDatabase_updateNotificationFromEvent___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_4(a1 a2)];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __111__ATXNotificationAndSuggestionDatabase_updateNotificationsWithNextAppLaunchDate_receivedDateAfter_forBundleId___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error updating notification with app launch timestamp: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__ATXNotificationAndSuggestionDatabase_updateNotificationUIForNotifications_nextUI___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error updating notification UIs: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__ATXNotificationAndSuggestionDatabase_insertSuggestion___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_4(a1 a2)];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __66__ATXNotificationAndSuggestionDatabase_updateSuggestionFromEvent___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_4(a1 a2)];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __110__ATXNotificationAndSuggestionDatabase_hasSuggestionBeenShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = NSStringFromSelector(*(v0 + 40));
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __112__ATXNotificationAndSuggestionDatabase_suggestionEventTypeShownForEntityId_suggestionType_scope_sinceTimestamp___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = NSStringFromSelector(*(v0 + 40));
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __116__ATXNotificationAndSuggestionDatabase_engagementStatusOfActiveAndProminentNotificationsWithUrgency_sinceTimestamp___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __89__ATXNotificationAndSuggestionDatabase_numberOfActiveNotificationsWithCompletionHandler___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_12_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __83__ATXNotificationAndSuggestionDatabase_setAllNotificationsToClearedExceptProminent__block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error updating notification while clearing all except prominent. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__ATXNotificationAndSuggestionDatabase_setAllNotificationsToModified__block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error updating notification while clearing all. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__ATXNotificationAndSuggestionDatabase_currentActiveSuggestions__block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "Unable to load delieverySuggestion from the DB in %s. Skipping the suggestion.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__ATXNotificationAndSuggestionDatabase_getTopOfProminentStackNotificationsWithLimit___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13(v4, v5, v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __68__ATXNotificationAndSuggestionDatabase_resolutionsForNotifications___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __88__ATXNotificationAndSuggestionDatabase__countNotificationsPerAppWithFilters_stmtBinder___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __75__ATXNotificationAndSuggestionDatabase_receiveTimeStampOfFirstNotification__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_3_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_13();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%s: Unable to build NSUUID from string uuid %@ fetched from database. Continuing anyway", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __84__ATXNotificationAndSuggestionDatabase_allNotificationsFromBundleId_sinceTimestamp___block_invoke_272_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16(&dword_2263AA000, v2, v3, "%s: Error fetching notifications for bundleId: %@. Error: %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_3_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Failed to fetch one of the bundleIds from the db. Continuing anyway", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__ATXNotificationAndSuggestionDatabase_allBundleIdsOfNotificationsOnLockscreen__block_invoke_282_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_10_0(&dword_2263AA000, v0, v1, "%s: Error fetching bundleIds. Error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_12_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_285_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_12_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__ATXNotificationAndSuggestionDatabase_deleteAllData__block_invoke_286_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_12_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __74__ATXNotificationAndSuggestionDatabase_pruneNotificationsBeforeTimestamp___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_12_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13(v4, v5, v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __72__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBeforeTimestamp___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_12_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13(v4, v5, v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Failed to fetch bundleIds. See logs above. Exiting early.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_15(&dword_2263AA000, v0, v1, "%s: Processing bundleIds in order: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_10_0(&dword_2263AA000, v0, v1, "%s: Error fetching bundleIds from db. Error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__ATXNotificationAndSuggestionDatabase_pruneNotificationsBasedOnHardLimitsWithXPCActivity___block_invoke_2_302_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_10_0(&dword_2263AA000, v0, v1, "%s: Error running deletion across all apps. Error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepAndRunQuery:(uint64_t)a3 batchSize:(uint64_t)a4 XPCActivity:(uint64_t)a5 onPrep:(uint64_t)a6 onRow:(uint64_t)a7 onError:(uint64_t)a8 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15(&dword_2263AA000, a2, a3, "%s: Starting batched deletion, batchSize: %ld", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepAndRunQuery:(os_log_t)log batchSize:XPCActivity:onPrep:onRow:onError:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXNotificationAndSuggestionDatabase prepAndRunQuery:batchSize:XPCActivity:onPrep:onRow:onError:]";
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "%s: Finished batched deletion", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_pruneNotificationsBasedOnHardLimitsForBundleId:XPCActivity:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_15(&dword_2263AA000, v0, v1, "%s: Deleting rows from notifications table for bundleId %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_pruneNotificationsBasedOnHardLimitsForBundleId:XPCActivity:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_15(&dword_2263AA000, v0, v1, "%s: Finished deletion for bundleId %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __100__ATXNotificationAndSuggestionDatabase__pruneNotificationsBasedOnHardLimitsForBundleId_XPCActivity___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16(&dword_2263AA000, v2, v3, "%s: Error deleting entries from notifications table for bundleId: %@. Error: %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_10_0(&dword_2263AA000, v0, v1, "%s: Error deleting suggestions with Created latestOutcome from the suggestions table. Error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_323_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_10_0(&dword_2263AA000, v0, v1, "%s: Error deleting suggestions with CouldNotShow latestOutcome from the suggestions table. Error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __89__ATXNotificationAndSuggestionDatabase_pruneSuggestionsBasedOnHardLimitsWithXPCActivity___block_invoke_2_331_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_10_0(&dword_2263AA000, v0, v1, "%s: Error deleting entries from suggestions table. Error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__ATXNotificationAndSuggestionDatabase_analyze__block_invoke_337_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_10_0(&dword_2263AA000, v0, v1, "%s: Error analyzing database. Error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__ATXNotificationAndSuggestionDatabase_vacuumDatabase__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_12_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13(v4, v5, v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __65__ATXNotificationAndSuggestionDatabase_feedbackHistoriesForKeys___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __96__ATXNotificationAndSuggestionDatabase_telemetryDataForNotificationsFromTimestamp_endTimestamp___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end