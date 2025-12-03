@interface ATStoreDownloadService
+ (NSString)downloadDirectoryPath;
+ (id)sharedService;
- (ATStoreDownloadService)init;
- (id)_newAssetOperationForAsset:(id)asset prepareOperationResult:(id)result;
- (id)_newPrepareOperationForAsset:(id)asset;
- (id)_newProcessAssetOperationForasset:(id)forasset assetsOperationResult:(id)result;
- (void)_finishAsset:(id)asset withError:(id)error cancelPendingDownloads:(BOOL)downloads;
- (void)_prepareDownloadDirectory;
- (void)_updateProgressForAsset:(id)asset progress:(float)progress;
- (void)_updateStateForAsset:(id)asset oldState:(int64_t)state newState:(int64_t)newState;
- (void)addDownloadObserver:(id)observer;
- (void)cancelAsset:(id)asset;
- (void)enqueueAsset:(id)asset;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prioritizeAsset:(id)asset;
- (void)removeDownloadObserver:(id)observer;
@end

@implementation ATStoreDownloadService

- (void)_finishAsset:(id)asset withError:(id)error cancelPendingDownloads:(BOOL)downloads
{
  v22 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  errorCopy = error;
  v10 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = assetCopy;
    _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished asset %{public}@", buf, 0x16u);
  }

  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__ATStoreDownloadService__finishAsset_withError_cancelPendingDownloads___block_invoke;
  v14[3] = &unk_2784E4A80;
  v14[4] = self;
  v15 = assetCopy;
  downloadsCopy = downloads;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = assetCopy;
  [(ICUnfairLock *)lock lockWithBlock:v14];
}

void __72__ATStoreDownloadService__finishAsset_withError_cancelPendingDownloads___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) identifier];
  [v2 removeObjectForKey:v3];

  if (*(a1 + 56) == 1)
  {
    v4 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138543618;
      v27 = v5;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling remaining like assets for failed asset %{public}@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 8) cancelAllOperations];
  }

  v7 = *(*(a1 + 32) + 32);
  v8 = [*(a1 + 40) identifier];
  [v7 removeObjectForKey:v8];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = *(*(a1 + 32) + 48);
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = *(a1 + 32);
        v16 = *(v15 + 64);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __72__ATStoreDownloadService__finishAsset_withError_cancelPendingDownloads___block_invoke_66;
        block[3] = &unk_2784E48A8;
        block[4] = v14;
        block[5] = v15;
        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        dispatch_async(v16, block);

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

uint64_t __72__ATStoreDownloadService__finishAsset_withError_cancelPendingDownloads___block_invoke_66(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);

    return [v3 ATStoreDownloadService:v4 didFinishAsset:v5 withError:v6 cancelPendingAssetsInBatch:v7];
  }

  return result;
}

- (void)_updateProgressForAsset:(id)asset progress:(float)progress
{
  assetCopy = asset;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ATStoreDownloadService__updateProgressForAsset_progress___block_invoke;
  v9[3] = &unk_2784E5848;
  v9[4] = self;
  v10 = assetCopy;
  progressCopy = progress;
  v8 = assetCopy;
  [(ICUnfairLock *)lock lockWithBlock:v9];
}

void __59__ATStoreDownloadService__updateProgressForAsset_progress___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKey:v3];

  if (v4 && ([v4 isCancelled] & 1) == 0)
  {
    [*(a1 + 40) setBytesRemaining:{objc_msgSend(*(a1 + 40), "totalBytes") - (*(a1 + 48) * objc_msgSend(*(a1 + 40), "totalBytes"))}];
    v5 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) shortDescription];
      v8 = objc_opt_class();
      v9 = *(a1 + 48);
      *buf = 138544130;
      v28 = v6;
      v29 = 2114;
      v30 = v7;
      v31 = 2114;
      v32 = v8;
      v33 = 2048;
      v34 = v9;
      v10 = v8;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ %{public}@ progress: %.2f", buf, 0x2Au);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = *(*(a1 + 32) + 48);
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          v17 = *(a1 + 32);
          v18 = *(v17 + 64);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __59__ATStoreDownloadService__updateProgressForAsset_progress___block_invoke_63;
          v19[3] = &unk_2784E48F8;
          v19[4] = v16;
          v19[5] = v17;
          v20 = *(a1 + 40);
          v21 = *(a1 + 48);
          dispatch_async(v18, v19);

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

