@interface ATXInformationStore
+ (ATXInformationStore)sharedInstance;
- (ATXInformationStore)init;
- (ATXInformationStore)initWithDatabasePath:(id)path cachedSuggestionsPath:(id)suggestionsPath;
- (BOOL)_configureDatabase;
- (BOOL)_handleCorruptionIfNeeded;
- (BOOL)_insertTimelineEntries:(id)entries forWidget:(id)widget storageLimit:(unint64_t)limit;
- (BOOL)_migrateDatabaseIfNeeded;
- (BOOL)_openDatabase;
- (BOOL)addAbuseControlOutcomeForSuggestion:(id)suggestion forTimestamp:(int64_t)timestamp outcome:(int64_t)outcome;
- (BOOL)addAbuseControlOutcomes:(id)outcomes;
- (BOOL)addEngagementRecordForWidget:(id)widget date:(id)date engagementType:(int64_t)type;
- (BOOL)addStackConfigStatistics:(id)statistics;
- (BOOL)appendDismissRecord:(id)record;
- (BOOL)atomicallyDeleteInfoSuggestions:(id)suggestions insertInfoSuggestions:(id)infoSuggestions;
- (BOOL)clearOldAbuseControlOutcomeData;
- (BOOL)clearOutdatedSuggestedWidgetEntries;
- (BOOL)clearOutdatedWidgetEngagements;
- (BOOL)clearOutdatedWidgetReloadEntries;
- (BOOL)clearWidgetRemovalHistoryOlderThan:(id)than;
- (BOOL)deleteAllInfoSuggestionsWithSourceIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteAllSuggestionsForSourceId:(id)id excludingSuggestionId:(id)suggestionId;
- (BOOL)deleteExpiredProactiveStackRotations;
- (BOOL)deleteInfoSuggestion:(id)suggestion;
- (BOOL)didMostRecentReloadFailForExtension:(id)extension kind:(id)kind intent:(id)intent cutoffDate:(id)date;
- (BOOL)didSuggestionReachDurationLimit:(id)limit;
- (BOOL)insertOrIgnoreProactiveStackRotationRecord:(id)record;
- (BOOL)pruneTimelineEntries;
- (BOOL)recordSuggestedWidgetUniqueIdIfNotExist:(id)exist;
- (BOOL)recordSuggestionPassedTimelineFiltersForTheFirstTime:(id)time;
- (BOOL)recordUserRemovalOfSuggestedWidget:(id)widget kind:(id)kind intent:(id)intent atDate:(id)date duration:(double)duration;
- (BOOL)recordWidgetReloadForSuggestion:(id)suggestion date:(id)date readyForDisplay:(BOOL)display;
- (BOOL)rotationExistsForSuggestionWithId:(id)id considerStalenessRotation:(BOOL)rotation;
- (BOOL)updateEndDateForInfoSuggestions:(id)suggestions;
- (BOOL)writeCacheWithNewSuggestions:(id)suggestions;
- (BOOL)writeInfoSuggestions:(id)suggestions;
- (id)_dateIntervalFromDismissStatement:(id)statement;
- (id)_openSqliteDatabaseAtPath:(id)path;
- (id)criterionOfInfoSuggestionWithIdentifier:(id)identifier;
- (id)dateIntervalsOfUserRemovalOfSuggestedWidget:(id)widget kind:(id)kind intent:(id)intent;
- (id)dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId:(id)id;
- (id)dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent:(id)intent;
- (id)deleteExpiredSuggestions;
- (id)distinctScoresForWidget:(id)widget kind:(id)kind;
- (id)earliestFutureSuggestionChangeDate;
- (id)engagementTimestampsForExtensionBundleId:(id)id kind:(id)kind intent:(id)intent engagementType:(int64_t)type;
- (id)fetchAbuseControlOutcomesForSuggestion:(id)suggestion sinceDate:(id)date;
- (id)fetchAllTimelineEntriesForWidget:(id)widget;
- (id)fetchDistinctScoreCountForWidgets;
- (id)fetchDistinctWidgetsIgnoringIntentSinceDate:(id)date;
- (id)fetchStackConfigStatisticsForWidgetBundleId:(id)id widgetKind:(id)kind containerBundleIdentifier:(id)identifier widgetFamily:(int64_t)family;
- (id)fetchTimelineEntriesForWidget:(id)widget sinceDate:(id)date;
- (id)fetchWidgetEngagementRecords;
- (id)fetchWidgetTapEngagementCountSinceStartDate:(id)date;
- (id)fetchWidgetTapEngagementsBetweenStartDate:(id)date endDate:(id)endDate;
- (id)firstAppearDateOfSuggestedWidgetWithUniqueId:(id)id;
- (id)firstEngagementOfWidget:(id)widget kind:(id)kind intent:(id)intent sinceTimestamp:(id)timestamp;
- (id)firstTimeAtWhichSuggestionPassedTimelineFilters:(id)filters;
- (id)latestInfoSuggestionRelevantNowForSourceId:(id)id;
- (id)latestUpdateDateForSourceId:(id)id;
- (id)migrations;
- (id)mostRecentEngagementOfWidget:(id)widget;
- (id)mostRecentEngagementOfWidget:(id)widget kind:(id)kind ofType:(int64_t)type;
- (id)mostRecentEngagementOfWidget:(id)widget ofType:(int64_t)type;
- (id)mostRecentRotationRecordForSuggestionIdentifier:(id)identifier;
- (id)mostRecentRotationRecordForWidget:(id)widget kind:(id)kind intent:(id)intent considerStalenessRotation:(BOOL)rotation filterByClientModelId:(id)id;
- (id)mostRecentTimelineEntryWithScoreForWidget:(id)widget kind:(id)kind family:(int64_t)family intentIndexingHash:(int64_t)hash;
- (id)mostRecentTimelineUpdateDateOfWidget:(id)widget kind:(id)kind;
- (id)nextImportantDateAmongTimelineInducedProactiveStackRotationRecords;
- (id)proactiveRotationsForWidgetInThePastDay:(id)day kind:(id)kind intent:(id)intent filterByClientModelId:(id)id;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version;
- (id)readAllDismissRecords;
- (id)readAllInfoSuggestions;
- (id)readAllInfoSuggestionsWithSourceIdentifier:(id)identifier;
- (id)readCachedSuggestions;
- (id)readCurrentlyRelevantSuggestions;
- (id)recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget:(id)widget kind:(id)kind family:(int64_t)family intent:(id)intent;
- (id)upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget:(id)widget kind:(id)kind familyMask:(unint64_t)mask intent:(id)intent;
- (id)widgetSuggestionRemovalRecordsForDiagnostics;
- (int64_t)mostRecentAbuseControlOutcomeForSuggestionId:(id)id;
- (unint64_t)numberOfInfoSuggestionsForAppBundleIdentifier:(id)identifier;
- (unint64_t)numberOfInfoSuggestionsForSourceId:(id)id;
- (unint64_t)numberOfSuggestedWidgetsInPastDay;
- (unint64_t)numberOfWidgetReloadForSuggestionInPastDay;
- (void)_migrateDatabaseIfNeeded;
- (void)_openDatabase;
- (void)close;
- (void)dealloc;
- (void)readCachedSuggestions;
@end

@implementation ATXInformationStore

+ (ATXInformationStore)sharedInstance
{
  if (sharedInstance__pasOnceToken2_1 != -1)
  {
    +[ATXInformationStore sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_13;

  return v3;
}

void __37__ATXInformationStore_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_13;
  sharedInstance__pasExprOnceResult_13 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXInformationStore)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"_ATXInfoSuggestionStore.db"];
  v4 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"InfoEngineCachedSuggestions"];
  v5 = [(ATXInformationStore *)self initWithDatabasePath:v3 cachedSuggestionsPath:v4];

  return v5;
}

- (ATXInformationStore)initWithDatabasePath:(id)path cachedSuggestionsPath:(id)suggestionsPath
{
  pathCopy = path;
  suggestionsPathCopy = suggestionsPath;
  v15.receiver = self;
  v15.super_class = ATXInformationStore;
  v8 = [(ATXInformationStore *)&v15 init];
  if (v8 && (v9 = [pathCopy copy], databasePath = v8->_databasePath, v8->_databasePath = v9, databasePath, v11 = objc_msgSend(suggestionsPathCopy, "copy"), cachedSuggestionsPath = v8->_cachedSuggestionsPath, v8->_cachedSuggestionsPath = v11, cachedSuggestionsPath, !-[ATXInformationStore _openDatabase](v8, "_openDatabase")))
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  return v13;
}

- (void)dealloc
{
  db = self->_db;
  if (db)
  {
    [(_PASSqliteDatabase *)db closePermanently];
    v4 = self->_db;
    self->_db = 0;
  }

  v5.receiver = self;
  v5.super_class = ATXInformationStore;
  [(ATXInformationStore *)&v5 dealloc];
}

- (BOOL)_openDatabase
{
  _handleCorruptionIfNeeded = [(ATXInformationStore *)self _handleCorruptionIfNeeded];
  if (_handleCorruptionIfNeeded)
  {
    p_databasePath = &self->_databasePath;
    v5 = [(ATXInformationStore *)self _openSqliteDatabaseAtPath:self->_databasePath];
    db = self->_db;
    self->_db = v5;

    if (self->_db)
    {
      if ([(ATXInformationStore *)self _configureDatabase])
      {
        if ([(ATXInformationStore *)self _migrateDatabaseIfNeeded])
        {
          LOBYTE(_handleCorruptionIfNeeded) = 1;
          return _handleCorruptionIfNeeded;
        }

        v7 = __atxlog_handle_gi();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [ATXInformationStore _openDatabase];
        }
      }

      else
      {
        v7 = __atxlog_handle_gi();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [ATXInformationStore _openDatabase];
        }
      }
    }

    else
    {
      v7 = __atxlog_handle_gi();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ATXInformationStore *)p_databasePath _openDatabase:v7];
      }
    }

    LOBYTE(_handleCorruptionIfNeeded) = 0;
  }

  return _handleCorruptionIfNeeded;
}

- (void)close
{
  [(_PASSqliteDatabase *)self->_db closePermanently];
  db = self->_db;
  self->_db = 0;
}

- (BOOL)_handleCorruptionIfNeeded
{
  v3 = [MEMORY[0x1E69C5D88] corruptionMarkerPathForPath:self->_databasePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    v6 = __atxlog_handle_gi();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationStore was corrupted. Truncate and restart", buf, 2u);
    }

    db = self->_db;
    if (db)
    {
      [(_PASSqliteDatabase *)db closePermanently];
    }

    [MEMORY[0x1E69C5D88] truncateDatabaseAtPath:self->_databasePath];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = 0;
    v9 = [defaultManager2 removeItemAtPath:v3 error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = __atxlog_handle_gi();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationStore _handleCorruptionIfNeeded];
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_openSqliteDatabaseAtPath:(id)path
{
  pathCopy = path;
  v9 = 0;
  v4 = [MEMORY[0x1E69C5D88] sqliteDatabaseWithFilename:pathCopy contentProtection:3 errorHandler:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = __atxlog_handle_gi();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationStore _openSqliteDatabaseAtPath:];
    }
  }

  return v4;
}

- (BOOL)_configureDatabase
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&unk_1F3E609D8 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(&unk_1F3E609D8);
      }

      v7 = [(_PASSqliteDatabase *)self->_db prepAndRunQuery:*(*(&v9 + 1) + 8 * v6) onPrep:0 onRow:0 onError:&__block_literal_global_39_0];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [&unk_1F3E609D8 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v7) = 1;
  }

  return v7;
}

uint64_t __41__ATXInformationStore__configureDatabase__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__ATXInformationStore__configureDatabase__block_invoke_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)_migrateDatabaseIfNeeded
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69C5CE8]);
  v11[0] = self;
  v4 = 1;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6 = [v3 initWithMigrationObjects:v5];

  migrateDatabases = [v6 migrateDatabases];
  if (migrateDatabases > 2)
  {
    if (migrateDatabases <= 4)
    {
      if (migrateDatabases != 3)
      {
        v8 = __atxlog_handle_gi();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          [ATXInformationStore _migrateDatabaseIfNeeded];
        }

LABEL_22:

        goto LABEL_23;
      }

      v9 = __atxlog_handle_gi();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationStore _migrateDatabaseIfNeeded];
      }

LABEL_19:

LABEL_24:
      v4 = 0;
      goto LABEL_25;
    }

    if (migrateDatabases == 5)
    {
      v8 = __atxlog_handle_gi();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ATXInformationStore _migrateDatabaseIfNeeded];
      }

      goto LABEL_22;
    }

    if (migrateDatabases == 6)
    {
      v8 = __atxlog_handle_gi();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ATXInformationStore _migrateDatabaseIfNeeded];
      }

      goto LABEL_22;
    }

LABEL_23:
    [(_PASSqliteDatabase *)self->_db placeCorruptionMarker];
    goto LABEL_24;
  }

  if (!migrateDatabases)
  {
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXInformationStore _migrateDatabaseIfNeeded];
    }

    goto LABEL_19;
  }

  if (migrateDatabases != 1)
  {
    if (migrateDatabases == 2)
    {
      v8 = __atxlog_handle_gi();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ATXInformationStore _migrateDatabaseIfNeeded];
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_25:

  return v4;
}

- (id)migrations
{
  v5[28] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F3E601C8;
  v4[1] = &unk_1F3E601E0;
  v5[0] = &unk_1F3E609F0;
  v5[1] = &unk_1F3E60A08;
  v4[2] = &unk_1F3E601F8;
  v4[3] = &unk_1F3E60210;
  v5[2] = &unk_1F3E60A20;
  v5[3] = &unk_1F3E60A38;
  v4[4] = &unk_1F3E60228;
  v4[5] = &unk_1F3E60240;
  v5[4] = &unk_1F3E60A50;
  v5[5] = &unk_1F3E60A68;
  v4[6] = &unk_1F3E60258;
  v4[7] = &unk_1F3E60270;
  v5[6] = &unk_1F3E60A80;
  v5[7] = &unk_1F3E60A98;
  v4[8] = &unk_1F3E60288;
  v4[9] = &unk_1F3E602A0;
  v5[8] = &unk_1F3E60AB0;
  v5[9] = &unk_1F3E60AC8;
  v4[10] = &unk_1F3E602B8;
  v4[11] = &unk_1F3E602D0;
  v5[10] = &unk_1F3E60AE0;
  v5[11] = &unk_1F3E60AF8;
  v4[12] = &unk_1F3E602E8;
  v4[13] = &unk_1F3E60300;
  v5[12] = &unk_1F3E60B10;
  v5[13] = &unk_1F3E60B28;
  v4[14] = &unk_1F3E60318;
  v4[15] = &unk_1F3E60330;
  v5[14] = &unk_1F3E60B40;
  v5[15] = &unk_1F3E60B58;
  v4[16] = &unk_1F3E60348;
  v4[17] = &unk_1F3E60360;
  v5[16] = &unk_1F3E60B70;
  v5[17] = &unk_1F3E60B88;
  v4[18] = &unk_1F3E60378;
  v4[19] = &unk_1F3E60390;
  v5[18] = &unk_1F3E60BA0;
  v5[19] = &unk_1F3E60BB8;
  v4[20] = &unk_1F3E603A8;
  v4[21] = &unk_1F3E603C0;
  v5[20] = &unk_1F3E60BD0;
  v5[21] = &unk_1F3E60BE8;
  v4[22] = &unk_1F3E603D8;
  v4[23] = &unk_1F3E603F0;
  v5[22] = &unk_1F3E60C00;
  v5[23] = &unk_1F3E60C18;
  v4[24] = &unk_1F3E60408;
  v4[25] = &unk_1F3E60420;
  v5[24] = &unk_1F3E60C30;
  v5[25] = &unk_1F3E60C48;
  v4[26] = &unk_1F3E60438;
  v4[27] = &unk_1F3E60450;
  v5[26] = &unk_1F3E60C60;
  v5[27] = &unk_1F3E60C78;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:28];

  return v2;
}

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version
{
  if (version)
  {
    *version = 0;
  }

  return MEMORY[0x1E695E0F0];
}

- (id)readCachedSuggestions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  cachedSuggestionsPath = self->_cachedSuggestionsPath;
  p_cachedSuggestionsPath = &self->_cachedSuggestionsPath;
  v6 = open([(NSString *)cachedSuggestionsPath UTF8String], 0);
  if (v6 == -1)
  {
    v8 = *__error() == 2;
    v9 = __atxlog_handle_gi();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *p_cachedSuggestionsPath;
        buf = 138412290;
        *buf_4 = v11;
        _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXInformationStore: No info engine cache file found at path %@.", &buf, 0xCu);
      }

      v12 = MEMORY[0x1E695E0F0];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationStore readCachedSuggestions];
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = v6;
    v21 = 0;
    ATXCacheFileRead();
    if ((v7 & 0x80000000) == 0)
    {
      close(v7);
    }

    v13 = __atxlog_handle_gi();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXInformationStore *)p_cachedSuggestionsPath readCachedSuggestions:v13];
    }

    v12 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v12;
}

void __44__ATXInformationStore_readCachedSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 suggestionId];
  [v4 bindNamedParam:":suggestionId" toNSString:v5];

  v6 = [*(a1 + 32) sourceId];
  [v4 bindNamedParam:":sourceId" toNSString:v6];
}

uint64_t __44__ATXInformationStore_readCachedSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumnName:"data" table:0];
  v4 = [objc_alloc(MEMORY[0x1E69C5B88]) initWithData:v3];
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  else
  {
    v5 = __atxlog_handle_gi();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __44__ATXInformationStore_readCachedSuggestions__block_invoke_2_cold_1();
    }
  }

  v6 = MEMORY[0x1E69C5DD0];

  return *v6;
}

