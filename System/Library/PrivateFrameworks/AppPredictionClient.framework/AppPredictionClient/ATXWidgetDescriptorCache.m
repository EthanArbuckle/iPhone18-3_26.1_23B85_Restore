@interface ATXWidgetDescriptorCache
+ (id)sharedInstance;
- (ATXWidgetDescriptorCache)init;
- (ATXWidgetDescriptorCache)initWithCachePath:(id)a3 legacyCachePath:(id)a4;
- (ATXWidgetDescriptorCache)initWithProvider:(id)a3 cachePath:(id)a4 legacyCachePath:(id)a5;
- (BOOL)_queue_writeAllDescriptorMetadata:(id)a3 error:(id *)a4;
- (NSSet)allWidgetDescriptorsAllowedOnLockscreen;
- (NSSet)complicationWidgetDescriptors;
- (NSSet)homeScreenDescriptors;
- (NSSet)inlineComplicationWidgetDescriptors;
- (NSSet)landscapeModularComplicationWidgetDescriptors;
- (NSSet)modularComplicationWidgetDescriptors;
- (id)_fetchAccessoryWidgetDescriptorMetadataOnInternalQueueWithError:(id *)a3;
- (id)_fetchHomeScreenWidgetDescriptorMetadataOnInternalQueueWithError:(id *)a3;
- (id)_mergeNewDescriptorsWithCachedMetadataOnInternalQueue:(id)a3 descriptors:(id)a4;
- (id)_queue_allVisibleDescriptors;
- (id)_queue_fetchAllDescriptorMetadataWithError:(id *)a3;
- (id)_queue_fetchAllLegacyDescriptorMetadataWithError:(id *)a3;
- (id)_queue_homeScreenWidgetDescriptors;
- (id)_updateAllDescriptorMetadataOnInternalQueue;
- (id)fetchAccessoryWidgetDescriptorMetadataWithError:(id *)a3;
- (id)fetchHomeScreenWidgetDescriptorMetadataWithError:(id *)a3;
- (id)homeScreenDescriptorForContainerBundleId:(id)a3 widgetKind:(id)a4;
- (id)homeScreenDescriptorForExtensionBundleId:(id)a3 kind:(id)a4;
- (id)homeScreenDescriptorForIntent:(id)a3;
- (id)homeScreenDescriptorForWidget:(id)a3;
- (void)_queue_descriptorsDidChangeForDescriptorProvider:(id)a3;
- (void)_updateDescriptorMappings;
- (void)dealloc;
- (void)descriptorsDidChangeForDescriptorProvider:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation ATXWidgetDescriptorCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[ATXWidgetDescriptorCache sharedInstance];
  }

  v3 = sharedInstance_updater;

  return v3;
}

uint64_t __42__ATXWidgetDescriptorCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_updater;
  sharedInstance_updater = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (ATXWidgetDescriptorCache)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"WidgetDescriptorsWithInstallDates"];
  v4 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXAvocadoDescriptorsWithInstallDates"];
  v5 = [(ATXWidgetDescriptorCache *)self initWithCachePath:v3 legacyCachePath:v4];

  return v5;
}

- (ATXWidgetDescriptorCache)initWithCachePath:(id)a3 legacyCachePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E698AFE8] widgetSuggestionsEnabled])
  {
    v8 = [objc_alloc(MEMORY[0x1E6994390]) initIncludingIntents:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ATXWidgetDescriptorCache *)self initWithProvider:v8 cachePath:v6 legacyCachePath:v7];

  return v9;
}

- (ATXWidgetDescriptorCache)initWithProvider:(id)a3 cachePath:(id)a4 legacyCachePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36.receiver = self;
  v36.super_class = ATXWidgetDescriptorCache;
  v11 = [(ATXWidgetDescriptorCache *)&v36 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("ATXWidgetDescriptorCache.internal", v12);
    internalQueue = v11->_internalQueue;
    v11->_internalQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("ATXWidgetDescriptorCache.observer", v15);
    observerQueue = v11->_observerQueue;
    v11->_observerQueue = v16;

    v18 = [v9 copy];
    cachePath = v11->_cachePath;
    v11->_cachePath = v18;

    v20 = [v10 copy];
    legacyCachePath = v11->_legacyCachePath;
    v11->_legacyCachePath = v20;

    objc_initWeak(&location, v11);
    v22 = objc_alloc(MEMORY[0x1E69C5D80]);
    v23 = v11->_internalQueue;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __71__ATXWidgetDescriptorCache_initWithProvider_cachePath_legacyCachePath___block_invoke;
    v33[3] = &unk_1E80C10D8;
    objc_copyWeak(&v34, &location);
    v24 = [v22 initWithQueue:v23 operation:v33];
    coalescedDescriptorUpdateOperation = v11->_coalescedDescriptorUpdateOperation;
    v11->_coalescedDescriptorUpdateOperation = v24;

    v26 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v11->_observers;
    v11->_observers = v26;

    v28 = v11->_internalQueue;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71__ATXWidgetDescriptorCache_initWithProvider_cachePath_legacyCachePath___block_invoke_29;
    v30[3] = &unk_1E80C0958;
    v31 = v11;
    v32 = v8;
    dispatch_async(v28, v30);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __71__ATXWidgetDescriptorCache_initWithProvider_cachePath_legacyCachePath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateDescriptorMappings];
  }

  else
  {
    v3 = __atxlog_handle_blending();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__ATXWidgetDescriptorCache_initWithProvider_cachePath_legacyCachePath___block_invoke_cold_1();
    }
  }
}