uint64_t __59__ATStoreDownloadService__updateProgressForAsset_progress___block_invoke_63(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    LODWORD(v3) = *(a1 + 56);

    return [v4 ATStoreDownloadService:v5 didUpdateProgressForAsset:v6 progress:v3];
  }

  return result;
}

- (void)_updateStateForAsset:(id)asset oldState:(int64_t)state newState:(int64_t)newState
{
  assetCopy = asset;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ATStoreDownloadService__updateStateForAsset_oldState_newState___block_invoke;
  v11[3] = &unk_2784E4880;
  v11[4] = self;
  v12 = assetCopy;
  stateCopy = state;
  newStateCopy = newState;
  v10 = assetCopy;
  [(ICUnfairLock *)lock lockWithBlock:v11];
}

void __65__ATStoreDownloadService__updateStateForAsset_oldState_newState___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        v9 = *(v8 + 64);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__ATStoreDownloadService__updateStateForAsset_oldState_newState___block_invoke_2;
        block[3] = &unk_2784E4858;
        block[4] = v7;
        block[5] = v8;
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        dispatch_async(v9, block);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t __65__ATStoreDownloadService__updateStateForAsset_oldState_newState___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];

    return [v3 ATStoreDownloadService:v4 didChangeStateForAsset:v5 oldState:v6 newState:v7];
  }

  return result;
}

- (id)_newProcessAssetOperationForasset:(id)forasset assetsOperationResult:(id)result
{
  forassetCopy = forasset;
  resultCopy = result;
  assetType = [forassetCopy assetType];
  if ([assetType isEqualToString:@"Podcast"] & 1) != 0 || (objc_msgSend(assetType, "isEqualToString:", @"VideoPodcast"))
  {
    v8 = off_2784E3F08;
  }

  else
  {
    dataclass = [forassetCopy dataclass];
    if ([dataclass isEqualToString:@"Book"])
    {

      v8 = off_2784E3EB8;
    }

    else
    {
      v12 = [assetType isEqualToString:@"Audiobook"];

      v8 = off_2784E3EE8;
      if (v12)
      {
        v8 = off_2784E3EB8;
      }
    }
  }

  v9 = [objc_alloc(*v8) initWithAsset:forassetCopy assetsOperationResult:resultCopy];

  return v9;
}

- (id)_newAssetOperationForAsset:(id)asset prepareOperationResult:(id)result
{
  assetCopy = asset;
  resultCopy = result;
  assetType = [assetCopy assetType];
  if ([assetType isEqualToString:@"Podcast"] & 1) != 0 || (objc_msgSend(assetType, "isEqualToString:", @"VideoPodcast"))
  {
    v8 = off_2784E3EF8;
  }

  else
  {
    dataclass = [assetCopy dataclass];
    if ([dataclass isEqualToString:@"Book"])
    {

      v8 = off_2784E3EA8;
    }

    else
    {
      v12 = [assetType isEqualToString:@"Audiobook"];

      v8 = off_2784E3ED8;
      if (v12)
      {
        v8 = off_2784E3EA8;
      }
    }
  }

  v9 = [objc_alloc(*v8) initWithAsset:assetCopy prepareOperationResult:resultCopy];

  return v9;
}

- (id)_newPrepareOperationForAsset:(id)asset
{
  assetCopy = asset;
  assetType = [assetCopy assetType];
  if ([assetType isEqualToString:@"Podcast"] & 1) != 0 || (objc_msgSend(assetType, "isEqualToString:", @"VideoPodcast"))
  {
    v5 = off_2784E3F00;
    goto LABEL_4;
  }

  dataclass = [assetCopy dataclass];
  if ([dataclass isEqualToString:@"Book"])
  {

LABEL_8:
    v5 = off_2784E3EB0;
    goto LABEL_4;
  }

  v9 = [assetType isEqualToString:@"Audiobook"];

  if (v9)
  {
    goto LABEL_8;
  }

  storeInfo = [assetCopy storeInfo];
  endpointType = [storeInfo endpointType];
  integerValue = [endpointType integerValue];

  if (([assetCopy isRestore] & (integerValue < 2)) != 0)
  {
    v5 = off_2784E3EF0;
  }

  else
  {
    v5 = off_2784E3EE0;
  }

LABEL_4:
  v6 = [objc_alloc(*v5) initWithAsset:assetCopy];

  return v6;
}