uint64_t __44__ATXInformationStore_readCachedSuggestions__block_invoke_364(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __44__ATXInformationStore_readCachedSuggestions__block_invoke_364_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (BOOL)writeCacheWithNewSuggestions:(id)suggestions
{
  v30 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  context = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = suggestionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = objc_opt_new();
        suggestionIdentifier = [v11 suggestionIdentifier];
        [v12 setSuggestionId:suggestionIdentifier];

        sourceIdentifier = [v11 sourceIdentifier];
        [v12 setSourceId:sourceIdentifier];

        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v15 = objc_opt_new();
  [v15 setEntries:v5];
  encodeAsProto = [v15 encodeAsProto];
  if (!encodeAsProto)
  {
    v21 = __atxlog_handle_gi();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationStore writeCacheWithNewSuggestions:];
    }

    goto LABEL_18;
  }

  uTF8String = [(NSString *)self->_cachedSuggestionsPath UTF8String];
  v18 = open(uTF8String, 514, 384, context, v25);
  if (v18 == -1)
  {
    v22 = __atxlog_handle_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationStore writeCacheWithNewSuggestions:];
    }

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v19 = v18;
  v20 = ATXCacheFileWrite();
  if ((v19 & 0x80000000) == 0)
  {
    close(v19);
  }

LABEL_19:

  objc_autoreleasePoolPop(context);
  return v20;
}

- (id)readAllInfoSuggestions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__ATXInformationStore_readAllInfoSuggestions__block_invoke;
  v7[3] = &unk_1E80C4D40;
  v7[4] = &v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__ATXInformationStore_readAllInfoSuggestions__block_invoke_369;
  v6[3] = &unk_1E80C4D18;
  v6[4] = &v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT suggestionId onPrep:sourceId onRow:data FROM suggestions" onError:0, v7, v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __45__ATXInformationStore_readAllInfoSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69C5B88]);
  v5 = [v3 getNSDataForColumn:2];
  v6 = [v4 initWithData:v5];

  if (v6)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }

  else
  {
    v7 = __atxlog_handle_gi();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __45__ATXInformationStore_readAllInfoSuggestions__block_invoke_cold_1();
    }
  }

  v8 = MEMORY[0x1E69C5DD0];

  return *v8;
}

uint64_t __45__ATXInformationStore_readAllInfoSuggestions__block_invoke_369(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __45__ATXInformationStore_readAllInfoSuggestions__block_invoke_369_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)readCurrentlyRelevantSuggestions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_2;
  v7[3] = &unk_1E80C4D40;
  v7[4] = &v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_377;
  v6[3] = &unk_1E80C4D18;
  v6[4] = &v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT suggestionId onPrep:sourceId onRow:data FROM suggestions WHERE startDate <= :now AND :now < endDate ORDER BY startDate" onError:&__block_literal_global_374, v7, v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":now" toInt64:v3];
}

uint64_t __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69C5B88]);
  v5 = [v3 getNSDataForColumn:2];
  v6 = [v4 initWithData:v5];

  if (v6)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }

  else
  {
    v7 = __atxlog_handle_gi();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_2_cold_1();
    }
  }

  v8 = MEMORY[0x1E69C5DD0];

  return *v8;
}

uint64_t __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_377(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __45__ATXInformationStore_readAllInfoSuggestions__block_invoke_369_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)readAllInfoSuggestionsWithSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = objc_opt_new();
  db = self->_db;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__ATXInformationStore_readAllInfoSuggestionsWithSourceIdentifier___block_invoke;
  v11[3] = &unk_1E80C4CC8;
  v6 = identifierCopy;
  v12 = v6;
  v9[4] = &v13;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__ATXInformationStore_readAllInfoSuggestionsWithSourceIdentifier___block_invoke_2;
  v10[3] = &unk_1E80C4D40;
  v10[4] = &v13;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__ATXInformationStore_readAllInfoSuggestionsWithSourceIdentifier___block_invoke_381;
  v9[3] = &unk_1E80C4D18;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT suggestionId onPrep:sourceId onRow:data FROM suggestions WHERE sourceId = :sourceId" onError:v11, v10, v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __66__ATXInformationStore_readAllInfoSuggestionsWithSourceIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69C5B88]);
  v5 = [v3 getNSDataForColumn:2];
  v6 = [v4 initWithData:v5];

  if (v6)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }

  else
  {
    v7 = __atxlog_handle_gi();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_2_cold_1();
    }
  }

  v8 = MEMORY[0x1E69C5DD0];

  return *v8;
}

uint64_t __66__ATXInformationStore_readAllInfoSuggestionsWithSourceIdentifier___block_invoke_381(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __45__ATXInformationStore_readAllInfoSuggestions__block_invoke_369_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)latestInfoSuggestionRelevantNowForSourceId:(id)id
{
  idCopy = id;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v13 = idCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke_386;
  v9[3] = &unk_1E80C4D88;
  v6 = v13;
  v10 = v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT suggestionId onPrep:sourceId onRow:data from suggestions WHERE sourceId = :sourceId AND startDate < :nowInSecondsSinceReferenceDate AND endDate > :nowInSecondsSinceReferenceDate ORDER BY startDate DESC LIMIT 1" onError:v12, v11, v9];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  [v6 bindNamedParam:":sourceId" toNSString:*(a1 + 32)];
  [v6 bindNamedParam:":nowInSecondsSinceReferenceDate" toInt64:v5];
}

uint64_t __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69C5B88]);
  v5 = [v3 getNSDataForColumn:2];
  v6 = [v4 initWithData:v5];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  }

  else
  {
    v7 = __atxlog_handle_gi();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_2_cold_1();
    }
  }

  v8 = MEMORY[0x1E69C5DD8];

  return *v8;
}

uint64_t __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke_386(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke_386_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)criterionOfInfoSuggestionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ATXInformationStore_criterionOfInfoSuggestionWithIdentifier___block_invoke;
  v10[3] = &unk_1E80C4CC8;
  v6 = identifierCopy;
  v11 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__ATXInformationStore_criterionOfInfoSuggestionWithIdentifier___block_invoke_2;
  v9[3] = &unk_1E80C4D40;
  v9[4] = &v12;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT criterion FROM suggestions WHERE suggestionId = :suggestionId" onPrep:v10 onRow:v9 onError:&__block_literal_global_391];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __63__ATXInformationStore_criterionOfInfoSuggestionWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __63__ATXInformationStore_criterionOfInfoSuggestionWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __63__ATXInformationStore_criterionOfInfoSuggestionWithIdentifier___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)earliestFutureSuggestionChangeDate
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x2020000000;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v7 = v6;

  v24[2] = v7;
  db = self->_db;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke;
  v22[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v22[4] = v4;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke_2;
  v21[3] = &unk_1E80C4D40;
  v21[4] = &v23;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT startDate FROM suggestions WHERE startDate > :now ORDER BY startDate LIMIT 1" onPrep:v22 onRow:v21 onError:&__block_literal_global_396];
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x2020000000;
  distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture2 timeIntervalSinceReferenceDate];
  v11 = v10;

  v20[2] = v11;
  v12 = self->_db;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke_400;
  v18[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v18[4] = v4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke_2_401;
  v17[3] = &unk_1E80C4D40;
  v17[4] = &v19;
  [(_PASSqliteDatabase *)v12 prepAndRunQuery:@"SELECT endDate FROM suggestions WHERE endDate > :now ORDER BY endDate LIMIT 1" onPrep:v18 onRow:v17 onError:&__block_literal_global_404];
  if (*(v24[0] + 24) >= *(v20[0] + 24))
  {
    v13 = objc_alloc(MEMORY[0x1E695DF00]);
    v14 = v20;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E695DF00]);
    v14 = v24;
  }

  v15 = [v13 initWithTimeIntervalSinceReferenceDate:*(*v14 + 24)];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v15;
}

uint64_t __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

uint64_t __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke_3_402(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __57__ATXInformationStore_earliestFutureSuggestionChangeDate__block_invoke_3_402_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)latestUpdateDateForSourceId:(id)id
{
  idCopy = id;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__ATXInformationStore_latestUpdateDateForSourceId___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v13 = idCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__ATXInformationStore_latestUpdateDateForSourceId___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__ATXInformationStore_latestUpdateDateForSourceId___block_invoke_3;
  v9[3] = &unk_1E80C4D88;
  v6 = v13;
  v10 = v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT lastUpdated FROM suggestions WHERE sourceId = :sourceId ORDER BY lastUpdated DESC LIMIT 1" onPrep:v12 onRow:v11 onError:v9];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __51__ATXInformationStore_latestUpdateDateForSourceId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isColumnNull:0] & 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 0)}];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = MEMORY[0x1E69C5DD8];

  return *v7;
}

uint64_t __51__ATXInformationStore_latestUpdateDateForSourceId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __51__ATXInformationStore_latestUpdateDateForSourceId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (unint64_t)numberOfInfoSuggestionsForSourceId:(id)id
{
  idCopy = id;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ATXInformationStore_numberOfInfoSuggestionsForSourceId___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v13 = idCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__ATXInformationStore_numberOfInfoSuggestionsForSourceId___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ATXInformationStore_numberOfInfoSuggestionsForSourceId___block_invoke_3;
  v9[3] = &unk_1E80C4D88;
  v6 = v13;
  v10 = v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT COUNT(*) FROM suggestions WHERE sourceId = :sourceId" onPrep:v12 onRow:v11 onError:v9];
  v7 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __58__ATXInformationStore_numberOfInfoSuggestionsForSourceId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __58__ATXInformationStore_numberOfInfoSuggestionsForSourceId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (unint64_t)numberOfInfoSuggestionsForAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__ATXInformationStore_numberOfInfoSuggestionsForAppBundleIdentifier___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v13 = identifierCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ATXInformationStore_numberOfInfoSuggestionsForAppBundleIdentifier___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__ATXInformationStore_numberOfInfoSuggestionsForAppBundleIdentifier___block_invoke_3;
  v9[3] = &unk_1E80C4D88;
  v6 = v13;
  v10 = v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT COUNT(*) FROM suggestions WHERE appBundleIdentifier = :appBundleIdentifier" onPrep:v12 onRow:v11 onError:v9];
  v7 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __69__ATXInformationStore_numberOfInfoSuggestionsForAppBundleIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __69__ATXInformationStore_numberOfInfoSuggestionsForAppBundleIdentifier___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)writeInfoSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = suggestionsCopy;
  if (suggestionsCopy)
  {
    v6 = MEMORY[0x1E69C5D90];
    db = self->_db;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__ATXInformationStore_writeInfoSuggestions___block_invoke;
    v10[3] = &unk_1E80C4DF8;
    v11 = suggestionsCopy;
    v8 = ([v6 writeTransactionWithHandle:db failableBlock:v10] & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __44__ATXInformationStore_writeInfoSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [v3 db];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __44__ATXInformationStore_writeInfoSuggestions___block_invoke_2;
        v14[3] = &unk_1E80C4CC8;
        v14[4] = v8;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __44__ATXInformationStore_writeInfoSuggestions___block_invoke_3;
        v13[3] = &unk_1E80C4DD0;
        v13[4] = v8;
        v13[5] = &v19;
        [v9 prepAndRunQuery:@"INSERT OR REPLACE INTO suggestions (suggestionId onPrep:sourceId onRow:data onError:{criterion, appBundleIdentifier, widgetBundleIdentifier, widgetKind, layouts, intentIdentifier, startDate, endDate, lastUpdated, clientModelId, relevanceScore) VALUES (:suggestionId, :sourceId, :data, :criterion, :appBundleIdentifier, :widgetBundleIdentifier, :widgetKind, :layouts, :intentIdentifier, :startDate, :endDate, :lastUpdated, :clientModelId, :relevanceScore)", v14, 0, v13}];

        if (v20[3])
        {

          v10 = MEMORY[0x1E69C5DC8];
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = MEMORY[0x1E69C5DC0];
LABEL_11:
  v11 = *v10;
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __44__ATXInformationStore_writeInfoSuggestions___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [*(a1 + 32) suggestionIdentifier];
  [v20 bindNamedParam:":suggestionId" toNSString:v3];

  v4 = [*(a1 + 32) sourceIdentifier];
  [v20 bindNamedParam:":sourceId" toNSString:v4];

  v5 = [*(a1 + 32) data];
  [v20 bindNamedParam:":data" toNSData:v5];

  v6 = [*(a1 + 32) criterion];
  [v20 bindNamedParam:":criterion" toNSString:v6];

  v7 = [*(a1 + 32) appBundleIdentifier];
  [v20 bindNamedParam:":appBundleIdentifier" toNSString:v7];

  v8 = [*(a1 + 32) widgetBundleIdentifier];
  [v20 bindNamedParam:":widgetBundleIdentifier" toNSString:v8];

  v9 = [*(a1 + 32) widgetKind];
  [v20 bindNamedParam:":widgetKind" toNSString:v9];

  v10 = [*(a1 + 32) clientModelId];
  [v20 bindNamedParam:":clientModelId" toNSString:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(*(a1 + 32), "layouts")];
  [v20 bindNamedParam:":layouts" toNSString:v11];

  v12 = [*(a1 + 32) intent];
  [v20 bindNamedParam:":intentIdentifier" toInt64:{objc_msgSend(v12, "atx_indexingHash")}];

  v13 = [*(a1 + 32) startDate];
  [v13 timeIntervalSinceReferenceDate];
  [v20 bindNamedParam:":startDate" toInt64:v14];

  v15 = [*(a1 + 32) endDate];
  [v15 timeIntervalSinceReferenceDate];
  [v20 bindNamedParam:":endDate" toInt64:v16];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v20 bindNamedParam:":lastUpdated" toInt64:v17];
  v18 = [*(a1 + 32) relevanceScore];

  if (v18)
  {
    v19 = [*(a1 + 32) relevanceScore];
    [v19 doubleValue];
    [v20 bindNamedParam:":relevanceScore" toDouble:?];
  }

  else
  {
    [v20 bindNamedParamToNull:":relevanceScore"];
  }
}

uint64_t __44__ATXInformationStore_writeInfoSuggestions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __44__ATXInformationStore_writeInfoSuggestions___block_invoke_3_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)updateEndDateForInfoSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = suggestionsCopy;
  if (suggestionsCopy)
  {
    v6 = MEMORY[0x1E69C5D90];
    db = self->_db;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke;
    v10[3] = &unk_1E80C4DF8;
    v11 = suggestionsCopy;
    v8 = ([v6 writeTransactionWithHandle:db failableBlock:v10] & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [v3 db];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke_2;
        v14[3] = &unk_1E80C4CC8;
        v14[4] = v8;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke_3;
        v13[3] = &unk_1E80C4DD0;
        v13[4] = v8;
        v13[5] = &v19;
        [v9 prepAndRunQuery:@"UPDATE suggestions SET data=:data onPrep:endDate=:endDate onRow:lastUpdated=:lastUpdated WHERE suggestionId=:suggestionId" onError:{v14, 0, v13}];

        if (v20[3])
        {

          v10 = MEMORY[0x1E69C5DC8];
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = MEMORY[0x1E69C5DC0];
LABEL_11:
  v11 = *v10;
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 suggestionIdentifier];
  [v9 bindNamedParam:":suggestionId" toNSString:v4];

  v5 = [*(a1 + 32) data];
  [v9 bindNamedParam:":data" toNSData:v5];

  v6 = [*(a1 + 32) endDate];
  [v6 timeIntervalSinceReferenceDate];
  [v9 bindNamedParam:":endDate" toInt64:v7];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v9 bindNamedParam:":lastUpdated" toInt64:v8];
}

uint64_t __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke_3_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)atomicallyDeleteInfoSuggestions:(id)suggestions insertInfoSuggestions:(id)infoSuggestions
{
  suggestionsCopy = suggestions;
  infoSuggestionsCopy = infoSuggestions;
  if ([suggestionsCopy count] || objc_msgSend(infoSuggestionsCopy, "count"))
  {
    v8 = MEMORY[0x1E69C5D90];
    db = self->_db;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke;
    v12[3] = &unk_1E80C4E20;
    v13 = suggestionsCopy;
    v14 = infoSuggestionsCopy;
    v10 = ([v8 writeTransactionWithHandle:db failableBlock:v12] & 1) == 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v4)
  {
    v5 = *v29;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v28 + 1) + 8 * v6);
        v8 = [v19 db];
        v26[5] = &v32;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_2;
        v27[3] = &unk_1E80C4CC8;
        v27[4] = v7;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_3;
        v26[3] = &unk_1E80C4DD0;
        v26[4] = v7;
        [v8 prepAndRunQuery:@"DELETE FROM suggestions WHERE suggestionId = :suggestionId AND sourceId = :sourceId" onPrep:v27 onRow:0 onError:v26];

        if (v33[3])
        {

LABEL_20:
          v15 = MEMORY[0x1E69C5DC8];
          goto LABEL_21;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v9 = *(v18 + 40);
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v10)
  {
    v11 = *v23;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [v19 db];
        v20[5] = &v32;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_441;
        v21[3] = &unk_1E80C4CC8;
        v21[4] = v13;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_2_442;
        v20[3] = &unk_1E80C4DD0;
        v20[4] = v13;
        [v14 prepAndRunQuery:@"INSERT OR REPLACE INTO suggestions (suggestionId onPrep:sourceId onRow:data onError:{criterion, appBundleIdentifier, widgetBundleIdentifier, widgetKind, layouts, intentIdentifier, startDate, endDate, lastUpdated, clientModelId, relevanceScore) VALUES (:suggestionId, :sourceId, :data, :criterion, :appBundleIdentifier, :widgetBundleIdentifier, :widgetKind, :layouts, :intentIdentifier, :startDate, :endDate, :lastUpdated, :clientModelId, :relevanceScore)", v21, 0, v20}];

        if (v33[3])
        {

          goto LABEL_20;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = MEMORY[0x1E69C5DC0];
LABEL_21:
  v16 = *v15;
  _Block_object_dispose(&v32, 8);

  return v16;
}

void __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 suggestionIdentifier];
  [v4 bindNamedParam:":suggestionId" toNSString:v5];

  v6 = [*(a1 + 32) sourceIdentifier];
  [v4 bindNamedParam:":sourceId" toNSString:v6];
}

uint64_t __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_3_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

