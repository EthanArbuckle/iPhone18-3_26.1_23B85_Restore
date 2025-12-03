@interface ATAssetLinkController
+ (id)sharedInstance;
- (ATAssetLinkController)init;
- (BOOL)_assetIsEnqueued:(id)enqueued;
- (BOOL)_canEnqueueAsset:(id)asset;
- (BOOL)_canEnqueueAsset:(id)asset onLink:(id)link;
- (BOOL)_shouldReleaseKeepAliveTransaction;
- (BOOL)assetIsEnqueued:(id)enqueued;
- (id)allAssets;
- (id)filteredAssetsToDownloadForAssets:(id)assets;
- (unint64_t)_getMaxThermalPressureThreshold;
- (void)_addFailedLink:(id)link forAsset:(id)asset;
- (void)_assetsDidChange;
- (void)_cancelAssets:(id)assets withError:(id)error completion:(id)completion;
- (void)_finishAsset:(id)asset withError:(id)error;
- (void)_handleEnqueue:(id)enqueue onLink:(id)link withPriority:(BOOL)priority;
- (void)_performSelectorOnObservers:(SEL)observers object:(id)object object:(id)a5;
- (void)_prioritizeAsset:(id)asset onLinkClass:(Class)class;
- (void)_updateCountsForFinishedTrackAssetTypes:(id)types;
- (void)addAssetLink:(id)link;
- (void)addObserver:(id)observer;
- (void)assetLink:(id)link didCloseWithOutstandingAssets:(id)assets;
- (void)assetLink:(id)link didFinishAsset:(id)asset error:(id)error retryable:(BOOL)retryable cancelPendingAssetsInBatch:(BOOL)batch;
- (void)assetLink:(id)link didOpenWithPendingAssets:(id)assets;
- (void)assetLink:(id)link didPauseAsseDownload:(id)download error:(id)error;
- (void)assetLink:(id)link didUpdateAsset:(id)asset progress:(double)progress;
- (void)assetLink:(id)link didUpdateDownloadPauseReasonForAssets:(id)assets;
- (void)assetLinkDidChange:(id)change;
- (void)cancelAllAssetsMatchingPredicate:(id)predicate excludeActiveDownloads:(BOOL)downloads withError:(id)error completion:(id)completion;
- (void)cancelAssets:(id)assets withError:(id)error completion:(id)completion;
- (void)dealloc;
- (void)enqueueAssetForStoreDownload:(int64_t)download withCompletion:(id)completion;
- (void)enqueueAssets:(id)assets;
- (void)enqueueAssets:(id)assets progress:(id)progress completion:(id)completion;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)environmentMonitorDidChangeThermalLevel:(id)level;
- (void)installCompleteForAssets:(id)assets;
- (void)prioritizeAsset:(id)asset;
- (void)prioritizeAssetWithStoreForLibraryIdentifier:(int64_t)identifier withCompletion:(id)completion;
- (void)removeAssetLink:(id)link;
- (void)removeObserver:(id)observer;
- (void)setPendingAssets:(id)assets;
@end

@implementation ATAssetLinkController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_691);
  }

  v3 = __sharedInstance;

  return v3;
}

- (id)allAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__670;
  v10 = __Block_byref_object_dispose__671;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__ATAssetLinkController_allAssets__block_invoke;
  v5[3] = &unk_2784E94F8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__ATAssetLinkController_allAssets__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_updateCountsForFinishedTrackAssetTypes:(id)types
{
  v42 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  if ([typesCopy count])
  {
    v24 = typesCopy;
    v5 = [MEMORY[0x277CBEB58] set];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = typesCopy;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v7)
    {
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_trackAssetsPendingInstallByAssetType objectForKey:v10];
          v12 = [v11 count];

          v13 = [(NSMutableDictionary *)self->_activeTrackAssetsByAssetType objectForKey:v10];
          v14 = [v13 count];

          if (!(v12 | v14))
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v7);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v5;
    v15 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v15)
    {
      v16 = *v29;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v28 + 1) + 8 * j);
          v19 = _ATLogCategoryFramework();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v18;
            _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing all track assets of assetType %{public}@.", buf, 0x16u);
          }

          [(ATAssetLinkController *)self _performSelectorOnObservers:sel_assetLinkController_didProcessAllTrackAssetsWithAssetType_ object:self object:v18];
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v15);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v39 = 0;
    activeTrackAssetsByAssetType = self->_activeTrackAssetsByAssetType;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__ATAssetLinkController__updateCountsForFinishedTrackAssetTypes___block_invoke;
    v27[3] = &unk_2784E9058;
    v27[4] = buf;
    [(NSMutableDictionary *)activeTrackAssetsByAssetType enumerateKeysAndObjectsUsingBlock:v27];
    trackAssetsPendingInstallByAssetType = self->_trackAssetsPendingInstallByAssetType;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__ATAssetLinkController__updateCountsForFinishedTrackAssetTypes___block_invoke_2;
    v26[3] = &unk_2784E9058;
    v26[4] = buf;
    [(NSMutableDictionary *)trackAssetsPendingInstallByAssetType enumerateKeysAndObjectsUsingBlock:v26];
    if (!*(*&buf[8] + 24))
    {
      v22 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_22392A000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing all track assets.", v36, 0xCu);
      }

      [(ATAssetLinkController *)self _performSelectorOnObservers:sel_assetLinkControllerDidProcessAllTrackAssets_ object:self object:0];
    }

    _Block_object_dispose(buf, 8);

    typesCopy = v24;
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __65__ATAssetLinkController__updateCountsForFinishedTrackAssetTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __65__ATAssetLinkController__updateCountsForFinishedTrackAssetTypes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (BOOL)_assetIsEnqueued:(id)enqueued
{
  enqueuedCopy = enqueued;
  if (([(NSMutableOrderedSet *)self->_assetQueue containsObject:enqueuedCopy]& 1) != 0 || ([(NSMapTable *)self->_assetsToLinks objectForKey:enqueuedCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 1;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    trackAssetsPendingInstallByAssetType = self->_trackAssetsPendingInstallByAssetType;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__ATAssetLinkController__assetIsEnqueued___block_invoke;
    v14[3] = &unk_2784E9030;
    v9 = enqueuedCopy;
    v15 = v9;
    v16 = &v17;
    [(NSMutableDictionary *)trackAssetsPendingInstallByAssetType enumerateKeysAndObjectsUsingBlock:v14];
    if (v18[3])
    {
      v6 = 1;
    }

    else
    {
      nonTrackAssetsPendingInstallByAssetType = self->_nonTrackAssetsPendingInstallByAssetType;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __42__ATAssetLinkController__assetIsEnqueued___block_invoke_2;
      v11[3] = &unk_2784E9030;
      v12 = v9;
      v13 = &v17;
      [(NSMutableDictionary *)nonTrackAssetsPendingInstallByAssetType enumerateKeysAndObjectsUsingBlock:v11];

      v6 = *(v18 + 24);
    }

    _Block_object_dispose(&v17, 8);
  }

  return v6 & 1;
}

uint64_t __42__ATAssetLinkController__assetIsEnqueued___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __42__ATAssetLinkController__assetIsEnqueued___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_shouldReleaseKeepAliveTransaction
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NSMutableOrderedSet *)self->_assetQueue count]|| [(NSMapTable *)self->_assetsToLinks count])
  {
    LOBYTE(isActive) = 0;
  }

  else
  {
    isActive = [(MSVXPCTransaction *)self->_activeDownLoadsKeepAliveTransaction isActive];
    if (isActive)
    {
      v5 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Done with all downloads - release keep alive transaction.", &v7, 0xCu);
      }

      LOBYTE(isActive) = 1;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return isActive;
}