void __71__ATXWidgetDescriptorCache_initWithProvider_cachePath_legacyCachePath___block_invoke_29(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  [*(*(a1 + 32) + 8) addObserver:?];
  v2 = [*(*(a1 + 32) + 8) descriptors];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;

  v6 = *(*(a1 + 32) + 64);
  v7 = __atxlog_handle_default();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [*(*(a1 + 32) + 64) count];
    v14 = 134217984;
    v15 = v9;
    v10 = "ATXWidgetDescriptorCache init - descriptor count: %ld";
    v11 = v7;
    v12 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    LOWORD(v14) = 0;
    v10 = "ATXWidgetDescriptorCache init - descriptors nil";
    v11 = v7;
    v12 = 2;
  }

  _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
LABEL_7:

  v13 = *(a1 + 32);
  if (*(v13 + 8))
  {
    *(v13 + 40) = 1;
    [*(a1 + 32) _scheduleCoalescedDescriptorUpdateOperation];
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__ATXWidgetDescriptorCache_registerObserver___block_invoke;
  v7[3] = &unk_1E80C0958;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ATXWidgetDescriptorCache_unregisterObserver___block_invoke;
  v7[3] = &unk_1E80C0958;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (NSSet)homeScreenDescriptors
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ATXWidgetDescriptorCache_homeScreenDescriptors__block_invoke;
  v7[3] = &unk_1E80C29A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(internalQueue, v7);
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __49__ATXWidgetDescriptorCache_homeScreenDescriptors__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_homeScreenWidgetDescriptors];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSSet)allWidgetDescriptorsAllowedOnLockscreen
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5CF8] isiPad];
  v4 = objc_opt_new();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__ATXWidgetDescriptorCache_allWidgetDescriptorsAllowedOnLockscreen__block_invoke;
  block[3] = &unk_1E80C14B8;
  block[4] = self;
  v14 = v3;
  v6 = v4;
  v13 = v6;
  dispatch_sync(internalQueue, block);
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSSet *)v6 count];
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Returning all complication descriptors: %lu", buf, 0xCu);
  }

  v9 = v13;
  v10 = v6;

  return v6;
}

void __67__ATXWidgetDescriptorCache_allWidgetDescriptorsAllowedOnLockscreen__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_allVisibleDescriptors];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v2 count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Descriptor count: %lu", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ((([v9 supportedFamilies] & 0x400) != 0 || (objc_msgSend(v9, "supportedFamilies") & 0x800) != 0 || (objc_msgSend(v9, "supportedFamilies") & 0x1000) != 0 || (objc_msgSend(v9, "supportedFamilies") & 2) != 0) && (*(a1 + 48) != 1 || objc_msgSend(v9, "isBackgroundRemovable")))
        {
          [*(a1 + 40) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSSet)complicationWidgetDescriptors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5CF8] isiPad];
  v4 = objc_opt_new();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ATXWidgetDescriptorCache_complicationWidgetDescriptors__block_invoke;
  block[3] = &unk_1E80C14B8;
  block[4] = self;
  v14 = v3;
  v6 = v4;
  v13 = v6;
  dispatch_sync(internalQueue, block);
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSSet *)v6 count];
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Returning all complication descriptors: %lu", buf, 0xCu);
  }

  v9 = v13;
  v10 = v6;

  return v6;
}