- (void)_prepareDownloadDirectory
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = +[ATStoreDownloadService downloadDirectoryPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  [defaultManager createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v25];
  v4 = v25;

  if (v4)
  {
    v5 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v29 = 2114;
      v30 = v2;
      v31 = 2114;
      v32 = v4;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error creating directory %{public}@. error=%{public}@", buf, 0x20u);
    }
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager2 enumeratorAtPath:v2];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v22;
    *&v10 = 138543874;
    v18 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [v2 stringByAppendingPathComponent:{*(*(&v21 + 1) + 8 * v13), v18}];
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v20 = 0;
        [defaultManager3 removeItemAtPath:v14 error:&v20];
        v16 = v20;

        if (v16)
        {
          v17 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            selfCopy2 = self;
            v29 = 2114;
            v30 = v14;
            v31 = 2114;
            v32 = v16;
            _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error removing file in download directory. path=%{public}@ error=%{public}@", buf, 0x20u);
          }
        }

        [v8 skipDescendants];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [pathCopy isEqualToString:@"fractionCompleted"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    [v13 floatValue];
    v15 = v14;

    LODWORD(v16) = v15;
    [(ATStoreDownloadService *)self _updateProgressForAsset:context progress:v16];
  }
}

- (void)removeDownloadObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ATStoreDownloadService_removeDownloadObserver___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  [(ICUnfairLock *)lock lockWithBlock:v7];
}

- (void)addDownloadObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ATStoreDownloadService_addDownloadObserver___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  [(ICUnfairLock *)lock lockWithBlock:v7];
}

- (void)prioritizeAsset:(id)asset
{
  v14 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = assetCopy;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ prioritizing download %{public}@", buf, 0x16u);
  }

  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ATStoreDownloadService_prioritizeAsset___block_invoke;
  v8[3] = &unk_2784E5960;
  v8[4] = self;
  v9 = assetCopy;
  v7 = assetCopy;
  [(ICUnfairLock *)lock lockWithBlock:v8];
}

void __42__ATStoreDownloadService_prioritizeAsset___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) identifier];
  v4 = [v1 objectForKey:v2];

  v3 = v4;
  if (v4)
  {
    [v4 setQueuePriority:8];
    v3 = v4;
  }
}

- (void)cancelAsset:(id)asset
{
  assetCopy = asset;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ATStoreDownloadService_cancelAsset___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  [(ICUnfairLock *)lock lockWithBlock:v7];
}

void __38__ATStoreDownloadService_cancelAsset___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKey:v3];

  v5 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ canceling download %{public}@, downloadOperation=%@", &v8, 0x20u);
  }

  if (v4)
  {
    [v4 cancel];
  }
}

- (void)enqueueAsset:(id)asset
{
  v52 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v6 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v46 = 2114;
    v47 = assetCopy;
    v48 = 1024;
    powerRequired = [assetCopy powerRequired];
    v50 = 1024;
    canUseCellularData = [assetCopy canUseCellularData];
    _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueing download for asset %{public}@. requiresPower=%d, canUseCellularData=%d", buf, 0x22u);
  }

  v7 = [(ATStoreDownloadService *)self _newPrepareOperationForAsset:assetCopy];
  v8 = v7;
  if (v7)
  {
    v28 = a2;
    lock = self->_lock;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __39__ATStoreDownloadService_enqueueAsset___block_invoke;
    v40[3] = &unk_2784E59B0;
    v40[4] = self;
    v27 = v7;
    v26 = v7;
    v41 = v26;
    v29 = assetCopy;
    v10 = assetCopy;
    v42 = v10;
    [(ICUnfairLock *)lock lockWithBlock:v40];
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v36 = 0u;
    v11 = self->_observers;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __39__ATStoreDownloadService_enqueueAsset___block_invoke_2;
          block[3] = &unk_2784E59B0;
          block[4] = v16;
          block[5] = self;
          v35 = v10;
          dispatch_async(callbackQueue, block);
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v13);
    }

    v18 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
    progress = [v26 progress];
    [v18 addChild:progress withPendingUnitCount:5];

    v20 = NSStringFromSelector(sel_fractionCompleted);
    [v18 addObserver:self forKeyPath:v20 options:3 context:v10];

    progressForAsset = self->_progressForAsset;
    identifier = [v10 identifier];
    [(NSMutableDictionary *)progressForAsset setObject:v18 forKey:identifier];

    [(ATStoreDownloadService *)self _updateStateForAsset:v10 oldState:0 newState:1];
    prepareOperationQueue = self->_prepareOperationQueue;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__ATStoreDownloadService_enqueueAsset___block_invoke_3;
    v30[3] = &unk_2784E4830;
    v30[4] = self;
    v32 = v18;
    v33 = v28;
    v31 = v10;
    v24 = v18;
    [v26 performOnOperationQueue:prepareOperationQueue completion:v30];

    assetCopy = v29;
    v8 = v27;
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
    [(ATStoreDownloadService *)self _finishAsset:assetCopy withError:v25 cancelPendingDownloads:0];
  }
}