- (void)_prioritizeAsset:(id)asset onLinkClass:(Class)class
{
  v37 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v7 = [(NSMapTable *)self->_assetsToLinks objectForKey:assetCopy];
  if (v7 && ![(NSMutableOrderedSet *)self->_assetQueue containsObject:assetCopy])
  {
    goto LABEL_28;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_assetLinks;
  v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v22 = v7;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (class && (v14 = *(*(&v23 + 1) + 8 * i), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v15 = _ATLogCategoryFramework();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [(objc_class *)class description];
            *buf = 138544130;
            selfCopy3 = self;
            v29 = 2114;
            v30 = assetCopy;
            v31 = 2114;
            v32 = v13;
            v33 = 2114;
            v34 = v16;
            _os_log_impl(&dword_22392A000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Not prioritizing %{public}@ on %{public}@ - required link type:%{public}@", buf, 0x2Au);
          }
        }

        else if ([(ATAssetLinkController *)self _canEnqueueAsset:assetCopy onLink:v13])
        {
          v35 = assetCopy;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          v18 = [v13 enqueueAssets:v17 force:1];

          if (v18 && [v18 count])
          {
            v19 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              selfCopy3 = self;
              v29 = 2114;
              v30 = v13;
              v31 = 2114;
              v32 = assetCopy;
              _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueued asset due to prioritization on %{public}@: %{public}@", buf, 0x20u);
            }

            v7 = v13;
            [(NSMutableOrderedSet *)self->_assetQueue removeObject:assetCopy];
            [(NSMapTable *)self->_assetsToLinks setObject:v7 forKey:assetCopy];
          }

          else
          {
            v20 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy3 = self;
              v29 = 2114;
              v30 = v13;
              _os_log_impl(&dword_22392A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ couldn't enqueue prioritized asset on %{public}@ - move to top of the queue", buf, 0x16u);
            }

            [(NSMutableOrderedSet *)self->_assetQueue removeObject:assetCopy];
            [(NSMutableOrderedSet *)self->_assetQueue insertObject:assetCopy atIndex:0];
            v7 = v22;
          }

          goto LABEL_27;
        }
      }

      v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v23 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v7 = v22;
  }