void __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_441(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [*(a1 + 32) suggestionIdentifier];
  [v20 bindNamedParam:":suggestionId" toNSString:v3];

  v4 = [*(a1 + 32) sourceIdentifier];
  [v20 bindNamedParam:":sourceId" toNSString:v4];

  v5 = [*(a1 + 32) data];
  [v20 bindNamedParam:":data" toNSData:v5];

  v6 = [*(a1 + 32) criterion];
  [v20 bindNamedParam:":criterion" toNSString:v6];

  v7 = [*(a1 + 32) appBundleIdentifier];
  [v20 bindNamedParam:":appBundleIdentifier" toNSString:v7];

  v8 = [*(a1 + 32) widgetBundleIdentifier];
  [v20 bindNamedParam:":widgetBundleIdentifier" toNSString:v8];

  v9 = [*(a1 + 32) widgetKind];
  [v20 bindNamedParam:":widgetKind" toNSString:v9];

  v10 = [*(a1 + 32) clientModelId];
  [v20 bindNamedParam:":clientModelId" toNSString:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(*(a1 + 32), "layouts")];
  [v20 bindNamedParam:":layouts" toNSString:v11];

  v12 = [*(a1 + 32) intent];
  [v20 bindNamedParam:":intentIdentifier" toInt64:{objc_msgSend(v12, "atx_indexingHash")}];

  v13 = [*(a1 + 32) startDate];
  [v13 timeIntervalSinceReferenceDate];
  [v20 bindNamedParam:":startDate" toInt64:v14];

  v15 = [*(a1 + 32) endDate];
  [v15 timeIntervalSinceReferenceDate];
  [v20 bindNamedParam:":endDate" toInt64:v16];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v20 bindNamedParam:":lastUpdated" toInt64:v17];
  v18 = [*(a1 + 32) relevanceScore];

  if (v18)
  {
    v19 = [*(a1 + 32) relevanceScore];
    [v19 doubleValue];
    [v20 bindNamedParam:":relevanceScore" toDouble:?];
  }

  else
  {
    [v20 bindNamedParamToNull:":relevanceScore"];
  }
}

uint64_t __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_2_442(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_2_442_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)deleteInfoSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = suggestionCopy;
  if (suggestionCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    db = self->_db;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__ATXInformationStore_deleteInfoSuggestion___block_invoke;
    v12[3] = &unk_1E80C4CC8;
    v13 = suggestionCopy;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__ATXInformationStore_deleteInfoSuggestion___block_invoke_2;
    v9[3] = &unk_1E80C4DD0;
    v10 = v13;
    v11 = &v14;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM suggestions WHERE suggestionId = :suggestionId AND sourceId = :sourceId" onPrep:v12 onRow:0 onError:v9];
    v7 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __44__ATXInformationStore_deleteInfoSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 suggestionIdentifier];
  [v4 bindNamedParam:":suggestionId" toNSString:v5];

  v6 = [*(a1 + 32) sourceIdentifier];
  [v4 bindNamedParam:":sourceId" toNSString:v6];
}

uint64_t __44__ATXInformationStore_deleteInfoSuggestion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __44__ATXInformationStore_deleteInfoSuggestion___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)deleteAllInfoSuggestionsWithSourceIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__16;
    v21 = __Block_byref_object_dispose__16;
    v22 = 0;
    db = self->_db;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__ATXInformationStore_deleteAllInfoSuggestionsWithSourceIdentifier_error___block_invoke;
    v15[3] = &unk_1E80C4CC8;
    v16 = identifierCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__ATXInformationStore_deleteAllInfoSuggestionsWithSourceIdentifier_error___block_invoke_2;
    v11[3] = &unk_1E80C4E48;
    v12 = v16;
    v13 = &v23;
    v14 = &v17;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM suggestions WHERE sourceId = :sourceId" onPrep:v15 onRow:0 onError:v11];
    if (error)
    {
      *error = v18[5];
    }

    v9 = *(v24 + 24);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __74__ATXInformationStore_deleteAllInfoSuggestionsWithSourceIdentifier_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __74__ATXInformationStore_deleteAllInfoSuggestionsWithSourceIdentifier_error___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  return *MEMORY[0x1E69C5DD8];
}

- (id)deleteExpiredSuggestions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = objc_opt_new();
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__16;
  v7[4] = __Block_byref_object_dispose__16;
  v8 = [MEMORY[0x1E695DF00] now];
  db = self->_db;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke;
  v6[3] = &unk_1E80C4E98;
  v6[4] = v7;
  v6[5] = &v9;
  [MEMORY[0x1E69C5D90] writeTransactionWithHandle:db failableBlock:v6];
  v4 = v10[5];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_2;
  v9[3] = &unk_1E80C4E70;
  v9[4] = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_3;
  v8[3] = &unk_1E80C4D40;
  v8[4] = *(a1 + 40);
  [v4 prepAndRunQuery:@"SELECT suggestionId onPrep:endDate FROM suggestions WHERE endDate <= :now" onRow:v9 onError:{v8, &__block_literal_global_453}];

  v5 = [v3 db];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_457;
  v7[3] = &unk_1E80C4E70;
  v7[4] = *(a1 + 32);
  [v5 prepAndRunQuery:@"DELETE FROM suggestions WHERE endDate <= :now" onPrep:v7 onRow:0 onError:&__block_literal_global_460];

  return *MEMORY[0x1E69C5DC0];
}

void __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":now" toInt64:v3];
}

uint64_t __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"endDate" table:0];
  v5 = MEMORY[0x1E69C5C20];
  v6 = [v3 getNSStringForColumnName:"suggestionId" table:0];

  v7 = [v5 outcomeWithSuggestionId:v6 timestamp:21 abuseControlOutcome:v4];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  v8 = MEMORY[0x1E69C5DD0];

  return *v8;
}

uint64_t __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

void __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_457(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":now" toInt64:v3];
}

uint64_t __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_2_458(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_2_458_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)deleteAllSuggestionsForSourceId:(id)id excludingSuggestionId:(id)suggestionId
{
  idCopy = id;
  suggestionIdCopy = suggestionId;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  db = self->_db;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__ATXInformationStore_deleteAllSuggestionsForSourceId_excludingSuggestionId___block_invoke;
  v16[3] = &unk_1E80C4EC0;
  v17 = idCopy;
  v18 = suggestionIdCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__ATXInformationStore_deleteAllSuggestionsForSourceId_excludingSuggestionId___block_invoke_2;
  v12[3] = &unk_1E80C4EE8;
  v9 = v17;
  v13 = v9;
  v10 = v18;
  v14 = v10;
  v15 = &v19;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM suggestions WHERE sourceId = :sourceId AND suggestionId <> :excludedSuggestionId" onPrep:v16 onRow:0 onError:v12];
  LOBYTE(db) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return db;
}

void __77__ATXInformationStore_deleteAllSuggestionsForSourceId_excludingSuggestionId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":sourceId" toNSString:v3];
  if (*(a1 + 40))
  {
    [v4 bindNamedParam:":excludedSuggestionId" toNSString:?];
  }

  else
  {
    [v4 bindNamedParamToNull:":excludedSuggestionId"];
  }
}

uint64_t __77__ATXInformationStore_deleteAllSuggestionsForSourceId_excludingSuggestionId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __77__ATXInformationStore_deleteAllSuggestionsForSourceId_excludingSuggestionId___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)recordSuggestionPassedTimelineFiltersForTheFirstTime:(id)time
{
  timeCopy = time;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  db = self->_db;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__ATXInformationStore_recordSuggestionPassedTimelineFiltersForTheFirstTime___block_invoke;
  v11[3] = &unk_1E80C4CC8;
  v12 = timeCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__ATXInformationStore_recordSuggestionPassedTimelineFiltersForTheFirstTime___block_invoke_2;
  v8[3] = &unk_1E80C4DD0;
  v6 = v12;
  v9 = v6;
  v10 = &v13;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"UPDATE suggestions SET firstPassOfTimelineFilters = :firstPassOfTimelineFilters WHERE suggestionId = :suggestionId AND sourceId = :sourceId" onPrep:v11 onRow:0 onError:v8];
  LOBYTE(db) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return db;
}

void __76__ATXInformationStore_recordSuggestionPassedTimelineFiltersForTheFirstTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":firstPassOfTimelineFilters" toInt64:v5];
  v6 = [*(a1 + 32) suggestionIdentifier];
  [v4 bindNamedParam:":suggestionId" toNSString:v6];

  v7 = [*(a1 + 32) sourceIdentifier];
  [v4 bindNamedParam:":sourceId" toNSString:v7];
}

uint64_t __76__ATXInformationStore_recordSuggestionPassedTimelineFiltersForTheFirstTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __76__ATXInformationStore_recordSuggestionPassedTimelineFiltersForTheFirstTime___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)firstTimeAtWhichSuggestionPassedTimelineFilters:(id)filters
{
  filtersCopy = filters;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v13 = filtersCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke_3;
  v9[3] = &unk_1E80C4D88;
  v6 = v13;
  v10 = v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT firstPassOfTimelineFilters FROM suggestions WHERE suggestionId = :suggestionId AND sourceId = :sourceId" onPrep:v12 onRow:v11 onError:v9];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 suggestionIdentifier];
  [v4 bindNamedParam:":suggestionId" toNSString:v5];

  v6 = [*(a1 + 32) sourceIdentifier];
  [v4 bindNamedParam:":sourceId" toNSString:v6];
}

uint64_t __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isNullForColumnName:"firstPassOfTimelineFilters" table:0] & 1) == 0)
  {
    v4 = [v3 getInt64ForColumnName:"firstPassOfTimelineFilters" table:0];
    v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = MEMORY[0x1E69C5DD0];

  return *v8;
}

uint64_t __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)insertOrIgnoreProactiveStackRotationRecord:(id)record
{
  recordCopy = record;
  v5 = os_transaction_create();
  intent = [recordCopy intent];

  if (intent && (v7 = objc_autoreleasePoolPush(), v8 = MEMORY[0x1E696ACC8], [recordCopy intent], v9 = objc_claimAutoreleasedReturnValue(), v26 = 0, objc_msgSend(v8, "archivedDataWithRootObject:requiringSecureCoding:error:", v9, 1, &v26), intent = objc_claimAutoreleasedReturnValue(), v10 = v26, v9, objc_autoreleasePoolPop(v7), v10))
  {
    v11 = __atxlog_handle_gi();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationStore insertOrIgnoreProactiveStackRotationRecord:recordCopy];
    }

    v12 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    db = self->_db;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__ATXInformationStore_insertOrIgnoreProactiveStackRotationRecord___block_invoke;
    v19[3] = &unk_1E80C4EC0;
    v20 = recordCopy;
    intent = intent;
    v21 = intent;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__ATXInformationStore_insertOrIgnoreProactiveStackRotationRecord___block_invoke_2;
    v16[3] = &unk_1E80C4DD0;
    v17 = v20;
    v18 = &v22;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT OR IGNORE INTO proactiveStackRotations (suggestionId onPrep:criterion onRow:widgetBundleId onError:widgetKind, intentHash, intent, isStalenessRotation, rotationTimestamp, relevancyDurationLimit, coolDownTimeInterval, clientModelId) VALUES (:suggestionId, :criterion, :widgetBundleId, :widgetKind, :intentHash, :intent, :isStalenessRotation, :rotationTimestamp, :relevancyDurationLimit, :coolDownTimeInterval, :clientModelId)", v19, 0, v16];
    v14 = objc_opt_self();
    v12 = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
  }

  return v12 & 1;
}

void __66__ATXInformationStore_insertOrIgnoreProactiveStackRotationRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 infoSuggestionId];
  [v4 bindNamedParam:":suggestionId" toNSString:v5];

  v6 = [*(a1 + 32) criterion];
  [v4 bindNamedParam:":criterion" toNSString:v6];

  v7 = [*(a1 + 32) extensionBundleId];
  [v4 bindNamedParam:":widgetBundleId" toNSString:v7];

  v8 = [*(a1 + 32) widgetKind];
  [v4 bindNamedParam:":widgetKind" toNSString:v8];

  v9 = [*(a1 + 32) intent];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(v9, "atx_indexingHash")}];

  [v4 bindNamedParam:":intent" toNSData:*(a1 + 40)];
  [v4 bindNamedParam:":isStalenessRotation" toInteger:{objc_msgSend(*(a1 + 32), "isStalenessRotation")}];
  v10 = [*(a1 + 32) rotationDate];
  [v10 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":rotationTimestamp" toInt64:v11];

  [*(a1 + 32) durationLimit];
  [v4 bindNamedParam:":relevancyDurationLimit" toInt64:v12];
  [*(a1 + 32) coolDownInterval];
  [v4 bindNamedParam:":coolDownTimeInterval" toInt64:v13];
  v14 = [*(a1 + 32) clientModelId];
  [v4 bindNamedParam:":clientModelId" toNSString:v14];
}

uint64_t __66__ATXInformationStore_insertOrIgnoreProactiveStackRotationRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __66__ATXInformationStore_insertOrIgnoreProactiveStackRotationRecord___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)mostRecentRotationRecordForWidget:(id)widget kind:(id)kind intent:(id)intent considerStalenessRotation:(BOOL)rotation filterByClientModelId:(id)id
{
  rotationCopy = rotation;
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  idCopy = id;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__16;
  v40 = __Block_byref_object_dispose__16;
  v41 = 0;
  if (rotationCopy)
  {
    v16 = @"SELECT suggestionId, criterion, isStalenessRotation, rotationTimestamp, relevancyDurationLimit, coolDownTimeInterval, clientModelId FROM proactiveStackRotations WHERE widgetBundleId = :widgetBundleId AND widgetKind = :widgetKind AND intentHash = :intentHash ORDER BY rotationTimestamp DESC LIMIT 1";
  }

  else
  {
    v16 = @"SELECT suggestionId, criterion, isStalenessRotation, rotationTimestamp, relevancyDurationLimit, coolDownTimeInterval, clientModelId FROM proactiveStackRotations WHERE widgetBundleId = :widgetBundleId AND widgetKind = :widgetKind AND intentHash = :intentHash AND isStalenessRotation = 0 ORDER BY rotationTimestamp DESC LIMIT 1";
  }

  db = self->_db;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke;
  v32[3] = &unk_1E80C4F10;
  v33 = widgetCopy;
  v34 = kindCopy;
  v35 = intentCopy;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke_2;
  v26[3] = &unk_1E80C4F38;
  v18 = idCopy;
  v27 = v18;
  v31 = &v36;
  v28 = v33;
  v19 = v34;
  v29 = v19;
  v20 = v35;
  v30 = v20;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke_3;
  v24[3] = &unk_1E80C4D88;
  v21 = v28;
  v25 = v21;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v16 onPrep:v32 onRow:v26 onError:v24];
  v22 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v22;
}

void __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":widgetBundleId" toNSString:v3];
  [v4 bindNamedParam:":widgetKind" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 48), "atx_indexingHash")}];
}

uint64_t __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"clientModelId" table:0];
  v5 = v4;
  if (!a1[4] || [v4 isEqualToString:?])
  {
    v6 = [v3 getNSStringForColumnName:"suggestionId" table:0];
    v7 = [v3 getNSStringForColumnName:"criterion" table:0];
    v8 = [v3 getIntegerForColumnName:"isStalenessRotation" table:0] > 0;
    v9 = MEMORY[0x1E695DF00];
    [v3 getDoubleForColumnName:"rotationTimestamp" table:0];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    LOBYTE(v16) = v8;
    v11 = -[ATXStackRotationRecord initWithInfoSuggestionId:clientModelId:criterion:widget:kind:intent:isStalenessRotation:rotationDate:durationLimit:coolDownInterval:]([ATXStackRotationRecord alloc], "initWithInfoSuggestionId:clientModelId:criterion:widget:kind:intent:isStalenessRotation:rotationDate:durationLimit:coolDownInterval:", v6, v5, v7, a1[5], a1[6], a1[7], [v3 getInt64ForColumnName:"relevancyDurationLimit" table:0], objc_msgSend(v3, "getInt64ForColumnName:table:", "coolDownTimeInterval", 0), v16, v10);
    v12 = *(a1[8] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = MEMORY[0x1E69C5DD0];

  return *v14;
}

uint64_t __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)mostRecentRotationRecordForSuggestionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16;
  v20 = __Block_byref_object_dispose__16;
  v21 = 0;
  db = self->_db;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__ATXInformationStore_mostRecentRotationRecordForSuggestionIdentifier___block_invoke;
  v14[3] = &unk_1E80C4CC8;
  v15 = identifierCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__ATXInformationStore_mostRecentRotationRecordForSuggestionIdentifier___block_invoke_2;
  v11[3] = &unk_1E80C4F60;
  v13 = &v16;
  v12 = v15;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ATXInformationStore_mostRecentRotationRecordForSuggestionIdentifier___block_invoke_3;
  v9[3] = &unk_1E80C4D88;
  v6 = v12;
  v10 = v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT widgetBundleId onPrep:widgetKind onRow:criterion onError:isStalenessRotation, rotationTimestamp, relevancyDurationLimit, coolDownTimeInterval, clientModelId FROM proactiveStackRotations WHERE suggestionId = :suggestionId", v14, v11, v9];
  v7 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v7;
}

uint64_t __71__ATXInformationStore_mostRecentRotationRecordForSuggestionIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"widgetBundleId" table:0];
  v5 = [v3 getNSStringForColumnName:"widgetKind" table:0];
  v6 = [v3 getNSStringForColumnName:"criterion" table:0];
  v7 = [v3 getIntegerForColumnName:"isStalenessRotation" table:0] > 0;
  v8 = MEMORY[0x1E695DF00];
  [v3 getDoubleForColumnName:"rotationTimestamp" table:0];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [v3 getInt64ForColumnName:"relevancyDurationLimit" table:0];
  v11 = [v3 getInt64ForColumnName:"coolDownTimeInterval" table:0];
  v12 = [v3 getNSStringForColumnName:"clientModelId" table:0];

  LOBYTE(v18) = v7;
  v13 = [[ATXStackRotationRecord alloc] initWithInfoSuggestionId:*(a1 + 32) clientModelId:v12 criterion:v6 widget:v4 kind:v5 intent:0 isStalenessRotation:v10 rotationDate:v11 durationLimit:v18 coolDownInterval:v9];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = MEMORY[0x1E69C5DD0];
  return *v16;
}

