@interface ATXRecentActionEngagementCache
+ (id)sharedInstance;
- (ATXRecentActionEngagementCache)init;
- (ATXRecentActionEngagementCache)initWithCacheDirectory:(id)directory;
- (id)_getAllCachedActionsNoSync;
- (id)_recentActionsNoSyncForCacheAtPath:(id)path;
- (id)exceptionsFoundInCacheAtPath:(id)path forCandidateExceptions:(id)exceptions;
- (id)recentActions;
- (void)_addEngagedActionNoSync:(id)sync toCacheAtPath:(id)path;
- (void)_addEngagedActionSetNoSync:(id)sync toCacheAtPath:(id)path;
- (void)_serializeAndWriteNoSyncActionSet:(id)set toCacheAtPath:(id)path;
- (void)addEngagedAction:(id)action;
- (void)clearRecentEngagements;
- (void)clearRecentEngagementsFromCacheAtPath:(id)path withExceptionActions:(id)actions;
@end

@implementation ATXRecentActionEngagementCache

- (ATXRecentActionEngagementCache)init
{
  appPredictionCacheDirectory = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v4 = [(ATXRecentActionEngagementCache *)self initWithCacheDirectory:appPredictionCacheDirectory];

  return v4;
}

- (ATXRecentActionEngagementCache)initWithCacheDirectory:(id)directory
{
  directoryCopy = directory;
  v17.receiver = self;
  v17.super_class = ATXRecentActionEngagementCache;
  v5 = [(ATXRecentActionEngagementCache *)&v17 init];
  if (v5)
  {
    v6 = [directoryCopy stringByAppendingPathComponent:@"ATXRecentMLActions"];
    recentMLEngagementCachePath = v5->_recentMLEngagementCachePath;
    v5->_recentMLEngagementCachePath = v6;

    v8 = [directoryCopy stringByAppendingPathComponent:@"ATXRecentHeuristicActions"];
    recentHeuristicEngagementCachePath = v5->_recentHeuristicEngagementCachePath;
    v5->_recentHeuristicEngagementCachePath = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    queue = v5->_queue;
    v5->_queue = v14;
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_5 != -1)
  {
    +[ATXRecentActionEngagementCache sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_6;

  return v3;
}

void __48__ATXRecentActionEngagementCache_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_6;
  sharedInstance__pasExprOnceResult_6 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)recentActions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__ATXRecentActionEngagementCache_recentActions__block_invoke;
  v5[3] = &unk_1E80C29A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__ATXRecentActionEngagementCache_recentActions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getAllCachedActionsNoSync];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)addEngagedAction:(id)action
{
  actionCopy = action;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ATXRecentActionEngagementCache_addEngagedAction___block_invoke;
  v7[3] = &unk_1E80C0958;
  v8 = actionCopy;
  selfCopy = self;
  v6 = actionCopy;
  dispatch_async(queue, v7);
}

uint64_t __51__ATXRecentActionEngagementCache_addEngagedAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isHeuristic];
  v3 = *(a1 + 32);
  v4 = 8;
  if (v2)
  {
    v4 = 16;
  }

  v5 = *(*(a1 + 40) + v4);
  v6 = *(a1 + 40);

  return [v6 _addEngagedActionNoSync:v3 toCacheAtPath:v5];
}

- (void)clearRecentEngagements
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ATXRecentActionEngagementCache_clearRecentEngagements__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__ATXRecentActionEngagementCache_clearRecentEngagements__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(*(a1 + 32) + 8);
  v11 = 0;
  [v2 removeItemAtPath:v3 error:&v11];
  v4 = v11;

  if (v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__ATXRecentActionEngagementCache_clearRecentEngagements__block_invoke_cold_1();
    }
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = *(*(a1 + 32) + 16);
  v10 = 0;
  [v6 removeItemAtPath:v7 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __56__ATXRecentActionEngagementCache_clearRecentEngagements__block_invoke_cold_2();
    }
  }
}