LABEL_27:

  if (v7)
  {
LABEL_28:
    [v7 prioritizeAsset:assetCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_getMaxThermalPressureThreshold
{
  currentDeviceInfo = [MEMORY[0x277D7FA80] currentDeviceInfo];
  if ([currentDeviceInfo isWatch])
  {
    mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
    [mEMORY[0x277D7FA90] currentBatteryLevel];
    if (v4 <= 0.8)
    {
      v5 = 20;
    }

    else
    {
      v5 = 30;
    }
  }

  else
  {
    v5 = 30;
  }

  return v5;
}

- (void)_assetsDidChange
{
  v49 = *MEMORY[0x277D85DE8];
  v29 = [(NSMutableOrderedSet *)self->_assetQueue copy];
  if ([(NSMutableOrderedSet *)self->_assetQueue count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = self->_assetLinks;
    v4 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v40;
      v28 = *v40;
      do
      {
        v7 = 0;
        v30 = v5;
        do
        {
          if (*v40 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v39 + 1) + 8 * v7);
          if ([v8 linkIsReady])
          {
            v32 = v7;
            v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v10 = v29;
            v11 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (!v11)
            {
              goto LABEL_32;
            }

            v12 = v11;
            v13 = *v36;
            v33 = v9;
            while (1)
            {
              v14 = 0;
              do
              {
                if (*v36 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v35 + 1) + 8 * v14);
                if ([(ATAssetLinkController *)self _canEnqueueAsset:v15 onLink:v8])
                {
                  v16 = [(NSMapTable *)self->_assetsToLinks objectForKey:v15];
                  v17 = v16;
                  if (v16)
                  {
                    v18 = v16 == v8;
                  }

                  else
                  {
                    v18 = 1;
                  }

                  if (v18)
                  {
                    [(NSMapTable *)self->_assetsToLinks setObject:v8 forKey:v15];
                    isPrioritized = [v15 isPrioritized];
                    v20 = v9;
                    if ((isPrioritized & 1) == 0)
                    {
                      if (self->_cachedThermalLevel >= [(ATAssetLinkController *)self _getMaxThermalPressureThreshold])
                      {
                        v22 = array;
                        v23 = _ATLogCategoryFramework();
                        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138543618;
                          selfCopy2 = self;
                          v45 = 2114;
                          v46 = v15;
                          _os_log_impl(&dword_22392A000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ Not enqueuing %{public}@ due to thermal pressure.", buf, 0x16u);
                        }

                        array = v22;
                        v9 = v33;
                        if ([v15 downloadPauseReason])
                        {
                          goto LABEL_21;
                        }

                        [v15 setDownloadPauseReason:{objc_msgSend(v15, "downloadPauseReason") | 1}];
                        v20 = array;
                      }

                      else
                      {
                        downloadPauseReason = [v15 downloadPauseReason];
                        v20 = v34;
                        if (downloadPauseReason)
                        {
                          [v15 setDownloadPauseReason:{objc_msgSend(v15, "downloadPauseReason") & 0xFFFFFFFFFFFFFFFELL}];
                          [array addObject:v15];
                          v20 = v34;
                        }
                      }
                    }

                    [v20 addObject:v15];
                  }

LABEL_21:
                }

                ++v14;
              }

              while (v12 != v14);
              v24 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
              v12 = v24;
              if (!v24)
              {
LABEL_32:

                [(ATAssetLinkController *)self _handleEnqueue:v9 onLink:v8 withPriority:1];
                [(ATAssetLinkController *)self _handleEnqueue:v34 onLink:v8 withPriority:0];

                v6 = v28;
                v5 = v30;
                v7 = v32;
                break;
              }
            }
          }

          ++v7;
        }

        while (v7 != v5);
        v5 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v5);
    }

    if ([array count])
    {
      v25 = _ATLogCategoryFramework_Oversize();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v45 = 2114;
        v46 = array;
        _os_log_impl(&dword_22392A000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Download paused reason changed for %{public}@", buf, 0x16u);
      }

      [(ATAssetLinkController *)self _performSelectorOnObservers:sel_assetLinkController_didChangeDownloadStateForAssets_ object:self object:array];
    }
  }

  else
  {
    v26 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22392A000, v26, OS_LOG_TYPE_DEFAULT, "No active downloads - posting ATAssetLinkControllerDidFinishAllAssets notification.", buf, 2u);
    }

    array = [MEMORY[0x277CCAB98] defaultCenter];
    [array postNotificationName:@"ATAssetLinkControllerDidFinishAllAssets" object:self];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleEnqueue:(id)enqueue onLink:(id)link withPriority:(BOOL)priority
{
  priorityCopy = priority;
  v50 = *MEMORY[0x277D85DE8];
  enqueueCopy = enqueue;
  linkCopy = link;
  if ([enqueueCopy count])
  {
    v10 = [linkCopy enqueueAssets:enqueueCopy force:0];
    v11 = v10;
    if (v10 && [v10 count])
    {
      v12 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 count];
        v14 = [v11 count];
        v15 = @"assets";
        *buf = 138544130;
        v44 = 1024;
        selfCopy = self;
        if (v14 == 1)
        {
          v15 = @"asset";
        }

        v45 = v13;
        v46 = 2114;
        v47 = v15;
        v48 = 2114;
        v49 = linkCopy;
        _os_log_impl(&dword_22392A000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueued %d %{public}@ on %{public}@:", buf, 0x26u);
      }

      selfCopy2 = self;
      v31 = enqueueCopy;

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v30 = v11;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            v22 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy = v21;
              _os_log_impl(&dword_22392A000, v22, OS_LOG_TYPE_DEFAULT, "    %{public}@", buf, 0xCu);
            }

            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            [(ATAssetLinkController *)v21 setTransferStartTime:?];
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v18);
      }

      [(NSMutableOrderedSet *)selfCopy2->_assetQueue removeObjectsInArray:v16];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v23 = v16;
      v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v33;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v33 != v26)
            {
              objc_enumerationMutation(v23);
            }

            if (priorityCopy)
            {
              [linkCopy prioritizeAsset:*(*(&v32 + 1) + 8 * j)];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v25);
      }

      enqueueCopy = v31;
      v11 = v30;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canEnqueueAsset:(id)asset
{
  v18 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_assetLinks;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([(ATAssetLinkController *)self _canEnqueueAsset:assetCopy onLink:*(*(&v13 + 1) + 8 * i), v13])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_canEnqueueAsset:(id)asset onLink:(id)link
{
  assetCopy = asset;
  linkCopy = link;
  if ([linkCopy canEnqueueAsset:assetCopy] && objc_msgSend(linkCopy, "isOpen"))
  {
    v8 = [(NSMapTable *)self->_assetsToFailedLinks objectForKey:assetCopy];
    v9 = v8;
    v10 = !v8 || ([v8 containsObject:linkCopy] & 1) == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addFailedLink:(id)link forAsset:(id)asset
{
  linkCopy = link;
  assetCopy = asset;
  weakObjectsHashTable = [(NSMapTable *)self->_assetsToFailedLinks objectForKey:assetCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMapTable *)self->_assetsToFailedLinks setObject:weakObjectsHashTable forKey:assetCopy];
  }

  [weakObjectsHashTable addObject:linkCopy];
}

- (void)_finishAsset:(id)asset withError:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  errorCopy = error;
  if (!ATIsPendingDownloadError(errorCopy))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = v13;
    [assetCopy queueStartTime];
    [assetCopy setQueueDuration:v14 - v15];
    [assetCopy transferStartTime];
    if (v16 != 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v18 = v17;
      [assetCopy transferStartTime];
      [assetCopy setTransferDuration:v18 - v19];
    }

    [(NSMapTable *)self->_assetsToFailedLinks removeObjectForKey:assetCopy];
    assetType = [assetCopy assetType];
    if ([assetCopy assetParts])
    {
      v24 = [(NSMutableDictionary *)self->_trackAssetsPendingInstallByAssetType objectForKey:assetType];
      if (v24)
      {
        v23 = v24;
        [v24 addObject:assetCopy];
      }

      else
      {
        v23 = [MEMORY[0x277CBEB58] setWithObject:assetCopy];
        [(NSMutableDictionary *)self->_trackAssetsPendingInstallByAssetType setObject:v23 forKey:assetType];
      }

      v32 = [(NSMutableDictionary *)self->_activeTrackAssetsByAssetType objectForKey:assetType];
      [v32 removeObject:assetCopy];
    }

    else
    {
      nonTrackAssetsPendingInstallByAssetType = self->_nonTrackAssetsPendingInstallByAssetType;
      assetType2 = [assetCopy assetType];
      v23 = [(NSMutableDictionary *)nonTrackAssetsPendingInstallByAssetType objectForKey:assetType2];

      if (v23)
      {
        [v23 addObject:assetCopy];
      }

      else
      {
        v23 = [MEMORY[0x277CBEB58] setWithObject:assetCopy];
        v30 = self->_nonTrackAssetsPendingInstallByAssetType;
        assetType3 = [assetCopy assetType];
        [(NSMutableDictionary *)v30 setObject:v23 forKey:assetType3];
      }
    }

    [(NSMutableDictionary *)self->_progressBlocksForAssetsInFlight removeObjectForKey:assetCopy];
    [assetCopy setError:errorCopy];
    [assetCopy setAssetState:2];
    completionBlock = [assetCopy completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [assetCopy completionBlock];
      (completionBlock2)[2](completionBlock2, assetCopy);
    }

    [(ATAssetLinkController *)self _performSelectorOnObservers:sel_assetLinkController_didFinishAsset_ object:self object:assetCopy];
    v35 = +[ATStatusMonitor sharedMonitor];
    v42 = assetCopy;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    [v35 updateAssets:v36];

    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"ATError"])
      {
        code = [errorCopy code];

        if (code == 2)
        {
          v39 = MEMORY[0x277CEA480];
LABEL_30:
          v40 = *v39;
          ATReportEventIncrementingScalarKey();
          goto LABEL_31;
        }
      }

      else
      {
      }

      v39 = MEMORY[0x277CEA488];
      goto LABEL_30;
    }

    v39 = MEMORY[0x277CEA4C8];
    goto LABEL_30;
  }

  [assetCopy setAssetState:1];
  progressBlock = [assetCopy progressBlock];

  if (progressBlock)
  {
    v9 = [(NSMutableDictionary *)self->_progressBlocksForAssetsInFlight objectForKey:assetCopy];
    if (v9)
    {
      v10 = v9;
      progressBlock2 = [assetCopy progressBlock];
      v12 = [progressBlock2 copy];
      [v10 addObject:v12];
    }

    else
    {
      v25 = MEMORY[0x277CBEB18];
      progressBlock3 = [assetCopy progressBlock];
      v27 = [progressBlock3 copy];
      v10 = [v25 arrayWithObject:v27];

      [(NSMutableDictionary *)self->_progressBlocksForAssetsInFlight setObject:v10 forKey:assetCopy];
    }

    v28 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v45 = 2114;
      v46 = assetCopy;
      _os_log_impl(&dword_22392A000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Added progress callback for pending asset %{public}@", buf, 0x16u);
    }
  }

  [assetCopy setError:errorCopy];
  completionBlock3 = [assetCopy completionBlock];

  if (completionBlock3)
  {
    assetType = [assetCopy completionBlock];
    (assetType)[2](assetType, assetCopy);
LABEL_31:
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_cancelAssets:(id)assets withError:(id)error completion:(id)completion
{
  v75 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  errorCopy = error;
  completionCopy = completion;
  v11 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy4 = self;
    v66 = 2048;
    v67 = [assetsCopy count];
    _os_log_impl(&dword_22392A000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling %lu assets", buf, 0x16u);
  }

  if ([assetsCopy count])
  {
    v47 = completionCopy;
    v49 = errorCopy;
    v12 = [MEMORY[0x277CBEB58] set];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v48 = assetsCopy;
    v13 = assetsCopy;
    v14 = [v13 countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v60;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v60 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v59 + 1) + 8 * i);
          v19 = [(NSMutableOrderedSet *)self->_assetQueue containsObject:v18];
          v20 = [(NSMapTable *)self->_assetsToLinks objectForKey:v18];
          v21 = v20;
          if ((v19 & 1) != 0 || v20)
          {
            if (v20)
            {
              v23 = [strongToStrongObjectsMapTable objectForKey:v20];
              if (v23)
              {
                v24 = v23;
                [v23 addObject:v18];
              }

              else
              {
                v24 = [MEMORY[0x277CBEB18] arrayWithObject:v18];
                [strongToStrongObjectsMapTable setObject:v24 forKey:v21];
              }
            }

            [v12 addObject:v18];
          }

          else
          {
            v22 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy4 = self;
              v66 = 2114;
              v67 = v18;
              _os_log_impl(&dword_22392A000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ is not enqueued and will not be cancelled", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v15);
    }

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __60__ATAssetLinkController__cancelAssets_withError_completion___block_invoke;
    v57[3] = &unk_2784E9008;
    v25 = v49;
    v58 = v25;
    v26 = MEMORY[0x223DED9F0](v57);
    assetQueue = self->_assetQueue;
    allObjects = [v12 allObjects];
    [(NSMutableOrderedSet *)assetQueue removeObjectsInArray:allObjects];

    v29 = _ATLogCategoryFramework_Oversize();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_assetQueue;
      *buf = 138544386;
      selfCopy4 = self;
      v66 = 2114;
      v67 = v13;
      v68 = 2114;
      v69 = v25;
      v70 = 2114;
      v71 = v12;
      v72 = 2114;
      v73 = v30;
      _os_log_impl(&dword_22392A000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Request to cancel %{public}@ with error %{public}@ - will cancel %{public}@, pending assets %{public}@", buf, 0x34u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v31 = v12;
    v32 = [v31 countByEnumeratingWithState:&v53 objects:v63 count:16];
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
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v53 + 1) + 8 * j);
          [(NSMapTable *)self->_assetsToFailedLinks removeObjectForKey:v36];
          [(NSMapTable *)self->_assetsToLinks removeObjectForKey:v36];
          v37 = (v26)[2](v26, v36, v25);
          [(ATAssetLinkController *)self _finishAsset:v36 withError:v37];
        }

        v33 = [v31 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v33);
    }

    v38 = strongToStrongObjectsMapTable;
    keyEnumerator = [strongToStrongObjectsMapTable keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    assetsCopy = v48;
    if (nextObject)
    {
      v41 = nextObject;
      do
      {
        v42 = [v38 objectForKey:v41];
        v43 = _ATLogCategoryFramework_Oversize();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy4 = self;
          v66 = 2114;
          v67 = v42;
          v68 = 2114;
          v69 = v41;
          _os_log_impl(&dword_22392A000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling %{public}@ on link %{public}@", buf, 0x20u);
        }

        [v41 cancelAssets:v42];
        nextObject2 = [keyEnumerator nextObject];

        v41 = nextObject2;
        v38 = strongToStrongObjectsMapTable;
      }

      while (nextObject2);
    }

    [(ATAssetLinkController *)self _assetsDidChange];

    errorCopy = v49;
    completionCopy = v47;
  }

  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__ATAssetLinkController__cancelAssets_withError_completion___block_invoke_58;
    block[3] = &unk_2784E9198;
    v52 = completionCopy;
    dispatch_async(callbackQueue, block);
  }

  v46 = *MEMORY[0x277D85DE8];
}

