@interface ATXEngagementRecordManager
+ (ATXEngagementRecordManager)sharedInstance;
- (ATXEngagementRecordManager)init;
- (ATXEngagementRecordManager)initWithCacheDirectory:(id)a3;
- (BOOL)_writeData:(id)a3;
- (BOOL)hasEngagedWithExecutable:(id)a3 engagedExecutables:(id)a4;
- (BOOL)hasEngagedWithExecutable:(id)a3 engagementRecordType:(unint64_t)a4;
- (BOOL)hasEngagedWithSuggestion:(id)a3 engagedExecutables:(id)a4;
- (BOOL)hasEngagedWithSuggestion:(id)a3 engagementRecordType:(unint64_t)a4;
- (BOOL)hasReferenceForSuggestion:(id)a3;
- (NSString)description;
- (id)_engagedEntriesNoSync;
- (id)_engagedEntriesNoSyncOfType:(unint64_t)a3 queryOptions:(unint64_t)a4;
- (id)_identifiersFromEntries:(id)a3;
- (id)_readData;
- (id)engagedExecutablesOfType:(unint64_t)a3 queryOptions:(unint64_t)a4;
- (id)jsonDict;
- (unint64_t)_referenceCountForExecutable:(id)a3;
- (void)_addEngagedExcutableNoSync:(id)a3 clientModelId:(id)a4 type:(unint64_t)a5;
- (void)_addEngagedSuggestionNoSync:(id)a3 type:(unint64_t)a4;
- (void)_addHiddenSuggestionNoSync:(id)a3 duration:(double)a4 engagementRecordType:(unint64_t)a5;
- (void)_engagedEntriesNoSync;
- (void)_filterOutExplicitEngagementsThatShouldNotClearOnEngagement:(id)a3;
- (void)_logDidAddEntryToBiomeStream:(id)a3;
- (void)_readData;
- (void)_removeEngagedSuggestionsIfPossibleNoSync;
- (void)_removeEngagementsOnQueuePassingTest:(id)a3;
- (void)_serializeAndWriteNoSyncSet:(id)a3;
- (void)addEngagedExecutable:(id)a3 clientModelId:(id)a4 engagementRecordType:(unint64_t)a5;
- (void)addEngagedSuggestion:(id)a3 engagementRecordType:(unint64_t)a4;
- (void)addHiddenSuggestion:(id)a3 duration:(double)a4 engagementRecordType:(unint64_t)a5;
- (void)fetchEngagedEntriesWithCompletionHandler:(id)a3;
- (void)removeAllEngagementsForSuggestion:(id)a3;
- (void)removeAllEngagementsOfRecordType:(unint64_t)a3;
- (void)removeAllEngagementsWithCompletion:(id)a3;
- (void)removeEngagementForExecutableIdentifier:(id)a3 recordType:(unint64_t)a4 abortingRemovalIfEngagementDateIsLaterThanDate:(id)a5;
- (void)removeEngagementForSuggestion:(id)a3 recordType:(unint64_t)a4;
- (void)updateForClientModelCacheUpdate:(id)a3 clientModelId:(id)a4;
@end

@implementation ATXEngagementRecordManager

- (void)_removeEngagedSuggestionsIfPossibleNoSync
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  [(ATXExecutableReferenceManager *)self->_referenceManager purgeReferencesIfPossible];
  v3 = [(ATXEngagementRecordManager *)self _engagedEntriesNoSyncOfType:1021 queryOptions:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ATXEngagementRecordManager__removeEngagedSuggestionsIfPossibleNoSync__block_invoke;
  v8[3] = &unk_1E80C2DE8;
  v8[4] = self;
  v4 = [v3 objectsPassingTest:v8];
  if ([v4 count])
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%@ - removing executables with ref count of zero: %@", buf, 0x16u);
    }

    [v3 minusSet:v4];
    [(ATXEngagementRecordManager *)self _serializeAndWriteNoSyncSet:v3];
  }
}