uint64_t __71__ATXInformationStore_mostRecentRotationRecordForSuggestionIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXInformationStore_mostRecentRotationRecordForSuggestionIdentifier___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)nextImportantDateAmongTimelineInducedProactiveStackRotationRecords
{
  v3 = [MEMORY[0x1E69C5BB8] clientModelIdFromClientModelType:19];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v8 = v7;

  v20 = v8;
  db = self->_db;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke;
  v14[3] = &unk_1E80C4F88;
  v16 = v5;
  v10 = v3;
  v15 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke_2;
  v13[3] = &unk_1E80C4FB0;
  v13[5] = v5;
  v13[4] = &v17;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT rotationTimestamp + relevancyDurationLimit onPrep:rotationTimestamp + coolDownTimeInterval FROM proactiveStackRotations WHERE isStalenessRotation = 0 AND clientModelId = :timelineClientModelId AND (rotationTimestamp + relevancyDurationLimit > :now OR rotationTimestamp + coolDownTimeInterval > :now)" onRow:v14 onError:v13, &__block_literal_global_509];
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v18[3]];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":now" toInt64:v3];
  [v4 bindNamedParam:":timelineClientModelId" toNSString:*(a1 + 32)];
}

uint64_t __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumn:0];
  v5 = [v3 getInt64ForColumn:1];

  v6 = *(a1 + 40);
  if (v6 < v4 || (v4 = v5, v6 < v5))
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    if (v8 >= v4)
    {
      v8 = v4;
    }

    *(v7 + 24) = v8;
  }

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)rotationExistsForSuggestionWithId:(id)id considerStalenessRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  idCopy = id;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (rotationCopy)
  {
    v7 = @"SELECT rotationTimestamp FROM proactiveStackRotations WHERE suggestionId = :suggestionId";
  }

  else
  {
    v7 = @"SELECT rotationTimestamp FROM proactiveStackRotations WHERE suggestionId = :suggestionId AND isStalenessRotation = 0";
  }

  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__ATXInformationStore_rotationExistsForSuggestionWithId_considerStalenessRotation___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v9 = idCopy;
  v13 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__ATXInformationStore_rotationExistsForSuggestionWithId_considerStalenessRotation___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v7 onPrep:v12 onRow:v11 onError:&__block_literal_global_517];
  LOBYTE(db) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return db;
}

uint64_t __83__ATXInformationStore_rotationExistsForSuggestionWithId_considerStalenessRotation___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)didSuggestionReachDurationLimit:(id)limit
{
  limitCopy = limit;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ATXInformationStore_didSuggestionReachDurationLimit___block_invoke;
  v9[3] = &unk_1E80C4CC8;
  v6 = limitCopy;
  v10 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ATXInformationStore_didSuggestionReachDurationLimit___block_invoke_2;
  v8[3] = &unk_1E80C4D40;
  v8[4] = &v11;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT rotationTimestamp onPrep:relevancyDurationLimit FROM proactiveStackRotations WHERE suggestionId = :suggestionId AND isStalenessRotation = 0" onRow:v9 onError:v8, &__block_literal_global_522];
  LOBYTE(db) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return db;
}

uint64_t __55__ATXInformationStore_didSuggestionReachDurationLimit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumn:0];
  v5 = [v3 getInt64ForColumn:1];

  if ((v5 & 0x8000000000000000) == 0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v6 - v4 > v5)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __55__ATXInformationStore_didSuggestionReachDurationLimit___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __89__ATXInformationStore_nextImportantDateAmongTimelineInducedProactiveStackRotationRecords__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)proactiveRotationsForWidgetInThePastDay:(id)day kind:(id)kind intent:(id)intent filterByClientModelId:(id)id
{
  dayCopy = day;
  kindCopy = kind;
  intentCopy = intent;
  idCopy = id;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__16;
  v37 = __Block_byref_object_dispose__16;
  v38 = objc_opt_new();
  db = self->_db;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke;
  v29[3] = &unk_1E80C4F10;
  v30 = dayCopy;
  v31 = kindCopy;
  v32 = intentCopy;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke_2;
  v23[3] = &unk_1E80C4FD8;
  v15 = idCopy;
  v24 = v15;
  v25 = v30;
  v16 = v31;
  v26 = v16;
  v17 = v32;
  v27 = v17;
  v28 = &v33;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke_3;
  v21[3] = &unk_1E80C4D88;
  v18 = v25;
  v22 = v18;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT suggestionId onPrep:criterion onRow:isStalenessRotation onError:rotationTimestamp, relevancyDurationLimit, coolDownTimeInterval, clientModelId FROM proactiveStackRotations WHERE widgetBundleId = :widgetBundleId AND widgetKind = :widgetKind AND intentHash = :intentHash AND isStalenessRotation = 0 AND :now - rotationTimestamp < :time_window ORDER BY rotationTimestamp", v29, v23, v21];
  v19 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v19;
}

void __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":widgetBundleId" toNSString:v3];
  [v5 bindNamedParam:":widgetKind" toNSString:*(a1 + 40)];
  [v5 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 48), "atx_indexingHash")}];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v5 bindNamedParam:":now" toInt64:v4];
  [v5 bindNamedParam:":time_window" toInt64:86400];
}

uint64_t __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"clientModelId" table:0];
  v5 = v4;
  if (!a1[4] || [v4 isEqualToString:?])
  {
    v6 = [v3 getNSStringForColumnName:"suggestionId" table:0];
    v7 = [v3 getNSStringForColumnName:"criterion" table:0];
    v8 = MEMORY[0x1E695DF00];
    [v3 getDoubleForColumnName:"rotationTimestamp" table:0];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    LOBYTE(v13) = 0;
    v10 = -[ATXStackRotationRecord initWithInfoSuggestionId:clientModelId:criterion:widget:kind:intent:isStalenessRotation:rotationDate:durationLimit:coolDownInterval:]([ATXStackRotationRecord alloc], "initWithInfoSuggestionId:clientModelId:criterion:widget:kind:intent:isStalenessRotation:rotationDate:durationLimit:coolDownInterval:", v6, v5, v7, a1[5], a1[6], a1[7], [v3 getInt64ForColumnName:"relevancyDurationLimit" table:0], objc_msgSend(v3, "getInt64ForColumnName:table:", "coolDownTimeInterval", 0), v13, v9);
    [*(*(a1[8] + 8) + 40) addObject:v10];
  }

  v11 = MEMORY[0x1E69C5DD0];

  return *v11;
}

uint64_t __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)deleteExpiredProactiveStackRotations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__ATXInformationStore_deleteExpiredProactiveStackRotations__block_invoke_2;
  v5[3] = &unk_1E80C4D18;
  v5[4] = &v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM proactiveStackRotations WHERE :now - rotationTimestamp > :quota_window AND :now - rotationTimestamp > coolDownTimeInterval" onPrep:&__block_literal_global_531 onRow:0 onError:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__ATXInformationStore_deleteExpiredProactiveStackRotations__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":now" toInt64:v3];
  [v4 bindNamedParam:":quota_window" toInt64:86400];
}

uint64_t __59__ATXInformationStore_deleteExpiredProactiveStackRotations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __47__ATXInformationStore_deleteExpiredSuggestions__block_invoke_2_458_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)recordUserRemovalOfSuggestedWidget:(id)widget kind:(id)kind intent:(id)intent atDate:(id)date duration:(double)duration
{
  v51 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  if (v16 <= 0.0)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    db = self->_db;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __86__ATXInformationStore_recordUserRemovalOfSuggestedWidget_kind_intent_atDate_duration___block_invoke;
    v31[3] = &unk_1E80C5000;
    v32 = widgetCopy;
    v33 = kindCopy;
    v34 = intentCopy;
    v35 = dateCopy;
    durationCopy = duration;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __86__ATXInformationStore_recordUserRemovalOfSuggestedWidget_kind_intent_atDate_duration___block_invoke_2;
    v26[3] = &unk_1E80C5028;
    v20 = v32;
    v27 = v20;
    v21 = v33;
    v28 = v21;
    v22 = v34;
    v29 = v22;
    v30 = &v37;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO widgetSuggestionDismiss (extensionBundleId onPrep:kind onRow:intentHash onError:date, duration) VALUES (:extensionBundleId, :kind, :intentHash, :date, :duration)", v31, 0, v26];
    v23 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v38 + 24);
      *buf = 138413058;
      v42 = v20;
      v43 = 2112;
      v44 = v21;
      v45 = 2112;
      v46 = v22;
      v47 = 1024;
      LODWORD(v48) = v24;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "ATXInformationStore: Writing user removal of suggested widget (extBundleId %@, kind %@, intent %@) - is successful: %{BOOL}d", buf, 0x26u);
    }

    v18 = *(v38 + 24);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v17 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v42 = widgetCopy;
      v43 = 2112;
      v44 = kindCopy;
      v45 = 2112;
      v46 = intentCopy;
      v47 = 2112;
      v48 = dateCopy;
      v49 = 2048;
      durationCopy2 = duration;
      _os_log_error_impl(&dword_1BF549000, v17, OS_LOG_TYPE_ERROR, "ATXInformationStore: Received call to write user removal of suggested widget with a date in the future! (extBundleId %@, kind %@, intent %@, date %@, duration %f)", buf, 0x34u);
    }

    v18 = 0;
  }

  return v18 & 1;
}

void __86__ATXInformationStore_recordUserRemovalOfSuggestedWidget_kind_intent_atDate_duration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v4 bindNamedParam:":kind" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 48), "atx_indexingHash")}];
  [*(a1 + 56) timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":date" toDouble:?];
  if (*(a1 + 64) == 0.0)
  {
    [v4 bindNamedParamToNull:":duration"];
  }

  else
  {
    [v4 bindNamedParam:":duration" toDouble:?];
  }
}

uint64_t __86__ATXInformationStore_recordUserRemovalOfSuggestedWidget_kind_intent_atDate_duration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __86__ATXInformationStore_recordUserRemovalOfSuggestedWidget_kind_intent_atDate_duration___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)_dateIntervalFromDismissStatement:(id)statement
{
  statementCopy = statement;
  v4 = MEMORY[0x1E695DF00];
  [statementCopy getDoubleForColumnName:"date" table:0];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  if (([statementCopy isNullForColumnName:"duration" table:0] & 1) == 0)
  {
    [statementCopy getDoubleForColumnName:"duration" table:0];
    v7 = [v5 dateByAddingTimeInterval:?];

    distantFuture = v7;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:distantFuture];

  return v8;
}

- (id)dateIntervalsOfUserRemovalOfSuggestedWidget:(id)widget kind:(id)kind intent:(id)intent
{
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = objc_opt_new();
  db = self->_db;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke;
  v23[3] = &unk_1E80C4F10;
  v24 = widgetCopy;
  v25 = kindCopy;
  v26 = intentCopy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke_2;
  v22[3] = &unk_1E80C4F60;
  v22[4] = self;
  v22[5] = &v27;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke_3;
  v17[3] = &unk_1E80C5028;
  v12 = v24;
  v18 = v12;
  v13 = v25;
  v19 = v13;
  v14 = v26;
  v20 = v14;
  v21 = &v27;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date onPrep:duration FROM widgetSuggestionDismiss WHERE extensionBundleId = :extensionBundleId AND kind = :kind AND intentHash = :intentHash ORDER BY date ASC" onRow:v23 onError:v22, v17];
  v15 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v15;
}

void __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v4 bindNamedParam:":kind" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 48), "atx_indexingHash")}];
}

uint64_t __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(a1 + 32) _dateIntervalFromDismissStatement:a2];
  [v2 addObject:v3];

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId:(id)id
{
  idCopy = id;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = objc_opt_new();
  db = self->_db;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId___block_invoke;
  v13[3] = &unk_1E80C4CC8;
  v14 = idCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId___block_invoke_2;
  v12[3] = &unk_1E80C4F60;
  v12[4] = self;
  v12[5] = &v15;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId___block_invoke_3;
  v9[3] = &unk_1E80C4DD0;
  v6 = v14;
  v10 = v6;
  v11 = &v15;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date onPrep:duration FROM widgetSuggestionDismiss WHERE extensionBundleId = :extensionBundleId ORDER BY date ASC" onRow:v13 onError:v12, v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

uint64_t __88__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(a1 + 32) _dateIntervalFromDismissStatement:a2];
  [v2 addObject:v3];

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __88__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __88__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent:(id)intent
{
  intentCopy = intent;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = objc_opt_new();
  db = self->_db;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke;
  v13[3] = &unk_1E80C4CC8;
  v14 = intentCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke_2;
  v12[3] = &unk_1E80C4F60;
  v12[4] = self;
  v12[5] = &v15;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke_3;
  v9[3] = &unk_1E80C4DD0;
  v6 = v14;
  v10 = v6;
  v11 = &v15;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date onPrep:duration FROM widgetSuggestionDismiss WHERE intentHash = :intentHash ORDER BY date ASC" onRow:v13 onError:v12, v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":intentHash" toInt64:{objc_msgSend(v2, "atx_indexingHash")}];
}

uint64_t __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(a1 + 32) _dateIntervalFromDismissStatement:a2];
  [v2 addObject:v3];

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (BOOL)clearWidgetRemovalHistoryOlderThan:(id)than
{
  thanCopy = than;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  db = self->_db;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ATXInformationStore_clearWidgetRemovalHistoryOlderThan___block_invoke;
  v9[3] = &unk_1E80C4CC8;
  v6 = thanCopy;
  v10 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ATXInformationStore_clearWidgetRemovalHistoryOlderThan___block_invoke_2;
  v8[3] = &unk_1E80C4D18;
  v8[4] = &v11;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM widgetSuggestionDismiss WHERE date < :date" onPrep:v9 onRow:0 onError:v8];
  LOBYTE(db) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return db;
}

void __58__ATXInformationStore_clearWidgetRemovalHistoryOlderThan___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v3 bindNamedParam:":date" toDouble:?];
}

uint64_t __58__ATXInformationStore_clearWidgetRemovalHistoryOlderThan___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __58__ATXInformationStore_clearWidgetRemovalHistoryOlderThan___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)widgetSuggestionRemovalRecordsForDiagnostics
{
  v3 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ATXInformationStore_widgetSuggestionRemovalRecordsForDiagnostics__block_invoke;
  v7[3] = &unk_1E80C5050;
  v5 = v3;
  v8 = v5;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT * FROM widgetSuggestionDismiss" onPrep:0 onRow:v7 onError:&__block_literal_global_577];

  return v5;
}

uint64_t __67__ATXInformationStore_widgetSuggestionRemovalRecordsForDiagnostics__block_invoke(uint64_t a1, void *a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"extensionBundleId" table:0];
  v5 = [v3 getNSStringForColumnName:"kind" table:0];
  [v3 getDoubleForColumnName:"date" table:0];
  v7 = v6;
  [v3 getDoubleForColumnName:"duration" table:0];
  v9 = v8;

  v10 = *(a1 + 32);
  v11 = @"<missing>";
  v17[0] = @"bundleId";
  v17[1] = @"kind";
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = @"<missing>";
  }

  if (v5)
  {
    v11 = v5;
  }

  v18[0] = v12;
  v18[1] = v11;
  v17[2] = @"date";
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v18[2] = v13;
  v17[3] = @"duration";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [v10 addObject:v15];

  return *MEMORY[0x1E69C5DD0];
}

- (id)readAllDismissRecords
{
  v3 = os_transaction_create();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = objc_opt_new();
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__ATXInformationStore_readAllDismissRecords__block_invoke;
  v12[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v12[4] = v5;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM dismissRecords WHERE blockWidgetUntil < :widgetCutoff AND blockCriterionUntil < :criterionCutoff" onPrep:v12 onRow:0 onError:&__block_literal_global_585];
  v6 = self->_db;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__ATXInformationStore_readAllDismissRecords__block_invoke_589;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v13;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__ATXInformationStore_readAllDismissRecords__block_invoke_2_591;
  v10[3] = &unk_1E80C4D18;
  v10[4] = &v13;
  [(_PASSqliteDatabase *)v6 prepAndRunQuery:@"SELECT widgetBundleId onPrep:criterion onRow:blockWidgetUntil onError:blockCriterionUntil FROM dismissRecords", 0, v11, v10];
  v7 = objc_opt_self();
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __44__ATXInformationStore_readAllDismissRecords__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":widgetCutoff" toInt64:v3];
  [v4 bindNamedParam:":criterionCutoff" toInt64:*(a1 + 32)];
}

uint64_t __44__ATXInformationStore_readAllDismissRecords__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __44__ATXInformationStore_readAllDismissRecords__block_invoke_2_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

