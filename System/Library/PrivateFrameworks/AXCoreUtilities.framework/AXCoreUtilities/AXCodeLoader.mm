@interface AXCodeLoader
+ (id)defaultLoader;
- (AXCodeLoader)init;
- (AXCodeLoader)initWithImageMonitor:(id)monitor;
- (id)_accessibilityBundleMapURLs;
- (id)_accessibilityCodeItemMatchingName:(id)name type:(int64_t)type path:(id)path;
- (id)_createAccessibilityCodeItemsFromBundleMapURLs:(id)ls;
- (id)_platformKeyForPlatform:(unsigned int)platform;
- (id)_queue_loadedCodeItemsUsingTrackedItemsIfAvailable:(BOOL)available;
- (id)_stateDescForItem:(id)item;
- (id)_validDidLoadAccessibilityCodeItemBlock;
- (id)_validLoadEventDidOccurBlock;
- (id)_validLoadEventWillOccurBlock;
- (id)_validShouldLoadAccessibilityCodeItemBlock;
- (id)accessibilityCodeItemDefinitions;
- (id)codeItemForBundle:(id)bundle;
- (id)loadedCodeItemPathsUsingTrackedItemsIfAvailable:(BOOL)available;
- (id)loadedCodeItemsUsingTrackedItemsIfAvailable:(BOOL)available;
- (id)recomputedCodeItemsForAllFrameworks;
- (id)recomputedCodeItemsForLoadedAccessibilityBundles;
- (id)rogueAccessibilityCodeItems;
- (id)trackedCodeItems;
- (void)_addTrackedCodeItem:(id)item;
- (void)_associateAccessibilityCodeItemWithLoadedCodeItem:(id)item;
- (void)_associateAccessibilityCodeItemsWithAllTrackedCodeItems;
- (void)_cancelDyldImageActivityTimer;
- (void)_consumeBeginTrackingCompletionHandlerIfNeeded;
- (void)_initializeCodeItemMappings;
- (void)_loadAccessibilityCodeItems;
- (void)_reconcileTrackedCodeItemsWithAccessibilityCodeItemDefinitions;
- (void)_scheduleDyldImageActivityTimerWithDelay:(double)delay;
- (void)_updateAccessibilityCodeItemDefinitionsIfNeeded;
- (void)beginTrackingLoadedCodeItemsWithMode:(int64_t)mode completion:(id)completion targetQueue:(id)queue;
- (void)endTrackingLoadedCodeItemsWithCompletion:(id)completion targetQueue:(id)queue;
- (void)imageMonitor:(id)monitor didAddImage:(id)image;
- (void)iterateInitialImageListForImageMonitor:(id)monitor;
- (void)logLoaderState;
- (void)prewarmAccessibilityCodeItemDefinitionsWithCompletion:(id)completion targetQueue:(id)queue;
- (void)queryAccessibilityBundleIsLoadedWithName:(id)name completion:(id)completion;
@end

@implementation AXCodeLoader

+ (id)defaultLoader
{
  if (defaultLoader_onceToken != -1)
  {
    +[AXCodeLoader defaultLoader];
  }

  v3 = defaultLoader__DefaultLoader;

  return v3;
}

void __29__AXCodeLoader_defaultLoader__block_invoke()
{
  v0 = [AXCodeLoader alloc];
  v3 = +[_AXDyldImageMonitor sharedInstance];
  v1 = [(AXCodeLoader *)v0 initWithImageMonitor:v3];
  v2 = defaultLoader__DefaultLoader;
  defaultLoader__DefaultLoader = v1;
}

- (AXCodeLoader)initWithImageMonitor:(id)monitor
{
  monitorCopy = monitor;
  v22.receiver = self;
  v22.super_class = AXCodeLoader;
  v6 = [(AXCodeLoader *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(AXCodeLoader *)v6 _platformKeyForPlatform:1];
    currentPlatformKey = v7->_currentPlatformKey;
    v7->_currentPlatformKey = v8;

    if (!v7->_currentPlatformKey)
    {
      _AXAssert(0, "/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries/Source/AXCoreUtilities/source/Swizzling/Loading/AXCodeLoader.m", 0x56, "[AXCodeLoader initWithImageMonitor:]", @"Unknown platform", v10, v11, v12, v19[0]);
    }

    objc_storeStrong(&v7->_imageMonitor, monitor);
    v13 = dispatch_queue_create("AXCodeLoader", 0);
    queue = v7->_queue;
    v7->_queue = v13;

    v15 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v7->_queue);
    loadAccessibilityCodeItemsSource = v7->_loadAccessibilityCodeItemsSource;
    v7->_loadAccessibilityCodeItemsSource = v15;

    objc_initWeak(&location, v7);
    v17 = v7->_loadAccessibilityCodeItemsSource;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __37__AXCodeLoader_initWithImageMonitor___block_invoke;
    v19[3] = &unk_1E735B810;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v17, v19);
    dispatch_activate(v7->_loadAccessibilityCodeItemsSource);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __37__AXCodeLoader_initWithImageMonitor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadAccessibilityCodeItems];
}