id __60__ATAssetLinkController__cancelAssets_withError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 assetType];

  if (!v4)
  {
    [v3 setAssetType:@"Unknown"];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v3 error];

    if (v7)
    {
      [v3 error];
    }

    else
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    }
    v6 = ;
  }

  v8 = v6;

  return v8;
}

- (void)_performSelectorOnObservers:(SEL)observers object:(id)object object:(id)a5
{
  objectCopy = object;
  v9 = a5;
  v10 = [(NSHashTable *)self->_observers copy];
  callbackQueue = self->_callbackQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__ATAssetLinkController__performSelectorOnObservers_object_object___block_invoke;
  v15[3] = &unk_2784E8FE0;
  v16 = v10;
  v17 = objectCopy;
  v18 = v9;
  observersCopy = observers;
  v12 = v9;
  v13 = objectCopy;
  v14 = v10;
  dispatch_async(callbackQueue, v15);
}

void __67__ATAssetLinkController__performSelectorOnObservers_object_object___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 56);
        if (objc_opt_respondsToSelector())
        {
          [v7 performSelector:*(a1 + 56) withObject:*(a1 + 40) withObject:{*(a1 + 48), v10}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATAssetLinkController_environmentMonitorDidChangeNetworkReachability___block_invoke;
  v7[3] = &unk_2784E9608;
  v8 = reachabilityCopy;
  selfCopy = self;
  v6 = reachabilityCopy;
  dispatch_async(queue, v7);
}

uint64_t __72__ATAssetLinkController_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isNetworkConstrained];
  if (*(*(a1 + 40) + 104) != result)
  {
    v3 = result;
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(v5 + 104);
      v8 = 138543874;
      v9 = v5;
      v10 = 1024;
      v11 = v6;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Network constraint changed old=%d, new=%d - resuming downloads", &v8, 0x18u);
    }

    *(*(a1 + 40) + 104) = v3;
    result = [*(a1 + 40) _assetsDidChange];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  typeCopy = type;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ATAssetLinkController_environmentMonitorDidChangeNetworkType___block_invoke;
  v7[3] = &unk_2784E9608;
  v8 = typeCopy;
  selfCopy = self;
  v6 = typeCopy;
  dispatch_async(queue, v7);
}

uint64_t __64__ATAssetLinkController_environmentMonitorDidChangeNetworkType___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) networkType];
  result = ICEnvironmentNetworkTypeIsCellular();
  v4 = *(a1 + 40);
  if (*(v4 + 105) != result)
  {
    *(v4 + 105) = result;
    if ((*(*(a1 + 40) + 105) & 1) == 0)
    {
      v5 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v8 = 138543618;
        v9 = v6;
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Network type=%d is not a cellular network - resuming downloads", &v8, 0x12u);
      }

      result = [*(a1 + 40) _assetsDidChange];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)environmentMonitorDidChangeThermalLevel:(id)level
{
  levelCopy = level;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ATAssetLinkController_environmentMonitorDidChangeThermalLevel___block_invoke;
  v7[3] = &unk_2784E9608;
  v8 = levelCopy;
  selfCopy = self;
  v6 = levelCopy;
  dispatch_async(queue, v7);
}

unint64_t __65__ATAssetLinkController_environmentMonitorDidChangeThermalLevel___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentThermalLevel];
  result = [*(a1 + 40) _getMaxThermalPressureThreshold];
  v4 = *(a1 + 40);
  v5 = *(v4 + 96);
  if (v5 >= result && v2 < result)
  {
    v8 = _ATLogCategoryFramework();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v10 = *(a1 + 40);
    v14 = 138543362;
    v15 = v10;
    v11 = "%{public}@ Thermal levels changed - resuming downloads";
    goto LABEL_15;
  }

  if (v5 < result && v2 >= result)
  {
    v8 = _ATLogCategoryFramework();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      *(*(a1 + 40) + 96) = v2;
      result = [*(a1 + 40) _assetsDidChange];
      goto LABEL_17;
    }

    v12 = *(a1 + 40);
    v14 = 138543362;
    v15 = v12;
    v11 = "%{public}@ Thermal levels changed - updating download paused reason for thermal reasons";
LABEL_15:
    _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, v11, &v14, 0xCu);
    goto LABEL_16;
  }

  *(v4 + 96) = v2;
LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)assetLink:(id)link didUpdateDownloadPauseReasonForAssets:(id)assets
{
  assetsCopy = assets;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ATAssetLinkController_assetLink_didUpdateDownloadPauseReasonForAssets___block_invoke;
  v8[3] = &unk_2784E9608;
  v8[4] = self;
  v9 = assetsCopy;
  v7 = assetsCopy;
  dispatch_async(queue, v8);
}

- (void)assetLinkDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATAssetLinkController_assetLinkDidChange___block_invoke;
  block[3] = &unk_2784E94D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)assetLink:(id)link didUpdateAsset:(id)asset progress:(double)progress
{
  assetCopy = asset;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ATAssetLinkController_assetLink_didUpdateAsset_progress___block_invoke;
  block[3] = &unk_2784E8FB8;
  progressCopy = progress;
  v11 = assetCopy;
  selfCopy = self;
  v9 = assetCopy;
  dispatch_async(queue, block);
}

void __59__ATAssetLinkController_assetLink_didUpdateAsset_progress___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  *&v2 = v2;
  [*(a1 + 32) setDownloadProgress:v2];
  v3 = [*(a1 + 32) progressBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) progressBlock];
    v5 = *(a1 + 32);
    [v5 downloadProgress];
    (v4)[2](v4, v5);
  }

  v6 = [*(*(a1 + 40) + 64) objectForKey:*(a1 + 32)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__ATAssetLinkController_assetLink_didUpdateAsset_progress___block_invoke_2;
  v12[3] = &unk_2784E8F90;
  v11 = *(a1 + 32);
  v7 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  [v6 enumerateObjectsUsingBlock:v12];
  [*(a1 + 40) _performSelectorOnObservers:sel_assetLinkController_didUpdateAsset_ object:*(a1 + 40) object:*(a1 + 32)];
  v8 = +[ATStatusMonitor sharedMonitor];
  v14[0] = *(a1 + 32);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v8 updateAssets:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __59__ATAssetLinkController_assetLink_didUpdateAsset_progress___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ATAssetLinkController_assetLink_didUpdateAsset_progress___block_invoke_3;
  v6[3] = &unk_2784E91E8;
  v8 = v3;
  v7 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

id __59__ATAssetLinkController_assetLink_didUpdateAsset_progress___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  [v2 downloadProgress];
  return (*(v1 + 16))(v1, v2);
}

