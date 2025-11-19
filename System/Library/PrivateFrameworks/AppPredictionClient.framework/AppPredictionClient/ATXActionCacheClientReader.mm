@interface ATXActionCacheClientReader
- (ATXActionCacheClientReader)initWithChunks:(id)a3;
- (ATXActionCacheClientReader)initWithData:(id)a3;
- (id)_getLockScreenPredictionIndices:(id)a3;
- (id)_predicateForInstalledAndNonEngagedPredictions:(id)a3;
- (id)actionsWithConsumerSubType:(unsigned __int8)a3 limit:(int64_t)a4;
- (id)actionsWithLimit:(int64_t)a3 shouldFilterRestrictedAppsAndRecentEngagements:(BOOL)a4;
- (id)lockscreenPredictionIndicesUpToLimit:(int64_t)a3;
@end

@implementation ATXActionCacheClientReader

- (ATXActionCacheClientReader)initWithData:(id)a3
{
  v4 = ATXCacheFileSplitChunks();
  v5 = [(ATXActionCacheClientReader *)self initWithChunks:v4];

  return v5;
}

- (ATXActionCacheClientReader)initWithChunks:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXActionCacheClientReader;
  v5 = [(ATXActionCacheClientReader *)&v13 init];
  if (v5)
  {
    v6 = [v4 count];
    if (v6 == [(ATXActionCacheClientReader *)v5 chunkCount])
    {
      v7 = [v4 objectAtIndexedSubscript:0];
      scoredActionsChunk = v5->_scoredActionsChunk;
      v5->_scoredActionsChunk = v7;

      v9 = [(ATXActionCacheClientReader *)v5 _getLockScreenPredictionIndices:v4];
      p_super = &v5->_lockscreenPredictionIndices->super;
      v5->_lockscreenPredictionIndices = v9;
    }

    else
    {
      p_super = __atxlog_handle_default();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 count];
        *buf = 134218240;
        v15 = v11;
        v16 = 1024;
        v17 = 4;
        _os_log_impl(&dword_1BF549000, p_super, OS_LOG_TYPE_DEFAULT, "Wrong number of chunks returned from cache. Cache had %lu chunks, expected %i (this may be due to a cache change)", buf, 0x12u);
      }
    }
  }

  return v5;
}

- (id)actionsWithConsumerSubType:(unsigned __int8)a3 limit:(int64_t)a4
{
  if (self->_lockscreenPredictionIndices)
  {
    if (a3 == 22)
    {
      v5 = [(ATXActionCacheClientReader *)self lockscreenPredictionIndicesUpToLimit:a4];
      if ([v5 count])
      {
        v6 = -[ATXActionCacheClientReader actionsWithLimit:shouldFilterRestrictedAppsAndRecentEngagements:](self, "actionsWithLimit:shouldFilterRestrictedAppsAndRecentEngagements:", [v5 lastIndex] + 1, 0);
        v7 = [v5 lastIndex];
        if (v7 >= [v6 count])
        {
          v9 = __atxlog_handle_default();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(ATXActionCacheClientReader *)v5 actionsWithConsumerSubType:v6 limit:v9];
          }

          v8 = MEMORY[0x1E695E0F0];
        }

        else
        {
          v8 = [v6 objectsAtIndexes:v5];
        }
      }

      else
      {
        v8 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v8 = [(ATXActionCacheClientReader *)self actionsWithLimit:a4 shouldFilterRestrictedAppsAndRecentEngagements:1];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)lockscreenPredictionIndicesUpToLimit:(int64_t)a3
{
  v5 = self->_lockscreenPredictionIndices;
  if ([(NSIndexSet *)self->_lockscreenPredictionIndices count]> a3)
  {
    v6 = objc_opt_new();
    lockscreenPredictionIndices = self->_lockscreenPredictionIndices;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__ATXActionCacheClientReader_lockscreenPredictionIndicesUpToLimit___block_invoke;
    v11[3] = &unk_1E80C14E0;
    v8 = v6;
    v12 = v8;
    v13 = a3;
    [(NSIndexSet *)lockscreenPredictionIndices enumerateIndexesUsingBlock:v11];
    v9 = v8;

    v5 = v9;
  }

  return v5;
}

unint64_t __67__ATXActionCacheClientReader_lockscreenPredictionIndicesUpToLimit___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) count];
  if (result >= *(a1 + 40))
  {
    *a3 = 1;
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 addIndex:a2];
  }

  return result;
}

- (id)_predicateForInstalledAndNonEngagedPredictions:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__ATXActionCacheClientReader__predicateForInstalledAndNonEngagedPredictions___block_invoke;
  v8[3] = &unk_1E80C1508;
  v9 = v3;
  v5 = v3;
  v6 = [v4 predicateWithBlock:v8];

  return v6;
}

BOOL __77__ATXActionCacheClientReader__predicateForInstalledAndNonEngagedPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 predictedItem];
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 bundleId];
    v4 = [ATXApplicationRecord isInstalledAndNotRestrictedForBundle:v5];
  }

  return v4;
}

- (id)actionsWithLimit:(int64_t)a3 shouldFilterRestrictedAppsAndRecentEngagements:(BOOL)a4
{
  if (self->_scoredActionsChunk)
  {
    v5 = a4;
    v7 = [ATXPredictionSetReader actionReader:?];
    if (v5)
    {
      v8 = objc_opt_new();
      v9 = [v8 recentActions];
      v10 = [(ATXActionCacheClientReader *)self _predicateForInstalledAndNonEngagedPredictions:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v7 readScoredPredictionsWithLimit:a3 filterPredicate:v10];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)_getLockScreenPredictionIndices:(id)a3
{
  v5 = a3;
  if ([v5 count] <= 1)
  {
    [(ATXActionCacheClientReader *)a2 _getLockScreenPredictionIndices:?];
  }

  v6 = [v5 objectAtIndexedSubscript:1];
  v12 = [v6 bytes];
  v7 = [v6 bytes];
  v8 = [v6 length];
  Integer = ATXCacheReadInteger(&v12, v7 + v8);
  v10 = objc_opt_new();
  if (Integer >= 1)
  {
    do
    {
      [v10 addIndex:{ATXCacheReadInteger(&v12, v7 + v8)}];
      Integer = (Integer - 1);
    }

    while (Integer);
  }

  return v10;
}

- (void)actionsWithConsumerSubType:(NSObject *)a3 limit:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 134218240;
  v6 = [a1 lastIndex];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "Index %lu out of bounds for predictions with count %lu", &v5, 0x16u);
}

- (void)_getLockScreenPredictionIndices:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXActionCacheClientReader.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"chunks.count >= 2"}];
}

@end