- (AXCodeLoader)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Must use designated initializer initWithImageMonitor:"];

  return 0;
}

- (id)_validShouldLoadAccessibilityCodeItemBlock
{
  shouldLoadAccessibilityCodeItemBlock = [(AXCodeLoader *)self shouldLoadAccessibilityCodeItemBlock];
  if (shouldLoadAccessibilityCodeItemBlock)
  {
    shouldLoadAccessibilityCodeItemBlock2 = [(AXCodeLoader *)self shouldLoadAccessibilityCodeItemBlock];
    v5 = _Block_copy(shouldLoadAccessibilityCodeItemBlock2);
    v6 = _Block_copy(v5);
  }

  else
  {
    shouldLoadAccessibilityCodeItemBlock2 = [&__block_literal_global_14 copy];
    v6 = _Block_copy(shouldLoadAccessibilityCodeItemBlock2);
  }

  return v6;
}

- (id)_validDidLoadAccessibilityCodeItemBlock
{
  didLoadAccessibilityCodeItemBlock = [(AXCodeLoader *)self didLoadAccessibilityCodeItemBlock];
  if (didLoadAccessibilityCodeItemBlock)
  {
    didLoadAccessibilityCodeItemBlock2 = [(AXCodeLoader *)self didLoadAccessibilityCodeItemBlock];
    v5 = _Block_copy(didLoadAccessibilityCodeItemBlock2);
    v6 = _Block_copy(v5);
  }

  else
  {
    didLoadAccessibilityCodeItemBlock2 = [&__block_literal_global_17 copy];
    v6 = _Block_copy(didLoadAccessibilityCodeItemBlock2);
  }

  return v6;
}

- (id)_validLoadEventWillOccurBlock
{
  loadEventWillOccurBlock = [(AXCodeLoader *)self loadEventWillOccurBlock];
  if (loadEventWillOccurBlock)
  {
    loadEventWillOccurBlock2 = [(AXCodeLoader *)self loadEventWillOccurBlock];
    v5 = _Block_copy(loadEventWillOccurBlock2);
    v6 = _Block_copy(v5);
  }

  else
  {
    loadEventWillOccurBlock2 = [&__block_literal_global_20 copy];
    v6 = _Block_copy(loadEventWillOccurBlock2);
  }

  return v6;
}

- (id)_validLoadEventDidOccurBlock
{
  loadEventDidOccurBlock = [(AXCodeLoader *)self loadEventDidOccurBlock];
  if (loadEventDidOccurBlock)
  {
    loadEventDidOccurBlock2 = [(AXCodeLoader *)self loadEventDidOccurBlock];
    v5 = _Block_copy(loadEventDidOccurBlock2);
    v6 = _Block_copy(v5);
  }

  else
  {
    loadEventDidOccurBlock2 = [&__block_literal_global_23 copy];
    v6 = _Block_copy(loadEventDidOccurBlock2);
  }

  return v6;
}

- (void)beginTrackingLoadedCodeItemsWithMode:(int64_t)mode completion:(id)completion targetQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  if (!mode)
  {
    v10 = AXLogLoading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [AXCodeLoader beginTrackingLoadedCodeItemsWithMode:v10 completion:? targetQueue:?];
    }
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__AXCodeLoader_beginTrackingLoadedCodeItemsWithMode_completion_targetQueue___block_invoke;
  v14[3] = &unk_1E735B8B8;
  v16 = completionCopy;
  modeCopy = mode;
  v14[4] = self;
  v15 = queueCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  dispatch_async(queue, v14);
}

void __76__AXCodeLoader_beginTrackingLoadedCodeItemsWithMode_completion_targetQueue___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isTrackingLoadedCodeItems] & 1) == 0 && *(a1 + 56))
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = v2;

    v5 = *(a1 + 56);
    *(*(a1 + 32) + 112) = v5;
    if (v5 == 2)
    {
      [*(a1 + 32) _updateAccessibilityCodeItemDefinitionsIfNeeded];
    }

    [*(*(a1 + 32) + 8) addImageMonitorObserver:?];
    v6 = [*(a1 + 48) copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    v9 = *(a1 + 40);
    v10 = (*(a1 + 32) + 80);

    objc_storeStrong(v10, v9);
  }
}

- (void)endTrackingLoadedCodeItemsWithCompletion:(id)completion targetQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AXCodeLoader_endTrackingLoadedCodeItemsWithCompletion_targetQueue___block_invoke;
  block[3] = &unk_1E735B6B8;
  v12 = queueCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = queueCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __69__AXCodeLoader_endTrackingLoadedCodeItemsWithCompletion_targetQueue___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTrackingLoadedCodeItems])
  {
    [*(*(a1 + 32) + 8) removeImageMonitorObserver:?];
    v2 = *(a1 + 32);
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;

    *(*(a1 + 32) + 112) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = v5;
    if (!v5)
    {
      v6 = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E96A0];
      v4 = *(a1 + 48);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__AXCodeLoader_endTrackingLoadedCodeItemsWithCompletion_targetQueue___block_invoke_2;
    block[3] = &unk_1E735B8E0;
    v9 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

- (void)_addTrackedCodeItem:(id)item
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__2;
  v7[4] = __Block_byref_object_dispose__2;
  itemCopy = item;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__AXCodeLoader__addTrackedCodeItem___block_invoke;
  v6[3] = &unk_1E735B908;
  v6[4] = self;
  v6[5] = v7;
  v5 = itemCopy;
  dispatch_async(queue, v6);
  _Block_object_dispose(v7, 8);
}