void __57__ATXWidgetDescriptorCache_complicationWidgetDescriptors__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_allVisibleDescriptors];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v2 count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Descriptor count: %lu", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ((([v9 supportedFamilies] & 0x400) != 0 || (objc_msgSend(v9, "supportedFamilies") & 0x800) != 0 || (objc_msgSend(v9, "supportedFamilies") & 0x1000) != 0) && (*(a1 + 48) != 1 || objc_msgSend(v9, "isBackgroundRemovable")))
        {
          [*(a1 + 40) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSSet)modularComplicationWidgetDescriptors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5CF8] isiPad];
  v4 = objc_opt_new();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ATXWidgetDescriptorCache_modularComplicationWidgetDescriptors__block_invoke;
  block[3] = &unk_1E80C14B8;
  block[4] = self;
  v14 = v3;
  v6 = v4;
  v13 = v6;
  dispatch_sync(internalQueue, block);
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSSet *)v6 count];
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Returning modular complication descriptors: %lu", buf, 0xCu);
  }

  v9 = v13;
  v10 = v6;

  return v6;
}

void __64__ATXWidgetDescriptorCache_modularComplicationWidgetDescriptors__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_allVisibleDescriptors];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v2 count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Descriptor count: %lu", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ((([v9 supportedFamilies] & 0x400) != 0 || (objc_msgSend(v9, "supportedFamilies") & 0x800) != 0) && (*(a1 + 48) != 1 || objc_msgSend(v9, "isBackgroundRemovable")))
        {
          [*(a1 + 40) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSSet)landscapeModularComplicationWidgetDescriptors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5CF8] isiPad];
  v4 = objc_opt_new();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ATXWidgetDescriptorCache_landscapeModularComplicationWidgetDescriptors__block_invoke;
  block[3] = &unk_1E80C14B8;
  block[4] = self;
  v14 = v3;
  v6 = v4;
  v13 = v6;
  dispatch_sync(internalQueue, block);
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSSet *)v6 count];
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Returning modular complication descriptors: %lu", buf, 0xCu);
  }

  v9 = v13;
  v10 = v6;

  return v6;
}

void __73__ATXWidgetDescriptorCache_landscapeModularComplicationWidgetDescriptors__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_allVisibleDescriptors];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v2 count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Descriptor count: %lu", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ((([v9 supportedFamilies] & 0x400) != 0 || (objc_msgSend(v9, "supportedFamilies") & 0x800) != 0 || (objc_msgSend(v9, "supportedFamilies") & 2) != 0) && (*(a1 + 48) != 1 || objc_msgSend(v9, "isBackgroundRemovable")))
        {
          [*(a1 + 40) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSSet)inlineComplicationWidgetDescriptors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5CF8] isiPad];
  v4 = objc_opt_new();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__ATXWidgetDescriptorCache_inlineComplicationWidgetDescriptors__block_invoke;
  block[3] = &unk_1E80C14B8;
  block[4] = self;
  v14 = v3;
  v6 = v4;
  v13 = v6;
  dispatch_sync(internalQueue, block);
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSSet *)v6 count];
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Returning inline complication descriptors: %lu", buf, 0xCu);
  }

  v9 = v13;
  v10 = v6;

  return v6;
}

void __63__ATXWidgetDescriptorCache_inlineComplicationWidgetDescriptors__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_allVisibleDescriptors];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v2 count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Descriptor count: %lu", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
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
        if ((*(a1 + 48) != 1 || [*(*(&v10 + 1) + 8 * v8) isBackgroundRemovable]) && (objc_msgSend(v9, "supportedFamilies", v10) & 0x1000) != 0)
        {
          [*(a1 + 40) addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_queue_allVisibleDescriptors
{
  dispatch_assert_queue_V2(self->_internalQueue);
  allDescriptors = self->_allDescriptors;

  return [(NSSet *)allDescriptors _pas_filteredSetWithTest:&__block_literal_global_35];
}

BOOL __56__ATXWidgetDescriptorCache__queue_allVisibleDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 widgetVisibility];
  if (v3 == 3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Filtering out descriptor with default-off visibility: %@", &v6, 0xCu);
    }
  }

  return v3 != 3;
}

- (id)_queue_homeScreenWidgetDescriptors
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(ATXWidgetDescriptorCache *)self _queue_allVisibleDescriptors];
  v4 = [v3 _pas_filteredSetWithTest:&__block_literal_global_37_1];

  return v4;
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__ATXWidgetDescriptorCache_dealloc__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  v4.receiver = self;
  v4.super_class = ATXWidgetDescriptorCache;
  [(ATXWidgetDescriptorCache *)&v4 dealloc];
}

- (id)homeScreenDescriptorForIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 launchId];

  if (v5)
  {
    v6 = [v4 launchId];
    v7 = [v4 atx_intentType];
    v8 = keyForStrings(v6, v7);

    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__19;
    v21 = __Block_byref_object_dispose__19;
    v22 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__ATXWidgetDescriptorCache_homeScreenDescriptorForIntent___block_invoke;
    block[3] = &unk_1E80C2ED0;
    v15 = v8;
    v16 = &v17;
    block[4] = self;
    v10 = v8;
    dispatch_sync(internalQueue, block);
    v11 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetDescriptorCache homeScreenDescriptorForIntent:];
    }

    v11 = 0;
  }

  return v11;
}