- (id)_getAllCachedActionsNoSync
{
  v3 = [(ATXRecentActionEngagementCache *)self _recentActionsNoSyncForCacheAtPath:self->_recentMLEngagementCachePath];
  v4 = [(ATXRecentActionEngagementCache *)self _recentActionsNoSyncForCacheAtPath:self->_recentHeuristicEngagementCachePath];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)_recentActionsNoSyncForCacheAtPath:(id)path
{
  pathCopy = path;
  v20 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy options:0 error:&v20];
  v5 = v20;
  v6 = v5;
  if (v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = MEMORY[0x1E696ACD0];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v19 = v6;
    v12 = [v8 unarchivedObjectOfClasses:v11 fromData:v4 error:&v19];
    v13 = v19;

    objc_autoreleasePoolPop(v7);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v17 = __atxlog_handle_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXRecentActionEngagementCache _recentActionsNoSyncForCacheAtPath:];
      }

      v14 = objc_opt_new();
    }

    v16 = v14;

    v6 = v13;
  }

  else
  {
    if ([v5 code] != 260)
    {
      v15 = __atxlog_handle_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXRecentActionEngagementCache _recentActionsNoSyncForCacheAtPath:];
      }
    }

    v16 = objc_opt_new();
  }

  return v16;
}

- (void)_addEngagedActionSetNoSync:(id)sync toCacheAtPath:(id)path
{
  syncCopy = sync;
  pathCopy = path;
  if (syncCopy && [syncCopy count])
  {
    v7 = [(ATXRecentActionEngagementCache *)self _recentActionsNoSyncForCacheAtPath:pathCopy];
    [v7 unionSet:syncCopy];
    [(ATXRecentActionEngagementCache *)self _serializeAndWriteNoSyncActionSet:v7 toCacheAtPath:pathCopy];
  }
}

- (void)_addEngagedActionNoSync:(id)sync toCacheAtPath:(id)path
{
  if (sync)
  {
    pathCopy = path;
    syncCopy = sync;
    v8 = [(ATXRecentActionEngagementCache *)self _recentActionsNoSyncForCacheAtPath:pathCopy];
    [v8 addObject:syncCopy];

    [(ATXRecentActionEngagementCache *)self _serializeAndWriteNoSyncActionSet:v8 toCacheAtPath:pathCopy];
  }
}

- (void)_serializeAndWriteNoSyncActionSet:(id)set toCacheAtPath:(id)path
{
  setCopy = set;
  pathCopy = path;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_autoreleasePoolPush();
  v12 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:setCopy requiringSecureCoding:1 error:&v12];
  v10 = v12;
  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    [v9 writeToFile:pathCopy atomically:1];
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXRecentActionEngagementCache _serializeAndWriteNoSyncActionSet:toCacheAtPath:];
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (id)exceptionsFoundInCacheAtPath:(id)path forCandidateExceptions:(id)exceptions
{
  pathCopy = path;
  exceptionsCopy = exceptions;
  if ([exceptionsCopy count])
  {
    v8 = [(ATXRecentActionEngagementCache *)self _recentActionsNoSyncForCacheAtPath:pathCopy];
    [v8 intersectSet:exceptionsCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (void)clearRecentEngagementsFromCacheAtPath:(id)path withExceptionActions:(id)actions
{
  pathCopy = path;
  actionsCopy = actions;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__ATXRecentActionEngagementCache_clearRecentEngagementsFromCacheAtPath_withExceptionActions___block_invoke;
  block[3] = &unk_1E80C1728;
  v12 = actionsCopy;
  v13 = pathCopy;
  selfCopy = self;
  v9 = pathCopy;
  v10 = actionsCopy;
  dispatch_sync(queue, block);
}

void __93__ATXRecentActionEngagementCache_clearRecentEngagementsFromCacheAtPath_withExceptionActions___block_invoke(id *a1)
{
  if ([a1[4] count])
  {
    v3 = [a1[6] exceptionsFoundInCacheAtPath:a1[5] forCandidateExceptions:a1[4]];
    if ([v3 count])
    {
      [a1[6] _serializeAndWriteNoSyncActionSet:v3 toCacheAtPath:a1[5]];
    }

    else
    {
      removeCacheFile(a1[5]);
    }
  }

  else
  {
    v2 = a1[5];

    removeCacheFile(v2);
  }
}

- (void)_recentActionsNoSyncForCacheAtPath:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "Error reading %@: %@", v2, 0x16u);
}

@end