void __39__ATStoreDownloadService_enqueueAsset___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 48) identifier];
  [v2 setObject:v1 forKey:v3];
}

uint64_t __39__ATStoreDownloadService_enqueueAsset___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 ATStoreDownloadService:v4 didEnqueueAsset:v5];
  }

  return result;
}

void __39__ATStoreDownloadService_enqueueAsset___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138544130;
    v32 = v8;
    v33 = 2114;
    v34 = v9;
    v35 = 2114;
    v36 = v5;
    v37 = 2114;
    v38 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ completed prepare operation for %{public}@. err=%{public}@. result=%{public}@", buf, 0x2Au);
  }

  if (v5)
  {
    if ([v6 cancelAllRemaining])
    {
      [*(*(a1 + 32) + 8) setMaxConcurrentOperationCount:1];
    }

    [*(a1 + 32) _finishAsset:*(a1 + 40) withError:v5 cancelPendingDownloads:{objc_msgSend(v6, "cancelAllRemaining")}];
  }

  else
  {
    [*(*(a1 + 32) + 8) setMaxConcurrentOperationCount:3];
    v10 = [v6 storeMediaResponseItem];
    v11 = [*(a1 + 40) storeInfo];
    [v11 setStoreMediaResponseItem:v10];

    v12 = [*(a1 + 32) _newAssetOperationForAsset:*(a1 + 40) prepareOperationResult:v6];
    if (!v12)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"ATStoreDownloadService.m" lineNumber:126 description:{@"Failed to create asset operation for asset %@", *(a1 + 40)}];
    }

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(v14 + 72);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __39__ATStoreDownloadService_enqueueAsset___block_invoke_27;
    v28[3] = &unk_2784E59B0;
    v28[4] = v14;
    v29 = v12;
    v30 = v13;
    v16 = v12;
    [v15 lockWithBlock:v28];
    v17 = *(a1 + 48);
    v18 = [v16 progress];
    [v17 addChild:v18 withPendingUnitCount:90];

    [*(a1 + 32) _updateStateForAsset:*(a1 + 40) oldState:1 newState:2];
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = *(v20 + 16);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__ATStoreDownloadService_enqueueAsset___block_invoke_2_28;
    v25[3] = &unk_2784E4830;
    v25[4] = v20;
    v26 = v19;
    v24 = *(a1 + 48);
    v22 = v24;
    v27 = v24;
    [v16 performOnOperationQueue:v21 completion:v25];
  }
}

void __39__ATStoreDownloadService_enqueueAsset___block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 48) identifier];
  [v2 setObject:v1 forKey:v3];
}