void __58__ATXWidgetDescriptorCache_homeScreenDescriptorForIntent___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(v1 + 16) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(v1 + 16) + 8) + 40))
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__ATXWidgetDescriptorCache_homeScreenDescriptorForIntent___block_invoke_cold_1(v1 + 8, v1);
    }
  }
}

- (id)homeScreenDescriptorForContainerBundleId:(id)a3 widgetKind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__ATXWidgetDescriptorCache_homeScreenDescriptorForContainerBundleId_widgetKind___block_invoke;
  v13[3] = &unk_1E80C5AA0;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v17 = &v18;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __80__ATXWidgetDescriptorCache_homeScreenDescriptorForContainerBundleId_widgetKind___block_invoke(uint64_t a1)
{
  v2 = keyForStrings(*(a1 + 32), *(a1 + 40));
  v4 = *(a1 + 48);
  v3 = a1 + 48;
  v5 = [*(v4 + 88) objectForKeyedSubscript:v2];
  v6 = *(*(v3 + 8) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(v3 + 8) + 8) + 40))
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __80__ATXWidgetDescriptorCache_homeScreenDescriptorForContainerBundleId_widgetKind___block_invoke_cold_1(v2, v3);
    }
  }
}

- (id)homeScreenDescriptorForWidget:(id)a3
{
  v4 = a3;
  v5 = [v4 appBundleId];
  v6 = [v4 widgetKind];

  v7 = [(ATXWidgetDescriptorCache *)self homeScreenDescriptorForContainerBundleId:v5 widgetKind:v6];

  return v7;
}

- (id)homeScreenDescriptorForExtensionBundleId:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXWidgetDescriptorCache *)self homeScreenDescriptors];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__ATXWidgetDescriptorCache_homeScreenDescriptorForExtensionBundleId_kind___block_invoke;
  v13[3] = &unk_1E80C5AC8;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 bs_firstObjectPassingTest:v13];

  return v11;
}

uint64_t __74__ATXWidgetDescriptorCache_homeScreenDescriptorForExtensionBundleId_kind___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionIdentity];
  v5 = [v4 extensionBundleIdentifier];
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = [v3 kind];
    v7 = [v6 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_mergeNewDescriptorsWithCachedMetadataOnInternalQueue:(id)a3 descriptors:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_internalQueue);
  v8 = objc_opt_new();
  v32 = [MEMORY[0x1E695DF00] now];
  v9 = objc_alloc(MEMORY[0x1E695E000]);
  v10 = [v9 initWithSuiteName:*MEMORY[0x1E698B030]];
  v11 = [v10 objectForKey:@"dateOfFirstInstalledAvocado"];

  if (!v11)
  {
    [v10 setObject:v32 forKey:@"dateOfFirstInstalledAvocado"];
  }

  v29 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    v15 = off_1E80BF000;
    v30 = *v36;
    v31 = v6;
    do
    {
      v16 = 0;
      v33 = v13;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [objc_alloc(v15[381]) initWithDescriptor:v17];
        v20 = [v6 objectForKeyedSubscript:v19];
        if (v20)
        {
          [v8 setObject:v20 forKeyedSubscript:v19];
        }

        else
        {
          v21 = v8;
          v22 = __atxlog_handle_default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v40 = "[ATXWidgetDescriptorCache _mergeNewDescriptorsWithCachedMetadataOnInternalQueue:descriptors:]";
            v41 = 2112;
            v42 = v17;
            _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "%s: added new widget descriptor to cache: %@", buf, 0x16u);
          }

          v23 = [ATXWidgetDescriptorCacheMetadata alloc];
          v24 = [v17 extensionIdentity];
          v25 = [v24 containerBundleIdentifier];
          v26 = -[ATXWidgetDescriptorCacheMetadata initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:](v23, "initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:", v32, v25, [v17 atx_hasHomeScreenWidgetFamiliesOnly], objc_msgSend(v17, "atx_hasAccessoryWidgetFamiliesOnly"));
          v8 = v21;
          [v21 setObject:v26 forKeyedSubscript:v19];

          v14 = v30;
          v6 = v31;
          v15 = off_1E80BF000;
          v13 = v33;
        }

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v13);
  }

  v27 = [v8 copy];

  return v27;
}