- (void)assetLink:(id)link didPauseAsseDownload:(id)download error:(id)error
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ATAssetLinkController_assetLink_didPauseAsseDownload_error___block_invoke;
  block[3] = &unk_2784E94D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)assetLink:(id)link didFinishAsset:(id)asset error:(id)error retryable:(BOOL)retryable cancelPendingAssetsInBatch:(BOOL)batch
{
  linkCopy = link;
  assetCopy = asset;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__ATAssetLinkController_assetLink_didFinishAsset_error_retryable_cancelPendingAssetsInBatch___block_invoke;
  block[3] = &unk_2784E8F68;
  block[4] = self;
  v19 = assetCopy;
  batchCopy = batch;
  v20 = errorCopy;
  v21 = linkCopy;
  v15 = linkCopy;
  v16 = errorCopy;
  v17 = assetCopy;
  dispatch_async(queue, block);
}

void __93__ATAssetLinkController_assetLink_didFinishAsset_error_retryable_cancelPendingAssetsInBatch___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    goto LABEL_54;
  }

  v3 = _ATLogCategoryFramework_Oversize();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    *buf = 138544130;
    v65 = v4;
    v66 = 2114;
    v67 = v5;
    v68 = 2114;
    v69 = v6;
    v70 = 1024;
    LODWORD(v71) = v7;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed %{public}@ with error: %{public}@, cancelPendingDownloadsInBatch=%{BOOL}u", buf, 0x26u);
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (!*(a1 + 48))
  {
    goto LABEL_10;
  }

  [*(a1 + 32) _addFailedLink:*(a1 + 56) forAsset:*(a1 + 40)];
  if (*(a1 + 64))
  {
    goto LABEL_10;
  }

  v8 = [*(a1 + 40) dataclass];
  if (([v8 isEqualToString:@"Media"] & 1) == 0)
  {

LABEL_10:
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (*(a1 + 64))
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
      [v11 _finishAsset:v12 withError:v13];
    }

    else
    {
      [*(a1 + 32) _finishAsset:*(a1 + 40) withError:*(a1 + 48)];
    }

    goto LABEL_13;
  }

  v9 = [*(a1 + 48) domain];
  if ([v9 isEqualToString:@"ATError"])
  {
    v10 = [*(a1 + 48) code] == 2;
  }

  else
  {
    v10 = 0;
  }

  if (!*(a1 + 48) || v10 || ![*(a1 + 32) _canEnqueueAsset:*(a1 + 40)])
  {
    goto LABEL_10;
  }

  v31 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 32);
    v33 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v65 = v32;
    v66 = 2114;
    v67 = v33;
    _os_log_impl(&dword_22392A000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Failing over to a different link for asset %{public}@", buf, 0x16u);
  }

  [*(*(a1 + 32) + 16) insertObject:*(a1 + 40) atIndex:0];
LABEL_13:
  if (*(a1 + 64) != 1)
  {
    goto LABEL_52;
  }

  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [*(a1 + 40) assetType];
  v16 = [*(a1 + 40) dataclass];
  v17 = [*(a1 + 40) storeInfo];
  v18 = [v17 endpointType];
  v19 = [v18 integerValue];

  if (v15 && v16)
  {
    if ([*(a1 + 40) isRestore])
    {
      v20 = [*(a1 + 40) storeInfo];
      v21 = [v20 appleID];

      if (v21)
      {
        v58 = MEMORY[0x277CCAC30];
        v57 = [*(a1 + 40) assetParts];
        v22 = [*(a1 + 40) isRestore];
        v23 = [*(a1 + 40) storeInfo];
        v24 = [v23 appleID];
        v25 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
        v26 = [v58 predicateWithFormat:@"variantOptions.AssetParts=%d and assetType=%@ and dataclass=%@ and isRestore=%d and storeInfo.appleID=%@ and storeInfo.endpointType=%@", v57, v15, v16, v22, v24, v25];
      }

      else if (v19 > 1)
      {
        v36 = MEMORY[0x277CCAC30];
        v37 = [*(a1 + 40) assetParts];
        v38 = [*(a1 + 40) isRestore];
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
        v26 = [v36 predicateWithFormat:@"variantOptions.AssetParts=%d and assetType=%@ and dataclass=%@ and isRestore=%d and storeInfo.endpointType=%@", v37, v15, v16, v38, v23];
      }

      else
      {
        v23 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          v35 = *(a1 + 40);
          *buf = 138543618;
          v65 = v34;
          v66 = 2114;
          v67 = v35;
          _os_log_impl(&dword_22392A000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ is missing appleID - will not cancel pending restore purchases", buf, 0x16u);
        }

        v26 = 0;
      }
    }

    else
    {
      v29 = MEMORY[0x277CCAC30];
      v30 = [*(a1 + 40) assetParts];
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
      v26 = [v29 predicateWithFormat:@"variantOptions.AssetParts=%d and assetType=%@ and dataclass=%@ and storeInfo.endpointType=%@", v30, v15, v16, v21];
    }

    if (!v26)
    {
      goto LABEL_51;
    }

    v59 = v16;
    v39 = [*(*(a1 + 32) + 16) array];
    v40 = [v39 filteredArrayUsingPredicate:v26];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = v40;
    v42 = [v41 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v61;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v61 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v60 + 1) + 8 * i);
          v47 = [*(*(a1 + 32) + 24) objectForKey:v46];
          if (v47 == *(a1 + 56))
          {
            [v14 addObject:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v43);
    }

    if ([v14 count])
    {
      v48 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(a1 + 32);
        v50 = [v14 count];
        v51 = *(a1 + 56);
        v52 = [v41 count];
        *buf = 138413058;
        v65 = v49;
        v66 = 2048;
        v67 = v50;
        v68 = 2114;
        v69 = v51;
        v70 = 2048;
        v71 = v52;
        _os_log_impl(&dword_22392A000, v48, OS_LOG_TYPE_DEFAULT, "%@ Cancel %ld pending downloads on link=%{public}@, assetsMatchingCancelPredicate count=%ld", buf, 0x2Au);
      }

      v53 = *(a1 + 32);
      v54 = [v14 allObjects];
      v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
      [v53 _cancelAssets:v54 withError:v55 completion:0];
    }

    v16 = v59;
  }

  else
  {
    v26 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      *buf = 138412546;
      v65 = v27;
      v66 = 2114;
      v67 = v28;
      _os_log_impl(&dword_22392A000, v26, OS_LOG_TYPE_DEFAULT, "%@ Ignoring cancelPendingDownloadsInBatch flag. Assset=%{public}@ has invalid assetType/dataClass", buf, 0x16u);
    }
  }

LABEL_51:
LABEL_52:
  [*(a1 + 32) _assetsDidChange];
  if ([*(a1 + 32) _shouldReleaseKeepAliveTransaction])
  {
    [*(*(a1 + 32) + 112) endTransaction];
  }

LABEL_54:
  v56 = *MEMORY[0x277D85DE8];
}

