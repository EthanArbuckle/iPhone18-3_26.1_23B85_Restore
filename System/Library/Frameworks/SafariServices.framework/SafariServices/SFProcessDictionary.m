@interface SFProcessDictionary
- (SFProcessDictionary)init;
- (SFProcessDictionary)initWithCacheCapacity:(unint64_t)a3;
- (id)incrementReferenceForPID:(int)a3 additionalKey:(id)a4 valueCreationBlock:(id)a5;
- (void)_handleProcessStateUpdate:(int)a3 state:(unsigned __int8)a4;
- (void)_removeUnreferencedObjectsIfNeeded;
- (void)_removeValuesForPID:(id)a3;
- (void)_updateInterestedApplications;
- (void)dealloc;
- (void)decrementReferenceForPID:(int)a3;
@end

@implementation SFProcessDictionary

- (SFProcessDictionary)initWithCacheCapacity:(unint64_t)a3
{
  result = [(SFProcessDictionary *)self init];
  result->_cacheCapacity = a3;
  return result;
}

- (SFProcessDictionary)init
{
  v19.receiver = self;
  v19.super_class = SFProcessDictionary;
  v2 = [(SFProcessDictionary *)&v19 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [MEMORY[0x1E695DF90] dictionary];
    values = v2->_values;
    v2->_values = v3;

    v5 = [MEMORY[0x1E696AB50] set];
    references = v2->_references;
    v2->_references = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    pidsPendingTermination = v2->_pidsPendingTermination;
    v2->_pidsPendingTermination = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    recentlyReferencedPIDs = v2->_recentlyReferencedPIDs;
    v2->_recentlyReferencedPIDs = v9;

    v2->_cacheCapacity = 3;
    v11 = MEMORY[0x1E69C75F8];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __27__SFProcessDictionary_init__block_invoke;
    v16[3] = &unk_1E8494528;
    objc_copyWeak(&v17, &location);
    v12 = [v11 monitorWithConfiguration:v16];
    processMonitor = v2->_processMonitor;
    v2->_processMonitor = v12;

    v14 = v2;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__SFProcessDictionary_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__SFProcessDictionary_init__block_invoke_2;
  v5[3] = &unk_1E8494500;
  objc_copyWeak(&v6, (a1 + 32));
  [v3 setUpdateHandler:v5];
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v3 setStateDescriptor:v4];

  objc_destroyWeak(&v6);
}

void __27__SFProcessDictionary_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__SFProcessDictionary_init__block_invoke_3;
  v7[3] = &unk_1E8490298;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v9);
}

void __27__SFProcessDictionary_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) process];
    v4 = [v3 pid];
    v5 = [*(a1 + 32) state];
    [v6 _handleProcessStateUpdate:v4 state:{objc_msgSend(v5, "taskState")}];

    WeakRetained = v6;
  }
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v3.receiver = self;
  v3.super_class = SFProcessDictionary;
  [(SFProcessDictionary *)&v3 dealloc];
}

- (void)_updateInterestedApplications
{
  v3 = [(NSMutableDictionary *)self->_values allKeys];
  processMonitor = self->_processMonitor;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SFProcessDictionary__updateInterestedApplications__block_invoke;
  v6[3] = &unk_1E8494570;
  v7 = v3;
  v5 = v3;
  [(RBSProcessMonitor *)processMonitor updateConfiguration:v6];
}

void __52__SFProcessDictionary__updateInterestedApplications__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_setByApplyingBlock:&__block_literal_global_45];
  v5 = [MEMORY[0x1E69C7610] predicateMatchingIdentifiers:v4];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setPredicates:v6];
}

- (void)_handleProcessStateUpdate:(int)a3 state:(unsigned __int8)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
    if ([(NSCountedSet *)self->_references countForObject:v6])
    {
      v7 = WBS_LOG_CHANNEL_PREFIXProcessDictionary();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        references = self->_references;
        v12 = v7;
        v13[0] = 67109376;
        v13[1] = a3;
        v14 = 1024;
        v15 = [(NSCountedSet *)references countForObject:v6];
        _os_log_debug_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEBUG, "process %d has been terminated, but still has a refcount of %d", v13, 0xEu);
      }

      [(NSMutableSet *)self->_pidsPendingTermination addObject:v6];
    }

    else
    {
      v8 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:v6];
      v9 = [v8 count];

      if (v9)
      {
        v10 = WBS_LOG_CHANNEL_PREFIXProcessDictionary();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [SFProcessDictionary _handleProcessStateUpdate:a3 state:v10];
        }

        [(SFProcessDictionary *)self _removeValuesForPID:v6];
      }
    }
  }
}