- (id)_updateAllDescriptorMetadataOnInternalQueue
{
  v3 = objc_autoreleasePoolPush();
  dispatch_assert_queue_V2(self->_internalQueue);
  v4 = [(ATXWidgetDescriptorCache *)self _queue_fetchAllDescriptorMetadataWithError:0];
  v5 = [(ATXWidgetDescriptorCache *)self _queue_allVisibleDescriptors];
  v6 = [(ATXWidgetDescriptorCache *)self _mergeNewDescriptorsWithCachedMetadataOnInternalQueue:v4 descriptors:v5];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:self->_legacyCachePath];

  if (![v4 isEqualToDictionary:v6] || v8)
  {
    v18 = 0;
    v9 = [(ATXWidgetDescriptorCache *)self _queue_writeAllDescriptorMetadata:v6 error:&v18];
    v10 = v18;
    if (v9)
    {
      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      legacyCachePath = self->_legacyCachePath;
      v17 = v10;
      v13 = [v11 removeItemAtPath:legacyCachePath error:&v17];
      v14 = v17;

      if (v13)
      {
        v10 = v14;
        goto LABEL_13;
      }

      v15 = __atxlog_handle_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXWidgetDescriptorCache _updateAllDescriptorMetadataOnInternalQueue];
      }

      v10 = v14;
    }

    else
    {
      v15 = __atxlog_handle_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXWidgetDescriptorCache _updateAllDescriptorMetadataOnInternalQueue];
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)fetchAccessoryWidgetDescriptorMetadataWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__ATXWidgetDescriptorCache_fetchAccessoryWidgetDescriptorMetadataWithError___block_invoke;
  block[3] = &unk_1E80C5AF0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(internalQueue, block);
  if (a3)
  {
    *a3 = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __76__ATXWidgetDescriptorCache_fetchAccessoryWidgetDescriptorMetadataWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v8 = 0;
  v3 = [v2 _fetchAccessoryWidgetDescriptorMetadataOnInternalQueueWithError:&v8];
  v4 = v8;
  v5 = v8;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  if (v5)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

- (id)fetchHomeScreenWidgetDescriptorMetadataWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ATXWidgetDescriptorCache_fetchHomeScreenWidgetDescriptorMetadataWithError___block_invoke;
  block[3] = &unk_1E80C5AF0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(internalQueue, block);
  if (a3)
  {
    *a3 = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __77__ATXWidgetDescriptorCache_fetchHomeScreenWidgetDescriptorMetadataWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v8 = 0;
  v3 = [v2 _fetchHomeScreenWidgetDescriptorMetadataOnInternalQueueWithError:&v8];
  v4 = v8;
  v5 = v8;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  if (v5)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

- (id)_fetchAccessoryWidgetDescriptorMetadataOnInternalQueueWithError:(id *)a3
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v15 = 0;
  v5 = [(ATXWidgetDescriptorCache *)self _queue_fetchAllDescriptorMetadataWithError:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v5 keysOfEntriesPassingTest:&__block_literal_global_50];
    v10 = [v9 allObjects];

    [v5 removeObjectsForKeys:v10];
    objc_autoreleasePoolPop(v8);
    if (a3)
    {
      v11 = v7;
      *a3 = v7;
    }

    v12 = v5;
  }

  else if (a3)
  {
    v13 = v6;
    *a3 = v7;
  }

  return v5;
}

- (id)_fetchHomeScreenWidgetDescriptorMetadataOnInternalQueueWithError:(id *)a3
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v15 = 0;
  v5 = [(ATXWidgetDescriptorCache *)self _queue_fetchAllDescriptorMetadataWithError:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v5 keysOfEntriesPassingTest:&__block_literal_global_52];
    v10 = [v9 allObjects];

    [v5 removeObjectsForKeys:v10];
    objc_autoreleasePoolPop(v8);
    if (a3)
    {
      v11 = v7;
      *a3 = v7;
    }

    v12 = v5;
  }

  else if (a3)
  {
    v13 = v6;
    *a3 = v7;
  }

  return v5;
}