- (id)_engagedEntriesNoSync
{
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__ATXEngagementRecordManager__engagedEntriesNoSync__block_invoke;
  v16[3] = &unk_1E80C29A0;
  v16[4] = self;
  v16[5] = &v17;
  [ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:@"ATXEngagementRecordManager" block:v16];
  if (v18[5])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = v18[5];
    v15 = 0;
    v9 = [v4 unarchivedObjectOfClasses:v7 fromData:v8 error:&v15];
    v10 = v15;

    objc_autoreleasePoolPop(v3);
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXEngagementRecordManager *)v10 _engagedEntriesNoSync];
      }

      v11 = objc_opt_new();
    }

    v12 = v11;
  }

  else
  {
    v12 = objc_opt_new();
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

uint64_t __51__ATXEngagementRecordManager__engagedEntriesNoSync__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _readData];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_readData
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = open([(NSString *)self->_path fileSystemRepresentation], 0);
  if (v2 == -1)
  {
    v6 = *__error();
    v7 = __atxlog_handle_default();
    v8 = v7;
    if (v6 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "No recently engaged cache file found.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXEngagementRecordManager _readData];
    }

    v5 = 0;
  }

  else
  {
    v3 = v2;
    ATXCacheFileRead();
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
    }

    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = @"ATXEngagementRecords.pb";
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Successfully read data from cache file: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (ATXEngagementRecordManager)sharedInstance
{
  if (sharedInstance__pasOnceToken7_6 != -1)
  {
    +[ATXEngagementRecordManager sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_7;

  return v3;
}

- (ATXEngagementRecordManager)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v4 = [(ATXEngagementRecordManager *)self initWithCacheDirectory:v3];

  return v4;
}

void __44__ATXEngagementRecordManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_7;
  sharedInstance__pasExprOnceResult_7 = v1;

  objc_autoreleasePoolPop(v0);
}

BOOL __71__ATXEngagementRecordManager__removeEngagedSuggestionsIfPossibleNoSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 engagementRecordType] & 0x380) != 0)
  {
    goto LABEL_2;
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = [v3 executable];
  v8 = [v6 referenceCountForExecutable:v7];

  if (!v8)
  {
    v4 = 1;
    goto LABEL_3;
  }

  if (([v3 engagementRecordType] & 0x78) != 0)
  {
LABEL_2:
    v4 = 0;
  }

  else
  {
    v9 = [v3 dateEngaged];
    [v9 timeIntervalSinceNow];
    v4 = fabs(v10) > 14400.0;
  }

LABEL_3:

  return v4;
}

- (ATXEngagementRecordManager)initWithCacheDirectory:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ATXEngagementRecordManager;
  v5 = [(ATXEngagementRecordManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_minDurationForTrackedReferencesToStayAround = 900.0;
    v7 = [v4 stringByAppendingPathComponent:@"ATXEngagementRecords.pb"];
    path = v6->_path;
    v6->_path = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = [[ATXExecutableReferenceManager alloc] initWithCacheDirectory:v4 minDurationForTrackedReferencesToStayAround:v6->_minDurationForTrackedReferencesToStayAround];
    referenceManager = v6->_referenceManager;
    v6->_referenceManager = v15;
  }

  return v6;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__ATXEngagementRecordManager_description__block_invoke;
  v5[3] = &unk_1E80C29A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__ATXEngagementRecordManager_description__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _engagedEntriesNoSync];
  v2 = [v5 description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)jsonDict
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ATXEngagementRecordManager_jsonDict__block_invoke;
  block[3] = &unk_1E80C0958;
  block[4] = self;
  v9 = v3;
  v5 = v3;
  dispatch_sync(queue, block);
  v10 = @"engagedEntries";
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v6;
}

void __38__ATXEngagementRecordManager_jsonDict__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _engagedEntriesNoSync];
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

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) jsonDict];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)updateForClientModelCacheUpdate:(id)a3 clientModelId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__ATXEngagementRecordManager_updateForClientModelCacheUpdate_clientModelId___block_invoke;
  block[3] = &unk_1E80C1728;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __76__ATXEngagementRecordManager_updateForClientModelCacheUpdate_clientModelId___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = os_transaction_create();
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Began updating recently engaged cache for client model with id: %@", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(v6 + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__ATXEngagementRecordManager_updateForClientModelCacheUpdate_clientModelId___block_invoke_22;
  v10[3] = &unk_1E80C1728;
  v10[4] = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  [v7 performBatchUpdateOfReferencesWithBlock:v10];
  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Finished updating recently engaged cache for client model with id: %@", buf, 0xCu);
  }
}