- (void)_removeValuesForPID:(id)a3
{
  values = self->_values;
  v5 = a3;
  [(NSMutableDictionary *)values removeObjectForKey:v5];
  [(NSMutableArray *)self->_recentlyReferencedPIDs removeObject:v5];
  [(NSMutableSet *)self->_pidsPendingTermination removeObject:v5];

  [(SFProcessDictionary *)self _updateInterestedApplications];
}

- (void)decrementReferenceForPID:(int)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
  if ([(NSCountedSet *)self->_references countForObject:v5])
  {
    v6 = [(NSMutableSet *)self->_pidsPendingTermination containsObject:v5];
    [(NSCountedSet *)self->_references removeObject:v5];
    if (v6)
    {
      if (([(NSCountedSet *)self->_references containsObject:v5]& 1) == 0)
      {
        v7 = WBS_LOG_CHANNEL_PREFIXProcessDictionary();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(SFProcessDictionary *)a3 decrementReferenceForPID:v7];
        }

        [(SFProcessDictionary *)self _removeValuesForPID:v5];
      }
    }

    else
    {
      [(SFProcessDictionary *)self _removeUnreferencedObjectsIfNeeded];
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXProcessDictionary();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SFProcessDictionary *)a3 decrementReferenceForPID:v8];
    }
  }
}

- (void)_removeUnreferencedObjectsIfNeeded
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "removing resources for pids %{public}@", &v2, 0xCu);
}

uint64_t __57__SFProcessDictionary__removeUnreferencedObjectsIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 32) containsObject:a2] ^ 1;
  if (a2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t __57__SFProcessDictionary__removeUnreferencedObjectsIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(*(a1 + 32) + 24);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(*(a1 + 32) + 24) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (id)incrementReferenceForPID:(int)a3 additionalKey:(id)a4 valueCreationBlock:(id)a5
{
  v6 = *&a3;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  if (v8)
  {
    v11 = [v8 copyWithZone:0];
  }

  else
  {
    v11 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  }

  v12 = v11;
  [(NSCountedSet *)self->_references addObject:v10];
  [(NSMutableArray *)self->_recentlyReferencedPIDs removeObject:v10];
  [(NSMutableArray *)self->_recentlyReferencedPIDs insertObject:v10 atIndex:0];
  v13 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:v10];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXProcessDictionary();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SFProcessDictionary incrementReferenceForPID:v14 additionalKey:v6 valueCreationBlock:v15];
    }
  }

  else
  {
    v14 = v9[2](v9);
    v16 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:v10];
    if (v16)
    {
      [(NSMutableDictionary *)self->_values setObject:v16 forKeyedSubscript:v10];
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_values setObject:v17 forKeyedSubscript:v10];
    }

    v18 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:v10];
    [v18 setObject:v14 forKeyedSubscript:v12];

    [(SFProcessDictionary *)self _updateInterestedApplications];
    v19 = WBS_LOG_CHANNEL_PREFIXProcessDictionary();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22[0] = 67109635;
      v22[1] = v6;
      v23 = 2113;
      v24 = v8;
      v25 = 2113;
      v26 = v14;
      _os_log_debug_impl(&dword_1D4644000, v19, OS_LOG_TYPE_DEBUG, "created resource for pid %d, %{private}@: %{private}@", v22, 0x1Cu);
    }
  }

  v20 = v14;

  return v20;
}

- (void)_handleProcessStateUpdate:(int)a1 state:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "removing resources for process %d because it has been terminated", v2, 8u);
}

- (void)decrementReferenceForPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "last reference to resource for terminated pid %d has been removed. removing the resource", v2, 8u);
}

- (void)decrementReferenceForPID:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "resource for pid %d has no references to remove", v2, 8u);
}

- (void)incrementReferenceForPID:(uint64_t)a1 additionalKey:(int)a2 valueCreationBlock:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109379;
  v3[1] = a2;
  v4 = 2113;
  v5 = a1;
  _os_log_debug_impl(&dword_1D4644000, log, OS_LOG_TYPE_DEBUG, "pid %d has existing resource %{private}@", v3, 0x12u);
}

@end