- (void)assetLink:(id)link didCloseWithOutstandingAssets:(id)assets
{
  v23 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  assetsCopy = assets;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = linkCopy;
    v21 = 2114;
    v22 = assetsCopy;
    _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Asset link %{public}@ did close with outstanding assets %{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ATAssetLinkController_assetLink_didCloseWithOutstandingAssets___block_invoke;
  block[3] = &unk_2784E9568;
  v14 = linkCopy;
  selfCopy2 = self;
  v16 = assetsCopy;
  v10 = assetsCopy;
  v11 = linkCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __65__ATAssetLinkController_assetLink_didCloseWithOutstandingAssets___block_invoke(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  [a1[4] setDelegate:0];
  [*(a1[5] + 1) removeObject:a1[4]];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = a1[6];
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = [*(a1[5] + 3) objectForKey:v7];

        if (v8)
        {
          [*(a1[5] + 3) removeObjectForKey:v7];
          [*(a1[5] + 2) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v4);
  }

  v9 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = *(a1[5] + 2);
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * j);
        if (([a1[5] _canEnqueueAsset:v15] & 1) == 0)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v12);
  }

  v16 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = a1[5];
    *buf = 138543618;
    v41 = v17;
    v42 = 2114;
    v43 = v9;
    _os_log_impl(&dword_22392A000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Failing %{public}@ assets we no longer have a link for", buf, 0x16u);
  }

  [*(a1[5] + 2) removeObjectsInArray:v9];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * k);
        v24 = a1[5];
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:8 userInfo:{0, v27}];
        [v24 _finishAsset:v23 withError:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v20);
  }

  [a1[5] _assetsDidChange];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)assetLink:(id)link didOpenWithPendingAssets:(id)assets
{
  v23 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  assetsCopy = assets;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = linkCopy;
    v21 = 2114;
    v22 = assetsCopy;
    _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Asset link %{public}@ did open with pending assets %{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ATAssetLinkController_assetLink_didOpenWithPendingAssets___block_invoke;
  block[3] = &unk_2784E9568;
  v14 = assetsCopy;
  selfCopy2 = self;
  v16 = linkCopy;
  v10 = linkCopy;
  v11 = assetsCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __60__ATAssetLinkController_assetLink_didOpenWithPendingAssets___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
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

        [*(*(a1 + 40) + 24) setObject:*(a1 + 48) forKey:{*(*(&v9 + 1) + 8 * v6++), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _assetsDidChange];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)installCompleteForAssets:(id)assets
{
  assetsCopy = assets;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__670;
  v14[4] = __Block_byref_object_dispose__671;
  v15 = [MEMORY[0x277CBEB58] set];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__670;
  v12[4] = __Block_byref_object_dispose__671;
  v13 = [MEMORY[0x277CBEB58] set];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATAssetLinkController_installCompleteForAssets___block_invoke;
  v7[3] = &unk_2784E8F40;
  v8 = assetsCopy;
  selfCopy = self;
  v10 = v14;
  v11 = v12;
  v6 = assetsCopy;
  dispatch_async(queue, v7);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
}

uint64_t __50__ATAssetLinkController_installCompleteForAssets___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 assetParts];
        v9 = *(a1 + 40);
        if (v8)
        {
          v13 = *(v9 + 48);
          v14 = [v7 assetType];
          v12 = [v13 objectForKey:v14];

          if (![v12 containsObject:v7])
          {
            goto LABEL_12;
          }

          [v12 removeObject:v7];
          v15 = *(*(*(a1 + 48) + 8) + 40);
          v16 = [v7 assetType];
          [v15 addObject:v16];
        }

        else
        {
          v10 = *(v9 + 56);
          v11 = [v7 assetType];
          v12 = [v10 objectForKey:v11];

          if (![v12 containsObject:v7])
          {
            goto LABEL_12;
          }

          [v12 removeObject:v7];
        }

        [*(*(*(a1 + 56) + 8) + 40) addObject:v7];
LABEL_12:
      }

      v4 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v4);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = *(*(*(a1 + 56) + 8) + 40);
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(a1 + 40) _performSelectorOnObservers:sel_assetLinkController_didProcessFinishedAsset_ object:*(a1 + 40) object:{*(*(&v24 + 1) + 8 * j), v24}];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  result = [*(a1 + 40) _updateCountsForFinishedTrackAssetTypes:*(*(*(a1 + 48) + 8) + 40)];
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ATAssetLinkController_removeObserver___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ATAssetLinkController_addObserver___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)setPendingAssets:(id)assets
{
  assetsCopy = assets;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ATAssetLinkController_setPendingAssets___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = assetsCopy;
  v6 = assetsCopy;
  dispatch_async(queue, v7);
}

- (id)filteredAssetsToDownloadForAssets:(id)assets
{
  assetsCopy = assets;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__670;
  v17 = __Block_byref_object_dispose__671;
  array = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ATAssetLinkController_filteredAssetsToDownloadForAssets___block_invoke;
  block[3] = &unk_2784E9590;
  v10 = assetsCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = assetsCopy;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __59__ATAssetLinkController_filteredAssetsToDownloadForAssets___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([*(a1 + 40) _assetIsEnqueued:{v7, v9}] & 1) == 0)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)assetIsEnqueued:(id)enqueued
{
  enqueuedCopy = enqueued;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ATAssetLinkController_assetIsEnqueued___block_invoke;
  block[3] = &unk_2784E9590;
  v9 = enqueuedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = enqueuedCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __41__ATAssetLinkController_assetIsEnqueued___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _assetIsEnqueued:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)cancelAllAssetsMatchingPredicate:(id)predicate excludeActiveDownloads:(BOOL)downloads withError:(id)error completion:(id)completion
{
  predicateCopy = predicate;
  errorCopy = error;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__ATAssetLinkController_cancelAllAssetsMatchingPredicate_excludeActiveDownloads_withError_completion___block_invoke;
  block[3] = &unk_2784E8F18;
  block[4] = self;
  v18 = predicateCopy;
  downloadsCopy = downloads;
  v19 = errorCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = errorCopy;
  v16 = predicateCopy;
  dispatch_async(queue, block);
}

void __102__ATAssetLinkController_cancelAllAssetsMatchingPredicate_excludeActiveDownloads_withError_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework_Oversize();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    *buf = 138543874;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling assets matching predicate %{public}@. excludeActiveDownloads=%{BOOL}u", buf, 0x1Cu);
  }

  v6 = objc_opt_new();
  v7 = [*(*(a1 + 32) + 16) array];
  v8 = [v7 filteredArrayUsingPredicate:*(a1 + 40)];
  [v6 addObjectsFromArray:v8];

  if ((*(a1 + 64) & 1) == 0)
  {
    v9 = [*(*(a1 + 32) + 24) keyEnumerator];
    v10 = [v9 allObjects];
    v11 = [v10 filteredArrayUsingPredicate:*(a1 + 40)];
    [v6 addObjectsFromArray:v11];
  }

  v12 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__ATAssetLinkController_cancelAllAssetsMatchingPredicate_excludeActiveDownloads_withError_completion___block_invoke_35;
  v17[3] = &unk_2784E96A8;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v18 = v6;
  v19 = v14;
  v17[4] = *(a1 + 32);
  v15 = v6;
  [v12 _cancelAssets:v15 withError:v13 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __102__ATAssetLinkController_cancelAllAssetsMatchingPredicate_excludeActiveDownloads_withError_completion___block_invoke_35(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 32) + 88);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __102__ATAssetLinkController_cancelAllAssetsMatchingPredicate_excludeActiveDownloads_withError_completion___block_invoke_2;
    v3[3] = &unk_2784E91E8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    dispatch_async(v2, v3);
  }
}