uint64_t __44__ATXInformationStore_readAllDismissRecords__block_invoke_589(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v4 = [ATXInformationDismissRecord alloc];
  v5 = [v3 getNSStringForColumn:0];
  v6 = [v3 getNSStringForColumn:1];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 2)}];
  v8 = MEMORY[0x1E695DF00];
  v9 = [v3 getInt64ForColumn:3];

  v10 = [v8 dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [(ATXInformationDismissRecord *)v4 initWithWidgetBundleId:v5 criterion:v6 blockWidgetUntilDate:v7 blockCriterionUntilDate:v10];
  [v2 addObject:v11];

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __44__ATXInformationStore_readAllDismissRecords__block_invoke_2_591(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __44__ATXInformationStore_readAllDismissRecords__block_invoke_2_591_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (BOOL)appendDismissRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v5 = os_transaction_create();
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    db = self->_db;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__ATXInformationStore_appendDismissRecord___block_invoke;
    v13[3] = &unk_1E80C4CC8;
    v14 = recordCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__ATXInformationStore_appendDismissRecord___block_invoke_2;
    v10[3] = &unk_1E80C4DD0;
    v11 = v14;
    v12 = &v15;
    [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO dismissRecords (widgetBundleId onPrep:criterion onRow:blockWidgetUntil onError:blockCriterionUntil) VALUES (:widgetBundleId, :criterion, :blockWidgetUntil, :blockCriterionUntil)", v13, 0, v10];
    v7 = objc_opt_self();
    v8 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __43__ATXInformationStore_appendDismissRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 widgetBundleId];
  [v4 bindNamedParam:":widgetBundleId" toNSString:v5];

  v6 = [*(a1 + 32) criterion];
  [v4 bindNamedParam:":criterion" toNSString:v6];

  v7 = [*(a1 + 32) blockWidgetUntilDate];
  [v7 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":blockWidgetUntil" toInt64:v8];

  v10 = [*(a1 + 32) blockCriterionUntilDate];
  [v10 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":blockCriterionUntil" toInt64:v9];
}

uint64_t __43__ATXInformationStore_appendDismissRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __43__ATXInformationStore_appendDismissRecord___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)mostRecentTimelineEntryWithScoreForWidget:(id)widget kind:(id)kind family:(int64_t)family intentIndexingHash:(int64_t)hash
{
  widgetCopy = widget;
  kindCopy = kind;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__16;
  v30 = __Block_byref_object_dispose__16;
  v31 = 0;
  db = self->_db;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke;
  v21[3] = &unk_1E80C5078;
  v22 = widgetCopy;
  v23 = kindCopy;
  familyCopy = family;
  hashCopy = hash;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke_2;
  v20[3] = &unk_1E80C4D40;
  v20[4] = &v26;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke_3;
  v17[3] = &unk_1E80C50A0;
  v13 = v22;
  v18 = v13;
  v14 = v23;
  v19 = v14;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT timestamp onPrep:score onRow:duration FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND widgetFamily = :widgetFamily AND intentHash = :intentHash AND timestamp <= :now AND score IS NOT NULL ORDER BY timestamp DESC LIMIT 1" onError:v21, v20, v17];
  v15 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v15;
}

void __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  [v5 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v5 bindNamedParam:":widgetKind" toNSString:a1[5]];
  [v5 bindNamedParam:":widgetFamily" toInt64:a1[6]];
  [v5 bindNamedParam:":intentHash" toInt64:a1[7]];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v5 bindNamedParam:":now" toInt64:v4];
}

uint64_t __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"timestamp" table:0];
  [v3 getDoubleForColumnName:"score" table:0];
  v6 = v5;
  [v3 getDoubleForColumnName:"duration" table:0];
  v8 = v7;

  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v4];
  v10 = [MEMORY[0x1E69C5BA0] relevanceWithScore:v6 duration:v8];
  v11 = [MEMORY[0x1E69C5B98] entryWithDate:v9 relevance:v10];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = MEMORY[0x1E69C5DD8];
  return *v14;
}

uint64_t __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget:(id)widget kind:(id)kind familyMask:(unint64_t)mask intent:(id)intent
{
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  db = self->_db;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke;
  v30[3] = &unk_1E80C50C8;
  v31 = widgetCopy;
  v32 = kindCopy;
  v16 = intentCopy;
  v33 = v16;
  v34 = v14;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke_2;
  v29[3] = &unk_1E80C50F0;
  v29[6] = v14;
  v29[4] = &v35;
  v29[5] = mask;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke_3;
  v25 = &unk_1E80C5118;
  v28 = &v35;
  v17 = v31;
  v26 = v17;
  v18 = v32;
  v27 = v18;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT timestamp onPrep:duration onRow:widgetFamily FROM timelineDonations WHERE score = 0 AND extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND intentHash = :intentHash AND timestamp + duration > :now" onError:v30, v29, &v22];
  if (v36[3] == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E695DF00]);
    v20 = [v19 initWithTimeIntervalSinceReferenceDate:{v36[3], v22, v23, v24, v25, v26}];
  }

  _Block_object_dispose(&v35, 8);

  return v20;
}

void __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v4 bindNamedParam:":widgetKind" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 48), "atx_indexingHash")}];
  [v4 bindNamedParam:":now" toInt64:*(a1 + 56)];
}

uint64_t __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 getInt64ForColumnName:"widgetFamily" table:0];
  if (CHSWidgetFamilyMaskContainsFamily())
  {
    v4 = [v3 getInt64ForColumnName:"timestamp" table:0];
    [v3 getDoubleForColumnName:"duration" table:0];
    if (*(a1 + 48) <= v4)
    {
      v5 = -0.0;
    }

    v6 = v5 + v4;
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    if (v8 == 0.0 || v6 < v8)
    {
      *(v7 + 24) = v6;
    }
  }

  v10 = MEMORY[0x1E69C5DD0];

  return *v10;
}

uint64_t __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke_3_cold_1();
  }

  v5 = MEMORY[0x1E69C5DD8];
  return *v5;
}

- (id)recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget:(id)widget kind:(id)kind family:(int64_t)family intent:(id)intent
{
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__16;
  v32 = __Block_byref_object_dispose__16;
  v33 = objc_opt_new();
  atx_indexingHash = [intentCopy atx_indexingHash];
  db = self->_db;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke;
  v24[3] = &unk_1E80C5140;
  v25 = widgetCopy;
  v26 = kindCopy;
  familyCopy = family;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke_2;
  v23[3] = &unk_1E80C4FB0;
  v23[4] = &v28;
  v23[5] = atx_indexingHash;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke_3;
  v19[3] = &unk_1E80C4EE8;
  v15 = v25;
  v20 = v15;
  v16 = v26;
  v21 = v16;
  v22 = &v28;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT timestamp onPrep:score onRow:duration onError:intentHash FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND widgetFamily = :widgetFamily AND score IS NOT NULL ORDER BY score DESC", v24, v23, v19];
  v17 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v17;
}

void __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v4 bindNamedParam:":widgetKind" toNSString:a1[5]];
  [v4 bindNamedParam:":widgetFamily" toInt64:a1[6]];
}

uint64_t __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"intentHash" table:0];
  if (!v4 || v4 == *(a1 + 40))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = MEMORY[0x1E69C5B98];
    v7 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 0)}];
    v8 = MEMORY[0x1E69C5BA0];
    [v3 getDoubleForColumn:1];
    v10 = v9;
    [v3 getDoubleForColumn:2];
    v12 = [v8 relevanceWithScore:v10 duration:v11];
    v13 = [v6 entryWithDate:v7 relevance:v12];
    [v5 addObject:v13];
  }

  v14 = MEMORY[0x1E69C5DD0];

  return *v14;
}

uint64_t __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)mostRecentTimelineUpdateDateOfWidget:(id)widget kind:(id)kind
{
  widgetCopy = widget;
  kindCopy = kind;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  db = self->_db;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ATXInformationStore_mostRecentTimelineUpdateDateOfWidget_kind___block_invoke;
  v14[3] = &unk_1E80C4EC0;
  v9 = widgetCopy;
  v15 = v9;
  v10 = kindCopy;
  v16 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__ATXInformationStore_mostRecentTimelineUpdateDateOfWidget_kind___block_invoke_2;
  v13[3] = &unk_1E80C4D40;
  v13[4] = &v17;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT timestamp FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND timestamp <= :now ORDER BY timestamp DESC LIMIT 1" onPrep:v14 onRow:v13 onError:&__block_literal_global_618];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __65__ATXInformationStore_mostRecentTimelineUpdateDateOfWidget_kind___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v5 bindNamedParam:":widgetKind" toNSString:*(a1 + 40)];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v5 bindNamedParam:":now" toInt64:v4];
}

uint64_t __65__ATXInformationStore_mostRecentTimelineUpdateDateOfWidget_kind___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getInt64ForColumn:0];

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __65__ATXInformationStore_mostRecentTimelineUpdateDateOfWidget_kind___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __65__ATXInformationStore_mostRecentTimelineUpdateDateOfWidget_kind___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)_insertTimelineEntries:(id)entries forWidget:(id)widget storageLimit:(unint64_t)limit
{
  entriesCopy = entries;
  widgetCopy = widget;
  v10 = MEMORY[0x1E69C5D90];
  db = self->_db;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke;
  v15[3] = &unk_1E80C5168;
  v16 = widgetCopy;
  v17 = entriesCopy;
  limitCopy = limit;
  v12 = entriesCopy;
  v13 = widgetCopy;
  LOBYTE(db) = ([v10 writeTransactionWithHandle:db failableBlock:v15] & 1) == 0;

  return db;
}

uint64_t __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v3 = [v16 db];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2;
  v33[3] = &unk_1E80C4CC8;
  v34 = *(a1 + 32);
  [v3 prepAndRunQuery:@"DELETE FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND widgetFamily = :widgetFamily AND intentHash = :intentHash AND timestamp > :now" onPrep:v33 onRow:0 onError:&__block_literal_global_623];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v5)
  {
    v6 = *v26;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [v16 db];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_627;
        v23[3] = &unk_1E80C4EC0;
        v23[4] = v8;
        v24 = *(a1 + 32);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2_632;
        v20[3] = &unk_1E80C4DD0;
        v21 = *(a1 + 32);
        v22 = &v29;
        [v9 prepAndRunQuery:@"INSERT OR REPLACE INTO timelineDonations (timestamp onPrep:score onRow:duration onError:{extensionBundleId, containerBundleIdentifier, widgetKind, widgetFamily, intentHash, suggestionId, suggestionMappingReason) VALUES (:timestamp, :score, :duration, :extensionBundleId, :containerBundleIdentifier, :widgetKind, :widgetFamily, :intentHash, :suggestionId, :suggestionMappingReason)", v23, 0, v20}];

        LOBYTE(v8) = *(v30 + 24);
        if (v8)
        {
          v13 = MEMORY[0x1E69C5DC8];
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = [v16 db];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_636;
  v17[3] = &unk_1E80C4F88;
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v18 = v11;
  v19 = v12;
  [v10 prepAndRunQuery:@"DELETE FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND widgetFamily = :widgetFamily AND intentHash = :intentHash ORDER BY timestamp DESC LIMIT -1 OFFSET :offset" onPrep:v17 onRow:0 onError:&__block_literal_global_640];

  v13 = MEMORY[0x1E69C5DC0];
  v4 = v18;
LABEL_11:
  v14 = *v13;

  _Block_object_dispose(&v29, 8);
  return v14;
}

void __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = a2;
  v4 = [v3 extensionIdentity];
  v5 = [v4 extensionBundleIdentifier];
  [v10 bindNamedParam:":extensionBundleId" toNSString:v5];

  v6 = [*(a1 + 32) kind];
  [v10 bindNamedParam:":widgetKind" toNSString:v6];

  [v10 bindNamedParam:":widgetFamily" toInt64:{objc_msgSend(*(a1 + 32), "family")}];
  v7 = [*(a1 + 32) intentReference];
  v8 = [v7 intent];
  [v10 bindNamedParam:":intentHash" toInt64:{objc_msgSend(v8, "atx_indexingHash")}];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v10 bindNamedParam:":now" toInt64:v9];
}

uint64_t __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

void __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_627(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [*(a1 + 32) timelineEntry];
  v4 = [v3 date];
  [v4 timeIntervalSinceReferenceDate];
  [v20 bindNamedParam:":timestamp" toInt64:v5];

  v6 = [*(a1 + 40) extensionIdentity];
  v7 = [v6 extensionBundleIdentifier];
  [v20 bindNamedParam:":extensionBundleId" toNSString:v7];

  v8 = [*(a1 + 40) kind];
  [v20 bindNamedParam:":widgetKind" toNSString:v8];

  [v20 bindNamedParam:":widgetFamily" toInt64:{objc_msgSend(*(a1 + 40), "family")}];
  v9 = [*(a1 + 40) intentReference];
  v10 = [v9 intent];
  [v20 bindNamedParam:":intentHash" toInt64:{objc_msgSend(v10, "atx_indexingHash")}];

  v11 = [*(a1 + 40) extensionIdentity];
  v12 = [v11 containerBundleIdentifier];
  [v20 bindNamedParam:":containerBundleIdentifier" toNSString:v12];

  v13 = [*(a1 + 32) suggestionId];
  [v20 bindNamedParam:":suggestionId" toNSString:v13];

  [v20 bindNamedParam:":suggestionMappingReason" toInt64:{objc_msgSend(*(a1 + 32), "suggestionMappingReason")}];
  v14 = [*(a1 + 32) timelineEntry];
  v15 = [v14 relevance];

  if (v15)
  {
    v16 = [*(a1 + 32) timelineEntry];
    v17 = [v16 relevance];
    [v17 score];
    [v20 bindNamedParam:":score" toDouble:?];

    v18 = [*(a1 + 32) timelineEntry];
    v19 = [v18 relevance];
    [v19 duration];
    [v20 bindNamedParam:":duration" toDouble:?];
  }

  else
  {
    [v20 bindNamedParamToNull:":score"];
    [v20 bindNamedParamToNull:":duration"];
  }
}

uint64_t __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2_632(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2_632_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

void __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_636(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 extensionIdentity];
  v5 = [v4 extensionBundleIdentifier];
  [v9 bindNamedParam:":extensionBundleId" toNSString:v5];

  v6 = [*(a1 + 32) kind];
  [v9 bindNamedParam:":widgetKind" toNSString:v6];

  [v9 bindNamedParam:":widgetFamily" toInt64:{objc_msgSend(*(a1 + 32), "family")}];
  v7 = [*(a1 + 32) intentReference];
  v8 = [v7 intent];
  [v9 bindNamedParam:":intentHash" toInt64:{objc_msgSend(v8, "atx_indexingHash")}];

  [v9 bindNamedParam:":offset" toInteger:*(a1 + 40)];
}

uint64_t __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2_638(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2_638_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)pruneTimelineEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__ATXInformationStore_pruneTimelineEntries__block_invoke_647;
  v5[3] = &unk_1E80C4D18;
  v5[4] = &v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM timelineDonations WHERE (timestamp IS NULL OR timestamp < :timelineRelevanceDonationExpiredTimestamp)" onPrep:&__block_literal_global_645 onRow:0 onError:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__ATXInformationStore_pruneTimelineEntries__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 dateWithTimeIntervalSinceNow:-7776000.0];
  v5 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXInformationStore: Deleting all timeline donations older than: %@", &v7, 0xCu);
  }

  [v4 timeIntervalSinceReferenceDate];
  [v3 bindNamedParam:":timelineRelevanceDonationExpiredTimestamp" toInt64:v6];
}

uint64_t __43__ATXInformationStore_pruneTimelineEntries__block_invoke_647(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __43__ATXInformationStore_pruneTimelineEntries__block_invoke_647_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

void __46__ATXInformationStore_pruneInvalidSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v5 = [v2 distantFuture];
  [v5 timeIntervalSinceReferenceDate];
  [v3 bindNamedParam:":distantFuture" toInt64:v4];
}

uint64_t __46__ATXInformationStore_pruneInvalidSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __46__ATXInformationStore_pruneInvalidSuggestions__block_invoke_2_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)distinctScoresForWidget:(id)widget kind:(id)kind
{
  widgetCopy = widget;
  kindCopy = kind;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__16;
  v24 = __Block_byref_object_dispose__16;
  v25 = objc_opt_new();
  db = self->_db;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke;
  v17[3] = &unk_1E80C4EC0;
  v18 = widgetCopy;
  v19 = kindCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke_2;
  v16[3] = &unk_1E80C4D40;
  v16[4] = &v20;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke_3;
  v13[3] = &unk_1E80C50A0;
  v9 = v18;
  v14 = v9;
  v10 = v19;
  v15 = v10;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT DISTINCT score FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND score IS NOT NULL ORDER BY score DESC" onPrep:v17 onRow:v16 onError:v13];
  v11 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v4 bindNamedParam:":widgetKind" toNSString:*(a1 + 40)];
}

uint64_t __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = MEMORY[0x1E696AD98];
  [a2 getDoubleForColumn:0];
  v4 = [v3 numberWithDouble:?];
  [v2 addObject:v4];

  return *MEMORY[0x1E69C5DD0];
}

uint64_t __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)clearOutdatedWidgetEngagements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ATXInformationStore_clearOutdatedWidgetEngagements__block_invoke_2;
  v5[3] = &unk_1E80C4D18;
  v5[4] = &v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM widgetEngagements WHERE (date IS NULL OR date < :cutoffTimestamp)" onPrep:&__block_literal_global_663 onRow:0 onError:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __53__ATXInformationStore_clearOutdatedWidgetEngagements__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v5 = [v2 dateWithTimeIntervalSinceNow:-86400.0];
  [v5 timeIntervalSinceReferenceDate];
  [v3 bindNamedParam:":cutoffTimestamp" toInt64:v4];
}

uint64_t __53__ATXInformationStore_clearOutdatedWidgetEngagements__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __53__ATXInformationStore_clearOutdatedWidgetEngagements__block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)addEngagementRecordForWidget:(id)widget date:(id)date engagementType:(int64_t)type
{
  widgetCopy = widget;
  dateCopy = date;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  db = self->_db;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__ATXInformationStore_addEngagementRecordForWidget_date_engagementType___block_invoke;
  v15[3] = &unk_1E80C5140;
  v11 = widgetCopy;
  v16 = v11;
  v12 = dateCopy;
  v17 = v12;
  typeCopy = type;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__ATXInformationStore_addEngagementRecordForWidget_date_engagementType___block_invoke_2;
  v14[3] = &unk_1E80C5190;
  v14[4] = &v19;
  v14[5] = type;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO widgetEngagements (widgetUniqueId onPrep:extensionBundleId onRow:widgetKind onError:size, intentHash, date, engagementType, containerBundleIdentifier) VALUES (:widgetUniqueId, :extensionBundleId, :widgetKind, :size, :intentHash, :date, :engagementType, :containerBundleIdentifier)", v15, 0, v14];
  LOBYTE(type) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return type;
}

void __72__ATXInformationStore_addEngagementRecordForWidget_date_engagementType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 widgetUniqueId];
  [v4 bindNamedParam:":widgetUniqueId" toNSString:v5];

  v6 = [*(a1 + 32) extensionBundleId];
  [v4 bindNamedParam:":extensionBundleId" toNSString:v6];

  v7 = [*(a1 + 32) widgetKind];
  [v4 bindNamedParam:":widgetKind" toNSString:v7];

  [v4 bindNamedParam:":size" toInteger:{objc_msgSend(*(a1 + 32), "size")}];
  v8 = [*(a1 + 32) intent];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(v8, "atx_indexingHash")}];

  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":date" toInt64:v9];
  [v4 bindNamedParam:":engagementType" toInteger:*(a1 + 48)];
  v10 = [*(a1 + 32) appBundleId];
  [v4 bindNamedParam:":containerBundleIdentifier" toNSString:v10];
}