void __36__AXCodeLoader__addTrackedCodeItem___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) trackingMode])
  {
    return;
  }

  obj = [*(*(a1 + 32) + 56) member:*(*(*(a1 + 40) + 8) + 40)];
  if (obj)
  {
    [obj setIsLoaded:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isLoaded")}];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  }

  if (([*(*(*(a1 + 40) + 8) + 40) isAccessibilityBundle] & 1) == 0)
  {
    [*(a1 + 32) _associateAccessibilityCodeItemWithLoadedCodeItem:*(*(*(a1 + 40) + 8) + 40)];
  }

  if ([*(a1 + 32) trackingMode] == 1)
  {
    goto LABEL_12;
  }

  if ([*(a1 + 32) trackingMode] == 2)
  {
    v2 = [*(*(*(a1 + 40) + 8) + 40) associatedAccessibilityCodeItem];
    if (v2)
    {

LABEL_12:
      [*(*(a1 + 32) + 48) addObject:*(*(*(a1 + 40) + 8) + 40)];
      goto LABEL_13;
    }

    if ([*(*(*(a1 + 40) + 8) + 40) isAccessibilityBundle])
    {
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (id)loadedCodeItemPathsUsingTrackedItemsIfAvailable:(BOOL)available
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  if (!available)
  {
    goto LABEL_4;
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__AXCodeLoader_loadedCodeItemPathsUsingTrackedItemsIfAvailable___block_invoke;
  v9[3] = &unk_1E735B908;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);
  v5 = v11[5];
  if (v5)
  {
    loadedImagePaths = v5;
  }

  else
  {
LABEL_4:
    loadedImagePaths = [(AXImageMonitor *)self->_imageMonitor loadedImagePaths];
  }

  v7 = loadedImagePaths;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __64__AXCodeLoader_loadedCodeItemPathsUsingTrackedItemsIfAvailable___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isTrackingLoadedCodeItems])
  {
    v2 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(*(a1 + 32) + 48), "count")}];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(*(a1 + 40) + 8) + 40);
          v11 = [*(*(&v13 + 1) + 8 * v9) path];
          [v10 addObject:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_queue_loadedCodeItemsUsingTrackedItemsIfAvailable:(BOOL)available
{
  if (!available || ![(AXCodeLoader *)self isTrackingLoadedCodeItems]|| (v4 = self->_trackedCodeItems) == 0)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    imageMonitor = self->_imageMonitor;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__AXCodeLoader__queue_loadedCodeItemsUsingTrackedItemsIfAvailable___block_invoke;
    v8[3] = &unk_1E735B7C0;
    v4 = v5;
    v9 = v4;
    [(AXImageMonitor *)imageMonitor enumerateLoadedImagePaths:v8];
  }

  return v4;
}

void __67__AXCodeLoader__queue_loadedCodeItemsUsingTrackedItemsIfAvailable___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AXCodeItem alloc] initWithPath:v3 isDyldOpened:1];

  [v2 addObject:v4];
}

