@interface ATStoreMediaAssetLink
- (ATAssetLinkDelegate)delegate;
- (ATStoreMediaAssetLink)init;
- (BOOL)_canEnqueueAssetUnderCurrentEnvironmentConditions:(id)a3 didUpdatePauseReason:(BOOL *)a4;
- (BOOL)canEnqueueAsset:(id)a3;
- (BOOL)open;
- (id)enqueueAssets:(id)a3 force:(BOOL)a4;
- (int64_t)_ATAssetStateForStoreDownloadState:(int64_t)a3;
- (void)ATStoreDownloadService:(id)a3 didChangeStateForAsset:(id)a4 oldState:(int64_t)a5 newState:(int64_t)a6;
- (void)ATStoreDownloadService:(id)a3 didFinishAsset:(id)a4 withError:(id)a5 cancelPendingAssetsInBatch:(BOOL)a6;
- (void)ATStoreDownloadService:(id)a3 didUpdateProgressForAsset:(id)a4 progress:(float)a5;
- (void)_finishAsset:(id)a3 error:(id)a4 cancelPendingAssetsInBatch:(BOOL)a5;
- (void)_setupActivityToResumeDownloads;
- (void)cancelAssets:(id)a3;
- (void)close;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)prioritizeAsset:(id)a3;
@end

@implementation ATStoreMediaAssetLink

- (ATAssetLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  if ([a3 isRemoteServerLikelyReachable])
  {

    [(ATStoreMediaAssetLink *)self _setupActivityToResumeDownloads];
  }
}

- (BOOL)_canEnqueueAssetUnderCurrentEnvironmentConditions:(id)a3 didUpdatePauseReason:(BOOL *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 isRestore])
  {
    v8 = [MEMORY[0x277D7FA90] sharedMonitor];
    v9 = [v8 isNetworkConstrained];

    if (!v9 || ([v6 allowDownloadOnConstrainedNetwork] & 1) != 0)
    {
      goto LABEL_11;
    }

    if (a4)
    {
      *a4 = ([v6 downloadPauseReason] & 2) == 0;
    }

    [v6 setDownloadPauseReason:{objc_msgSend(v6, "downloadPauseReason") | 2}];
    v10 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v6;
      v11 = "%{public}@ disallowing download of %{public}@ as the network is constrained";
LABEL_16:
      _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, v11, &v15, 0x16u);
    }

LABEL_17:

    v13 = 0;
    goto LABEL_18;
  }

  v7 = +[ATRestoreManager sharedManager];
  if (([v7 hasProperNetworkConditions] & 1) == 0)
  {
    v12 = [v6 isPrioritized];

    if (v12)
    {
      goto LABEL_11;
    }

    if (a4)
    {
      *a4 = ([v6 downloadPauseReason] & 4) == 0;
    }

    [v6 setDownloadPauseReason:{objc_msgSend(v6, "downloadPauseReason") | 4}];
    v10 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v6;
      v11 = "%{public}@ disallowing restore of %{public}@ due to current network conditions";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_11:
  v13 = 1;
LABEL_18:

  return v13;
}

- (void)_setupActivityToResumeDownloads
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 96) & 1) == 0 && ![*(v1 + 48) count])
  {
    if ([*(*(a1 + 32) + 72) count])
    {
      *(*(a1 + 32) + 96) = 1;
      v3 = dispatch_time(0, 5000000000);
      v4 = *(a1 + 32);
      v5 = *(v4 + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke_2;
      block[3] = &unk_2784E5938;
      block[4] = v4;
      dispatch_after(v3, v5, block);
    }
  }
}

void __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4551;
  v22 = __Block_byref_object_dispose__4552;
  v23 = 0;
  v2 = [MEMORY[0x277D7FA90] sharedMonitor];
  v3 = [v2 isRemoteServerLikelyReachable];

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke_3;
  block[3] = &unk_2784E5898;
  block[4] = v4;
  block[5] = &v28;
  block[6] = &v24;
  block[7] = &v18;
  dispatch_sync(v5, block);
  if (!*(v29 + 6) && ((*(v25 + 6) != 0) & v3) == 1)
  {
    v6 = _ATLogCategoryStoreDownloads_Oversize();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v19[5];
      *buf = 138543618;
      v33 = v7;
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Resuming downloads for %{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = [v19[5] allObjects];
    v11 = [v9 enqueueAssets:v10 force:0];

    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke_40;
    v15[3] = &unk_2784E5960;
    v15[4] = v12;
    v16 = v11;
    v14 = v11;
    dispatch_sync(v13, v15);
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke_3(void *a1)
{
  *(a1[4] + 96) = 0;
  *(*(a1[5] + 8) + 24) = [*(a1[4] + 48) count];
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 72) count];
  v2 = *(a1[4] + 72);
  v3 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __56__ATStoreMediaAssetLink__setupActivityToResumeDownloads__block_invoke_40(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 72);
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [v2 minusSet:v3];

  v4 = _ATLogCategoryStoreDownloads_Oversize();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Remaining downloads to resume %{public}@", &v7, 0x16u);
  }
}

