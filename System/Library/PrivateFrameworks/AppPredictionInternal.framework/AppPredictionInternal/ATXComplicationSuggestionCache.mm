@interface ATXComplicationSuggestionCache
- (ATXComplicationSuggestionCache)init;
- (BOOL)_writeComplicationsCache:(id)a3 path:(id)a4 withError:(id *)a5;
- (BOOL)writeComplicationsInlineSetCache:(id)a3;
- (BOOL)writeComplicationsLandscapeModularSetCache:(id)a3;
- (BOOL)writeComplicationsModularSetCache:(id)a3;
- (id)_fetchCachedRankedComplicationDescriptorsWithPath:(id)a3 error:(id *)a4;
- (id)fetchInlineSetComplicationDescriptors;
- (id)fetchLandscapeModularSetComplicationDescriptors;
- (id)fetchModularSetComplicationDescriptors;
@end

@implementation ATXComplicationSuggestionCache

- (ATXComplicationSuggestionCache)init
{
  v10.receiver = self;
  v10.super_class = ATXComplicationSuggestionCache;
  v2 = [(ATXComplicationSuggestionCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.proactive.ATXComplicationSuggestionCache", v3);

    v5 = objc_alloc(MEMORY[0x277D42610]);
    v6 = objc_opt_new();
    v7 = [v5 initWithGuardedData:v6 serialQueue:v4];
    lock = v2->_lock;
    v2->_lock = v7;
  }

  return v2;
}

- (BOOL)writeComplicationsModularSetCache:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__ATXComplicationSuggestionCache_writeComplicationsModularSetCache___block_invoke;
  v8[3] = &unk_27859B5A0;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __68__ATXComplicationSuggestionCache_writeComplicationsModularSetCache___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = a1[5];
  v7 = [MEMORY[0x277CEBCB0] complicationModularSetCacheFilePath];
  v13 = 0;
  [v5 _writeComplicationsCache:v6 path:v7 withError:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Error while writing modular complication set cache: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = a1[5];
    v9 = v3[1];
    v3[1] = v11;
    v10 = 1;
  }

  *(*(a1[6] + 8) + 24) = v10;
  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeComplicationsLandscapeModularSetCache:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__ATXComplicationSuggestionCache_writeComplicationsLandscapeModularSetCache___block_invoke;
  v8[3] = &unk_27859B5A0;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __77__ATXComplicationSuggestionCache_writeComplicationsLandscapeModularSetCache___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = a1[5];
  v7 = [MEMORY[0x277CEBCB0] complicationLandscapeModularSetCacheFilePath];
  v13 = 0;
  [v5 _writeComplicationsCache:v6 path:v7 withError:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Error while writing complication landscape modular set cache: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = a1[5];
    v9 = v3[1];
    v3[1] = v11;
    v10 = 1;
  }

  *(*(a1[6] + 8) + 24) = v10;
  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeComplicationsInlineSetCache:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__ATXComplicationSuggestionCache_writeComplicationsInlineSetCache___block_invoke;
  v8[3] = &unk_27859B5A0;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __67__ATXComplicationSuggestionCache_writeComplicationsInlineSetCache___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = a1[5];
  v7 = [MEMORY[0x277CEBCB0] complicationInlineSetCacheFilePath];
  v13 = 0;
  [v5 _writeComplicationsCache:v6 path:v7 withError:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Error while writing complication inline set cache: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = a1[5];
    v9 = v3[3];
    v3[3] = v11;
    v10 = 1;
  }

  *(*(a1[6] + 8) + 24) = v10;
  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)fetchModularSetComplicationDescriptors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40;
  v10 = __Block_byref_object_dispose__40;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__ATXComplicationSuggestionCache_fetchModularSetComplicationDescriptors__block_invoke;
  v5[3] = &unk_27859B5C8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __72__ATXComplicationSuggestionCache_fetchModularSetComplicationDescriptors__block_invoke(uint64_t a1, void *a2)
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
    v9 = [MEMORY[0x277CEBCB0] complicationModularSetCacheFilePath];
    v18 = 0;
    v10 = [v8 _fetchCachedRankedComplicationDescriptorsWithPath:v9 error:&v18];
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
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Error while reading complication set 1 cache: %@", buf, 0xCu);
      }

      v14 = MEMORY[0x277CBEBF8];
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

- (id)fetchInlineSetComplicationDescriptors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40;
  v10 = __Block_byref_object_dispose__40;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__ATXComplicationSuggestionCache_fetchInlineSetComplicationDescriptors__block_invoke;
  v5[3] = &unk_27859B5C8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __71__ATXComplicationSuggestionCache_fetchInlineSetComplicationDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[3];
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
    v9 = [MEMORY[0x277CEBCB0] complicationInlineSetCacheFilePath];
    v18 = 0;
    v10 = [v8 _fetchCachedRankedComplicationDescriptorsWithPath:v9 error:&v18];
    v11 = v18;
    v12 = v3[3];
    v3[3] = v10;

    if (v11)
    {
      v13 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Error while reading complication inline set cache: %@", buf, 0xCu);
      }

      v14 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v14 = [v3[3] copy];
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)fetchLandscapeModularSetComplicationDescriptors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40;
  v10 = __Block_byref_object_dispose__40;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__ATXComplicationSuggestionCache_fetchLandscapeModularSetComplicationDescriptors__block_invoke;
  v5[3] = &unk_27859B5C8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __81__ATXComplicationSuggestionCache_fetchLandscapeModularSetComplicationDescriptors__block_invoke(uint64_t a1, void *a2)
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
    v9 = [MEMORY[0x277CEBCB0] complicationLandscapeModularSetCacheFilePath];
    v18 = 0;
    v10 = [v8 _fetchCachedRankedComplicationDescriptorsWithPath:v9 error:&v18];
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
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Error while reading landscape modular complication set cache: %@", buf, 0xCu);
      }

      v14 = MEMORY[0x277CBEBF8];
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

- (BOOL)_writeComplicationsCache:(id)a3 path:(id)a4 withError:(id *)a5
{
  v7 = MEMORY[0x277CEBC68];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = __atxlog_handle_lock_screen();
  v12 = [v10 initWithCacheFilePath:v8 loggingHandle:v11 debugName:@"complications"];

  LOBYTE(a5) = [v12 storeSecureCodedObject:v9 error:a5];
  return a5;
}

- (id)_fetchCachedRankedComplicationDescriptorsWithPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277CEBC68]);
  v7 = __atxlog_handle_lock_screen();
  v8 = [v6 initWithCacheFilePath:v5 loggingHandle:v7 debugName:@"complications"];

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v13 = [v8 readSecureCodedObjectWithMaxValidAge:v12 allowableClasses:a4 error:-1.0];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = v15;

  return v15;
}

@end