- (id)_queue_fetchAllDescriptorMetadataWithError:(id *)a3
{
  v64 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  cachePath = self->_cachePath;
  v7 = __atxlog_handle_default();
  v8 = [v5 initWithCacheFilePath:cachePath loggingHandle:v7 debugName:@"widget descriptor metadata"];

  v9 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 initWithObjects:{v10, v11, objc_opt_class(), 0}];
  v58 = 0;
  v13 = [v8 readSecureCodedObjectWithMaxValidAge:v12 allowableClasses:&v58 error:-1.0];
  v14 = v58;
  if ([v13 count])
  {
    v39 = v14;
    v41 = v12;
    v42 = v8;
    v47 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v40 = v13;
    v15 = v13;
    v49 = [v15 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v49)
    {
      v16 = self;
      v48 = *v54;
      v45 = v15;
      v46 = self;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v53 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [v15 objectForKeyedSubscript:v18];
          allDescriptors = v16->_allDescriptors;
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __71__ATXWidgetDescriptorCache__queue_fetchAllDescriptorMetadataWithError___block_invoke;
          v52[3] = &unk_1E80C5B38;
          v52[4] = v18;
          v22 = [(NSSet *)allDescriptors bs_firstObjectPassingTest:v52];
          if (v22)
          {
            v50 = v19;
            v23 = [ATXWidgetDescriptorCacheMetadata alloc];
            v51 = v20;
            v24 = [v20 installDate];
            v25 = v24;
            if (!v24)
            {
              v25 = [MEMORY[0x1E695DF00] now];
              v44 = v25;
            }

            v26 = [v22 extensionIdentity];
            v27 = [v26 containerBundleIdentifier];
            v28 = v27;
            if (!v27)
            {
              v28 = [v51 containerBundleId];
              v43 = v28;
            }

            v29 = -[ATXWidgetDescriptorCacheMetadata initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:](v23, "initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:", v25, v28, [v22 atx_hasHomeScreenWidgetFamiliesOnly], objc_msgSend(v22, "atx_hasAccessoryWidgetFamiliesOnly"));
            [v47 setObject:v29 forKeyedSubscript:v18];

            if (!v27)
            {
            }

            v15 = v45;
            if (!v24)
            {
            }

            v16 = v46;
            v19 = v50;
            v20 = v51;
          }

          else
          {
            v24 = __atxlog_handle_default();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v60 = "[ATXWidgetDescriptorCache _queue_fetchAllDescriptorMetadataWithError:]";
              v61 = 2112;
              v62 = v18;
              _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "%s: could not find descriptor matching %@ that was present in cached metadata", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v49 = [v15 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v49);
    }

    v12 = v41;
    v8 = v42;
    v14 = v39;
    v13 = v40;
  }

  else if (self->_legacyCachePath && ([MEMORY[0x1E696AC08] defaultManager], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "fileExistsAtPath:", self->_legacyCachePath), v30, (v31 & 1) != 0))
  {
    v57 = 0;
    v32 = [(ATXWidgetDescriptorCache *)self _queue_fetchAllLegacyDescriptorMetadataWithError:&v57];
    v33 = v57;
    if ([v32 count])
    {
      v47 = v32;
    }

    else
    {
      v36 = __atxlog_handle_default();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [(ATXWidgetDescriptorCache *)v33 _queue_fetchAllDescriptorMetadataWithError:v14, v36];
      }

      if (a3)
      {
        if (v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v14;
        }

        v47 = 0;
        *a3 = v37;
      }

      else
      {
        v47 = 0;
      }
    }
  }

  else
  {
    v34 = __atxlog_handle_default();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetDescriptorCache _queue_fetchAllDescriptorMetadataWithError:];
    }

    if (a3)
    {
      v35 = v14;
      v47 = 0;
      *a3 = v14;
    }

    else
    {
      v47 = 0;
    }
  }

  return v47;
}

uint64_t __71__ATXWidgetDescriptorCache__queue_fetchAllDescriptorMetadataWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXWidgetPersonality alloc] initWithDescriptor:v3];
  v6 = [(ATXWidgetPersonality *)v5 isEqual:*(a1 + 32)];

  objc_autoreleasePoolPop(v4);
  return v6;
}

- (BOOL)_queue_writeAllDescriptorMetadata:(id)a3 error:(id *)a4
{
  internalQueue = self->_internalQueue;
  v7 = a3;
  dispatch_assert_queue_V2(internalQueue);
  v8 = objc_alloc(MEMORY[0x1E698AFF0]);
  cachePath = self->_cachePath;
  v10 = __atxlog_handle_default();
  v11 = [v8 initWithCacheFilePath:cachePath loggingHandle:v10 debugName:@"widget descriptor metadata"];

  LOBYTE(a4) = [v11 storeSecureCodedObject:v7 error:a4];
  return a4;
}