- (int64_t)_ATAssetStateForStoreDownloadState:(int64_t)a3
{
  if ((a3 - 2) > 4)
  {
    return 0;
  }

  else
  {
    return qword_223908010[a3 - 2];
  }
}

- (void)_finishAsset:(id)a3 error:(id)a4 cancelPendingAssetsInBatch:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ATStoreMediaAssetLink__finishAsset_error_cancelPendingAssetsInBatch___block_invoke;
  block[3] = &unk_2784E5870;
  v11 = v8;
  v26 = v11;
  v27 = self;
  v12 = v9;
  v28 = v12;
  v29 = v31;
  v30 = a5;
  dispatch_sync(queue, block);
  callbackQueue = self->_callbackQueue;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__ATStoreMediaAssetLink__finishAsset_error_cancelPendingAssetsInBatch___block_invoke_39;
  v19 = &unk_2784E5870;
  v20 = self;
  v23 = v31;
  v14 = v11;
  v21 = v14;
  v15 = v12;
  v22 = v15;
  v24 = a5;
  dispatch_async(callbackQueue, &v16);
  [(ATStoreMediaAssetLink *)self _setupActivityToResumeDownloads:v16];

  _Block_object_dispose(v31, 8);
}

void __71__ATStoreMediaAssetLink__finishAsset_error_cancelPendingAssetsInBatch___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) resumeData];

  v3 = [*(*(a1 + 40) + 72) count];
  if (v2 && ([*(*(a1 + 40) + 64) containsObject:*(a1 + 32)] & 1) == 0 && v3 <= 4)
  {
    [*(*(a1 + 40) + 72) addObject:*(a1 + 32)];
    v4 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Caching resumeData for %{public}@", &v15, 0x16u);
    }
  }

  [*(*(a1 + 40) + 48) removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 56) removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 64) removeObject:*(a1 + 32)];
  if (*(a1 + 48))
  {
    v7 = 0;
  }

  else
  {
    [*(*(a1 + 40) + 72) removeObject:*(a1 + 32)];
    v7 = *(a1 + 48) == 0;
  }

  if (!v2)
  {
    v7 = 1;
  }

  if (v3 > 4)
  {
    v7 = 1;
  }

  *(*(*(a1 + 56) + 8) + 24) = v7;
  v8 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v2 != 0;
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v12 = "finished";
    }

    else
    {
      v12 = "resumable";
    }

    v13 = [*(v10 + 72) count];
    v14 = *(a1 + 64);
    v15 = 138544642;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2080;
    v20 = v12;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ treating %{public}@ as %s - hasResumeData %d, pendingResumeAssetCount %d, cancelPendingAssetsInBatch=%d", &v15, 0x32u);
  }
}

void __71__ATStoreMediaAssetLink__finishAsset_error_cancelPendingAssetsInBatch___block_invoke_39(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = WeakRetained;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [WeakRetained assetLink:v4 didFinishAsset:v5 error:v3 retryable:1 cancelPendingAssetsInBatch:*(a1 + 64)];
  }

  else
  {
    [WeakRetained assetLink:v4 didPauseAsseDownload:v5 error:v3];
  }
}

- (void)ATStoreDownloadService:(id)a3 didFinishAsset:(id)a4 withError:(id)a5 cancelPendingAssetsInBatch:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = a4;
  [(ATStoreMediaAssetLink *)self _finishAsset:v10 error:v9 cancelPendingAssetsInBatch:v6];
  v11 = [MEMORY[0x277CE53F8] sharedInstance];
  [v11 logAssetLinkOfType:0 didFinishAsset:v10 withError:v9];
}

