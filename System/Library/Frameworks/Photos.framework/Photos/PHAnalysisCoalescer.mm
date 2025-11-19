@interface PHAnalysisCoalescer
+ (void)_analyzeBufferedAssets:(id)a3 inLibrary:(id)a4;
+ (void)_logFailureIfNeededForResult:(id)a3 andFeature:(unint64_t)a4;
- (PHAnalysisCoalescer)initWithLibrary:(id)a3;
- (id)_snapshotOfBufferedAssets;
- (void)coalesceAndAnalyzeAssets:(id)a3 forFeature:(unint64_t)a4;
@end

@implementation PHAnalysisCoalescer

- (id)_snapshotOfBufferedAssets
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&self->_lock);
  lock_assetUUIDsByFeature = self->_lock_assetUUIDsByFeature;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PHAnalysisCoalescer__snapshotOfBufferedAssets__block_invoke;
  v8[3] = &unk_1E75A7328;
  v5 = v3;
  v9 = v5;
  [(NSMutableDictionary *)lock_assetUUIDsByFeature enumerateKeysAndObjectsUsingBlock:v8];
  [(NSMutableDictionary *)self->_lock_assetUUIDsByFeature removeAllObjects];
  lock_pendingBlock = self->_lock_pendingBlock;
  self->_lock_pendingBlock = 0;

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

void __48__PHAnalysisCoalescer__snapshotOfBufferedAssets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 copy];
  if ([v6 count] >= 0xFB)
  {
    v7 = [v6 subarrayWithRange:{objc_msgSend(v5, "count") - 250, 250}];

    v6 = v7;
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
}

- (void)coalesceAndAnalyzeAssets:(id)a3 forFeature:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_assetUUIDsByFeature objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)self->_lock_assetUUIDsByFeature setObject:v8 forKeyedSubscript:v7];
  }

  [v8 addObjectsFromArray:v6];
  lock_pendingBlock = self->_lock_pendingBlock;
  if (lock_pendingBlock)
  {
    dispatch_block_cancel(lock_pendingBlock);
    v10 = self->_lock_pendingBlock;
    self->_lock_pendingBlock = 0;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PHAnalysisCoalescer_coalesceAndAnalyzeAssets_forFeature___block_invoke;
  block[3] = &unk_1E75A7300;
  objc_copyWeak(&v15, &location);
  block[4] = self;
  v11 = dispatch_block_create(0, block);
  v12 = self->_lock_pendingBlock;
  self->_lock_pendingBlock = v11;

  v13 = dispatch_time(0, 300000000);
  dispatch_after(v13, self->_queue, self->_lock_pendingBlock);
  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __59__PHAnalysisCoalescer_coalesceAndAnalyzeAssets_forFeature___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _snapshotOfBufferedAssets];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 40));
  [PHAnalysisCoalescer _analyzeBufferedAssets:v4 inLibrary:v3];
}

- (PHAnalysisCoalescer)initWithLibrary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PHAnalysisCoalescer;
  v5 = [(PHAnalysisCoalescer *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.photos.analysisCoalescer", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    lock_assetUUIDsByFeature = v5->_lock_assetUUIDsByFeature;
    v5->_lock_assetUUIDsByFeature = v9;

    lock_pendingBlock = v5->_lock_pendingBlock;
    v5->_lock_pendingBlock = 0;

    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_photoLibrary, v4);
    v12 = v5;
  }

  return v5;
}

+ (void)_logFailureIfNeededForResult:(id)a3 andFeature:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 isFailure])
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 error];
      v8 = 134218242;
      v9 = a4;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Error analyzing assets for analysis coordinator feature: %lu error: %@", &v8, 0x16u);
    }
  }
}

+ (void)_analyzeBufferedAssets:(id)a3 inLibrary:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PHAnalysisCoalescer__analyzeBufferedAssets_inLibrary___block_invoke;
    v8[3] = &unk_1E75A7328;
    v9 = v5;
    [a3 enumerateKeysAndObjectsUsingBlock:v8];
    v7 = v9;
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "PHAnalysisCoalescer attempted to analyze assets without a photoLibrary", buf, 2u);
    }
  }
}

void __56__PHAnalysisCoalescer__analyzeBufferedAssets_inLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [*(a1 + 32) assetsdClient];
  v8 = [v7 photoKitClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PHAnalysisCoalescer__analyzeBufferedAssets_inLibrary___block_invoke_2;
  v11[3] = &unk_1E75A7370;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v9 = v5;
  v10 = [v8 analyzeAssets:v9 forFeature:v6 withCompletionHandler:v11];
}

void __56__PHAnalysisCoalescer__analyzeBufferedAssets_inLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = [v3 error];
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v6 = [v3 error];
      if ([v6 code] == 4097)
      {

LABEL_9:
        v9 = [*(a1 + 32) assetsdClient];
        v10 = [v9 photoKitClient];
        v11 = [v10 analyzeAssets:*(a1 + 40) forFeature:? withCompletionHandler:?];

        goto LABEL_7;
      }

      v7 = [v3 error];
      v8 = [v7 code];

      if (v8 == 4099)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  [PHAnalysisCoalescer _logFailureIfNeededForResult:v3 andFeature:*(a1 + 48)];
LABEL_7:
}

@end