void __39__ATStoreDownloadService_enqueueAsset___block_invoke_2_28(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138544130;
    v29 = v8;
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = v5;
    v34 = 2114;
    v35 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ completed assets download operation for %{public}@. err=%{public}@. result=%{public}@", buf, 0x2Au);
  }

  if (v5)
  {
    [*(a1 + 32) _finishAsset:*(a1 + 40) withError:v5 cancelPendingDownloads:{objc_msgSend(v6, "cancelAllRemaining")}];
  }

  else
  {
    v10 = [*(a1 + 32) _newProcessAssetOperationForasset:*(a1 + 40) assetsOperationResult:v6];
    if (!v10)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"ATStoreDownloadService.m" lineNumber:142 description:{@"Failed to create process assets operation for asset %@", *(a1 + 40)}];
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(v12 + 72);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__ATStoreDownloadService_enqueueAsset___block_invoke_32;
    v25[3] = &unk_2784E59B0;
    v25[4] = v12;
    v26 = v10;
    v27 = v11;
    v14 = v10;
    [v13 lockWithBlock:v25];
    v15 = *(a1 + 48);
    v16 = [v14 progress];
    [v15 addChild:v16 withPendingUnitCount:5];

    [*(a1 + 32) _updateStateForAsset:*(a1 + 40) oldState:2 newState:3];
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(v18 + 24);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __39__ATStoreDownloadService_enqueueAsset___block_invoke_2_33;
    v21[3] = &unk_2784E4808;
    v21[4] = v18;
    v22 = v17;
    v23 = *(a1 + 48);
    v24 = v6;
    [v14 performOnOperationQueue:v19 completion:v21];
  }
}

void __39__ATStoreDownloadService_enqueueAsset___block_invoke_32(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 48) identifier];
  [v2 setObject:v1 forKey:v3];
}

void __39__ATStoreDownloadService_enqueueAsset___block_invoke_2_33(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v19 = 138544130;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ completed process assets operation for %{public}@. err=%{public}@. result=%{public}@", &v19, 0x2Au);
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = NSStringFromSelector(sel_fractionCompleted);
  [v10 removeObserver:v11 forKeyPath:v12];

  if (!v5)
  {
    v13 = *(a1 + 40);
    v14 = [v6 downloadFilePath];
    [v13 setPath:v14];
  }

  v15 = [v6 assetClientParams];

  if (v15)
  {
    v17 = *(a1 + 40);
    v18 = [v6 assetClientParams];
    [v17 setClientParams:v18];
  }

  LODWORD(v16) = 1.0;
  [*(a1 + 32) _updateProgressForAsset:*(a1 + 40) progress:v16];
  [*(a1 + 32) _finishAsset:*(a1 + 40) withError:v5 cancelPendingDownloads:{objc_msgSend(*(a1 + 56), "cancelAllRemaining")}];
}

- (ATStoreDownloadService)init
{
  v19.receiver = self;
  v19.super_class = ATStoreDownloadService;
  v2 = [(ATStoreDownloadService *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    prepareOperationQueue = v2->_prepareOperationQueue;
    v2->_prepareOperationQueue = v3;

    [(NSOperationQueue *)v2->_prepareOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_prepareOperationQueue setQualityOfService:-1];
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    downloadOperationQueue = v2->_downloadOperationQueue;
    v2->_downloadOperationQueue = v5;

    [(NSOperationQueue *)v2->_downloadOperationQueue setMaxConcurrentOperationCount:3];
    [(NSOperationQueue *)v2->_downloadOperationQueue setQualityOfService:-1];
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    processAssetsOperationQueue = v2->_processAssetsOperationQueue;
    v2->_processAssetsOperationQueue = v7;

    [(NSOperationQueue *)v2->_processAssetsOperationQueue setMaxConcurrentOperationCount:3];
    [(NSOperationQueue *)v2->_processAssetsOperationQueue setQualityOfService:-1];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    downloadOperations = v2->_downloadOperations;
    v2->_downloadOperations = dictionary;

    v11 = [MEMORY[0x277CBEB58] set];
    observers = v2->_observers;
    v2->_observers = v11;

    v13 = dispatch_queue_create("com.apple.atc.ATStoreDownloadService.callback", MEMORY[0x277D85CD8]);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277D7FC98]);
    lock = v2->_lock;
    v2->_lock = v15;

    [(ATStoreDownloadService *)v2 _prepareDownloadDirectory];
    defaultManager = [MEMORY[0x277D7FA28] defaultManager];
  }

  return v2;
}

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_843);
  }

  v3 = sharedService___sharedInstance;

  return v3;
}

uint64_t __39__ATStoreDownloadService_sharedService__block_invoke()
{
  sharedService___sharedInstance = objc_alloc_init(ATStoreDownloadService);

  return MEMORY[0x2821F96F8]();
}

+ (NSString)downloadDirectoryPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"AirTraffic"];

  return v3;
}

@end