- (void)ATStoreDownloadService:(id)a3 didUpdateProgressForAsset:(id)a4 progress:(float)a5
{
  v7 = a4;
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ATStoreMediaAssetLink_ATStoreDownloadService_didUpdateProgressForAsset_progress___block_invoke;
  block[3] = &unk_2784E5848;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(callbackQueue, block);
}

void __83__ATStoreMediaAssetLink_ATStoreDownloadService_didUpdateProgressForAsset_progress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained assetLink:*(a1 + 32) didUpdateAsset:*(a1 + 40) progress:*(a1 + 48)];
}

- (void)ATStoreDownloadService:(id)a3 didChangeStateForAsset:(id)a4 oldState:(int64_t)a5 newState:(int64_t)a6
{
  v8 = a4;
  [v8 setAssetState:{-[ATStoreMediaAssetLink _ATAssetStateForStoreDownloadState:](self, "_ATAssetStateForStoreDownloadState:", a6)}];
  if (a6 == 2)
  {
    v9 = [MEMORY[0x277CE53F8] sharedInstance];
    [v9 logAssetLinkOfType:0 didBeginDownloadingAsset:v8];
  }

  callbackQueue = self->_callbackQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__ATStoreMediaAssetLink_ATStoreDownloadService_didChangeStateForAsset_oldState_newState___block_invoke;
  v12[3] = &unk_2784E5960;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(callbackQueue, v12);
}

void __89__ATStoreMediaAssetLink_ATStoreDownloadService_didChangeStateForAsset_oldState_newState___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [WeakRetained assetLink:v3 didTransitionAssetStates:v4];
}

- (void)prioritizeAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ATStoreMediaAssetLink_prioritizeAsset___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __41__ATStoreMediaAssetLink_prioritizeAsset___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)] & 1) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 56), "containsObject:", *(a1 + 40)), result))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 88);

    return [v4 prioritizeAsset:v3];
  }

  return result;
}

- (void)cancelAssets:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4551;
  v23 = __Block_byref_object_dispose__4552;
  v24 = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ATStoreMediaAssetLink_cancelAssets___block_invoke;
  block[3] = &unk_2784E5988;
  v6 = v4;
  v16 = v6;
  v17 = self;
  v18 = &v19;
  dispatch_sync(queue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v20[5];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v25 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(ATStoreDownloadService *)self->_downloadService cancelAsset:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v25 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v19, 8);
}

