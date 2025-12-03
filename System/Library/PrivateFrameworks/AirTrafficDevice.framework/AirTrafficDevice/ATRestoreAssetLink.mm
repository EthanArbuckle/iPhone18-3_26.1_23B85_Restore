@interface ATRestoreAssetLink
- (ATAssetLinkDelegate)delegate;
- (ATRestoreAssetLink)init;
- (ATRestoreAssetLinkDelegate)restoreDelegate;
- (BOOL)canEnqueueAsset:(id)asset;
- (BOOL)hasProperNetworkConditions;
- (BOOL)open;
- (id)_currentCellularPolicy;
- (id)enqueueAssets:(id)assets force:(BOOL)force;
- (unint64_t)maximumBatchSize;
- (void)_processQueuedAssets;
- (void)cancelAssets:(id)assets;
- (void)close;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)manager:(id)manager didFailRestoreWithError:(id)error;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)managerDidCancelRestore:(id)restore;
- (void)managerDidFinishRestore:(id)restore;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)processRestoreFailureForAsset:(id)asset;
- (void)restoreSessionActiveWithCompletion:(id)completion;
@end

@implementation ATRestoreAssetLink

- (ATRestoreAssetLinkDelegate)restoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_restoreDelegate);

  return WeakRetained;
}

- (ATAssetLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_currentCellularPolicy
{
  v14 = *MEMORY[0x277D85DE8];
  restoreCellularPolicy = self->_restoreCellularPolicy;
  if (!restoreCellularPolicy)
  {
    mbManager = self->_mbManager;
    v11 = 0;
    v5 = [(MBManager *)mbManager backgroundRestoreCellularAccessWithError:&v11];
    v6 = v11;
    v7 = _ATLogCategoryRestore();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v6;
        _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch restore cellular policy. err=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = v5;
        _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "Loaded mobile device cellular policy %{public}@", buf, 0xCu);
      }

      v9 = v5;
      v8 = self->_restoreCellularPolicy;
      self->_restoreCellularPolicy = v9;
    }

    restoreCellularPolicy = self->_restoreCellularPolicy;
  }

  return restoreCellularPolicy;
}