- (id)loadedCodeItemsUsingTrackedItemsIfAvailable:(BOOL)available
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AXCodeLoader_loadedCodeItemsUsingTrackedItemsIfAvailable___block_invoke;
  block[3] = &unk_1E735B930;
  block[4] = self;
  block[5] = &v8;
  availableCopy = available;
  dispatch_sync(queue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __60__AXCodeLoader_loadedCodeItemsUsingTrackedItemsIfAvailable___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_loadedCodeItemsUsingTrackedItemsIfAvailable:*(a1 + 48)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)codeItemForBundle:(id)bundle
{
  bundleCopy = bundle;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AXCodeLoader_codeItemForBundle___block_invoke;
  block[3] = &unk_1E735B958;
  block[4] = self;
  v10 = bundleCopy;
  v11 = &v12;
  v6 = bundleCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __34__AXCodeLoader_codeItemForBundle___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) _queue_loadedCodeItemsUsingTrackedItemsIfAvailable:{1, 0}];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 path];
        v9 = [v8 stringByDeletingLastPathComponent];

        v10 = [*(a1 + 40) bundlePath];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleDyldImageActivityTimerWithDelay:(double)delay
{
  if (!self->_dyldImageActivityCoalesceTimer)
  {
    objc_initWeak(&location, self);
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    dyldImageActivityCoalesceTimer = self->_dyldImageActivityCoalesceTimer;
    self->_dyldImageActivityCoalesceTimer = v5;

    v7 = self->_dyldImageActivityCoalesceTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57__AXCodeLoader__scheduleDyldImageActivityTimerWithDelay___block_invoke;
    handler[3] = &unk_1E735B980;
    objc_copyWeak(&v10, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(self->_dyldImageActivityCoalesceTimer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  v8 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(self->_dyldImageActivityCoalesceTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void __57__AXCodeLoader__scheduleDyldImageActivityTimerWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(dispatch_source_t *)WeakRetained _consumeBeginTrackingCompletionHandlerIfNeeded];
  if (*(*(a1 + 32) + 40) >= 1 && [(dispatch_source_t *)WeakRetained shouldAutoloadAccessibilityCodeItems])
  {
    *(*(a1 + 32) + 40) = 0;
    dispatch_source_merge_data(WeakRetained[3], 1uLL);
  }
}

- (void)_cancelDyldImageActivityTimer
{
  dyldImageActivityCoalesceTimer = self->_dyldImageActivityCoalesceTimer;
  if (dyldImageActivityCoalesceTimer)
  {
    dispatch_source_set_timer(dyldImageActivityCoalesceTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)_consumeBeginTrackingCompletionHandlerIfNeeded
{
  beginTrackingCompletion = self->_beginTrackingCompletion;
  if (beginTrackingCompletion)
  {
    v4 = [beginTrackingCompletion copy];
    beginTrackingCompletionQueue = self->_beginTrackingCompletionQueue;
    v6 = beginTrackingCompletionQueue;
    if (!beginTrackingCompletionQueue)
    {
      v6 = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AXCodeLoader__consumeBeginTrackingCompletionHandlerIfNeeded__block_invoke;
    block[3] = &unk_1E735B8E0;
    v12 = v4;
    v8 = v4;
    dispatch_async(v6, block);
    if (!beginTrackingCompletionQueue)
    {
    }

    v9 = self->_beginTrackingCompletion;
    self->_beginTrackingCompletion = 0;

    v10 = self->_beginTrackingCompletionQueue;
    self->_beginTrackingCompletionQueue = 0;
  }
}

- (void)prewarmAccessibilityCodeItemDefinitionsWithCompletion:(id)completion targetQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__AXCodeLoader_prewarmAccessibilityCodeItemDefinitionsWithCompletion_targetQueue___block_invoke;
  block[3] = &unk_1E735B6B8;
  v12 = queueCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = queueCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __82__AXCodeLoader_prewarmAccessibilityCodeItemDefinitionsWithCompletion_targetQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAccessibilityCodeItemDefinitionsIfNeeded];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = v3;
    if (!v3)
    {
      v4 = MEMORY[0x1E69E96A0];
      v5 = MEMORY[0x1E69E96A0];
      v2 = *(a1 + 48);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AXCodeLoader_prewarmAccessibilityCodeItemDefinitionsWithCompletion_targetQueue___block_invoke_2;
    block[3] = &unk_1E735B8E0;
    v7 = v2;
    dispatch_async(v4, block);
    if (!v3)
    {
    }
  }
}

- (void)_updateAccessibilityCodeItemDefinitionsIfNeeded
{
  if (!self->_accessibilityCodeItems)
  {
    v12 = v2;
    v13 = v3;
    v5 = AXLogLoading();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UpdateAXCodeItemDefs", &unk_19167EAFE, buf, 2u);
    }

    _accessibilityBundleMapURLs = [(AXCodeLoader *)self _accessibilityBundleMapURLs];
    v7 = [(AXCodeLoader *)self _createAccessibilityCodeItemsFromBundleMapURLs:_accessibilityBundleMapURLs];
    accessibilityCodeItems = self->_accessibilityCodeItems;
    self->_accessibilityCodeItems = v7;

    v9 = AXLogLoading();
    if (os_signpost_enabled(v9))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UpdateAXCodeItemDefs", &unk_19167EAFE, v10, 2u);
    }

    [(AXCodeLoader *)self _reconcileTrackedCodeItemsWithAccessibilityCodeItemDefinitions];
    [(AXCodeLoader *)self _initializeCodeItemMappings];
  }
}

- (void)_initializeCodeItemMappings
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  codeItemsByNameType = self->_codeItemsByNameType;
  self->_codeItemsByNameType = v3;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_accessibilityCodeItems;
  v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        if (self->_currentPlatformKey)
        {
          v9 = *(*(&v17 + 1) + 8 * i);
          platformToTarget = [v9 platformToTarget];
          v11 = [platformToTarget objectForKeyedSubscript:self->_currentPlatformKey];
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "targetType")}];
          stringValue = [v12 stringValue];
          v14 = [v11 stringByAppendingString:stringValue];

          if (v14)
          {
            [(NSMutableDictionary *)self->_codeItemsByNameType setObject:v9 forKeyedSubscript:v14];
          }
        }
      }

      v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_reconcileTrackedCodeItemsWithAccessibilityCodeItemDefinitions
{
  trackedCodeItems = self->_trackedCodeItems;
  if (trackedCodeItems)
  {
    if (self->_accessibilityCodeItems)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __78__AXCodeLoader__reconcileTrackedCodeItemsWithAccessibilityCodeItemDefinitions__block_invoke;
      v4[3] = &unk_1E735B9C8;
      v4[4] = self;
      [(NSMutableSet *)trackedCodeItems enumerateObjectsUsingBlock:v4];
      [(AXCodeLoader *)self _associateAccessibilityCodeItemsWithAllTrackedCodeItems];
    }
  }
}