uint64_t __76__ATXEngagementRecordManager_updateForClientModelCacheUpdate_clientModelId___block_invoke_22(uint64_t a1)
{
  [*(a1 + 32) _removeEngagedSuggestionsIfPossibleNoSync];
  if (![*(a1 + 40) count])
  {
LABEL_4:
    [*(*(a1 + 32) + 8) markReferencesAsPurgableFromClientModelIdIfPossible:*(a1 + 48)];
    [*(*(a1 + 32) + 8) purgeReferencesForSuggestions:*(a1 + 40) clientModelId:*(a1 + 48)];
    [*(a1 + 32) _removeEngagedSuggestionsIfPossibleNoSync];
    [*(*(a1 + 32) + 8) addReferencesForSuggestions:*(a1 + 40) clientModelId:*(a1 + 48)];
    goto LABEL_6;
  }

  v2 = [*(a1 + 40) firstObject];
  v3 = [v2 clientModelSpecification];
  v4 = [v3 engagementResetPolicy];

  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  [*(*(a1 + 32) + 8) updateReferencesForProactiveSuggestions:*(a1 + 40) clientModelId:*(a1 + 48)];
LABEL_6:
  v5 = *(a1 + 32);

  return [v5 _removeEngagedSuggestionsIfPossibleNoSync];
}

- (BOOL)hasEngagedWithSuggestion:(id)a3 engagementRecordType:(unint64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__ATXEngagementRecordManager_hasEngagedWithSuggestion_engagementRecordType___block_invoke;
  v10[3] = &unk_1E80C2D20;
  v12 = &v14;
  v13 = a4;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __76__ATXEngagementRecordManager_hasEngagedWithSuggestion_engagementRecordType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ATXEngagementRecordManager_hasEngagedWithSuggestion_engagementRecordType___block_invoke_2;
  v6[3] = &unk_1E80C2D20;
  v3 = *(a1 + 56);
  v6[4] = v1;
  v8 = v3;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [v2 performBatchUpdateOfReferencesWithBlock:v6];
}

void __76__ATXEngagementRecordManager_hasEngagedWithSuggestion_engagementRecordType___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removeEngagedSuggestionsIfPossibleNoSync];
  v5 = [*(a1 + 32) _engagedEntriesNoSyncOfType:*(a1 + 56) queryOptions:0];
  [*(a1 + 32) _filterOutExplicitEngagementsThatShouldNotClearOnEngagement:v5];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 _identifiersFromEntries:v5];
  *(*(*(a1 + 48) + 8) + 24) = [v2 hasEngagedWithSuggestion:v3 engagedExecutables:v4];
}

- (BOOL)hasEngagedWithSuggestion:(id)a3 engagedExecutables:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ATXAllowedEngagementRecordManagerClasses();
  v8 = [v5 executableSpecification];
  v9 = [v8 executableClassString];
  v10 = [v7 containsObject:v9];

  if (v10)
  {
    v11 = ATXExecutableIdentifierForSuggestion(v5);
    v12 = [v6 containsObject:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasEngagedWithExecutable:(id)a3 engagementRecordType:(unint64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__ATXEngagementRecordManager_hasEngagedWithExecutable_engagementRecordType___block_invoke;
  v10[3] = &unk_1E80C2D20;
  v12 = &v14;
  v13 = a4;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __76__ATXEngagementRecordManager_hasEngagedWithExecutable_engagementRecordType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ATXEngagementRecordManager_hasEngagedWithExecutable_engagementRecordType___block_invoke_2;
  v6[3] = &unk_1E80C2D20;
  v3 = *(a1 + 56);
  v6[4] = v1;
  v8 = v3;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [v2 performBatchUpdateOfReferencesWithBlock:v6];
}

void __76__ATXEngagementRecordManager_hasEngagedWithExecutable_engagementRecordType___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removeEngagedSuggestionsIfPossibleNoSync];
  v3 = [*(a1 + 32) _engagedEntriesNoSyncOfType:*(a1 + 56) queryOptions:0];
  [*(a1 + 32) _filterOutExplicitEngagementsThatShouldNotClearOnEngagement:v3];
  v2 = [*(a1 + 32) _identifiersFromEntries:v3];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) hasEngagedWithExecutable:*(a1 + 40) engagedExecutables:v2];
}