- (void)_processQueuedAssets
{
  v100 = *MEMORY[0x277D85DE8];
  hasProperNetworkConditions = [(ATRestoreAssetLink *)self hasProperNetworkConditions];
  v5 = _ATLogCategoryRestore();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (hasProperNetworkConditions)
  {
    if (v6)
    {
      batchingIsSupported = self->_batchingIsSupported;
      singleAssetMode = self->_singleAssetMode;
      batchSize = self->_batchSize;
      v10 = [(NSMutableArray *)self->_queuedAssets count];
      v11 = [(NSMutableArray *)self->_activeAssets count];
      *buf = 67110144;
      *v95 = batchingIsSupported;
      *&v95[4] = 1024;
      *&v95[6] = singleAssetMode;
      LOWORD(v96) = 1024;
      *(&v96 + 2) = batchSize;
      HIWORD(v96) = 1024;
      v97 = v10;
      v98 = 1024;
      v99 = v11;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "processing pending assets. _batchingIsSupported=%{BOOL}u, _singleAssetMode=%{BOOL}u, batch size=%d, _queuedAssets.count=%d, _activeAssets.count=%d", buf, 0x20u);
    }

    v12 = [(NSMutableArray *)self->_activeAssets count];
    if (v12 > [(NSMutableArray *)self->_queuedAssets count])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ATRestoreAssetLink.m" lineNumber:385 description:{@"too many active assets. _activeAssets=%@", self->_activeAssets}];
    }

    if (![(NSMutableArray *)self->_queuedAssets count])
    {
      self->_singleAssetMode = 0;
      return;
    }

    if (![(NSMutableArray *)self->_activeAssets count])
    {
      v71 = objc_opt_new();
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v13 = self->_queuedAssets;
      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v87 objects:v93 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v88;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v88 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v87 + 1) + 8 * i);
            dataclass = [v18 dataclass];
            if ([dataclass isEqualToString:@"Application"])
            {

LABEL_25:
              if (![(NSMutableArray *)self->_activeAssets count])
              {
                [(NSMutableArray *)self->_activeAssets addObject:v18];
                dataclass2 = [v18 dataclass];
                v24 = [dataclass2 isEqualToString:@"Application"];

                if (v24)
                {
                  [v18 identifier];
                }

                else
                {
                  [v18 path];
                }
                v25 = ;
                [v71 addObject:v25];
              }

              goto LABEL_30;
            }

            dataclass3 = [v18 dataclass];
            v21 = [dataclass3 isEqualToString:@"Book"];

            if (v21)
            {
              goto LABEL_25;
            }

            [(NSMutableArray *)self->_activeAssets addObject:v18];
            path = [v18 path];
            [v71 addObject:path];

            if (!self->_batchingIsSupported || self->_singleAssetMode)
            {
              goto LABEL_30;
            }
          }

          v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v87 objects:v93 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:

      v26 = _ATLogCategoryRestore();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(NSMutableArray *)self->_activeAssets count];
        *buf = 134217984;
        *v95 = v27;
        _os_log_impl(&dword_223819000, v26, OS_LOG_TYPE_DEFAULT, "starting restore of %lu assets:", buf, 0xCu);
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v28 = self->_activeAssets;
      v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v83 objects:v92 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v84;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v84 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v83 + 1) + 8 * j);
            v34 = _ATLogCategoryRestore();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v95 = v33;
              _os_log_impl(&dword_223819000, v34, OS_LOG_TYPE_DEFAULT, "    %{public}@", buf, 0xCu);
            }
          }

          v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v83 objects:v92 count:16];
        }

        while (v30);
      }

      firstObject = [(NSMutableArray *)self->_activeAssets firstObject];
      dataclass4 = [firstObject dataclass];
      v37 = [dataclass4 isEqualToString:@"Application"];

      if (v37)
      {
        mbManager = self->_mbManager;
        firstObject2 = [v71 firstObject];
        v82 = 0;
        v40 = [(MBManager *)mbManager restoreApplicationWithBundleID:firstObject2 failed:0 context:0 error:&v82];
        v41 = v82;
      }

      else
      {
        if (self->_batchingIsSupported)
        {
          firstObject3 = [(NSMutableArray *)self->_activeAssets firstObject];
          dataclass5 = [firstObject3 dataclass];
          v44 = [dataclass5 isEqualToString:@"Book"];

          if (v44)
          {
            v45 = self->_mbManager;
            firstObject4 = [v71 firstObject];
            v81 = 0;
            v47 = [(MBManager *)v45 restoreBookWithPath:firstObject4 error:&v81];
            v48 = v81;

            v49 = _ATLogCategoryRestore();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              firstObject5 = [v71 firstObject];
              *buf = 138412546;
              *v95 = firstObject5;
              *&v95[8] = 2114;
              v96 = v48;
              _os_log_impl(&dword_223819000, v49, OS_LOG_TYPE_DEFAULT, "restoreBookWithPath. path='%@' err=%{public}@", buf, 0x16u);
            }

            if (v47)
            {
              goto LABEL_69;
            }

            goto LABEL_59;
          }

          if (self->_batchingIsSupported)
          {
            v51 = self->_mbManager;
            v80 = 0;
            v52 = [(MBManager *)v51 restoreFilesWithPaths:v71 error:&v80];
            v53 = v80;
            v48 = v53;
            if ((v52 & 1) == 0)
            {
              domain = [v53 domain];
              if ([domain isEqualToString:@"MBErrorDomain"])
              {
                code = [v48 code];

                if (code == 216)
                {
                  v56 = _ATLogCategoryRestore();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *v95 = v48;
                    _os_log_impl(&dword_223819000, v56, OS_LOG_TYPE_DEFAULT, "restoreFilesWithPaths not supported - disabling batching. err=%{public}@", buf, 0xCu);
                  }

                  self->_batchingIsSupported = 0;
                  firstObject6 = [(NSMutableArray *)self->_activeAssets firstObject];
                  [(NSMutableArray *)self->_activeAssets removeAllObjects];
                  [(NSMutableArray *)self->_activeAssets addObject:firstObject6];
                  v58 = self->_mbManager;
                  path2 = [firstObject6 path];
                  v79 = v48;
                  LOBYTE(v58) = [(MBManager *)v58 restoreFileWithPath:path2 error:&v79];
                  v60 = v79;

                  v48 = v60;
                  if (v58)
                  {
                    goto LABEL_69;
                  }
                }
              }

              else
              {
              }

              goto LABEL_59;
            }

LABEL_69:

            return;
          }
        }

        v61 = self->_mbManager;
        firstObject2 = [v71 firstObject];
        v78 = 0;
        v40 = [(MBManager *)v61 restoreFileWithPath:firstObject2 error:&v78];
        v41 = v78;
      }

      v48 = v41;

      if ((v40 & 1) == 0)
      {
LABEL_59:
        v62 = _ATLogCategoryRestore();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *v95 = v48;
          _os_log_impl(&dword_223819000, v62, OS_LOG_TYPE_ERROR, "Failed to dispatch restore request. err=%{public}@", buf, 0xCu);
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v63 = self->_queuedAssets;
        v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v74 objects:v91 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v75;
          do
          {
            for (k = 0; k != v65; ++k)
            {
              if (*v75 != v66)
              {
                objc_enumerationMutation(v63);
              }

              v68 = *(*(&v74 + 1) + 8 * k);
              callbackQueue = self->_callbackQueue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __42__ATRestoreAssetLink__processQueuedAssets__block_invoke;
              block[3] = &unk_2784E59B0;
              block[4] = self;
              block[5] = v68;
              v73 = v48;
              dispatch_async(callbackQueue, block);
            }

            v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v74 objects:v91 count:16];
          }

          while (v65);
        }

        [(NSMutableArray *)self->_activeAssets removeAllObjects];
        [(NSMutableArray *)self->_queuedAssets removeAllObjects];
        goto LABEL_69;
      }

      goto LABEL_69;
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "not processing queued assets because restores are not allowed with current network conditions", buf, 2u);
    }
  }
}