void __78__AXCodeLoader__reconcileTrackedCodeItemsWithAccessibilityCodeItemDefinitions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = a2;
  v5 = [v4 platformToTarget];
  [v7 setPlatformToTarget:v5];

  [v7 setTargetType:{objc_msgSend(v4, "targetType")}];
  v6 = [v4 loadOrder];

  [v7 setLoadOrder:v6];
}

- (id)_platformKeyForPlatform:(unsigned int)platform
{
  HIDWORD(v4) = platform - 2;
  LODWORD(v4) = platform - 2;
  v3 = v4 >> 1;
  if (v3 > 7)
  {
    v5 = &_AXBundleMapPlatformKey_iOS;
  }

  else
  {
    v5 = off_1E735BB78[v3];
  }

  return *v5;
}

- (id)_accessibilityCodeItemMatchingName:(id)name type:(int64_t)type path:(id)path
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  stringValue = [v8 stringValue];
  v10 = [nameCopy stringByAppendingString:stringValue];

  v11 = [(NSMutableDictionary *)self->_codeItemsByNameType objectForKeyedSubscript:v10];
  if (!v11)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_accessibilityCodeItems;
    v11 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v21 = v10;
      v12 = 0;
      v13 = *v24;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * v14);

          platformToTarget = [(NSMutableSet *)v12 platformToTarget];
          v17 = [platformToTarget objectForKeyedSubscript:self->_currentPlatformKey];
          if ([v17 isEqualToString:nameCopy])
          {
            targetType = [(NSMutableSet *)v12 targetType];

            if (targetType == type)
            {
              v11 = v12;
              v12 = obj;
              obj = v11;
              goto LABEL_13;
            }
          }

          else
          {
          }

          v14 = (v14 + 1);
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
LABEL_13:

      v10 = v21;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_associateAccessibilityCodeItemWithLoadedCodeItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isAccessibilityBundle])
  {
    v5 = AXLogLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AXCodeLoader _associateAccessibilityCodeItemWithLoadedCodeItem:v5];
    }
  }

  else
  {
    name = [itemCopy name];
    type = [itemCopy type];
    path = [itemCopy path];
    v5 = [(AXCodeLoader *)self _accessibilityCodeItemMatchingName:name type:type path:path];

    [itemCopy setAssociatedAccessibilityCodeItem:v5];
    [v5 setTargetCodeItem:itemCopy];
  }
}

- (void)_associateAccessibilityCodeItemsWithAllTrackedCodeItems
{
  trackedCodeItems = self->_trackedCodeItems;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__AXCodeLoader__associateAccessibilityCodeItemsWithAllTrackedCodeItems__block_invoke;
  v3[3] = &unk_1E735B9C8;
  v3[4] = self;
  [(NSMutableSet *)trackedCodeItems enumerateObjectsUsingBlock:v3];
}

void __71__AXCodeLoader__associateAccessibilityCodeItemsWithAllTrackedCodeItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isAccessibilityBundle] & 1) == 0)
  {
    [*(a1 + 32) _associateAccessibilityCodeItemWithLoadedCodeItem:v3];
  }
}

- (id)_accessibilityBundleMapURLs
{
  if (_accessibilityBundleMapURLs_onceToken != -1)
  {
    [AXCodeLoader _accessibilityBundleMapURLs];
  }

  v3 = _accessibilityBundleMapURLs_KnownBundleMapURLs;

  return v3;
}

