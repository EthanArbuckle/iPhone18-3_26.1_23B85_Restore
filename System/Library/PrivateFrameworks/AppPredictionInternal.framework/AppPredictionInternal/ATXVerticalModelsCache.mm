@interface ATXVerticalModelsCache
- (ATXVerticalModelsCache)init;
- (BOOL)_writeCache:(id)cache path:(id)path withError:(id *)error;
- (BOOL)writeWebsiteSuggestionsCache:(id)cache;
- (BOOL)writeWebsiteTitlesAndSubtitlesCache:(id)cache;
- (id)_fetchWebsiteCacheWithPath:(id)path error:(id *)error;
- (id)_fetchWebsiteTitlesAndSubtitlesCacheWithPath:(id)path error:(id *)error;
- (id)fetchWebsiteSuggestionsCache;
- (id)fetchWebsiteTitlesAndSubtitlesCache;
@end

@implementation ATXVerticalModelsCache

- (ATXVerticalModelsCache)init
{
  v10.receiver = self;
  v10.super_class = ATXVerticalModelsCache;
  v2 = [(ATXVerticalModelsCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.proactive.ATXVerticalModelsCache", v3);

    v5 = objc_alloc(MEMORY[0x277D42610]);
    v6 = objc_opt_new();
    v7 = [v5 initWithGuardedData:v6 serialQueue:v4];
    lock = v2->_lock;
    v2->_lock = v7;
  }

  return v2;
}

- (BOOL)writeWebsiteSuggestionsCache:(id)cache
{
  cacheCopy = cache;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ATXVerticalModelsCache_writeWebsiteSuggestionsCache___block_invoke;
  v8[3] = &unk_2785A1DF0;
  v8[4] = self;
  v6 = cacheCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __55__ATXVerticalModelsCache_writeWebsiteSuggestionsCache___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = [MEMORY[0x277CEBCB0] websiteSuggestionsVerticalModelCacheFilePath];
  v12 = 0;
  [v4 _writeCache:v5 path:v6 withError:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Error while writing website suggestions cache: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = a1[5];
    v8 = v3[1];
    v3[1] = v10;
    v9 = 1;
  }

  *(*(a1[6] + 8) + 24) = v9;
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeWebsiteTitlesAndSubtitlesCache:(id)cache
{
  cacheCopy = cache;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ATXVerticalModelsCache_writeWebsiteTitlesAndSubtitlesCache___block_invoke;
  v8[3] = &unk_2785A1DF0;
  v8[4] = self;
  v6 = cacheCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __62__ATXVerticalModelsCache_writeWebsiteTitlesAndSubtitlesCache___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = [MEMORY[0x277CEBCB0] websiteTitlesAndSubtitlesCacheFilePath];
  v12 = 0;
  [v4 _writeCache:v5 path:v6 withError:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Error while writing website suggestions cache: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = a1[5];
    v8 = v3[2];
    v3[2] = v10;
    v9 = 1;
  }

  *(*(a1[6] + 8) + 24) = v9;
  v11 = *MEMORY[0x277D85DE8];
}

- (id)fetchWebsiteSuggestionsCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__106;
  v10 = __Block_byref_object_dispose__106;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXVerticalModelsCache_fetchWebsiteSuggestionsCache__block_invoke;
  v5[3] = &unk_2785A1E18;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__ATXVerticalModelsCache_fetchWebsiteSuggestionsCache__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    v5 = [v4 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CEBCB0] websiteSuggestionsVerticalModelCacheFilePath];
    v18 = 0;
    v10 = [v8 _fetchWebsiteCacheWithPath:v9 error:&v18];
    v11 = v18;
    v12 = v3[1];
    v3[1] = v10;

    if (v11)
    {
      v13 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Error while reading website suggestions cache: %@", buf, 0xCu);
      }

      v14 = MEMORY[0x277CBEC10];
    }

    else
    {
      v14 = [v3[1] copy];
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)fetchWebsiteTitlesAndSubtitlesCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__106;
  v10 = __Block_byref_object_dispose__106;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__ATXVerticalModelsCache_fetchWebsiteTitlesAndSubtitlesCache__block_invoke;
  v5[3] = &unk_2785A1E18;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__ATXVerticalModelsCache_fetchWebsiteTitlesAndSubtitlesCache__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (v4)
  {
    v5 = [v4 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CEBCB0] websiteTitlesAndSubtitlesCacheFilePath];
    v18 = 0;
    v10 = [v8 _fetchWebsiteTitlesAndSubtitlesCacheWithPath:v9 error:&v18];
    v11 = v18;
    v12 = v3[2];
    v3[2] = v10;

    if (v11)
    {
      v13 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Error while reading website titles and subtitles cache: %@", buf, 0xCu);
      }

      v14 = MEMORY[0x277CBEC10];
    }

    else
    {
      v14 = [v3[2] copy];
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_writeCache:(id)cache path:(id)path withError:(id *)error
{
  v7 = MEMORY[0x277CEBC68];
  pathCopy = path;
  cacheCopy = cache;
  v10 = [v7 alloc];
  v11 = __atxlog_handle_action_prediction();
  v12 = [v10 initWithCacheFilePath:pathCopy loggingHandle:v11 debugName:@"webSuggestions"];

  LOBYTE(error) = [v12 storeSecureCodedObject:cacheCopy error:error];
  return error;
}

- (id)_fetchWebsiteCacheWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = objc_alloc(MEMORY[0x277CEBC68]);
  v7 = __atxlog_handle_action_prediction();
  v8 = [v6 initWithCacheFilePath:pathCopy loggingHandle:v7 debugName:@"webSuggestions"];

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v15 = [v8 readSecureCodedObjectWithMaxValidAge:v14 allowableClasses:error error:-1.0];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  v18 = v17;

  return v17;
}

- (id)_fetchWebsiteTitlesAndSubtitlesCacheWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = objc_alloc(MEMORY[0x277CEBC68]);
  v7 = __atxlog_handle_action_prediction();
  v8 = [v6 initWithCacheFilePath:pathCopy loggingHandle:v7 debugName:@"webSuggestions"];

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v15 = [v8 readSecureCodedObjectWithMaxValidAge:v14 allowableClasses:error error:-1.0];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  v18 = v17;

  return v17;
}

@end