- (BOOL)hasEngagedWithExecutable:(id)a3 engagedExecutables:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ATXExecutableIdentifier alloc] initWithString:v6];

  LOBYTE(v6) = [v5 containsObject:v7];
  return v6;
}

- (void)_filterOutExplicitEngagementsThatShouldNotClearOnEngagement:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__ATXEngagementRecordManager__filterOutExplicitEngagementsThatShouldNotClearOnEngagement___block_invoke;
  v6[3] = &unk_1E80C2D48;
  v6[4] = self;
  v4 = a3;
  v5 = [v3 predicateWithBlock:v6];
  [v4 filterUsingPredicate:v5];
}

uint64_t __90__ATXEngagementRecordManager__filterOutExplicitEngagementsThatShouldNotClearOnEngagement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 engagementRecordType] & 0x78) == 0 && (objc_msgSend(v3, "engagementRecordType"))
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = [v3 executable];
    v4 = [v6 canExecutableClearOnEngagement:v7];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)engagedExecutablesOfType:(unint64_t)a3 queryOptions:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ATXEngagementRecordManager_engagedExecutablesOfType_queryOptions___block_invoke;
  v7[3] = &unk_1E80C2D70;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  v7[7] = a4;
  dispatch_sync(queue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __68__ATXEngagementRecordManager_engagedExecutablesOfType_queryOptions___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 8);
  v5[1] = 3221225472;
  v5[2] = __68__ATXEngagementRecordManager_engagedExecutablesOfType_queryOptions___block_invoke_2;
  v5[3] = &unk_1E80C2D70;
  v6 = v1;
  v7 = v2;
  return [v3 performBatchUpdateOfReferencesWithBlock:v5];
}

void __68__ATXEngagementRecordManager_engagedExecutablesOfType_queryOptions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removeEngagedSuggestionsIfPossibleNoSync];
  v2 = *(a1 + 32);
  v6 = [v2 _engagedEntriesNoSyncOfType:*(a1 + 48) queryOptions:*(a1 + 56)];
  v3 = [v2 _identifiersFromEntries:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)addEngagedSuggestion:(id)a3 engagementRecordType:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__ATXEngagementRecordManager_addEngagedSuggestion_engagementRecordType___block_invoke;
  block[3] = &unk_1E80C2D98;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __72__ATXEngagementRecordManager_addEngagedSuggestion_engagementRecordType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeEngagedSuggestionsIfPossibleNoSync];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _addEngagedSuggestionNoSync:v3 type:v4];
}

- (void)addEngagedExecutable:(id)a3 clientModelId:(id)a4 engagementRecordType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__ATXEngagementRecordManager_addEngagedExecutable_clientModelId_engagementRecordType___block_invoke;
    v12[3] = &unk_1E80C2DC0;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = a5;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXEngagementRecordManager addEngagedExecutable:a5 clientModelId:v11 engagementRecordType:?];
    }
  }
}

void __86__ATXEngagementRecordManager_addEngagedExecutable_clientModelId_engagementRecordType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeEngagedSuggestionsIfPossibleNoSync];
  v2 = [[ATXExecutableIdentifier alloc] initWithString:*(a1 + 40)];
  [*(*(a1 + 32) + 8) recordExecutable:v2 clientModelId:*(a1 + 48) shouldClearEngagement:0];
  [*(a1 + 32) _addEngagedExcutableNoSync:v2 clientModelId:*(a1 + 48) type:*(a1 + 56)];
}

- (void)addHiddenSuggestion:(id)a3 duration:(double)a4 engagementRecordType:(unint64_t)a5
{
  v8 = a3;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__ATXEngagementRecordManager_addHiddenSuggestion_duration_engagementRecordType___block_invoke;
  v11[3] = &unk_1E80C16D8;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)removeEngagementForSuggestion:(id)a3 recordType:(unint64_t)a4
{
  v6 = ATXExecutableIdentifierForSuggestion(a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ATXEngagementRecordManager_removeEngagementForSuggestion_recordType___block_invoke;
  v8[3] = &unk_1E80C2E10;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(ATXEngagementRecordManager *)self _removeEngagementsOnQueuePassingTest:v8];
}

