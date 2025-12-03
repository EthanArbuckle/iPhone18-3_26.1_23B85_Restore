@interface ATXCacheReader
- (ATXCacheReader)initWithCacheBasePath:(id)path;
- (id)readCacheFileForCachePath:(id)path;
- (id)readCacheFileForConsumerSubtype:(unsigned __int8)subtype;
- (void)_handleDirChange;
- (void)dealloc;
@end

@implementation ATXCacheReader

- (void)dealloc
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_65];
  vnodeSource = self->_vnodeSource;
  if (vnodeSource)
  {
    dispatch_source_cancel(vnodeSource);
  }

  v4.receiver = self;
  v4.super_class = ATXCacheReader;
  [(ATXCacheReader *)&v4 dealloc];
}

uint64_t __25__ATXCacheReader_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  if ((result & 0x80000000) == 0)
  {
    return close(result);
  }

  return result;
}

- (ATXCacheReader)initWithCacheBasePath:(id)path
{
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = ATXCacheReader;
  v5 = [(ATXCacheReader *)&v29 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69C5D60]);
    v7 = objc_opt_new();
    v8 = [v6 initWithGuardedData:v7];
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    if (pathCopy)
    {
      v10 = pathCopy;
      v12 = (v5 + 16);
      appPredictionDirectory = *(v5 + 2);
      *(v5 + 2) = v10;
    }

    else
    {
      appPredictionDirectory = [MEMORY[0x1E698B010] appPredictionDirectory];
      v13 = [appPredictionDirectory stringByAppendingPathComponent:@"caches/ATXCacheFile"];
      v12 = (v5 + 16);
      v14 = *(v5 + 2);
      *(v5 + 2) = v13;
    }

    stringByDeletingLastPathComponent = [*v12 stringByDeletingLastPathComponent];
    v16 = open([stringByDeletingLastPathComponent UTF8String], 0x8000);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = v16;
      objc_initWeak(&location, v5);
      v18 = dispatch_get_global_queue(9, 0);
      v19 = dispatch_source_create(MEMORY[0x1E69E9728], v17, 2uLL, v18);
      v20 = *(v5 + 3);
      *(v5 + 3) = v19;

      v21 = *(v5 + 3);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __40__ATXCacheReader_initWithCacheBasePath___block_invoke;
      handler[3] = &unk_1E80C10D8;
      objc_copyWeak(&v27, &location);
      dispatch_source_set_event_handler(v21, handler);
      v22 = *(v5 + 3);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __40__ATXCacheReader_initWithCacheBasePath___block_invoke_2;
      v24[3] = &__block_descriptor_36_e5_v8__0l;
      v25 = v17;
      dispatch_source_set_cancel_handler(v22, v24);
      dispatch_resume(*(v5 + 3));
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  return v5;
}

void __40__ATXCacheReader_initWithCacheBasePath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDirChange];
}

- (id)readCacheFileForConsumerSubtype:(unsigned __int8)subtype
{
  subtypeCopy = subtype;
  v5 = +[ATXAppPredictorAssetMapping assetMappingWithCachedAssets];
  v6 = [v5 getFullCachePathWithBaseCachePath:self->_cacheBasePath consumerSubType:subtypeCopy];

  v7 = [(ATXCacheReader *)self readCacheFileForCachePath:v6];

  return v7;
}

- (id)readCacheFileForCachePath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__13;
    v16 = __Block_byref_object_dispose__13;
    v17 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__ATXCacheReader_readCacheFileForCachePath___block_invoke;
    v9[3] = &unk_1E80C40F0;
    v10 = pathCopy;
    v11 = &v12;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __44__ATXCacheReader_readCacheFileForCachePath___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(v3 + 4) & 0x80000000) == 0)
  {
    v4 = [*(a1 + 32) isEqualToString:*(v3 + 1)];
    v5 = *(v3 + 4);
    if (v4)
    {
      if ((v5 & 0x80000000) == 0)
      {
LABEL_8:
        ATXCacheFileRead();
        goto LABEL_12;
      }
    }

    else
    {
      close(v5);
      *(v3 + 4) = -1;
    }
  }

  v6 = open([*(a1 + 32) UTF8String], 0);
  *(v3 + 4) = v6;
  if ((v6 & 0x80000000) == 0)
  {
    objc_storeStrong(v3 + 1, *(a1 + 32));
    goto LABEL_8;
  }

  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *__error();
    v9[0] = 67109120;
    v9[1] = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Could not open app predictions cache: errno=%i", v9, 8u);
  }

LABEL_12:
}

- (void)_handleDirChange
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Directory changed, closing fd if open", v4, 2u);
  }

  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_31_1];
}

void __34__ATXCacheReader__handleDirChange__block_invoke(uint64_t a1, _DWORD *a2)
{
  v2 = a2[4];
  if ((v2 & 0x80000000) == 0)
  {
    v4 = a2;
    close(v2);
    a2[4] = -1;
  }
}

@end