void __102__ATAssetLinkController_cancelAllAssetsMatchingPredicate_excludeActiveDownloads_withError_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    v2 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 assetType];
        if (v9)
        {
          v10 = [v2 objectForKey:v9];
          if (v10)
          {
            v11 = v10;
            [v10 addObject:v8];
          }

          else
          {
            v11 = [MEMORY[0x277CBEB58] setWithObject:v8];
            [v2 setObject:v11 forKey:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelAssets:(id)assets withError:(id)error completion:(id)completion
{
  assetsCopy = assets;
  errorCopy = error;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__ATAssetLinkController_cancelAssets_withError_completion___block_invoke;
  v15[3] = &unk_2784E8EF0;
  v15[4] = self;
  v16 = assetsCopy;
  v17 = errorCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = errorCopy;
  v14 = assetsCopy;
  dispatch_async(queue, v15);
}

- (void)prioritizeAssetWithStoreForLibraryIdentifier:(int64_t)identifier withCompletion:(id)completion
{
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__670;
  v13[4] = __Block_byref_object_dispose__671;
  v14 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__ATAssetLinkController_prioritizeAssetWithStoreForLibraryIdentifier_withCompletion___block_invoke;
  v9[3] = &unk_2784E8EC8;
  v11 = v13;
  identifierCopy = identifier;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, v9);

  _Block_object_dispose(v13, 8);
}

void __85__ATAssetLinkController_prioritizeAssetWithStoreForLibraryIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v21 + 1) + 8 * v6);
      v8 = [v7 identifier];
      v9 = [v8 longLongValue];
      v10 = *(a1 + 56);

      if (v9 == v10)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v7;

    if (!v11)
    {
      goto LABEL_13;
    }

    [*(a1 + 32) _prioritizeAsset:v11 onLinkClass:getATStoreMediaAssetLinkClass()];
    if (([v11 isPrioritized] & 1) == 0)
    {
      v12 = 0;
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:

LABEL_13:
    v13 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      *buf = 138543618;
      v26 = v14;
      v27 = 2048;
      v28 = v15;
      _os_log_impl(&dword_22392A000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ asset with libraryIdentifier:%lld is not enqueued and cannot be prioritized", buf, 0x16u);
    }

    v11 = 0;
    v12 = 23;
LABEL_16:
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:v12 userInfo:{0, v21}];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, *(*(*(a1 + 48) + 8) + 40));
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)prioritizeAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ATAssetLinkController_prioritizeAsset___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

void __41__ATAssetLinkController_prioritizeAsset___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) set];
  v3 = [v2 member:*(a1 + 40)];

  if (v3)
  {
LABEL_2:
    [v3 setIsPrioritized:1];
    [*(a1 + 32) _prioritizeAsset:v3 onLinkClass:0];
    goto LABEL_3;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(*(a1 + 32) + 16);
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v5)
  {
LABEL_15:

    goto LABEL_19;
  }

  v6 = v5;
  v7 = *v33;
LABEL_6:
  v8 = 0;
  while (1)
  {
    if (*v33 != v7)
    {
      objc_enumerationMutation(obj);
    }

    v9 = *(*(&v32 + 1) + 8 * v8);
    v10 = [v9 dataclass];
    v11 = [*(a1 + 40) dataclass];
    if (([v10 isEqualToString:v11] & 1) == 0)
    {

      goto LABEL_13;
    }

    v12 = [v9 identifier];
    v13 = [*(a1 + 40) identifier];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      break;
    }

LABEL_13:
    if (v6 == ++v8)
    {
      v6 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v6)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  v3 = v9;
  v15 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    *buf = 138543618;
    v37 = v17;
    v38 = 2114;
    v39 = v18;
    _os_log_impl(&dword_22392A000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Found unenqueued asset %{public}@", buf, 0x16u);
  }

  if (v3)
  {
    goto LABEL_2;
  }

LABEL_19:
  v19 = MEMORY[0x277CCAC30];
  v20 = [*(a1 + 40) dataclass];
  v21 = [*(a1 + 40) identifier];
  v22 = [v19 predicateWithFormat:@"dataclass=%@ and identifier=%@", v20, v21];

  v23 = [*(*(a1 + 32) + 24) keyEnumerator];
  v24 = [v23 allObjects];
  v25 = [v24 filteredArrayUsingPredicate:v22];

  if (![v25 count])
  {

    goto LABEL_25;
  }

  v3 = [v25 objectAtIndex:0];
  v26 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    *buf = 138543618;
    v37 = v27;
    v38 = 2114;
    v39 = v28;
    _os_log_impl(&dword_22392A000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Found asset %{public}@ enqueued on a link", buf, 0x16u);
  }

  if (v3)
  {
    goto LABEL_2;
  }

LABEL_25:
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    *buf = 138543618;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ asset %{public}@ is not enqueued and cannot be prioritized", buf, 0x16u);
  }

LABEL_3:

  v4 = *MEMORY[0x277D85DE8];
}

- (void)enqueueAssetForStoreDownload:(int64_t)download withCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ATAssetLinkController_enqueueAssetForStoreDownload_withCompletion___block_invoke;
  block[3] = &unk_2784E8EA0;
  v10 = completionCopy;
  downloadCopy = download;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __69__ATAssetLinkController_enqueueAssetForStoreDownload_withCompletion___block_invoke(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v41;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v41 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v40 + 1) + 8 * v6);
      v8 = [v7 identifier];
      v9 = [v8 longLongValue];
      v10 = a1[6];

      if (v9 == v10)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v40 objects:v54 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v7;

    if (!v11)
    {
      goto LABEL_20;
    }

    getATStoreMediaAssetLinkClass();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = *(a1[4] + 8);
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
LABEL_13:
      v16 = 0;
      while (1)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v36 + 1) + 8 * v16);
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v36 objects:v53 count:16];
          if (v14)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }
      }

      v23 = [v17 linkIsReady];
      v24 = [v17 canEnqueueAsset:v11];
      if (v23)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v52 = v11;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        v31 = [v17 enqueueAssets:v30 force:1];

        v32 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v34 = a1[4];
          v35 = a1[6];
          *buf = 138543618;
          v45 = v34;
          v46 = 2048;
          v47 = v35;
          _os_log_impl(&dword_22392A000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ asset with libraryIdentifier:%lld enqueued on the store link", buf, 0x16u);
        }

        v20 = 0;
        goto LABEL_24;
      }

      v26 = v24;
      v27 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a1[4];
        v29 = a1[6];
        *buf = 138544130;
        v45 = v28;
        v46 = 2048;
        v47 = v29;
        v48 = 1024;
        v49 = v23;
        v50 = 1024;
        v51 = v26;
        _os_log_impl(&dword_22392A000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ Cannot enqueue asset with libraryIdentifier:%lld on the store link - ready:%d, canEnqueue:%d", buf, 0x22u);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_20:
    v12 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1[4];
      v19 = a1[6];
      *buf = 138543618;
      v45 = v18;
      v46 = 2048;
      v47 = v19;
      _os_log_impl(&dword_22392A000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ asset with libraryIdentifier:%lld is not enqueued for download with ATC", buf, 0x16u);
    }

    v11 = 0;
  }