BOOL __71__ATXEngagementRecordManager_removeEngagementForSuggestion_recordType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executable];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 engagementRecordType] == *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeAllEngagementsForSuggestion:(id)a3
{
  v4 = ATXExecutableIdentifierForSuggestion(a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ATXEngagementRecordManager_removeAllEngagementsForSuggestion___block_invoke;
  v6[3] = &unk_1E80C2E38;
  v7 = v4;
  v5 = v4;
  [(ATXEngagementRecordManager *)self _removeEngagementsOnQueuePassingTest:v6];
}

uint64_t __64__ATXEngagementRecordManager_removeAllEngagementsForSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executable];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)removeAllEngagementsOfRecordType:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__ATXEngagementRecordManager_removeAllEngagementsOfRecordType___block_invoke;
  v3[3] = &__block_descriptor_40_e34_B16__0__ATXEngagementRecordEntry_8l;
  v3[4] = a3;
  [(ATXEngagementRecordManager *)self _removeEngagementsOnQueuePassingTest:v3];
}

- (void)removeEngagementForExecutableIdentifier:(id)a3 recordType:(unint64_t)a4 abortingRemovalIfEngagementDateIsLaterThanDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF00] distantFuture];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __128__ATXEngagementRecordManager_removeEngagementForExecutableIdentifier_recordType_abortingRemovalIfEngagementDateIsLaterThanDate___block_invoke;
  v12[3] = &unk_1E80C2E80;
  v14 = v9;
  v15 = a4;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [(ATXEngagementRecordManager *)self _removeEngagementsOnQueuePassingTest:v12];
}

uint64_t __128__ATXEngagementRecordManager_removeEngagementForExecutableIdentifier_recordType_abortingRemovalIfEngagementDateIsLaterThanDate___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 executable];
  if (![v4 isEqual:a1[4]])
  {
LABEL_6:

    goto LABEL_7;
  }

  v5 = [v3 engagementRecordType];
  v6 = a1[6];

  if (v5 != v6)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v7 = a1[5];
  v8 = [v3 dateEngaged];
  v9 = [v7 laterDate:v8];
  v10 = a1[5];

  v4 = __atxlog_handle_home_screen();
  v11 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v9 != v10)
  {
    if (v11)
    {
      v12 = a1[6];
      v13 = a1[4];
      v18 = 134218242;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "EngagementRecordManager: not removing engagement (type %lu) for executable identifier %@ because it was engaged too recently", &v18, 0x16u);
    }

    goto LABEL_6;
  }

  if (v11)
  {
    v16 = a1[6];
    v17 = a1[4];
    v18 = 134218242;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "EngagementRecordManager: removing engagement (type %lu) for executable identifier %@", &v18, 0x16u);
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (void)_removeEngagementsOnQueuePassingTest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ATXEngagementRecordManager__removeEngagementsOnQueuePassingTest___block_invoke;
  v7[3] = &unk_1E80C0D78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __67__ATXEngagementRecordManager__removeEngagementsOnQueuePassingTest___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _engagedEntriesNoSync];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
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

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ((*(*(a1 + 40) + 16))(*(a1 + 40)))
        {
          [v3 addObject:{v9, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [v4 minusSet:v3];
    [*(a1 + 32) _serializeAndWriteNoSyncSet:v4];
  }
}

- (void)removeAllEngagementsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ATXEngagementRecordManager_removeAllEngagementsWithCompletion___block_invoke;
  v7[3] = &unk_1E80C0D78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __65__ATXEngagementRecordManager_removeAllEngagementsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  [v2 _serializeAndWriteNoSyncSet:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (BOOL)hasReferenceForSuggestion:(id)a3
{
  v4 = ATXExecutableIdentifierForSuggestion(a3);
  LOBYTE(self) = [(ATXEngagementRecordManager *)self _referenceCountForExecutable:v4]!= 0;

  return self;
}

- (id)_identifiersFromEntries:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) executable];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_engagedEntriesNoSyncOfType:(unint64_t)a3 queryOptions:(unint64_t)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = self;
  v8 = [(ATXEngagementRecordManager *)self _engagedEntriesNoSync];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (([v13 engagementRecordType] & a3) != 0)
        {
          if (v4)
          {
            if ((v4 & 2) == 0 || [v13 engagementRecordType] == a3)
            {
              referenceManager = v19->_referenceManager;
              v15 = [v13 executable];
              LOBYTE(referenceManager) = [(ATXExecutableReferenceManager *)referenceManager isExecutableHidden:v15];

              if (referenceManager & 1) != 0 || (v16 = v19->_referenceManager, [v13 executable], v17 = objc_claimAutoreleasedReturnValue(), LOBYTE(v16) = -[ATXExecutableReferenceManager canExecutableClearOnEngagement:](v16, "canExecutableClearOnEngagement:", v17), v17, (v16))
              {
LABEL_15:
                [v7 addObject:v13];
                continue;
              }
            }
          }

          else if ((v4 & 2) == 0 || [v13 engagementRecordType] == a3)
          {
            goto LABEL_15;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)fetchEngagedEntriesWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__ATXEngagementRecordManager_fetchEngagedEntriesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E80C2008;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __71__ATXEngagementRecordManager_fetchEngagedEntriesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _engagedEntriesNoSync];
  (*(v1 + 16))(v1, v2);
}