void __38__ATStoreMediaAssetLink_cancelAssets___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 48) containsObject:{v7, v11}];
        v9 = *(a1 + 40);
        if (v8 || (v10 = [v9[7] containsObject:v7], v9 = *(a1 + 40), v10))
        {
          [v9[8] addObject:v7];
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }

        else
        {
          [v9[9] removeObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (BOOL)canEnqueueAsset:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ATDeviceSettings sharedInstance];
  v6 = [v5 useNewDownloadService];

  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = [v4 variantOptions];
  v8 = [v7 objectForKey:@"AssetParts"];
  v9 = [v8 unsignedIntegerValue];

  if (v9)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if ([v4 bypassStore])
  {
    goto LABEL_36;
  }

  v10 = [v4 dataclass];
  if ([v10 isEqualToString:@"Media"])
  {
    goto LABEL_8;
  }

  v11 = [v4 dataclass];
  if ([v11 isEqualToString:@"Book"])
  {

LABEL_8:
    goto LABEL_9;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {

    goto LABEL_36;
  }

  v31 = [v4 dataclass];
  v32 = [v31 isEqualToString:@"Podcasts"];

  if ((v32 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  v12 = [v4 storeInfo];

  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = [v4 assetType];
  if ([v13 isEqualToString:@"Music"])
  {
    v14 = 1;
  }

  else
  {
    v15 = [v4 assetType];
    v14 = [v15 isEqualToString:@"MusicVideo"];
  }

  v16 = [v4 assetType];
  v17 = [v16 isEqualToString:@"Audiobook"];

  v18 = [v4 storeInfo];
  v19 = [v18 redownloadParams];
  v20 = [v19 length];

  v21 = [v4 storeInfo];
  v22 = [v21 endpointType];
  v23 = [v22 integerValue];

  if (!v14)
  {
    if (v17)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (![v4 isRestore])
  {
    goto LABEL_27;
  }

  if (v23 == 2 && !v20)
  {
    goto LABEL_36;
  }

  if (v23 > 1)
  {
LABEL_27:
    v33 = [v4 isRestore];
    if (v23 - 3 < 0xFFFFFFFFFFFFFFFELL)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    if ((v34 & (v17 ^ 1) & 1) == 0)
    {
LABEL_31:
      if (!v20)
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    if (_os_feature_enabled_impl())
    {
LABEL_33:
      v30 = 1;
      goto LABEL_37;
    }

    v35 = [v4 dataclass];
    v36 = [v35 isEqualToString:@"Book"];

    if ((v36 & 1) == 0)
    {
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_33;
      }

      v38 = [MEMORY[0x277D7FA80] currentDeviceInfo];
      if ([v38 isWatch])
      {

        goto LABEL_33;
      }

      v39 = [v4 assetType];
      v40 = [v39 isEqualToString:@"Audiobook"];

      if ((v40 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_36:
    v30 = 0;
    goto LABEL_37;
  }

  v24 = [MEMORY[0x277D7FCA0] activeAccount];
  v25 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v41 = 0;
  v26 = [v25 DSIDForUserIdentity:v24 outError:&v41];
  v27 = v41;

  if (!v26 || v27)
  {
    v29 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v43 = self;
      v44 = 2114;
      v45 = v4;
      v46 = 2114;
      v47 = v27;
      _os_log_impl(&dword_223819000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get DSID for active account. (asset=%{public}@, error=%{public}@)", buf, 0x20u);
    }

    v30 = 0;
  }

  else
  {
    v28 = [v4 storeInfo];
    v29 = [v28 DSID];

    if (v26 == v29)
    {
      v30 = 1;
    }

    else
    {
      v30 = [v26 isEqual:v29];
    }
  }

LABEL_37:
  return v30;
}

- (id)enqueueAssets:(id)a3 force:(BOOL)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__4551;
  v48 = __Block_byref_object_dispose__4552;
  v49 = [MEMORY[0x277CBEB18] array];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4551;
  v42 = __Block_byref_object_dispose__4552;
  v43 = [MEMORY[0x277CBEB18] array];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4551;
  v36 = __Block_byref_object_dispose__4552;
  v37 = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ATStoreMediaAssetLink_enqueueAssets_force___block_invoke;
  block[3] = &unk_2784E5820;
  v8 = v6;
  v26 = v8;
  v27 = self;
  v31 = a4;
  v28 = &v44;
  v29 = &v32;
  v30 = &v38;
  dispatch_sync(queue, block);
  if ([v33[5] count])
  {
    v9 = _ATLogCategoryStoreDownloads_Oversize();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v33[5];
      *buf = 138543618;
      v52 = self;
      v53 = 2114;
      v54 = v10;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Download paused reason changed for %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetLink:self didUpdateDownloadPauseReasonForAssets:v33[5]];
  }

  if ([v39[5] count])
  {
    v12 = _ATLogCategoryStoreDownloads_Oversize();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v39[5];
      v14 = [v13 count];
      *buf = 138543874;
      v52 = self;
      v53 = 2114;
      v54 = v13;
      v55 = 2048;
      v56 = v14;
      _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueuing %{public}@ (count=%lu) new assets", buf, 0x20u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v39[5];
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v50 count:16];
    if (v16)
    {
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(ATStoreDownloadService *)self->_downloadService enqueueAsset:*(*(&v21 + 1) + 8 * i), v21];
        }

        v16 = [v15 countByEnumeratingWithState:&v21 objects:v50 count:16];
      }

      while (v16);
    }
  }

  v19 = v45[5];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);

  return v19;
}