void __43__AXCodeLoader__accessibilityBundleMapURLs__block_invoke()
{
  v18[2] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = MEMORY[0x1E695DFF8];
  v2 = AXAccessibilityBundlesDirectory();
  v18[0] = v2;
  v18[1] = @"mainbundles.axbundlemap";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v4 = [v1 fileURLWithPathComponents:v3];
  [v0 addObject:v4];

  if (!_AXSMossdeepEnabled())
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = AXAccessibilityBundlesDirectory();
    v17[0] = v6;
    v17[1] = @"watchbundles.axbundlemap";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [v5 fileURLWithPathComponents:v7];
    [v0 addObject:v8];
  }

  if (_AXSMossdeepEnabled())
  {
    v9 = MEMORY[0x1E695DFF8];
    v10 = AXAccessibilityBundlesDirectory();
    v16[0] = v10;
    v16[1] = @"mossdeepbundles.axbundlemap";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v12 = [v9 fileURLWithPathComponents:v11];
    [v0 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v0];
  v14 = _accessibilityBundleMapURLs_KnownBundleMapURLs;
  _accessibilityBundleMapURLs_KnownBundleMapURLs = v13;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_createAccessibilityCodeItemsFromBundleMapURLs:(id)ls
{
  v41 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v21 = [MEMORY[0x1E695DFA8] set];
  v23 = objc_alloc_init(_AXCodeItemDecoder);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = lsCopy;
  v25 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v25)
  {
    v22 = *v33;
    do
    {
      v4 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * v4);
        array = [MEMORY[0x1E695DF70] array];
        v24 = v5;
        v7 = [(_AXCodeItemDecoder *)v23 decodedCodeItemsFromURL:v5 decodingErrors:array];
        if ([array count])
        {
          v8 = AXLogLoading();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [(AXCodeLoader *)v39 _createAccessibilityCodeItemsFromBundleMapURLs:array];
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v9 = array;
          v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v29;
            do
            {
              v13 = 0;
              do
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v28 + 1) + 8 * v13);
                v15 = AXLogLoading();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  [(AXCodeLoader *)v37 _createAccessibilityCodeItemsFromBundleMapURLs:v14];
                }

                ++v13;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
            }

            while (v11);
          }
        }

        if ([v7 count])
        {
          v16 = [MEMORY[0x1E695DFA8] setWithSet:v7];
          [v16 intersectSet:v21];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __63__AXCodeLoader__createAccessibilityCodeItemsFromBundleMapURLs___block_invoke;
          v26[3] = &unk_1E735B9C8;
          v17 = v21;
          v27 = v17;
          [v16 enumerateObjectsUsingBlock:v26];
          [v17 unionSet:v7];
        }

        else
        {
          v16 = AXLogLoading();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(AXCodeLoader *)v36 _createAccessibilityCodeItemsFromBundleMapURLs:v24];
          }
        }

        ++v4;
      }

      while (v4 != v25);
      v25 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v25);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v21;
}

void __63__AXCodeLoader__createAccessibilityCodeItemsFromBundleMapURLs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 member:v3];
  v4 = [v3 platformToTarget];

  [v5 addPlatformToTargetEntries:v4];
}

- (void)_loadAccessibilityCodeItems
{
  selfCopy = self;
  v63 = *MEMORY[0x1E69E9840];
  v3 = 1;
  if (!self->_initialLoadHasOccurred)
  {
    self->_initialLoadHasOccurred = 1;
    v3 = 0;
  }

  _validLoadEventWillOccurBlock = [(AXCodeLoader *)self _validLoadEventWillOccurBlock];
  _validLoadEventWillOccurBlock[2](_validLoadEventWillOccurBlock, v3);
  dispatch_suspend(selfCopy[3]);
  if (AXShouldLogValidationErrors())
  {
    v4 = AXLogLoading();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19159B000, v4, OS_LOG_TYPE_INFO, "Will reevaluate code items and load any needed ax code items now", buf, 2u);
    }
  }

  v37 = v3;
  [(dispatch_object_t *)selfCopy _updateAccessibilityCodeItemDefinitionsIfNeeded];
  _validShouldLoadAccessibilityCodeItemBlock = [(dispatch_object_t *)selfCopy _validShouldLoadAccessibilityCodeItemBlock];
  v6 = [(dispatch_object_t *)selfCopy _queue_loadedCodeItemsUsingTrackedItemsIfAvailable:1];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke;
  v57[3] = &unk_1E735B9F0;
  v57[4] = selfCopy;
  v36 = _validShouldLoadAccessibilityCodeItemBlock;
  v58 = v36;
  v7 = [v6 ax_filteredSetUsingBlock:v57];

  v8 = MEMORY[0x1E695DFA0];
  v35 = v7;
  v9 = [v7 ax_flatMappedSetUsingBlock:&__block_literal_global_54];
  v10 = [v8 orderedSetWithSet:v9];

  [v10 sortUsingComparator:&__block_literal_global_57_1];
  v39 = selfCopy;
  if (AXShouldLogValidationErrors())
  {
    v11 = AXLogLoading();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count];
      *buf = 134217984;
      v62 = v12;
      _os_log_impl(&dword_19159B000, v11, OS_LOG_TYPE_DEFAULT, "found %lu axbundle(s) requiring load", buf, 0xCu);
    }

    v13 = AXLogLoading();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v53 objects:v60 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v54;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v54 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v53 + 1) + 8 * i);
            v21 = AXLogLoading();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v20;
              _os_log_impl(&dword_19159B000, v21, OS_LOG_TYPE_DEBUG, "  %@", buf, 0xCu);
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v53 objects:v60 count:16];
        }

        while (v17);
      }

      selfCopy = v39;
    }
  }

  v22 = dispatch_group_create();
  _validDidLoadAccessibilityCodeItemBlock = [(dispatch_object_t *)selfCopy _validDidLoadAccessibilityCodeItemBlock];
  v24 = dispatch_queue_create("AXBundleLoadQueue", 0);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v10;
  v25 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v50;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v49 + 1) + 8 * j);
        dispatch_group_enter(v22);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_59;
        v46[3] = &unk_1E735BA80;
        v48 = _validDidLoadAccessibilityCodeItemBlock;
        v47 = v22;
        [v29 loadWithStrategy:0 onQueue:v24 completion:v46];
      }

      v26 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v26);
  }

  _validLoadEventDidOccurBlock = [(dispatch_object_t *)v39 _validLoadEventDidOccurBlock];
  v31 = v39[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_62;
  block[3] = &unk_1E735BAD0;
  v44 = _validLoadEventDidOccurBlock;
  v45 = v37;
  v42 = obj;
  v43 = v39;
  v32 = obj;
  v33 = _validLoadEventDidOccurBlock;
  dispatch_group_notify(v22, v31, block);

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a2 associatedAccessibilityCodeItem];
  v4 = v3;
  if (v3 && ([v3 isLoaded] & 1) == 0 && *(*(a1 + 32) + 96))
  {
    v5 = [v4 excludedProcesses];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AE30] processInfo];
      v8 = [v7 processName];

      v9 = [v4 excludedProcesses];
      v10 = [v9 containsObject:v8];

      if (v10)
      {
        v11 = AXLogLoading();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v4 name];
          v16 = 138412290;
          v17 = v12;
          _os_log_impl(&dword_19159B000, v11, OS_LOG_TYPE_INFO, "Not loading ax bundle '%@' because its listed as an excluded bundle", &v16, 0xCu);
        }

        goto LABEL_9;
      }
    }

    v13 = (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

LABEL_9:
  v13 = 0;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 loadOrder];
  if (v6 <= [v5 loadOrder])
  {
    v8 = [v4 loadOrder];
    v7 = v8 < [v5 loadOrder];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_59(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_2_60;
  v13[3] = &unk_1E735BA58;
  v14 = v8;
  v15 = v7;
  v9 = *(a1 + 40);
  v16 = *(a1 + 32);
  v10 = *(v9 + 16);
  v11 = v7;
  v12 = v8;
  v10(v9, v11, a3, v12, v13);
}

void __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_2_60(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = AXLogLoading();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_2_60_cold_1(a1, v2, v3);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_62(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) count];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_2_63;
  v7[3] = &unk_1E735BAA8;
  v5 = *(a1 + 56);
  v7[4] = *(a1 + 40);
  v7[5] = v5;
  return (*(v2 + 16))(v2, v3, v4, v7);
}