- (id)_queue_fetchAllLegacyDescriptorMetadataWithError:(id *)a3
{
  v57 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  v45 = self;
  legacyCachePath = self->_legacyCachePath;
  v7 = __atxlog_handle_default();
  v8 = [v5 initWithCacheFilePath:legacyCachePath loggingHandle:v7 debugName:@"legacy widget descriptor metadata"];

  v9 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v9 initWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v8 readSecureCodedObjectWithMaxValidAge:v14 allowableClasses:a3 error:-1.0];
  if (v15)
  {
    v43 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = v17;
    v38 = v15;
    v39 = v14;
    v40 = v8;
    v19 = *v49;
    v41 = *v49;
    v42 = v16;
    while (1)
    {
      v20 = 0;
      v44 = v18;
      do
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v48 + 1) + 8 * v20);
        v22 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v21;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_19;
          }

          v23 = extensionBundleIdAndKindKey(v21);
        }

        allDescriptors = v45->_allDescriptors;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __77__ATXWidgetDescriptorCache__queue_fetchAllLegacyDescriptorMetadataWithError___block_invoke;
        v46[3] = &unk_1E80C5B38;
        v25 = v23;
        v47 = v25;
        v26 = [(NSSet *)allDescriptors bs_firstObjectPassingTest:v46];
        if (v26)
        {
          v27 = [v16 objectForKeyedSubscript:v21];
          v28 = [v27 objectForKeyedSubscript:@"installDate"];
          v29 = v28;
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = [MEMORY[0x1E695DF00] now];
          }

          v31 = v30;

          v32 = [[ATXWidgetPersonality alloc] initWithDescriptor:v26];
          v33 = [ATXWidgetDescriptorCacheMetadata alloc];
          v34 = [v26 extensionIdentity];
          v35 = [v34 containerBundleIdentifier];
          v36 = -[ATXWidgetDescriptorCacheMetadata initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:](v33, "initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:", v31, v35, [v26 atx_hasHomeScreenWidgetFamiliesOnly], objc_msgSend(v26, "atx_hasAccessoryWidgetFamiliesOnly"));
          [v43 setObject:v36 forKeyedSubscript:v32];

          v19 = v41;
          v16 = v42;
          v18 = v44;
        }

        else
        {
          v27 = __atxlog_handle_default();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v53 = "[ATXWidgetDescriptorCache _queue_fetchAllLegacyDescriptorMetadataWithError:]";
            v54 = 2112;
            v55 = v21;
            _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "%s: could not find descriptor matching %@ that was present in cached metadata", buf, 0x16u);
          }
        }

LABEL_19:
        objc_autoreleasePoolPop(v22);
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (!v18)
      {
        v14 = v39;
        v8 = v40;
        v15 = v38;
        goto LABEL_25;
      }
    }
  }

  v16 = __atxlog_handle_default();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ATXWidgetDescriptorCache _queue_fetchAllLegacyDescriptorMetadataWithError:];
  }

  v43 = 0;
LABEL_25:

  return v43;
}

uint64_t __77__ATXWidgetDescriptorCache__queue_fetchAllLegacyDescriptorMetadataWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = extensionBundleIdAndKindKey(v3);
  v6 = [v5 isEqualToString:*(a1 + 32)];

  objc_autoreleasePoolPop(v4);
  return v6;
}

- (void)_updateDescriptorMappings
{
  v2 = self;
  v58 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(ATXWidgetDescriptorCache *)v2 _updateAllDescriptorMetadataOnInternalQueue];
  v4 = v3;
  if (v2->_coalescedDescriptorUpdateOptions)
  {
    v46 = v3;
    v47 = v2;
    v6 = [(ATXWidgetDescriptorCache *)v2 _queue_homeScreenWidgetDescriptors];
    v48 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v53 objects:buf count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      v10 = @".";
      v11 = @"appintent:";
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 intentType];
          v16 = [v15 componentsSeparatedByString:v10];
          v17 = [v16 lastObject];

          if ([v17 hasPrefix:v11])
          {
            v18 = [v17 substringFromIndex:{-[__CFString length](v11, "length")}];

            v17 = v18;
          }

          v19 = [v13 extensionIdentity];
          v20 = [v19 containerBundleIdentifier];

          if (v20)
          {
            v21 = v17 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v22 = [v13 extensionIdentity];
            v23 = [v22 containerBundleIdentifier];
            keyForStrings(v23, v17);
            v50 = v14;
            v24 = v8;
            v25 = v9;
            v26 = v11;
            v28 = v27 = v10;

            [(NSDictionary *)v48 setObject:v13 forKeyedSubscript:v28];
            v10 = v27;
            v11 = v26;
            v9 = v25;
            v8 = v24;
            v14 = v50;
          }

          objc_autoreleasePoolPop(v14);
        }

        v8 = [obj countByEnumeratingWithState:&v53 objects:buf count:16];
      }

      while (v8);
    }

    intentToHomeScreenDescriptorDictionary = v47->_intentToHomeScreenDescriptorDictionary;
    v47->_intentToHomeScreenDescriptorDictionary = v48;

    v30 = obj;
    v31 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v51 = v30;
    v32 = [v51 countByEnumeratingWithState:&v53 objects:buf count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v54;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(v51);
          }

          v36 = *(*(&v53 + 1) + 8 * j);
          v37 = objc_autoreleasePoolPush();
          v38 = [v36 extensionIdentity];
          v39 = [v38 containerBundleIdentifier];

          if (v39)
          {
            v40 = [v36 extensionIdentity];
            v41 = [v40 containerBundleIdentifier];
            v42 = [v36 kind];
            v43 = keyForStrings(v41, v42);

            [(NSDictionary *)v31 setObject:v36 forKeyedSubscript:v43];
          }

          objc_autoreleasePoolPop(v37);
        }

        v33 = [v51 countByEnumeratingWithState:&v53 objects:buf count:16];
      }

      while (v33);
    }

    v5 = v51;

    v2 = v47;
    containerBundleIdAndKindToHomeScreenDescriptorDictionary = v47->_containerBundleIdAndKindToHomeScreenDescriptorDictionary;
    v47->_containerBundleIdAndKindToHomeScreenDescriptorDictionary = v31;

    v4 = v46;
    if (v46 && v51)
    {
      v45 = dispatch_get_global_queue(17, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__ATXWidgetDescriptorCache__updateDescriptorMappings__block_invoke;
      block[3] = &unk_1E80C0C90;
      block[4] = v47;
      dispatch_async(v45, block);
    }
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXWidgetDescriptorCache: home screen descriptors did not change", buf, 2u);
    }
  }

  v2->_coalescedDescriptorUpdateOptions = 0;
}