LABEL_23:

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
LABEL_24:
  v21 = a1[5];
  if (v21)
  {
    (*(v21 + 16))(v21, v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)enqueueAssets:(id)assets progress:(id)progress completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  progressCopy = progress;
  completionCopy = completion;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [assetsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        [v15 setProgressBlock:progressCopy];
        [v15 setCompletionBlock:completionCopy];
      }

      v12 = [assetsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [(ATAssetLinkController *)self enqueueAssets:assetsCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)enqueueAssets:(id)assets
{
  v31 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
  isCharging = [mEMORY[0x277D7FA90] isCharging];

  v7 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = [assetsCopy count];
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueuing %lu assets:", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v25;
    *&v10 = 138543362;
    v19 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        [v14 setDeviceWasChargingWhenEnqueued:{isCharging, v19}];
        v15 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          *&buf[4] = v14;
          _os_log_impl(&dword_22392A000, v15, OS_LOG_TYPE_DEFAULT, "    %{public}@", buf, 0xCu);
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v29 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ATAssetLinkController_enqueueAssets___block_invoke;
  block[3] = &unk_2784E9590;
  v21 = v8;
  selfCopy = self;
  v23 = buf;
  v17 = v8;
  dispatch_async(queue, block);

  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __39__ATAssetLinkController_enqueueAssets___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v34;
    v32 = *MEMORY[0x277CEA478];
    *&v4 = 138543362;
    v31 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        if ([*(a1 + 40) _assetIsEnqueued:v8])
        {
          if (([v8 isRestore] & 1) == 0)
          {
            v10 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v31;
              v38 = v8;
              _os_log_impl(&dword_22392A000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ is already enqueued and is not marked for restore - ignoring for now", buf, 0xCu);
            }

            v11 = *(a1 + 40);
            v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:32 userInfo:0];
            [v11 _finishAsset:v8 withError:v12];

            goto LABEL_30;
          }
        }

        else
        {
          ATReportEventIncrementingScalarKey();
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          [v8 setQueueStartTime:?];
        }

        v13 = [v8 assetType];

        if (!v13)
        {
          [v8 setAssetType:@"Unknown"];
        }

        if ([*(a1 + 40) _canEnqueueAsset:v8])
        {
          [*(*(a1 + 40) + 16) addObject:v8];
          *(*(*(a1 + 48) + 8) + 24) = 1;
          if ([v8 assetParts])
          {
            v14 = *(*(a1 + 40) + 40);
            v15 = [v8 assetType];
            v16 = [v14 objectForKey:v15];

            if (v16)
            {
              [v16 addObject:v8];
            }

            else
            {
              v16 = [MEMORY[0x277CBEB58] setWithObject:v8];
              v25 = *(*(a1 + 40) + 40);
              v26 = [v8 assetType];
              [v25 setObject:v16 forKey:v26];
            }
          }

          [*(a1 + 40) _performSelectorOnObservers:sel_assetLinkController_didEnqueueAsset_ object:*(a1 + 40) object:v8];
        }

        else
        {
          if ([v8 isRestore] && objc_msgSend(v8, "isDownload"))
          {
            v17 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = *(a1 + 40);
              *buf = 138543618;
              v38 = v18;
              v39 = 2114;
              v40 = v8;
              _os_log_impl(&dword_22392A000, v17, OS_LOG_TYPE_ERROR, "%{public}@ No asset links to handle %{public}@ - treating asset restore as unrecoverable", buf, 0x16u);
            }

            v19 = *(a1 + 40);
            v20 = MEMORY[0x277CCA9B8];
            v21 = 26;
          }

          else
          {
            v22 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = *(a1 + 40);
              *buf = 138543618;
              v38 = v23;
              v39 = 2114;
              v40 = v8;
              _os_log_impl(&dword_22392A000, v22, OS_LOG_TYPE_ERROR, "%{public}@ No asset links to handle %{public}@ - treating as connection failure", buf, 0x16u);
            }

            v19 = *(a1 + 40);
            v20 = MEMORY[0x277CCA9B8];
            v21 = 8;
          }

          v24 = [v20 errorWithDomain:@"ATError" code:v21 userInfo:0];
          [v19 _finishAsset:v8 withError:v24];
        }

LABEL_30:
        objc_autoreleasePoolPop(v9);
      }

      v5 = [v2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v5);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && ([*(*(a1 + 40) + 112) isActive] & 1) == 0)
  {
    v27 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 40);
      *buf = 138543362;
      v38 = v28;
      _os_log_impl(&dword_22392A000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ Beginning transaction to keep atc alive for active downloads", buf, 0xCu);
    }

    [*(*(a1 + 40) + 112) beginTransaction];
  }

  result = [*(a1 + 40) _assetsDidChange];
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeAssetLink:(id)link
{
  linkCopy = link;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ATAssetLinkController_removeAssetLink___block_invoke;
  v7[3] = &unk_2784E9608;
  v8 = linkCopy;
  selfCopy = self;
  v6 = linkCopy;
  dispatch_sync(queue, v7);
}

uint64_t __41__ATAssetLinkController_removeAssetLink___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v3 removeObject:v2];
}

- (void)addAssetLink:(id)link
{
  linkCopy = link;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ATAssetLinkController_addAssetLink___block_invoke;
  v7[3] = &unk_2784E9608;
  v8 = linkCopy;
  selfCopy = self;
  v6 = linkCopy;
  dispatch_sync(queue, v7);
}

uint64_t __38__ATAssetLinkController_addAssetLink___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);

  return [v2 sortUsingComparator:&__block_literal_global_17];
}

uint64_t __38__ATAssetLinkController_addAssetLink___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 priority];
  v6 = [v4 priority];

  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)dealloc
{
  if ([(MSVXPCTransaction *)self->_activeDownLoadsKeepAliveTransaction isActive])
  {
    [(MSVXPCTransaction *)self->_activeDownLoadsKeepAliveTransaction endTransaction];
  }

  mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
  [mEMORY[0x277D7FA90] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ATAssetLinkController;
  [(ATAssetLinkController *)&v4 dealloc];
}

- (ATAssetLinkController)init
{
  v45 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = ATAssetLinkController;
  v2 = [(ATAssetLinkController *)&v36 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.amp.ATFoundation.ATAssetLinkController.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v7 = dispatch_queue_create("com.apple.amp.ATFoundation.ATAssetLinkController.callbackQueue", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v11 = objc_opt_new();
    assetLinks = v2->_assetLinks;
    v2->_assetLinks = v11;

    v13 = objc_opt_new();
    assetQueue = v2->_assetQueue;
    v2->_assetQueue = v13;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeTrackAssetsByAssetType = v2->_activeTrackAssetsByAssetType;
    v2->_activeTrackAssetsByAssetType = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    trackAssetsPendingInstallByAssetType = v2->_trackAssetsPendingInstallByAssetType;
    v2->_trackAssetsPendingInstallByAssetType = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    nonTrackAssetsPendingInstallByAssetType = v2->_nonTrackAssetsPendingInstallByAssetType;
    v2->_nonTrackAssetsPendingInstallByAssetType = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    progressBlocksForAssetsInFlight = v2->_progressBlocksForAssetsInFlight;
    v2->_progressBlocksForAssetsInFlight = dictionary4;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    assetsToLinks = v2->_assetsToLinks;
    v2->_assetsToLinks = strongToWeakObjectsMapTable;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    assetsToFailedLinks = v2->_assetsToFailedLinks;
    v2->_assetsToFailedLinks = strongToStrongObjectsMapTable;

    mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
    [mEMORY[0x277D7FA90] registerObserver:v2];
    v2->_cachedThermalLevel = [mEMORY[0x277D7FA90] currentThermalLevel];
    [mEMORY[0x277D7FA90] networkType];
    v2->_currentNetworkIsCellularType = ICEnvironmentNetworkTypeIsCellular();
    v2->_isNetworkConstrained = [mEMORY[0x277D7FA90] isNetworkConstrained];
    v28 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      cachedThermalLevel = v2->_cachedThermalLevel;
      currentNetworkIsCellularType = v2->_currentNetworkIsCellularType;
      isNetworkConstrained = v2->_isNetworkConstrained;
      *buf = 138544130;
      v38 = v2;
      v39 = 2048;
      v40 = cachedThermalLevel;
      v41 = 1024;
      v42 = currentNetworkIsCellularType;
      v43 = 1024;
      v44 = isNetworkConstrained;
      _os_log_impl(&dword_22392A000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ current thermal level=%llu, isCurrentNetworkCellularType=%d, _isNetworkConstrained=%d", buf, 0x22u);
    }

    v32 = [objc_alloc(MEMORY[0x277D27F58]) initWithName:@"com.apple.amp.AirTraffic.ActiveDownloadsKeepAlive"];
    activeDownLoadsKeepAliveTransaction = v2->_activeDownLoadsKeepAliveTransaction;
    v2->_activeDownLoadsKeepAliveTransaction = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __39__ATAssetLinkController_sharedInstance__block_invoke()
{
  __sharedInstance = objc_alloc_init(ATAssetLinkController);

  return MEMORY[0x2821F96F8]();
}

@end