void __42__ATRestoreAssetLink__processQueuedAssets__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] at_ATErrorFromError:*(a1 + 48)];
  [v5 assetLink:v2 didFinishAsset:v3 error:v4 retryable:1];
}

- (void)managerDidLoseConnectionToService:(id)service
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_activeAssets count])
  {
    v4 = _ATLogCategoryRestore();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "Lost connection to backupd while restoring assets:", buf, 2u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_activeAssets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = _ATLogCategoryRestore();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v17 = v10;
            _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "    %{public}@", buf, 0xCu);
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_activeAssets removeAllObjects];
    [(ATRestoreAssetLink *)self _processQueuedAssets];
  }
}

- (void)managerDidCancelRestore:(id)restore
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ATRestoreAssetLink_managerDidCancelRestore___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __46__ATRestoreAssetLink_managerDidCancelRestore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 restoreAssetLinkDidCancelRestore:*(a1 + 32)];
  }
}

- (void)manager:(id)manager didFailRestoreWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ATLogCategoryRestore();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableArray *)self->_activeAssets count];
    *buf = 134218242;
    v29 = v7;
    v30 = 2114;
    v31 = errorCopy;
    _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "failed to restore %lu assets. err=%{public}@:", buf, 0x16u);
  }

  v19 = errorCopy;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_activeAssets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = _ATLogCategoryRestore();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v13;
          _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "    %{public}@", buf, 0xCu);
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([(ATRestoreAssetLink *)self hasProperNetworkConditions])
  {
    v15 = v19;
    if ([(NSMutableArray *)self->_activeAssets count]!= 1)
    {
      self->_singleAssetMode = 1;
      goto LABEL_19;
    }

    firstObject = [(NSMutableArray *)self->_activeAssets firstObject];
    [(NSMutableArray *)self->_queuedAssets removeObject:firstObject];
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ATRestoreAssetLink_manager_didFailRestoreWithError___block_invoke;
    block[3] = &unk_2784E59B0;
    block[4] = self;
    v21 = firstObject;
    v22 = v19;
    v18 = firstObject;
    dispatch_async(callbackQueue, block);
  }

  else
  {
    v18 = _ATLogCategoryRestore();
    v15 = v19;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "no connectivity - waiting for wifi to retry", buf, 2u);
    }
  }

LABEL_19:
  [(NSMutableArray *)self->_activeAssets removeAllObjects];
  [(ATRestoreAssetLink *)self _processQueuedAssets];
}

void __54__ATRestoreAssetLink_manager_didFailRestoreWithError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] at_ATErrorFromError:*(a1 + 48)];
  [v5 assetLink:v2 didFinishAsset:v3 error:v4 retryable:1];
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_activeAssets;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        callbackQueue = self->_callbackQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__ATRestoreAssetLink_manager_didUpdateProgress_estimatedTimeRemaining___block_invoke;
        block[3] = &unk_2784E5848;
        block[4] = v12;
        block[5] = self;
        progressCopy = progress;
        dispatch_async(callbackQueue, block);
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