uint64_t __72__ATXInformationStore_addEngagementRecordForWidget_date_engagementType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __72__ATXInformationStore_addEngagementRecordForWidget_date_engagementType___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)mostRecentEngagementOfWidget:(id)widget
{
  widgetCopy = widget;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke;
  v10[3] = &unk_1E80C4CC8;
  v6 = widgetCopy;
  v11 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke_2;
  v9[3] = &unk_1E80C4D40;
  v9[4] = &v12;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date onPrep:engagementType FROM widgetEngagements WHERE widgetUniqueId = :widgetUniqueId ORDER BY date DESC LIMIT 1" onRow:v10 onError:v9, &__block_literal_global_677];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 widgetUniqueId];
  [v3 bindNamedParam:":widgetUniqueId" toNSString:v4];
}

uint64_t __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [[v3 alloc] initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "getIntegerForColumnName:table:", "date", 0)}];
  v6 = [v4 getIntegerForColumnName:"engagementType" table:0];

  v7 = [[ATXWidgetEngagementRecord alloc] initWithDate:v5 type:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = MEMORY[0x1E69C5DD0];
  return *v10;
}

uint64_t __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)mostRecentEngagementOfWidget:(id)widget ofType:(int64_t)type
{
  widgetCopy = widget;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__ATXInformationStore_mostRecentEngagementOfWidget_ofType___block_invoke;
  v12[3] = &unk_1E80C4F88;
  v8 = widgetCopy;
  v13 = v8;
  typeCopy = type;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__ATXInformationStore_mostRecentEngagementOfWidget_ofType___block_invoke_2;
  v11[3] = &unk_1E80C4FB0;
  v11[4] = &v15;
  v11[5] = type;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date FROM widgetEngagements WHERE widgetUniqueId = :widgetUniqueId AND engagementType = :engagementType ORDER BY date DESC LIMIT 1" onPrep:v12 onRow:v11 onError:&__block_literal_global_682];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __59__ATXInformationStore_mostRecentEngagementOfWidget_ofType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 widgetUniqueId];
  [v5 bindNamedParam:":widgetUniqueId" toNSString:v4];

  [v5 bindNamedParam:":engagementType" toInteger:*(a1 + 40)];
}

uint64_t __59__ATXInformationStore_mostRecentEngagementOfWidget_ofType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getIntegerForColumnName:"date" table:0];

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:v6];
  v8 = [[ATXWidgetEngagementRecord alloc] initWithDate:v7 type:*(a1 + 40)];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = MEMORY[0x1E69C5DD0];
  return *v11;
}

uint64_t __59__ATXInformationStore_mostRecentEngagementOfWidget_ofType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)mostRecentEngagementOfWidget:(id)widget kind:(id)kind ofType:(int64_t)type
{
  widgetCopy = widget;
  kindCopy = kind;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__16;
  v24 = __Block_byref_object_dispose__16;
  v25 = 0;
  db = self->_db;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__ATXInformationStore_mostRecentEngagementOfWidget_kind_ofType___block_invoke;
  v16[3] = &unk_1E80C5140;
  v11 = widgetCopy;
  v17 = v11;
  v12 = kindCopy;
  v18 = v12;
  typeCopy = type;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__ATXInformationStore_mostRecentEngagementOfWidget_kind_ofType___block_invoke_2;
  v15[3] = &unk_1E80C4FB0;
  v15[4] = &v20;
  v15[5] = type;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date FROM widgetEngagements WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND engagementType = :engagementType ORDER BY date DESC LIMIT 1" onPrep:v16 onRow:v15 onError:&__block_literal_global_687];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __64__ATXInformationStore_mostRecentEngagementOfWidget_kind_ofType___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v4 bindNamedParam:":widgetKind" toNSString:a1[5]];
  [v4 bindNamedParam:":engagementType" toInteger:a1[6]];
}

uint64_t __64__ATXInformationStore_mostRecentEngagementOfWidget_kind_ofType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getIntegerForColumnName:"date" table:0];

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:v6];
  v8 = [[ATXWidgetEngagementRecord alloc] initWithDate:v7 type:*(a1 + 40)];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = MEMORY[0x1E69C5DD0];
  return *v11;
}

uint64_t __64__ATXInformationStore_mostRecentEngagementOfWidget_kind_ofType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)firstEngagementOfWidget:(id)widget kind:(id)kind intent:(id)intent sinceTimestamp:(id)timestamp
{
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  timestampCopy = timestamp;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = 0;
  db = self->_db;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__ATXInformationStore_firstEngagementOfWidget_kind_intent_sinceTimestamp___block_invoke;
  v22[3] = &unk_1E80C51B8;
  v15 = widgetCopy;
  v23 = v15;
  v16 = kindCopy;
  v24 = v16;
  v17 = intentCopy;
  v25 = v17;
  v18 = timestampCopy;
  v26 = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__ATXInformationStore_firstEngagementOfWidget_kind_intent_sinceTimestamp___block_invoke_2;
  v21[3] = &unk_1E80C4D40;
  v21[4] = &v27;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date onPrep:engagementType FROM widgetEngagements WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND intentHash = :intentHash AND engagementType <> 0 AND date >= :sinceTimestamp ORDER BY date DESC LIMIT 1" onRow:v22 onError:v21, &__block_literal_global_693];
  v19 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __74__ATXInformationStore_firstEngagementOfWidget_kind_intent_sinceTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v5 bindNamedParam:":widgetKind" toNSString:*(a1 + 40)];
  [v5 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 48), "atx_indexingHash")}];
  [*(a1 + 56) timeIntervalSinceReferenceDate];
  [v5 bindNamedParam:":sinceTimestamp" toInt64:v4];
}

uint64_t __74__ATXInformationStore_firstEngagementOfWidget_kind_intent_sinceTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [[v3 alloc] initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "getIntegerForColumnName:table:", "date", 0)}];
  v6 = [v4 getIntegerForColumnName:"engagementType" table:0];

  v7 = [[ATXWidgetEngagementRecord alloc] initWithDate:v5 type:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = MEMORY[0x1E69C5DD0];
  return *v10;
}

uint64_t __74__ATXInformationStore_firstEngagementOfWidget_kind_intent_sinceTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __52__ATXInformationStore_mostRecentEngagementOfWidget___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)engagementTimestampsForExtensionBundleId:(id)id kind:(id)kind intent:(id)intent engagementType:(int64_t)type
{
  idCopy = id;
  kindCopy = kind;
  intentCopy = intent;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__16;
  v29 = __Block_byref_object_dispose__16;
  v30 = objc_opt_new();
  db = self->_db;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__ATXInformationStore_engagementTimestampsForExtensionBundleId_kind_intent_engagementType___block_invoke;
  v20[3] = &unk_1E80C50C8;
  v14 = idCopy;
  v21 = v14;
  v15 = kindCopy;
  v22 = v15;
  typeCopy = type;
  v16 = intentCopy;
  v23 = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__ATXInformationStore_engagementTimestampsForExtensionBundleId_kind_intent_engagementType___block_invoke_2;
  v19[3] = &unk_1E80C4D40;
  v19[4] = &v25;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date FROM widgetEngagements WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND intentHash = :intentHash AND engagementType = :engagementType AND :now - date < :quota_window ORDER BY date" onPrep:v20 onRow:v19 onError:&__block_literal_global_698];
  v17 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __91__ATXInformationStore_engagementTimestampsForExtensionBundleId_kind_intent_engagementType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":extensionBundleId" toNSString:v3];
  [v5 bindNamedParam:":widgetKind" toNSString:*(a1 + 40)];
  [v5 bindNamedParam:":engagementType" toInteger:*(a1 + 56)];
  [v5 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 48), "atx_indexingHash")}];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v5 bindNamedParam:":now" toInt64:v4];
  [v5 bindNamedParam:":quota_window" toInt64:86400];
}

uint64_t __91__ATXInformationStore_engagementTimestampsForExtensionBundleId_kind_intent_engagementType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getIntegerForColumnName:"date" table:0];

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:v6];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  v8 = MEMORY[0x1E69C5DD0];

  return *v8;
}

uint64_t __91__ATXInformationStore_engagementTimestampsForExtensionBundleId_kind_intent_engagementType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __91__ATXInformationStore_engagementTimestampsForExtensionBundleId_kind_intent_engagementType___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)fetchWidgetEngagementRecords
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ATXInformationStore_fetchWidgetEngagementRecords__block_invoke;
  v7[3] = &unk_1E80C4D40;
  v7[4] = &v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ATXInformationStore_fetchWidgetEngagementRecords__block_invoke_2;
  v6[3] = &unk_1E80C4D18;
  v6[4] = &v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date onPrep:engagementType onRow:extensionBundleId onError:widgetKind, size, containerBundleIdentifier FROM widgetEngagements LIMIT 2000", 0, v7, v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __51__ATXInformationStore_fetchWidgetEngagementRecords__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [[v3 alloc] initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "getIntegerForColumnName:table:", "date", 0)}];
  v6 = [v4 getInt64ForColumnName:"engagementType" table:0];
  v7 = [v4 getNSStringForColumnName:"extensionBundleId" table:0];
  v8 = [v4 getNSStringForColumnName:"containerBundleIdentifier" table:0];
  v9 = [v4 getNSStringForColumnName:"widgetKind" table:0];
  v10 = [v4 getIntegerForColumnName:"size" table:0];

  v11 = [[ATXWidgetEngagementRecord alloc] initWithDate:v5 type:v6 widgetBundleId:v7 containerBundleIdentifier:v8 widgetKind:v9 layoutSize:v10];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v11];
  v12 = MEMORY[0x1E69C5DD0];

  return *v12;
}

uint64_t __51__ATXInformationStore_fetchWidgetEngagementRecords__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __51__ATXInformationStore_fetchWidgetEngagementRecords__block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)fetchWidgetTapEngagementsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = objc_opt_new();
  db = self->_db;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__ATXInformationStore_fetchWidgetTapEngagementsBetweenStartDate_endDate___block_invoke;
  v14[3] = &unk_1E80C4EC0;
  v9 = dateCopy;
  v15 = v9;
  v10 = endDateCopy;
  v16 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ATXInformationStore_fetchWidgetTapEngagementsBetweenStartDate_endDate___block_invoke_2;
  v13[3] = &unk_1E80C4D40;
  v13[4] = &v17;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT date onPrep:engagementType onRow:extensionBundleId onError:containerBundleIdentifier, widgetKind, size FROM widgetEngagements WHERE date >= :startTimestamp AND date <= :endTimestamp AND engagementType = :engagementType ORDER BY date DESC LIMIT 1000", v14, v13, &__block_literal_global_710];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __73__ATXInformationStore_fetchWidgetTapEngagementsBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v6 bindNamedParam:":startTimestamp" toInt64:v4];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v6 bindNamedParam:":endTimestamp" toInt64:v5];
  [v6 bindNamedParam:":engagementType" toInteger:1];
}

uint64_t __73__ATXInformationStore_fetchWidgetTapEngagementsBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [[v3 alloc] initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "getIntegerForColumnName:table:", "date", 0)}];
  v6 = [v4 getInt64ForColumnName:"engagementType" table:0];
  v7 = [v4 getNSStringForColumnName:"extensionBundleId" table:0];
  v8 = [v4 getNSStringForColumnName:"widgetKind" table:0];
  v9 = [v4 getNSStringForColumnName:"containerBundleIdentifier" table:0];
  v10 = [v4 getIntegerForColumnName:"size" table:0];

  v11 = [[ATXWidgetEngagementRecord alloc] initWithDate:v5 type:v6 widgetBundleId:v7 containerBundleIdentifier:v9 widgetKind:v8 layoutSize:v10];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v11];
  v12 = MEMORY[0x1E69C5DD0];

  return *v12;
}

uint64_t __73__ATXInformationStore_fetchWidgetTapEngagementsBetweenStartDate_endDate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __73__ATXInformationStore_fetchWidgetTapEngagementsBetweenStartDate_endDate___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)fetchWidgetTapEngagementCountSinceStartDate:(id)date
{
  dateCopy = date;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = objc_opt_new();
  db = self->_db;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__ATXInformationStore_fetchWidgetTapEngagementCountSinceStartDate___block_invoke;
  v10[3] = &unk_1E80C4CC8;
  v6 = dateCopy;
  v11 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ATXInformationStore_fetchWidgetTapEngagementCountSinceStartDate___block_invoke_2;
  v9[3] = &unk_1E80C4D40;
  v9[4] = &v12;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT extensionBundleId onPrep:containerBundleIdentifier onRow:widgetKind onError:size, count(1) FROM widgetEngagements WHERE date >= :startTimestamp AND engagementType = 1 GROUP BY extensionBundleId, containerBundleIdentifier, widgetKind, size LIMIT 1000", v10, v9, &__block_literal_global_719];
  v7 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__ATXInformationStore_fetchWidgetTapEngagementCountSinceStartDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":startTimestamp" toInt64:v3];
}

uint64_t __67__ATXInformationStore_fetchWidgetTapEngagementCountSinceStartDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CHSWidgetFamilyFromATXStackLayoutSize([v3 getIntegerForColumnName:"size" table:0]);
  v5 = objc_alloc(MEMORY[0x1E6994370]);
  v6 = objc_alloc(MEMORY[0x1E6994290]);
  v7 = [v3 getNSStringForColumnName:"extensionBundleId" table:0];
  v8 = [v3 getNSStringForColumnName:"containerBundleIdentifier" table:0];
  v9 = [v6 initWithExtensionBundleIdentifier:v7 containerBundleIdentifier:v8 deviceIdentifier:0];
  v10 = [v3 getNSStringForColumnName:"widgetKind" table:0];
  v11 = [v5 initWithExtensionIdentity:v9 kind:v10 family:v4 intent:0 activityIdentifier:0];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v3 getInt64ForColumn:4];

  v14 = [v12 numberWithLongLong:v13];
  v15 = [[ATXWidgetModeEntity alloc] initWithWidget:v11];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v14 forKeyedSubscript:v15];
  v16 = MEMORY[0x1E69C5DD0];

  return *v16;
}

uint64_t __67__ATXInformationStore_fetchWidgetTapEngagementCountSinceStartDate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __67__ATXInformationStore_fetchWidgetTapEngagementCountSinceStartDate___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)fetchDistinctScoreCountForWidgets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ATXInformationStore_fetchDistinctScoreCountForWidgets__block_invoke;
  v7[3] = &unk_1E80C4D40;
  v7[4] = &v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ATXInformationStore_fetchDistinctScoreCountForWidgets__block_invoke_2;
  v6[3] = &unk_1E80C4D18;
  v6[4] = &v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT extensionBundleId onPrep:widgetKind onRow:count(distinct(score)) FROM timelineDonations WHERE score IS NOT NULL group by extensionBundleId onError:widgetKind", 0, v7, v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __56__ATXInformationStore_fetchDistinctScoreCountForWidgets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"extensionBundleId" table:0];
  v5 = [v3 getNSStringForColumnName:"widgetKind" table:0];
  v6 = [MEMORY[0x1E69C5D98] tupleWithFirst:v4 second:v5];
  v7 = MEMORY[0x1E696AD98];
  [v3 getDoubleForColumn:2];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v6];

  v11 = MEMORY[0x1E69C5DD0];
  return *v11;
}

uint64_t __56__ATXInformationStore_fetchDistinctScoreCountForWidgets__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __56__ATXInformationStore_fetchDistinctScoreCountForWidgets__block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)fetchDistinctWidgetsIgnoringIntentSinceDate:(id)date
{
  dateCopy = date;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = objc_opt_new();
  if (dateCopy)
  {
    v5 = @"SELECT DISTINCT extensionBundleId, containerBundleIdentifier, widgetKind, widgetFamily FROM timelineDonations WHERE suggestionMappingReason IS NOT NULL AND suggestionId IS NOT NULL AND timestamp > :date;";
  }

  else
  {
    v5 = @"SELECT DISTINCT extensionBundleId, containerBundleIdentifier, widgetKind, widgetFamily FROM timelineDonations WHERE suggestionMappingReason IS NOT NULL AND suggestionId IS NOT NULL;";
  }

  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__ATXInformationStore_fetchDistinctWidgetsIgnoringIntentSinceDate___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v7 = dateCopy;
  v13 = v7;
  v10[4] = &v14;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__ATXInformationStore_fetchDistinctWidgetsIgnoringIntentSinceDate___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__ATXInformationStore_fetchDistinctWidgetsIgnoringIntentSinceDate___block_invoke_3;
  v10[3] = &unk_1E80C4D18;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v5 onPrep:v12 onRow:v11 onError:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __67__ATXInformationStore_fetchDistinctWidgetsIgnoringIntentSinceDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = a2;
    [v2 timeIntervalSinceReferenceDate];
    [v4 bindNamedParam:":date" toInt64:v3];
  }
}

uint64_t __67__ATXInformationStore_fetchDistinctWidgetsIgnoringIntentSinceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6994370];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = objc_alloc(MEMORY[0x1E6994290]);
  v7 = [v4 getNSStringForColumnName:"extensionBundleId" table:0];
  v8 = [v4 getNSStringForColumnName:"containerBundleIdentifier" table:0];
  v9 = [v6 initWithExtensionBundleIdentifier:v7 containerBundleIdentifier:v8 deviceIdentifier:0];
  v10 = [v4 getNSStringForColumnName:"widgetKind" table:0];
  v11 = [v4 getInt64ForColumnName:"widgetFamily" table:0];

  v12 = [v5 initWithExtensionIdentity:v9 kind:v10 family:v11 intent:0 activityIdentifier:0];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v12];
  v13 = MEMORY[0x1E69C5DD0];

  return *v13;
}