void __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_2_63(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    *(*(a1 + 32) + 89) = 1;
  }

  if (AXShouldLogValidationErrors())
  {
    v2 = AXLogLoading();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_19159B000, v2, OS_LOG_TYPE_INFO, "Finished loading ax code items", v3, 2u);
    }
  }

  dispatch_resume(*(*(a1 + 32) + 24));
}

- (void)queryAccessibilityBundleIsLoadedWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AXCodeLoader_queryAccessibilityBundleIsLoadedWithName_completion___block_invoke;
  block[3] = &unk_1E735BAF8;
  block[4] = self;
  v12 = nameCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

void __68__AXCodeLoader_queryAccessibilityBundleIsLoadedWithName_completion___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1[4] + 56);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 name];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          (*(a1[6] + 16))(a1[6], [v7 isLoaded], objc_msgSend(v7, "loadedAtTimestamp"));

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  (*(a1[6] + 16))();
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)imageMonitor:(id)monitor didAddImage:(id)image
{
  imageCopy = image;
  v6 = [[AXCodeItem alloc] initWithPath:imageCopy isDyldOpened:1];

  if (![(AXCodeItem *)v6 isAccessibilityBundle])
  {
    ++self->_monitoredLoadTriggeringImageCountSinceLastLoad;
  }

  [(AXCodeLoader *)self _addTrackedCodeItem:v6];
  [(AXCodeLoader *)self _scheduleDyldImageActivityTimerWithDelay:0.3];
}

- (void)iterateInitialImageListForImageMonitor:(id)monitor
{
  v4 = [(AXCodeLoader *)self loadedCodeItemsUsingTrackedItemsIfAvailable:0];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AXCodeLoader_iterateInitialImageListForImageMonitor___block_invoke;
  v7[3] = &unk_1E735B7E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __55__AXCodeLoader_iterateInitialImageListForImageMonitor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) setByAddingObjectsFromSet:*(a1 + 40)];
  [*(a1 + 32) _reconcileTrackedCodeItemsWithAccessibilityCodeItemDefinitions];
  v3 = *(a1 + 32);

  return [v3 _consumeBeginTrackingCompletionHandlerIfNeeded];
}

- (id)recomputedCodeItemsForAllFrameworks
{
  v2 = MEMORY[0x1E695DFD8];
  allFrameworks = [MEMORY[0x1E696AAE8] allFrameworks];
  v4 = [v2 setWithArray:allFrameworks];

  v5 = [v4 ax_filteredSetUsingBlock:&__block_literal_global_219];
  v6 = [v5 ax_flatMappedSetUsingBlock:&__block_literal_global_222];

  return v6;
}

BOOL __69__AXCodeLoader_ExtendedCodeInfo__recomputedCodeItemsForAllFrameworks__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bundlePath];
  v3 = v2 != 0;

  return v3;
}

AXCodeItem *__69__AXCodeLoader_ExtendedCodeInfo__recomputedCodeItemsForAllFrameworks__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [AXCodeItem alloc];
  v4 = [v2 bundlePath];

  v5 = [(AXCodeItem *)v3 initWithPath:v4 isDyldOpened:1];

  return v5;
}