void __71__ATRestoreAssetLink_manager_didUpdateProgress_estimatedTimeRemaining___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) assetState] != 1)
  {
    [*(a1 + 32) setAssetState:1];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 96));
    v3 = *(a1 + 40);
    v6[0] = *(a1 + 32);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [WeakRetained assetLink:v3 didTransitionAssetStates:v4];
  }

  v5 = [*(a1 + 40) delegate];
  [v5 assetLink:*(a1 + 40) didUpdateAsset:*(a1 + 32) progress:*(a1 + 48)];
}

- (void)managerDidFinishRestore:(id)restore
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = _ATLogCategoryRestore();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSMutableArray *)self->_activeAssets count];
    *buf = 134217984;
    v34 = v5;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "successfully restored %lu assets:", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_activeAssets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = _ATLogCategoryRestore();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v34 = v11;
          _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "    %{public}@", buf, 0xCu);
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_activeAssets;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        dataclass = [v17 dataclass];
        v19 = [dataclass isEqualToString:@"Application"];

        if (v19)
        {
          [v17 setCompletedAssetParts:2];
        }

        callbackQueue = self->_callbackQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__ATRestoreAssetLink_managerDidFinishRestore___block_invoke;
        block[3] = &unk_2784E5960;
        block[4] = self;
        block[5] = v17;
        dispatch_async(callbackQueue, block);
      }

      v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  [(NSMutableArray *)self->_queuedAssets removeObjectsInArray:self->_activeAssets];
  [(NSMutableArray *)self->_activeAssets removeAllObjects];
  [(ATRestoreAssetLink *)self _processQueuedAssets];
}

void __46__ATRestoreAssetLink_managerDidFinishRestore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didFinishAsset:*(a1 + 40) error:0 retryable:1];
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ATRestoreAssetLink_environmentMonitorDidChangeNetworkReachability___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __69__ATRestoreAssetLink_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _processQueuedAssets];
  }

  return result;
}

- (unint64_t)maximumBatchSize
{
  if (self->_batchingIsSupported)
  {
    return self->_batchSize;
  }

  else
  {
    return 1;
  }
}

- (void)cancelAssets:(id)assets
{
  assetsCopy = assets;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ATRestoreAssetLink_cancelAssets___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = assetsCopy;
  selfCopy = self;
  v6 = assetsCopy;
  dispatch_async(queue, v7);
}

uint64_t __35__ATRestoreAssetLink_cancelAssets___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        if ([*(*(a1 + 40) + 32) containsObject:v7])
        {
          if ([*(*(a1 + 40) + 40) containsObject:v7])
          {
            v8 = [v7 dataclass];
            v9 = [v8 isEqualToString:@"Application"];

            v10 = *(a1 + 40);
            v11 = *(v10 + 8);
            if (v9)
            {
              v12 = [v7 identifier];
              [v11 cancelApplicationRestoreWithBundleID:v12 error:0];
            }

            else
            {
              [*(v10 + 8) cancel];
            }

            [*(*(a1 + 40) + 40) removeObject:v7];
            [*(*(a1 + 40) + 32) removeObject:v7];
          }

          v13 = *(a1 + 40);
          v14 = *(v13 + 72);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __35__ATRestoreAssetLink_cancelAssets___block_invoke_2;
          v16[3] = &unk_2784E5960;
          v16[4] = v13;
          v16[5] = v7;
          dispatch_async(v14, v16);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _processQueuedAssets];
}

void __35__ATRestoreAssetLink_cancelAssets___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
  [v5 assetLink:v3 didFinishAsset:v2 error:v4 retryable:1];
}