- (void)_addEngagedSuggestionNoSync:(id)a3 type:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = ATXAllowedEngagementRecordManagerClasses();
  v8 = [v6 executableSpecification];
  v9 = [v8 executableClassString];
  v10 = [v7 containsObject:v9];

  if (v10)
  {
    v11 = ATXExecutableIdentifierForSuggestion(v6);
    v12 = [v6 clientModelSpecification];
    v13 = [v12 clientModelId];

    [(ATXEngagementRecordManager *)self _addEngagedExcutableNoSync:v11 clientModelId:v13 type:a4];
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v20 = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "%@ - adding engaged suggestion to engagement record manager: %@", &v20, 0x16u);
    }

    if (a4 == 4)
    {
      v17 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v6 executableSpecification];
        v19 = [v18 executableIdentifier];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "EngagementRecordManager: adding inferred engagement for suggestion with executable spec ID %@", &v20, 0xCu);
      }
    }
  }
}

- (void)_addEngagedExcutableNoSync:(id)a3 clientModelId:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  referenceManager = self->_referenceManager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__ATXEngagementRecordManager__addEngagedExcutableNoSync_clientModelId_type___block_invoke;
  v13[3] = &unk_1E80C2DC0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [(ATXExecutableReferenceManager *)referenceManager performBatchUpdateOfReferencesWithBlock:v13];
}

void __76__ATXEngagementRecordManager__addEngagedExcutableNoSync_clientModelId_type___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) updateDateOfReferenceForExecutable:*(a1 + 40) clientModelId:*(a1 + 48)];
  v6 = [*(a1 + 32) _engagedEntriesNoSync];
  v2 = [ATXEngagementRecordEntry alloc];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(ATXEngagementRecordEntry *)v2 initWithExecutable:v3 dateEngaged:v4 engagementRecordType:*(a1 + 56)];

  [v6 removeObject:v5];
  [v6 addObject:v5];
  [*(a1 + 32) _serializeAndWriteNoSyncSet:v6];
  [*(a1 + 32) _logDidAddEntryToBiomeStream:v5];
}

- (void)_addHiddenSuggestionNoSync:(id)a3 duration:(double)a4 engagementRecordType:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v9 = ATXAllowedEngagementRecordManagerClasses();
  v10 = [v8 executableSpecification];
  v11 = [v10 executableClassString];
  v12 = [v9 containsObject:v11];

  if (v12)
  {
    v13 = ATXExecutableIdentifierForSuggestion(v8);
    referenceManager = self->_referenceManager;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__ATXEngagementRecordManager__addHiddenSuggestionNoSync_duration_engagementRecordType___block_invoke;
    v20[3] = &unk_1E80C2EA8;
    v23 = a4;
    v20[4] = self;
    v21 = v13;
    v15 = v8;
    v22 = v15;
    v24 = a5;
    v16 = v13;
    [(ATXExecutableReferenceManager *)referenceManager performBatchUpdateOfReferencesWithBlock:v20];
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "%@ - adding explicitly rejected suggestion to engagement record manager: %@", buf, 0x16u);
    }
  }
}