void __53__ATXWidgetDescriptorCache__updateDescriptorMappings__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ATXHomeScreenWidgetDescriptorCacheRefresh" object:*(a1 + 32)];
}

- (void)descriptorsDidChangeForDescriptorProvider:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__ATXWidgetDescriptorCache_descriptorsDidChangeForDescriptorProvider___block_invoke;
  v7[3] = &unk_1E80C0958;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)_queue_descriptorsDidChangeForDescriptorProvider:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  internalQueue = self->_internalQueue;
  v5 = a3;
  dispatch_assert_queue_V2(internalQueue);
  v6 = [(ATXWidgetDescriptorCache *)self _queue_homeScreenWidgetDescriptors];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [v5 descriptors];

  allDescriptors = self->_allDescriptors;
  self->_allDescriptors = v10;

  v12 = self->_allDescriptors;
  v13 = __atxlog_handle_default();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = [(NSSet *)self->_allDescriptors count];
    *buf = 136315394;
    v30 = "[ATXWidgetDescriptorCache _queue_descriptorsDidChangeForDescriptorProvider:]";
    v31 = 2048;
    v32 = v15;
    v16 = "%s, descriptor count: %ld";
    v17 = v13;
    v18 = 22;
  }

  else
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v30 = "[ATXWidgetDescriptorCache _queue_descriptorsDidChangeForDescriptorProvider:]";
    v16 = "%s, nil descriptors provided";
    v17 = v13;
    v18 = 12;
  }

  _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_10:

  v19 = [(ATXWidgetDescriptorCache *)self _queue_homeScreenWidgetDescriptors];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = objc_opt_new();
  }

  v22 = v21;

  if (([v22 isEqualToSet:v9] & 1) == 0)
  {
    self->_coalescedDescriptorUpdateOptions |= 1uLL;
  }

  [(ATXWidgetDescriptorCache *)self _scheduleCoalescedDescriptorUpdateOperation];
  v23 = [(NSHashTable *)self->_observers allObjects];
  observerQueue = self->_observerQueue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__ATXWidgetDescriptorCache__queue_descriptorsDidChangeForDescriptorProvider___block_invoke;
  v26[3] = &unk_1E80C0958;
  v27 = v23;
  v28 = self;
  v25 = v23;
  dispatch_async(observerQueue, v26);
}

void __77__ATXWidgetDescriptorCache__queue_descriptorsDidChangeForDescriptorProvider___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) widgetDescriptorCacheDidUpdateDescriptors:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)homeScreenDescriptorForIntent:.cold.1()
{
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __58__ATXWidgetDescriptorCache_homeScreenDescriptorForIntent___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(*a2 + 80) allKeys];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_1_1(&dword_1BF549000, v3, v4, "%s, key (%@) not present in dictionary: %@", v5, v6, v7, v8, 2u);
}

void __80__ATXWidgetDescriptorCache_homeScreenDescriptorForContainerBundleId_widgetKind___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(*a2 + 88) allKeys];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_1_1(&dword_1BF549000, v3, v4, "%s, key (%@) not present in dictionary: %@", v5, v6, v7, v8, 2u);
}

- (void)_queue_fetchAllDescriptorMetadataWithError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a2 = a1;
  }

  v4 = 138412290;
  v5 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXWidgetDescriptorCache: Error unarchiving data during migration: %@", &v4, 0xCu);
}

@end