- (BOOL)canEnqueueAsset:(id)asset
{
  assetCopy = asset;
  allowedDataClasses = [(ATRestoreAssetLink *)self allowedDataClasses];
  dataclass = [assetCopy dataclass];
  if ([allowedDataClasses containsObject:dataclass] && objc_msgSend(assetCopy, "isDownload") && objc_msgSend(assetCopy, "isRestore"))
  {
    dataclass2 = [assetCopy dataclass];
    v9 = [dataclass2 isEqualToString:@"Application"];
    if ((v9 & 1) != 0 || ([assetCopy path], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      dataclass3 = [assetCopy dataclass];
      if ([dataclass3 isEqualToString:@"Application"] && objc_msgSend(assetCopy, "assetParts") != 2)
      {
LABEL_15:

        v12 = 0;
        if (v9)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      dataclass4 = [assetCopy dataclass];
      if ([dataclass4 isEqualToString:@"Application"])
      {

        v12 = 1;
        if (v9)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      storeInfo = [assetCopy storeInfo];
      if (storeInfo)
      {

        goto LABEL_15;
      }

      storePlist = [assetCopy storePlist];
      v12 = storePlist == 0;

      if (v9)
      {
LABEL_20:

        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)enqueueAssets:(id)assets force:(BOOL)force
{
  assetsCopy = assets;
  v6 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ATRestoreAssetLink_enqueueAssets_force___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v14 = assetsCopy;
  v8 = v6;
  v15 = v8;
  v9 = assetsCopy;
  dispatch_sync(queue, block);
  v10 = v15;
  v11 = v8;

  return v8;
}

uint64_t __42__ATRestoreAssetLink_enqueueAssets_force___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (![*(a1[4] + 4) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = a1[5];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        [*(a1[4] + 4) addObject:{v7, v10}];
        [a1[6] addObject:v7];
        v8 = [*(a1[4] + 4) count];
        if (v8 >= [a1[4] maximumBatchSize])
        {
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  return [a1[4] _processQueuedAssets];
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ATRestoreAssetLink_close__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __27__ATRestoreAssetLink_close__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 88) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 88) = 0;
    [*(*(a1 + 32) + 8) setDelegate:0];
    v5 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v5 unregisterObserver:*(a1 + 32)];

    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ATRestoreAssetLink_close__block_invoke_2;
    block[3] = &unk_2784E5938;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

void __27__ATRestoreAssetLink_close__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 assetLink:*(a1 + 32) didCloseWithOutstandingAssets:0];
  }
}

- (BOOL)open
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ATRestoreAssetLink_open__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
  return 1;
}

void __26__ATRestoreAssetLink_open__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 88) & 1) == 0)
  {
    v2 = _ATLogCategoryRestore();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 49);
      *buf = 138543618;
      v10 = v3;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ open. _batchingIsSupported=%{BOOL}u", buf, 0x12u);
    }

    *(*(a1 + 32) + 88) = 1;
    v5 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v5 registerObserver:*(a1 + 32)];

    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__ATRestoreAssetLink_open__block_invoke_38;
    block[3] = &unk_2784E5938;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

void __26__ATRestoreAssetLink_open__block_invoke_38(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 assetLink:*(a1 + 32) didOpenWithPendingAssets:0];
  }
}

- (BOOL)hasProperNetworkConditions
{
  mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
  if ([mEMORY[0x277D7FA90] isRemoteServerLikelyReachable])
  {
    _currentCellularPolicy = [(ATRestoreAssetLink *)self _currentCellularPolicy];
    [mEMORY[0x277D7FA90] networkType];
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    if (_currentCellularPolicy)
    {
      v6 = !IsCellular || (![mEMORY[0x277D7FA90] isCurrentNetworkLinkExpensive] || objc_msgSend(_currentCellularPolicy, "allowsExpensiveNetworkAccess")) && (!objc_msgSend(mEMORY[0x277D7FA90], "isNetworkConstrained") || objc_msgSend(_currentCellularPolicy, "allowsConstrainedNetworkAccess"));
    }

    else
    {
      v6 = IsCellular ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)processRestoreFailureForAsset:(id)asset
{
  assetCopy = asset;
  if (([assetCopy isRestore] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATRestoreAssetLink.m" lineNumber:129 description:{@"processRestoreFailureForAsset called with asset that is not a restore: %@", assetCopy}];
  }

  v5 = objc_alloc(MEMORY[0x277D28A58]);
  identifier = [assetCopy identifier];
  dataclass = [assetCopy dataclass];
  assetType = [assetCopy assetType];
  prettyName = [assetCopy prettyName];
  error = [assetCopy error];
  v11 = [v5 initWithIdentifier:identifier dataclass:dataclass assetType:assetType displayName:prettyName error:error];

  [(MBManager *)self->_mbManager recordRestoreFailure:v11 error:0];
}

- (void)restoreSessionActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke;
  v7[3] = &unk_2784E4E80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryRestore();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *buf = 138543618;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ currentRestoreState %d", buf, 0x12u);
  }

  v5 = *(a1 + 32);
  if (*(v5 + 48) == 1)
  {
    v6 = *(v5 + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke_25;
    v12[3] = &unk_2784E4728;
    v12[4] = v5;
    v13 = *(a1 + 40);
    [v6 fetchiCloudRestoreIsCompleteWithCompletion:v12];
    v7 = v13;
  }

  else
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      return;
    }

    v9 = *(v5 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke_2_28;
    block[3] = &unk_2784E53E8;
    v11 = v8;
    dispatch_async(v9, block);
    v7 = v11;
  }
}

void __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 80);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke_2;
  v10[3] = &unk_2784E4700;
  v11 = v5;
  v12 = v7;
  v14 = a2;
  v13 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