uint64_t __67__ATXInformationStore_fetchDistinctWidgetsIgnoringIntentSinceDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __67__ATXInformationStore_fetchDistinctWidgetsIgnoringIntentSinceDate___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)fetchAllTimelineEntriesForWidget:(id)widget
{
  widgetCopy = widget;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = objc_opt_new();
  db = self->_db;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke;
  v13[3] = &unk_1E80C4CC8;
  v14 = widgetCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke_2;
  v12[3] = &unk_1E80C4D40;
  v12[4] = &v15;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke_3;
  v9[3] = &unk_1E80C4DD0;
  v6 = v14;
  v10 = v6;
  v11 = &v15;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT timestamp onPrep:score onRow:duration onError:suggestionId, suggestionMappingReason FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND containerBundleIdentifier = :containerBundleIdentifier AND suggestionMappingReason IS NOT NULL ORDER BY timestamp", v13, v12, v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 extensionIdentity];
  v6 = [v5 extensionBundleIdentifier];
  [v4 bindNamedParam:":extensionBundleId" toNSString:v6];

  v7 = [*(a1 + 32) kind];
  [v4 bindNamedParam:":widgetKind" toNSString:v7];

  v9 = [*(a1 + 32) extensionIdentity];
  v8 = [v9 containerBundleIdentifier];
  [v4 bindNamedParam:":containerBundleIdentifier" toNSString:v8];
}

uint64_t __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getDoubleAsNSNumberForColumnName:"score" table:0];
  v5 = MEMORY[0x1E69C5B98];
  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 0)}];
  if (v4)
  {
    v7 = MEMORY[0x1E69C5BA0];
    [v4 doubleValue];
    v9 = v8;
    [v3 getDoubleForColumnName:"duration" table:0];
    v11 = [v7 relevanceWithScore:v9 duration:v10];
    v12 = [v5 entryWithDate:v6 relevance:v11];
  }

  else
  {
    v12 = [v5 entryWithDate:v6 relevance:0];
  }

  v13 = MEMORY[0x1E69C5C18];
  v14 = [v3 getNSStringForColumnName:"suggestionId" table:0];
  v15 = [v13 entryMappingWithTimelineEntry:v12 suggestionId:v14 withSuggestionMappingReason:{objc_msgSend(v3, "getInt64ForColumnName:table:", "suggestionMappingReason", 0)}];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v15];
  v16 = MEMORY[0x1E69C5DD0];

  return *v16;
}

uint64_t __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (id)fetchTimelineEntriesForWidget:(id)widget sinceDate:(id)date
{
  widgetCopy = widget;
  dateCopy = date;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__16;
  v25 = __Block_byref_object_dispose__16;
  v26 = objc_opt_new();
  if (dateCopy)
  {
    v8 = @"SELECT timestamp, score, duration, suggestionId, suggestionMappingReason FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND widgetFamily = :widgetFamily AND containerBundleIdentifier = :containerBundleIdentifier AND suggestionMappingReason IS NOT NULL AND timestamp > :date ORDER BY timestamp";
  }

  else
  {
    v8 = @"SELECT timestamp, score, duration, suggestionId, suggestionMappingReason FROM timelineDonations WHERE extensionBundleId = :extensionBundleId AND widgetKind = :widgetKind AND widgetFamily = :widgetFamily AND containerBundleIdentifier = :containerBundleIdentifier AND suggestionMappingReason IS NOT NULL ORDER BY timestamp";
  }

  db = self->_db;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__ATXInformationStore_fetchTimelineEntriesForWidget_sinceDate___block_invoke;
  v18[3] = &unk_1E80C4EC0;
  v19 = widgetCopy;
  v10 = dateCopy;
  v20 = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__ATXInformationStore_fetchTimelineEntriesForWidget_sinceDate___block_invoke_2;
  v17[3] = &unk_1E80C4D40;
  v17[4] = &v21;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__ATXInformationStore_fetchTimelineEntriesForWidget_sinceDate___block_invoke_3;
  v14[3] = &unk_1E80C4DD0;
  v11 = v19;
  v15 = v11;
  v16 = &v21;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v8 onPrep:v18 onRow:v17 onError:v14];
  v12 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __63__ATXInformationStore_fetchTimelineEntriesForWidget_sinceDate___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) extensionIdentity];
  v4 = [v3 extensionBundleIdentifier];
  [v10 bindNamedParam:":extensionBundleId" toNSString:v4];

  v5 = [*(a1 + 32) kind];
  [v10 bindNamedParam:":widgetKind" toNSString:v5];

  [v10 bindNamedParam:":widgetFamily" toInt64:{objc_msgSend(*(a1 + 32), "family")}];
  v6 = [*(a1 + 32) extensionIdentity];
  v7 = [v6 containerBundleIdentifier];
  [v10 bindNamedParam:":containerBundleIdentifier" toNSString:v7];

  v8 = *(a1 + 40);
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    [v10 bindNamedParam:":date" toInt64:v9];
  }
}

uint64_t __63__ATXInformationStore_fetchTimelineEntriesForWidget_sinceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getDoubleAsNSNumberForColumnName:"score" table:0];
  v5 = MEMORY[0x1E69C5B98];
  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 0)}];
  if (v4)
  {
    v7 = MEMORY[0x1E69C5BA0];
    [v4 doubleValue];
    v9 = v8;
    [v3 getDoubleForColumnName:"duration" table:0];
    v11 = [v7 relevanceWithScore:v9 duration:v10];
    v12 = [v5 entryWithDate:v6 relevance:v11];
  }

  else
  {
    v12 = [v5 entryWithDate:v6 relevance:0];
  }

  v13 = MEMORY[0x1E69C5C18];
  v14 = [v3 getNSStringForColumnName:"suggestionId" table:0];
  v15 = [v13 entryMappingWithTimelineEntry:v12 suggestionId:v14 withSuggestionMappingReason:{objc_msgSend(v3, "getInt64ForColumnName:table:", "suggestionMappingReason", 0)}];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v15];
  v16 = MEMORY[0x1E69C5DD0];

  return *v16;
}

uint64_t __63__ATXInformationStore_fetchTimelineEntriesForWidget_sinceDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (int64_t)mostRecentAbuseControlOutcomeForSuggestionId:(id)id
{
  idCopy = id;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__ATXInformationStore_mostRecentAbuseControlOutcomeForSuggestionId___block_invoke;
  v12[3] = &unk_1E80C4CC8;
  v13 = idCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ATXInformationStore_mostRecentAbuseControlOutcomeForSuggestionId___block_invoke_2;
  v11[3] = &unk_1E80C4D40;
  v11[4] = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ATXInformationStore_mostRecentAbuseControlOutcomeForSuggestionId___block_invoke_3;
  v9[3] = &unk_1E80C4D88;
  v6 = v13;
  v10 = v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT outcome FROM abuseControlOutcomes WHERE suggestionId = :suggestionId ORDER BY timestamp DESC LIMIT 1" onPrep:v12 onRow:v11 onError:v9];
  v7 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __68__ATXInformationStore_mostRecentAbuseControlOutcomeForSuggestionId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __68__ATXInformationStore_mostRecentAbuseControlOutcomeForSuggestionId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)addAbuseControlOutcomeForSuggestion:(id)suggestion forTimestamp:(int64_t)timestamp outcome:(int64_t)outcome
{
  suggestionCopy = suggestion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  db = self->_db;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__ATXInformationStore_addAbuseControlOutcomeForSuggestion_forTimestamp_outcome___block_invoke;
  v15[3] = &unk_1E80C51E0;
  v16 = suggestionCopy;
  timestampCopy = timestamp;
  outcomeCopy = outcome;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__ATXInformationStore_addAbuseControlOutcomeForSuggestion_forTimestamp_outcome___block_invoke_2;
  v12[3] = &unk_1E80C4DD0;
  v10 = v16;
  v13 = v10;
  v14 = &v19;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT OR REPLACE INTO abuseControlOutcomes (suggestionId onPrep:timestamp onRow:outcome) VALUES (:suggestionId onError::timestamp, :outcome)", v15, 0, v12];
  LOBYTE(timestamp) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return timestamp;
}

void __80__ATXInformationStore_addAbuseControlOutcomeForSuggestion_forTimestamp_outcome___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":suggestionId" toNSString:v3];
  [v4 bindNamedParam:":timestamp" toInt64:a1[5]];
  [v4 bindNamedParam:":outcome" toInt64:a1[6]];
}

uint64_t __80__ATXInformationStore_addAbuseControlOutcomeForSuggestion_forTimestamp_outcome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __80__ATXInformationStore_addAbuseControlOutcomeForSuggestion_forTimestamp_outcome___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)addAbuseControlOutcomes:(id)outcomes
{
  outcomesCopy = outcomes;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v5 = MEMORY[0x1E69C5D90];
  db = self->_db;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke;
  v9[3] = &unk_1E80C5208;
  v7 = outcomesCopy;
  v10 = v7;
  v11 = v12;
  LOBYTE(v5) = ([v5 writeTransactionWithHandle:db failableBlock:v9] & 1) == 0;

  _Block_object_dispose(v12, 8);
  return v5;
}

uint64_t __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [v3 db];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke_2;
        v15[3] = &unk_1E80C4CC8;
        v15[4] = v8;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke_3;
        v14[3] = &unk_1E80C4DD0;
        v10 = *(a1 + 40);
        v14[4] = v8;
        v14[5] = v10;
        [v9 prepAndRunQuery:@"INSERT OR REPLACE INTO abuseControlOutcomes (suggestionId onPrep:timestamp onRow:outcome) VALUES (:suggestionId onError:{:timestamp, :outcome)", v15, 0, v14}];

        if (*(*(*(a1 + 40) + 8) + 24))
        {
          v11 = *MEMORY[0x1E69C5DC8];

          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = *MEMORY[0x1E69C5DC0];
LABEL_11:

  return v11;
}

void __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 suggestionId];
  [v6 bindNamedParam:":suggestionId" toNSString:v4];

  [*(a1 + 32) timestamp];
  [v6 bindNamedParam:":timestamp" toInt64:v5];
  [v6 bindNamedParam:":outcome" toInt64:{objc_msgSend(*(a1 + 32), "abuseControlOutcome")}];
}

uint64_t __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke_3_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)clearOldAbuseControlOutcomeData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__ATXInformationStore_clearOldAbuseControlOutcomeData__block_invoke_2;
  v5[3] = &unk_1E80C4D18;
  v5[4] = &v6;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM abuseControlOutcomes WHERE timestamp < :timestamp" onPrep:&__block_literal_global_753 onRow:0 onError:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __54__ATXInformationStore_clearOldAbuseControlOutcomeData__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":timestamp" toInt64:(v3 + -1209600.0)];
}

uint64_t __54__ATXInformationStore_clearOldAbuseControlOutcomeData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __54__ATXInformationStore_clearOldAbuseControlOutcomeData__block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)fetchAbuseControlOutcomesForSuggestion:(id)suggestion sinceDate:(id)date
{
  suggestionCopy = suggestion;
  dateCopy = date;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = objc_opt_new();
  if (dateCopy)
  {
    v8 = @"SELECT timestamp, outcome FROM abuseControlOutcomes WHERE suggestionId = :suggestionId AND timestamp > :timestamp ORDER BY timestamp";
  }

  else
  {
    v8 = @"SELECT timestamp, outcome FROM abuseControlOutcomes WHERE suggestionId = :suggestionId ORDER BY timestamp";
  }

  db = self->_db;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke;
  v20[3] = &unk_1E80C4EC0;
  v21 = suggestionCopy;
  v10 = dateCopy;
  v22 = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke_2;
  v17[3] = &unk_1E80C4CF0;
  v18 = v21;
  v19 = &v23;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke_3;
  v14[3] = &unk_1E80C4DD0;
  v11 = v18;
  v15 = v11;
  v16 = &v23;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v8 onPrep:v20 onRow:v17 onError:v14];
  v12 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 bindNamedParam:":suggestionId" toNSString:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 timeIntervalSinceReferenceDate];
    [v5 bindNamedParam:":timestamp" toInt64:v4];
  }
}

uint64_t __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"timestamp" table:0];
  v5 = [v3 getIntegerForColumnName:"outcome" table:0];

  v6 = [MEMORY[0x1E69C5C20] outcomeWithSuggestionId:*(a1 + 32) timestamp:v5 abuseControlOutcome:v4];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  v7 = MEMORY[0x1E69C5DD0];

  return *v7;
}

uint64_t __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (BOOL)addStackConfigStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 1;
  v5 = MEMORY[0x1E69C5D90];
  db = self->_db;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke;
  v9[3] = &unk_1E80C5230;
  v7 = statisticsCopy;
  v10 = v7;
  v11 = v13;
  v12 = &v15;
  [v5 writeTransactionWithHandle:db failableBlock:v9];
  LOBYTE(v5) = *(v16 + 24);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

uint64_t __48__ATXInformationStore_addStackConfigStatistics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v5 = [v3 db];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2;
  v32[3] = &unk_1E80C4CC8;
  v33 = v4;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3;
  v30[3] = &unk_1E80C4D88;
  v6 = v33;
  v31 = v6;
  [v5 prepAndRunQuery:@"DELETE FROM stackConfigurationHistory WHERE timestamp < :cutoffTimestamp" onPrep:v32 onRow:0 onError:v30];

  v7 = [v3 db];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke_766;
  v28[3] = &unk_1E80C4CC8;
  v29 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2_767;
  v25[3] = &unk_1E80C4CF0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v26 = v8;
  v27 = v9;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3_772;
  v22[3] = &unk_1E80C4DD0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v23 = v10;
  v24 = v11;
  [v7 prepAndRunQuery:@"SELECT countOfSmartStacksWithWidget onPrep:countOfNonSmartStacksWithWidget onRow:countOfStandaloneWidgets onError:{countOfWidgetsWithUnknownStackKind FROM stackConfigurationHistory WHERE (widgetBundleId = :widgetBundleId AND widgetKind = :widgetKind AND containerBundleIdentifier = :containerBundleIdentifier AND widgetFamily = :widgetFamily) ORDER BY timestamp DESC LIMIT 1", v28, v25, v22}];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v12 = [v3 db];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke_776;
    v20[3] = &unk_1E80C4CC8;
    v21 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2_781;
    v17[3] = &unk_1E80C4DD0;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v18 = v13;
    v19 = v14;
    [v12 prepAndRunQuery:@"INSERT OR REPLACE INTO stackConfigurationHistory (widgetBundleId onPrep:widgetKind onRow:containerBundleIdentifier onError:{widgetFamily, timestamp, countOfSmartStacksWithWidget, countOfNonSmartStacksWithWidget, countOfStandaloneWidgets, countOfWidgetsWithUnknownStackKind) VALUES (:widgetBundleId, :widgetKind, :containerBundleIdentifier, :widgetFamily, :timestamp, :countOfSmartStacksWithWidget, :countOfNonSmartStacksWithWidget, :countOfStandaloneWidgets, :countOfWidgetsWithUnknownStackKind)", v20, 0, v17}];
  }

  v15 = MEMORY[0x1E69C5DC0];

  return *v15;
}

void __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":cutoffTimestamp" toInt64:v3];
}

uint64_t __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

void __48__ATXInformationStore_addStackConfigStatistics___block_invoke_766(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 widgetBundleId];
  [v7 bindNamedParam:":widgetBundleId" toNSString:v4];

  v5 = [*(a1 + 32) widgetKind];
  [v7 bindNamedParam:":widgetKind" toNSString:v5];

  v6 = [*(a1 + 32) containerBundleIdentifier];
  [v7 bindNamedParam:":containerBundleIdentifier" toNSString:v6];

  [v7 bindNamedParam:":widgetFamily" toInt64:{objc_msgSend(*(a1 + 32), "widgetFamily")}];
}