void __87__ATXEngagementRecordManager__addHiddenSuggestionNoSync_duration_engagementRecordType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 < *(v3 + 40))
  {
    v2 = *(v3 + 40);
  }

  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v2];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = [*(a1 + 48) clientModelSpecification];
  v7 = [v6 clientModelId];
  [v5 markReferenceAsHiddenForExecutable:v4 clientModelId:v7 untilDate:v13];

  v8 = [*(a1 + 32) _engagedEntriesNoSync];
  v9 = [ATXEngagementRecordEntry alloc];
  v10 = *(a1 + 40);
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [(ATXEngagementRecordEntry *)v9 initWithExecutable:v10 dateEngaged:v11 engagementRecordType:*(a1 + 64)];

  [v8 addObject:v12];
  [*(a1 + 32) _serializeAndWriteNoSyncSet:v8];
  [*(a1 + 32) _logDidAddEntryToBiomeStream:v12];
}

- (void)_logDidAddEntryToBiomeStream:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  if (!self->_eventStream)
  {
    v6 = objc_alloc_init(ATXBiomeERMStream);
    eventStream = self->_eventStream;
    self->_eventStream = v6;
  }

  referenceManager = self->_referenceManager;
  v9 = [v5 executable];
  v14 = [(ATXExecutableReferenceManager *)referenceManager clientModelIdsForExecutable:v9];

  v10 = [ATXERMEvent alloc];
  v11 = objc_opt_new();
  v12 = [(ATXERMEvent *)v10 initWithEventDate:v11 eventType:1 recordEntry:v5 clientModelIds:v14];

  v13 = [(ATXBiomeERMStream *)self->_eventStream source];
  [v13 sendEvent:v12];
}

- (void)_serializeAndWriteNoSyncSet:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  v14 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v14];
  v8 = v14;
  objc_autoreleasePoolPop(v6);
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__ATXEngagementRecordManager__serializeAndWriteNoSyncSet___block_invoke;
    v12[3] = &unk_1E80C0958;
    v12[4] = self;
    v13 = v7;
    [ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:@"ATXEngagementRecordManager" block:v12];
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing blending after engagement record manager update", v11, 2u);
    }

    [MEMORY[0x1E69C5BB8] refreshBlendingLayerWithReason:@"ERM change"];
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXEngagementRecordManager *)v8 _serializeAndWriteNoSyncSet:v10];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (BOOL)_writeData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = open([(NSString *)self->_path fileSystemRepresentation], 514, 384);
  if (v5 == -1)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXEngagementRecordManager _writeData:];
    }

    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = ATXCacheFileWrite();
    if ((v6 & 0x80000000) == 0)
    {
      close(v6);
    }

    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = @"ATXEngagementRecords.pb";
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Successfully wrote data to cache file: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (unint64_t)_referenceCountForExecutable:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ATXEngagementRecordManager__referenceCountForExecutable___block_invoke;
  block[3] = &unk_1E80C2ED0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __59__ATXEngagementRecordManager__referenceCountForExecutable___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) referenceCountForExecutable:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)addEngagedExecutable:(uint64_t)a1 clientModelId:(NSObject *)a2 engagementRecordType:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "EngagementRecordManager: addEngagedExecutable null for engagementRecordType: %lu", &v2, 0xCu);
}

- (void)_engagedEntriesNoSync
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Unable to get recent suggestions: %@", &v2, 0xCu);
}

- (void)_serializeAndWriteNoSyncSet:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "Unable to serialize recent engagements. Error: %@", &v2, 0xCu);
}

- (void)_writeData:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_1_15(&dword_1BF549000, v1, v2, "Couldn't create cache file: [%i] %s", v3, v4, v5, v6, v7);
}

- (void)_readData
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_1_15(&dword_1BF549000, v1, v2, "Couldn't open recently engaged cache file: [%i] %s", v3, v4, v5, v6, v7);
}

@end