void __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _ATLogCategoryRestore();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) msv_description];
      *buf = 138543874;
      v18 = v6;
      v19 = 1024;
      v20 = v5;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@ mbManager reported restoreIsComplete:%d error=%{public}@", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    *buf = 138543618;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ mbManager reported restoreIsComplete:%d", buf, 0x12u);
  }

  if (!*(a1 + 32))
  {
    *(*(a1 + 40) + 48) = *(a1 + 56) ^ 1;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(*(a1 + 40) + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ATRestoreAssetLink_restoreSessionActiveWithCompletion___block_invoke_26;
    block[3] = &unk_2784E58C0;
    v16 = v10;
    v13 = *(a1 + 32);
    v12 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    dispatch_async(v11, block);
  }
}

- (ATRestoreAssetLink)init
{
  v23.receiver = self;
  v23.super_class = ATRestoreAssetLink;
  v2 = [(ATRestoreAssetLink *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.atc.restorelink.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("com.apple.atc.restorelink.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Photo", @"MessagePart", @"Book", @"VoiceMemo", @"File", 0}];
    allowedDataClasses = v2->_allowedDataClasses;
    v2->_allowedDataClasses = v7;

    v9 = [objc_alloc(MEMORY[0x277D28A40]) initWithDelegate:v2 eventQueue:v2->_queue];
    mbManager = v2->_mbManager;
    v2->_mbManager = v9;

    v2->_restoreState = 2;
    v2->_isRestoring = 1;
    v11 = objc_opt_new();
    queuedAssets = v2->_queuedAssets;
    v2->_queuedAssets = v11;

    v13 = objc_opt_new();
    activeAssets = v2->_activeAssets;
    v2->_activeAssets = v13;

    v15 = +[ATDeviceSettings sharedInstance];
    v2->_batchingIsSupported = [v15 restoreBatchingEnabled];

    v16 = +[ATDeviceSettings sharedInstance];
    v2->_batchSize = [v16 restoreBatchSize];

    v2->_singleAssetMode = 0;
    objc_initWeak(&location, v2);
    uTF8String = [*MEMORY[0x277D28A80] UTF8String];
    v18 = v2->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __26__ATRestoreAssetLink_init__block_invoke;
    handler[3] = &unk_2784E46D8;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch(uTF8String, &v2->_mbCellularAccessChangedNotificationToken, v18, handler);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__ATRestoreAssetLink_init__block_invoke(uint64_t a1)
{
  v2 = _ATLogCategoryRestore();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_ERROR, "Restore cellular policy has changed - loading the new settings", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __26__ATRestoreAssetLink_init__block_invoke_18;
    v6[3] = &unk_2784E46B0;
    v7 = WeakRetained;
    [v5 fetchBackgroundRestoreCellularAccessWithCompletion:v6];
  }
}

void __26__ATRestoreAssetLink_init__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryRestore();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch updated restore cellular policy. err=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Loaded updated restore cellular policy %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v11 = v10[10];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __26__ATRestoreAssetLink_init__block_invoke_19;
    v12[3] = &unk_2784E5960;
    v13 = v10;
    v14 = v5;
    dispatch_async(v11, v12);

    v8 = v13;
  }
}

void __26__ATRestoreAssetLink_init__block_invoke_19(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(a1 + 32) _processQueuedAssets];
  v2 = *(a1 + 32);
  v3 = v2[9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ATRestoreAssetLink_init__block_invoke_2;
  block[3] = &unk_2784E5938;
  v5 = v2;
  dispatch_async(v3, block);
}

void __26__ATRestoreAssetLink_init__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 restoreAssetLinkNetworkPolicyDidChange:*(a1 + 32)];
  }
}

@end