void __45__ATStoreMediaAssetLink_enqueueAssets_force___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (!v3)
  {
    goto LABEL_28;
  }

  v4 = v3;
  v5 = *v18;
  while (2)
  {
    v6 = 0;
    do
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v17 + 1) + 8 * v6);
      if ([v7 isRestore] && objc_msgSend(*(*(a1 + 40) + 56), "containsObject:", v7) || objc_msgSend(*(*(a1 + 40) + 48), "containsObject:", v7))
      {
        v8 = *(a1 + 48);
LABEL_10:
        v9 = *(*(v8 + 8) + 40);
LABEL_11:
        [v9 addObject:v7];
        goto LABEL_12;
      }

      v10 = [*(*(a1 + 40) + 48) count];
      v11 = [*(*(a1 + 40) + 56) count] + v10;
      if (v11 >= [*(a1 + 40) maximumBatchSize])
      {
        v15 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 40);
          *buf = 138543618;
          v22 = v16;
          v23 = 2114;
          v24 = v7;
          _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ not enqueuing %{public}@ as the link is at full capacity", buf, 0x16u);
        }

        goto LABEL_28;
      }

      if ([v7 isPrioritized] & 1) != 0 || (*(a1 + 72) & 1) != 0 || (buf[0] = 0, (objc_msgSend(*(a1 + 40), "_canEnqueueAssetUnderCurrentEnvironmentConditions:didUpdatePauseReason:", v7, buf)))
      {
        [*(*(*(a1 + 64) + 8) + 40) addObject:v7];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        [v7 setDownloadPauseReason:0];
        v12 = [v7 isRestore];
        v13 = *(a1 + 40);
        if (v12)
        {
          v9 = *(v13 + 56);
        }

        else
        {
          v9 = *(v13 + 48);
        }

        goto LABEL_11;
      }

      if (buf[0] == 1)
      {
        v8 = *(a1 + 56);
        goto LABEL_10;
      }

LABEL_12:
      ++v6;
    }

    while (v4 != v6);
    v14 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    v4 = v14;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_28:
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ATStoreMediaAssetLink_close__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __30__ATStoreMediaAssetLink_close__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    v12 = v1;
    v13 = v2;
    *(v3 + 8) = 0;
    v5 = [*(*(a1 + 32) + 48) copy];
    [v5 unionSet:*(*(a1 + 32) + 72)];
    [v5 unionSet:*(*(a1 + 32) + 56)];
    [*(*(a1 + 32) + 72) removeAllObjects];
    [*(*(a1 + 32) + 56) removeAllObjects];
    [*(*(a1 + 32) + 64) removeAllObjects];
    [*(*(a1 + 32) + 88) removeDownloadObserver:?];
    v6 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v6 unregisterObserver:*(a1 + 32)];

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__ATStoreMediaAssetLink_close__block_invoke_2;
    v10[3] = &unk_2784E5960;
    v10[4] = v7;
    v11 = v5;
    v9 = v5;
    dispatch_async(v8, v10);
  }
}

void __30__ATStoreMediaAssetLink_close__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) array];
  [v4 assetLink:v2 didCloseWithOutstandingAssets:v3];
}

- (BOOL)open
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ATStoreMediaAssetLink_open__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
  return 1;
}

void __29__ATStoreMediaAssetLink_open__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    [*(*(a1 + 32) + 88) addDownloadObserver:?];
    v3 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v3 registerObserver:*(a1 + 32)];

    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__ATStoreMediaAssetLink_open__block_invoke_2;
    block[3] = &unk_2784E5938;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __29__ATStoreMediaAssetLink_open__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didOpenWithPendingAssets:0];
}

- (ATStoreMediaAssetLink)init
{
  v21.receiver = self;
  v21.super_class = ATStoreMediaAssetLink;
  v2 = [(ATStoreMediaAssetLink *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_resumeAssetDownloadsActivity = 0;
    v4 = dispatch_queue_create("com.apple.amp.AirTraffic.ATStoreMediaAssetLink.queue", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = dispatch_queue_create("com.apple.amp.AirTraffic.ATStoreMediaAssetLink.resumeQueue", 0);
    resumeQueue = v3->_resumeQueue;
    v3->_resumeQueue = v6;

    v8 = dispatch_queue_create("com.apple.amp.AirTraffic.ATStoreMediaAssetLink.callback", MEMORY[0x277D85CD8]);
    callbackQueue = v3->_callbackQueue;
    v3->_callbackQueue = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    enqueuedDownloadAssets = v3->_enqueuedDownloadAssets;
    v3->_enqueuedDownloadAssets = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    resumableAssets = v3->_resumableAssets;
    v3->_resumableAssets = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    cancelledAssets = v3->_cancelledAssets;
    v3->_cancelledAssets = v14;

    v16 = [MEMORY[0x277CBEB58] set];
    enqueuedRestoreAssets = v3->_enqueuedRestoreAssets;
    v3->_enqueuedRestoreAssets = v16;

    v18 = +[ATStoreDownloadService sharedService];
    downloadService = v3->_downloadService;
    v3->_downloadService = v18;
  }

  return v3;
}

@end