uint64_t __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2_767(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"countOfSmartStacksWithWidget" table:0];
  v5 = [v3 getInt64ForColumnName:"countOfNonSmartStacksWithWidget" table:0];
  v6 = [v3 getInt64ForColumnName:"countOfStandaloneWidgets" table:0];
  v7 = [v3 getInt64ForColumnName:"countOfWidgetsWithUnknownStackKind" table:0];

  if (v4 == [*(a1 + 32) countOfSmartStacksWithWidget] && v5 == objc_msgSend(*(a1 + 32), "countOfNonSmartStacksWithWidget") && v6 == objc_msgSend(*(a1 + 32), "countOfStandaloneWidgets") && v7 == objc_msgSend(*(a1 + 32), "countOfWidgetsWithUnknownStackKind"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return *MEMORY[0x1E69C5DD8];
}

uint64_t __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3_772(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3_772_cold_1(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

void __48__ATXInformationStore_addStackConfigStatistics___block_invoke_776(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 widgetBundleId];
  [v9 bindNamedParam:":widgetBundleId" toNSString:v4];

  v5 = [*(a1 + 32) widgetKind];
  [v9 bindNamedParam:":widgetKind" toNSString:v5];

  v6 = [*(a1 + 32) containerBundleIdentifier];
  [v9 bindNamedParam:":containerBundleIdentifier" toNSString:v6];

  [v9 bindNamedParam:":widgetFamily" toInt64:{objc_msgSend(*(a1 + 32), "widgetFamily")}];
  v7 = [*(a1 + 32) timestamp];
  [v7 timeIntervalSinceReferenceDate];
  [v9 bindNamedParam:":timestamp" toInt64:v8];

  [v9 bindNamedParam:":countOfSmartStacksWithWidget" toInt64:{objc_msgSend(*(a1 + 32), "countOfSmartStacksWithWidget")}];
  [v9 bindNamedParam:":countOfNonSmartStacksWithWidget" toInt64:{objc_msgSend(*(a1 + 32), "countOfNonSmartStacksWithWidget")}];
  [v9 bindNamedParam:":countOfStandaloneWidgets" toInt64:{objc_msgSend(*(a1 + 32), "countOfStandaloneWidgets")}];
  [v9 bindNamedParam:":countOfWidgetsWithUnknownStackKind" toInt64:{objc_msgSend(*(a1 + 32), "countOfWidgetsWithUnknownStackKind")}];
}

uint64_t __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2_781(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2_781_cold_1(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (id)fetchStackConfigStatisticsForWidgetBundleId:(id)id widgetKind:(id)kind containerBundleIdentifier:(id)identifier widgetFamily:(int64_t)family
{
  idCopy = id;
  kindCopy = kind;
  identifierCopy = identifier;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__16;
  v40 = __Block_byref_object_dispose__16;
  v41 = objc_opt_new();
  db = self->_db;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke;
  v31[3] = &unk_1E80C50C8;
  v32 = idCopy;
  v33 = kindCopy;
  v34 = identifierCopy;
  familyCopy = family;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_2;
  v25[3] = &unk_1E80C5280;
  v29 = &v36;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  familyCopy2 = family;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_4;
  v19[3] = &unk_1E80C52A8;
  v14 = v26;
  v20 = v14;
  v15 = v27;
  v21 = v15;
  v16 = v28;
  v23 = &v36;
  familyCopy3 = family;
  v22 = v16;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT countOfSmartStacksWithWidget onPrep:countOfNonSmartStacksWithWidget onRow:countOfStandaloneWidgets onError:countOfWidgetsWithUnknownStackKind, timestamp FROM stackConfigurationHistory WHERE (widgetBundleId = :widgetBundleId AND widgetKind = :widgetKind AND containerBundleIdentifier = :containerBundleIdentifier AND widgetFamily = :widgetFamily) ORDER BY timestamp", v31, v25, v19];
  v17 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v17;
}

void __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":widgetBundleId" toNSString:v3];
  [v4 bindNamedParam:":widgetKind" toNSString:a1[5]];
  [v4 bindNamedParam:":containerBundleIdentifier" toNSString:a1[6]];
  [v4 bindNamedParam:":widgetFamily" toInt64:a1[7]];
}

uint64_t __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = *(*(a1[7] + 8) + 40);
  v6 = MEMORY[0x1E69C5C08];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_3;
  v14[3] = &unk_1E80C5258;
  v15 = v3;
  v10 = v3;
  v11 = [v6 stackConfigStatisticsWithWidgetBundleId:v7 widgetKind:v8 containerBundleIdentifier:v4 widgetFamily:v9 withBlock:v14];
  [v5 addObject:v11];

  v12 = MEMORY[0x1E69C5DD0];
  return *v12;
}

void __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 getInt64ForColumnName:"timestamp" table:0];
  v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v4];
  [v6 setTimestamp:v5];

  [v6 setCountOfSmartStacksWithWidget:{objc_msgSend(*(a1 + 32), "getInt64ForColumnName:table:", "countOfSmartStacksWithWidget", 0)}];
  [v6 setCountOfNonSmartStacksWithWidget:{objc_msgSend(*(a1 + 32), "getInt64ForColumnName:table:", "countOfNonSmartStacksWithWidget", 0)}];
  [v6 setCountOfStandaloneWidgets:{objc_msgSend(*(a1 + 32), "getInt64ForColumnName:table:", "countOfStandaloneWidgets", 0)}];
  [v6 setCountOfWidgetsWithUnknownStackKind:{objc_msgSend(*(a1 + 32), "getInt64ForColumnName:table:", "countOfWidgetsWithUnknownStackKind", 0)}];
}

uint64_t __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_4_cold_1();
  }

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x1E69C5DD8];
  return *v7;
}

- (unint64_t)numberOfWidgetReloadForSuggestionInPastDay
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  db = self->_db;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__ATXInformationStore_numberOfWidgetReloadForSuggestionInPastDay__block_invoke;
  v8[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  *&v8[4] = v4 + -86400.0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ATXInformationStore_numberOfWidgetReloadForSuggestionInPastDay__block_invoke_2;
  v7[3] = &unk_1E80C4D40;
  v7[4] = &v9;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT count(*) FROM widgetReloadForSuggestion WHERE timestamp > :cutoffTimestamp" onPrep:v8 onRow:v7 onError:&__block_literal_global_791];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __65__ATXInformationStore_numberOfWidgetReloadForSuggestionInPastDay__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__ATXInformationStore_numberOfWidgetReloadForSuggestionInPastDay__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)didMostRecentReloadFailForExtension:(id)extension kind:(id)kind intent:(id)intent cutoffDate:(id)date
{
  extensionCopy = extension;
  kindCopy = kind;
  intentCopy = intent;
  dateCopy = date;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  db = self->_db;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__ATXInformationStore_didMostRecentReloadFailForExtension_kind_intent_cutoffDate___block_invoke;
  v21[3] = &unk_1E80C51B8;
  v15 = dateCopy;
  v22 = v15;
  v16 = extensionCopy;
  v23 = v16;
  v17 = kindCopy;
  v24 = v17;
  v18 = intentCopy;
  v25 = v18;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__ATXInformationStore_didMostRecentReloadFailForExtension_kind_intent_cutoffDate___block_invoke_2;
  v20[3] = &unk_1E80C4D40;
  v20[4] = &v26;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT readyForDisplay FROM widgetReloadForSuggestion WHERE timestamp > :cutoffTimestamp AND extensionBundleId = :extensionBundleId AND kind = :kind AND intentHash = :intentHash ORDER BY timestamp DESC LIMIT 1" onPrep:v21 onRow:v20 onError:&__block_literal_global_797];
  LOBYTE(db) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return db;
}

void __82__ATXInformationStore_didMostRecentReloadFailForExtension_kind_intent_cutoffDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":cutoffTimestamp" toDouble:?];
  [v4 bindNamedParam:":extensionBundleId" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":kind" toNSString:*(a1 + 48)];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(*(a1 + 56), "atx_indexingHash")}];
}

uint64_t __82__ATXInformationStore_didMostRecentReloadFailForExtension_kind_intent_cutoffDate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __82__ATXInformationStore_didMostRecentReloadFailForExtension_kind_intent_cutoffDate___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)recordWidgetReloadForSuggestion:(id)suggestion date:(id)date readyForDisplay:(BOOL)display
{
  suggestionCopy = suggestion;
  dateCopy = date;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  db = self->_db;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__ATXInformationStore_recordWidgetReloadForSuggestion_date_readyForDisplay___block_invoke;
  v15[3] = &unk_1E80C52D0;
  v11 = dateCopy;
  v16 = v11;
  displayCopy = display;
  v12 = suggestionCopy;
  v17 = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__ATXInformationStore_recordWidgetReloadForSuggestion_date_readyForDisplay___block_invoke_2;
  v14[3] = &unk_1E80C4D18;
  v14[4] = &v19;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT INTO widgetReloadForSuggestion (timestamp onPrep:readyForDisplay onRow:extensionBundleId onError:kind, family, intentHash) VALUES (:timestamp, :readyForDisplay, :extensionBundleId, :kind, :family, :intentHash)", v15, 0, v14];
  LOBYTE(db) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return db;
}

void __76__ATXInformationStore_recordWidgetReloadForSuggestion_date_readyForDisplay___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":timestamp" toDouble:?];
  [v4 bindNamedParam:":readyForDisplay" toInteger:*(a1 + 48)];
  v5 = [*(a1 + 40) extensionIdentity];
  v6 = [v5 extensionBundleIdentifier];
  [v4 bindNamedParam:":extensionBundleId" toNSString:v6];

  v7 = [*(a1 + 40) kind];
  [v4 bindNamedParam:":kind" toNSString:v7];

  [v4 bindNamedParam:":family" toInteger:{objc_msgSend(*(a1 + 40), "family")}];
  v9 = [*(a1 + 40) intentReference];
  v8 = [v9 intent];
  [v4 bindNamedParam:":intentHash" toInt64:{objc_msgSend(v8, "atx_indexingHash")}];
}

uint64_t __76__ATXInformationStore_recordWidgetReloadForSuggestion_date_readyForDisplay___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__ATXInformationStore_recordWidgetReloadForSuggestion_date_readyForDisplay___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)clearOutdatedWidgetReloadEntries
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__ATXInformationStore_clearOutdatedWidgetReloadEntries__block_invoke;
  v7[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  *&v7[4] = v4 + -86400.0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__ATXInformationStore_clearOutdatedWidgetReloadEntries__block_invoke_2;
  v6[3] = &unk_1E80C4D18;
  v6[4] = &v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM widgetReloadForSuggestion WHERE timestamp < :cutoffTimestamp" onPrep:v7 onRow:0 onError:v6];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return self;
}

uint64_t __55__ATXInformationStore_clearOutdatedWidgetReloadEntries__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__ATXInformationStore_clearOutdatedWidgetReloadEntries__block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (unint64_t)numberOfSuggestedWidgetsInPastDay
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  db = self->_db;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ATXInformationStore_numberOfSuggestedWidgetsInPastDay__block_invoke;
  v8[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  *&v8[4] = v4 + -86400.0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ATXInformationStore_numberOfSuggestedWidgetsInPastDay__block_invoke_2;
  v7[3] = &unk_1E80C4D40;
  v7[4] = &v9;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT count(*) FROM suggestedWidgets WHERE firstAppearDate > :cutoffTimestamp" onPrep:v8 onRow:v7 onError:&__block_literal_global_810];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __56__ATXInformationStore_numberOfSuggestedWidgetsInPastDay__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__ATXInformationStore_numberOfSuggestedWidgetsInPastDay__block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (id)firstAppearDateOfSuggestedWidgetWithUniqueId:(id)id
{
  idCopy = id;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ATXInformationStore_firstAppearDateOfSuggestedWidgetWithUniqueId___block_invoke;
  v10[3] = &unk_1E80C4CC8;
  v6 = idCopy;
  v11 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ATXInformationStore_firstAppearDateOfSuggestedWidgetWithUniqueId___block_invoke_2;
  v9[3] = &unk_1E80C4D40;
  v9[4] = &v12;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT firstAppearDate FROM suggestedWidgets WHERE widgetUniqueId = :widgetUniqueId" onPrep:v10 onRow:v9 onError:&__block_literal_global_815];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __68__ATXInformationStore_firstAppearDateOfSuggestedWidgetWithUniqueId___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumn:0];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x1E69C5DD8];
}

uint64_t __68__ATXInformationStore_firstAppearDateOfSuggestedWidgetWithUniqueId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__ATXInformationStore_firstAppearDateOfSuggestedWidgetWithUniqueId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x1E69C5DD8];
  return *v4;
}

- (BOOL)recordSuggestedWidgetUniqueIdIfNotExist:(id)exist
{
  existCopy = exist;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  db = self->_db;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__ATXInformationStore_recordSuggestedWidgetUniqueIdIfNotExist___block_invoke;
  v11[3] = &unk_1E80C4F88;
  v8 = existCopy;
  v12 = v8;
  v13 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ATXInformationStore_recordSuggestedWidgetUniqueIdIfNotExist___block_invoke_2;
  v10[3] = &unk_1E80C4D18;
  v10[4] = &v14;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT OR IGNORE INTO suggestedWidgets (widgetUniqueId onPrep:firstAppearDate) VALUES (:widgetUniqueId onRow::firstAppearDate)" onError:v11, 0, v10];
  LOBYTE(db) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return db;
}

void __63__ATXInformationStore_recordSuggestedWidgetUniqueIdIfNotExist___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":widgetUniqueId" toNSString:v3];
  [v4 bindNamedParam:":firstAppearDate" toDouble:*(a1 + 40)];
}

uint64_t __63__ATXInformationStore_recordSuggestedWidgetUniqueIdIfNotExist___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__ATXInformationStore_recordSuggestedWidgetUniqueIdIfNotExist___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (BOOL)clearOutdatedSuggestedWidgetEntries
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ATXInformationStore_clearOutdatedSuggestedWidgetEntries__block_invoke;
  v7[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  *&v7[4] = v4 + -86400.0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__ATXInformationStore_clearOutdatedSuggestedWidgetEntries__block_invoke_2;
  v6[3] = &unk_1E80C4D18;
  v6[4] = &v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM suggestedWidgets WHERE firstAppearDate < :cutoffTimestamp" onPrep:v7 onRow:0 onError:v6];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return self;
}

uint64_t __58__ATXInformationStore_clearOutdatedSuggestedWidgetEntries__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__ATXInformationStore_clearOutdatedSuggestedWidgetEntries__block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x1E69C5DD8];

  return *v5;
}

- (void)_openDatabase
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_migrateDatabaseIfNeeded
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)readCachedSuggestions
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __44__ATXInformationStore_readCachedSuggestions__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v2 = [OUTLINED_FUNCTION_19(v1) suggestionId];
  v3 = [*(v0 + 32) sourceId];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)writeCacheWithNewSuggestions:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)writeCacheWithNewSuggestions:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__ATXInformationStore_readAllInfoSuggestions__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28();
  [v1 getNSStringForColumn:?];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_18() getNSStringForColumn:?];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __55__ATXInformationStore_readCurrentlyRelevantSuggestions__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28();
  [v1 getNSStringForColumn:?];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_18() getNSStringForColumn:?];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __66__ATXInformationStore_latestInfoSuggestionRelevantNowForSourceId___block_invoke_386_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __51__ATXInformationStore_latestUpdateDateForSourceId___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __58__ATXInformationStore_numberOfInfoSuggestionsForSourceId___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __69__ATXInformationStore_numberOfInfoSuggestionsForAppBundleIdentifier___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__ATXInformationStore_writeInfoSuggestions___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [OUTLINED_FUNCTION_19(v0) suggestionIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __55__ATXInformationStore_updateEndDateForInfoSuggestions___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [OUTLINED_FUNCTION_19(v0) suggestionIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0;
  v2 = [OUTLINED_FUNCTION_26(v0) suggestionIdentifier];
  v3 = [*(v1 + 32) sourceIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __77__ATXInformationStore_atomicallyDeleteInfoSuggestions_insertInfoSuggestions___block_invoke_2_442_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [OUTLINED_FUNCTION_19(v0) suggestionIdentifier];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __44__ATXInformationStore_deleteInfoSuggestion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0;
  v2 = [OUTLINED_FUNCTION_26(v0) suggestionIdentifier];
  v3 = [*(v1 + 32) sourceIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __74__ATXInformationStore_deleteAllInfoSuggestionsWithSourceIdentifier_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __77__ATXInformationStore_deleteAllSuggestionsForSourceId_excludingSuggestionId___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __76__ATXInformationStore_recordSuggestionPassedTimelineFiltersForTheFirstTime___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [OUTLINED_FUNCTION_19(v0) suggestionIdentifier];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __71__ATXInformationStore_firstTimeAtWhichSuggestionPassedTimelineFilters___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [OUTLINED_FUNCTION_19(v0) suggestionIdentifier];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)insertOrIgnoreProactiveStackRotationRecord:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 intent];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __66__ATXInformationStore_insertOrIgnoreProactiveStackRotationRecord___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [OUTLINED_FUNCTION_19(v0) extensionBundleId];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __117__ATXInformationStore_mostRecentRotationRecordForWidget_kind_intent_considerStalenessRotation_filterByClientModelId___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __71__ATXInformationStore_mostRecentRotationRecordForSuggestionIdentifier___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __97__ATXInformationStore_proactiveRotationsForWidgetInThePastDay_kind_intent_filterByClientModelId___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __86__ATXInformationStore_recordUserRemovalOfSuggestedWidget_kind_intent_atDate_duration___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __79__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidget_kind_intent___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __88__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __77__ATXInformationStore_dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __43__ATXInformationStore_appendDismissRecord___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0;
  v2 = [OUTLINED_FUNCTION_26(v0) widgetBundleId];
  v3 = [*(v1 + 32) criterion];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __96__ATXInformationStore_mostRecentTimelineEntryWithScoreForWidget_kind_family_intentIndexingHash___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __104__ATXInformationStore_upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget_kind_familyMask_intent___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __105__ATXInformationStore_recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget_kind_family_intent___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __69__ATXInformationStore__insertTimelineEntries_forWidget_storageLimit___block_invoke_2_632_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0;
  v2 = [OUTLINED_FUNCTION_26(v0) extensionIdentity];
  v3 = [v2 extensionBundleIdentifier];
  v4 = [*(v1 + 32) kind];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __52__ATXInformationStore_distinctScoresForWidget_kind___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __72__ATXInformationStore_addEngagementRecordForWidget_date_engagementType___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = NSStringForATXWidgetEngagementType(*(v0 + 40));
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__ATXInformationStore_fetchAllTimelineEntriesForWidget___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __68__ATXInformationStore_mostRecentAbuseControlOutcomeForSuggestionId___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __80__ATXInformationStore_addAbuseControlOutcomeForSuggestion_forTimestamp_outcome___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __47__ATXInformationStore_addAbuseControlOutcomes___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [OUTLINED_FUNCTION_19(v0) suggestionId];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __72__ATXInformationStore_fetchAbuseControlOutcomesForSuggestion_sinceDate___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  [OUTLINED_FUNCTION_19(v0) timeIntervalSinceReferenceDate];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __48__ATXInformationStore_addStackConfigStatistics___block_invoke_3_772_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) widgetBundleId];
  v3 = [*(a1 + 32) widgetKind];
  v4 = [*(a1 + 32) containerBundleIdentifier];
  [*(a1 + 32) widgetFamily];
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30(&dword_1BF549000, v5, v6, "ATXInformationStore: error reading stackConfigurationHistory for widgetBundleId (%@) widgetKind (%@), containerBundleIdentifier (%@) widgetFamily(%ld) - %{public}@", v7, v8, v9, v10, 2u);
}

void __48__ATXInformationStore_addStackConfigStatistics___block_invoke_2_781_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) widgetBundleId];
  v3 = [*(a1 + 32) widgetKind];
  v4 = [*(a1 + 32) containerBundleIdentifier];
  [*(a1 + 32) widgetFamily];
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30(&dword_1BF549000, v5, v6, "ATXInformationStore: error inserting new stack configuration statistics for widgetBundleId (%@) widgetKind (%@), containerBundleIdentifier (%@) widgetFamily(%ld). Error: %{public}@", v7, v8, v9, v10, 2u);
}

void __117__ATXInformationStore_fetchStackConfigStatisticsForWidgetBundleId_widgetKind_containerBundleIdentifier_widgetFamily___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_22(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x34u);
}

@end