- (id)recomputedCodeItemsForLoadedAccessibilityBundles
{
  v2 = [(AXCodeLoader *)self loadedCodeItemsUsingTrackedItemsIfAvailable:0];
  v3 = [v2 ax_filteredSetUsingBlock:&__block_literal_global_224];

  return v3;
}

- (id)accessibilityCodeItemDefinitions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AXCodeLoader_ExtendedCodeInfo__accessibilityCodeItemDefinitions__block_invoke;
  v5[3] = &unk_1E735B908;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __66__AXCodeLoader_ExtendedCodeInfo__accessibilityCodeItemDefinitions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAccessibilityCodeItemDefinitionsIfNeeded];
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_stateDescForItem:(id)item
{
  v3 = MEMORY[0x1E696AEC0];
  itemCopy = item;
  if ([itemCopy isAccessibilityBundle])
  {
    v5 = @"AX-BUNDLE ";
  }

  else
  {
    v5 = &stru_1F0579798;
  }

  name = [itemCopy name];
  debugCodeTypeDescription = [itemCopy debugCodeTypeDescription];
  isLoaded = [itemCopy isLoaded];
  v9 = @"[LOADED]";
  if (!isLoaded)
  {
    v9 = &stru_1F0579798;
  }

  v10 = [v3 stringWithFormat:@"%@%@.%@ <%p> %@", v5, name, debugCodeTypeDescription, itemCopy, v9];

  return v10;
}

- (void)logLoaderState
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AXCodeLoader_ExtendedCodeInfo__logLoaderState__block_invoke;
  block[3] = &unk_1E735AD18;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__AXCodeLoader_ExtendedCodeInfo__logLoaderState__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E695DFA8] set];
  v2 = AXLogLoading();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19159B000, v2, OS_LOG_TYPE_DEFAULT, "AXCodeLoader State:", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(*(a1 + 32) + 48);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 associatedAccessibilityCodeItem];
        v10 = [v8 targetCodeItem];
        v11 = AXLogLoading();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) _stateDescForItem:v8];
          *buf = 138412290;
          v39 = v12;
          _os_log_impl(&dword_19159B000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        if (v9)
        {
          v13 = AXLogLoading();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [*(a1 + 32) _stateDescForItem:v9];
            *buf = 138412290;
            v39 = v14;
            _os_log_impl(&dword_19159B000, v13, OS_LOG_TYPE_DEFAULT, "  -> %@", buf, 0xCu);
          }
        }

        if ([v8 isAccessibilityBundle])
        {
          v15 = v10 == 0;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          [v28 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v5);
  }

  if ([v28 count])
  {
    v16 = AXLogLoading();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19159B000, v16, OS_LOG_TYPE_DEFAULT, "-------------------------------------------------", buf, 2u);
    }

    v17 = AXLogLoading();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19159B000, v17, OS_LOG_TYPE_DEFAULT, "\nWARNING: The following AX Bundles are loaded but\nwere not in our definitions! This means the old\nloader knows how to load some bundles that we do\nnot, and we have more compile-time work to do", buf, 2u);
    }

    v18 = AXLogLoading();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19159B000, v18, OS_LOG_TYPE_DEFAULT, "--------------------------------------------", buf, 2u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v28;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v29 + 1) + 8 * j);
          v25 = AXLogLoading();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [*(a1 + 32) _stateDescForItem:v24];
            *buf = 138412290;
            v39 = v26;
            _os_log_impl(&dword_19159B000, v25, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)trackedCodeItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AXCodeLoader_ExtendedCodeInfo__trackedCodeItems__block_invoke;
  v5[3] = &unk_1E735B758;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __50__AXCodeLoader_ExtendedCodeInfo__trackedCodeItems__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)rogueAccessibilityCodeItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AXCodeLoader_ExtendedCodeInfo__rogueAccessibilityCodeItems__block_invoke;
  v5[3] = &unk_1E735B908;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__AXCodeLoader_ExtendedCodeInfo__rogueAccessibilityCodeItems__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(*(a1 + 32) + 48);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 targetCodeItem];
        if ([v8 isAccessibilityBundle])
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v2;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_createAccessibilityCodeItemsFromBundleMapURLs:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_1(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_19159B000, v5, v6, "(%lu) Decoding errors found with axbundlemap:");
}

- (void)_createAccessibilityCodeItemsFromBundleMapURLs:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_19159B000, v5, v6, "  %@");
}

- (void)_createAccessibilityCodeItemsFromBundleMapURLs:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_1(a1 a2)];
  v5 = [v4 UTF8String];
  *v3 = 136315138;
  *v2 = v5;
  OUTLINED_FUNCTION_1_0(&dword_19159B000, v6, v7, "No code items decoded from URL %s");
}

void __43__AXCodeLoader__loadAccessibilityCodeItems__block_invoke_2_60_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_19159B000, log, OS_LOG_TYPE_ERROR, "Failed to load item %@. error: %@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end