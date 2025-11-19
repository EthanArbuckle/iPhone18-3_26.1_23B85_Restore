@interface ATAssetSessionTask
- (NSString)debugDescription;
- (id)_initWithDataClass:(id)a3 assets:(id)a4;
- (id)remainingAssets;
- (void)_finishAsset:(id)a3 withError:(id)a4;
- (void)assetLinkController:(id)a3 didFinishAsset:(id)a4;
- (void)cancel;
- (void)cancelAllAssets;
- (void)resume;
- (void)start;
- (void)suspend;
@end

@implementation ATAssetSessionTask

- (void)_finishAsset:(id)a3 withError:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  remainingAssets = self->_remainingAssets;
  v8 = a4;
  [(NSMutableOrderedSet *)remainingAssets removeObject:v6];
  if (!v8)
  {
    v13 = [(ATSessionTask *)self totalBytesTransferred];
    v14 = [v13 unsignedLongLongValue];
    v15 = [v6 totalBytes];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15 + v14];
    [(ATSessionTask *)self setTotalBytesTransferred:v11];
LABEL_7:

    goto LABEL_8;
  }

  v9 = [(NSMutableSet *)self->_failedAssets count];
  [(NSMutableSet *)self->_failedAssets addObject:v6];
  if (v9 != [(NSMutableSet *)self->_failedAssets count])
  {
    v10 = [(ATSessionTask *)self recentlyFailedAssets];
    v11 = [v10 mutableCopy];

    recentFailedArrayIndex = self->_recentFailedArrayIndex;
    if (recentFailedArrayIndex >= 5)
    {
      recentFailedArrayIndex = 0;
      self->_recentFailedArrayIndex = 0;
    }

    [v11 setObject:v6 atIndexedSubscript:recentFailedArrayIndex];
    ++self->_recentFailedArrayIndex;
    [(ATSessionTask *)self setRecentlyFailedAssets:v11];
    goto LABEL_7;
  }

LABEL_8:
  [v6 setError:v8];
  v16 = +[ATClientController sharedInstance];
  v17 = [v6 dataclass];
  v18 = [v16 clientForDataclass:v17];

  v19 = [v8 userInfo];

  v20 = [v19 objectForKey:@"ATLegacyAssetLinkErrorIsVisibleKey"];

  if (v20 && [v20 BOOLValue])
  {
    ++self->_failedAssetsCount;
  }

  [(ATSessionTask *)self setCompletedItemCount:[(ATSessionTask *)self totalItemCount]- ([(NSMutableOrderedSet *)self->_remainingAssets count]+ [(NSMutableSet *)self->_failedAssets count])];
  [(ATSessionTask *)self setProgress:([(ATSessionTask *)self completedItemCount]/ [(ATSessionTask *)self totalItemCount])];
  v21 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(ATSessionTask *)self completedItemCount];
    v23 = [(ATSessionTask *)self totalItemCount];
    failedAssetsCount = self->_failedAssetsCount;
    [(ATSessionTask *)self totalBytesTransferred];
    v46 = v6;
    v25 = v20;
    v27 = v26 = v18;
    v28 = [(ATSessionTask *)self totalBytesToTransfer];
    *buf = 138544642;
    v50 = self;
    v51 = 2048;
    *v52 = v22;
    *&v52[8] = 2048;
    *&v52[10] = v23;
    v53 = 2048;
    v54 = failedAssetsCount;
    v55 = 2112;
    v56 = v27;
    v57 = 2112;
    v58 = v28;
    _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed %lu/%lu assets (%lu failed, %@/%@ bytes transferred)", buf, 0x3Eu);

    v18 = v26;
    v20 = v25;
    v6 = v46;
  }

  if ([(NSMutableOrderedSet *)self->_remainingAssets count])
  {
    v29 = [(NSMutableOrderedSet *)self->_remainingAssets count];
    v30 = _ATLogCategoryFramework();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (v29 > 5)
    {
      if (v31)
      {
        v44 = [(NSMutableOrderedSet *)self->_remainingAssets count];
        *buf = 138543618;
        v50 = self;
        v51 = 1024;
        *v52 = v44;
        v34 = "%{public}@ %d assets remaining.";
        v35 = v30;
        v36 = 18;
        goto LABEL_25;
      }
    }

    else if (v31)
    {
      v32 = [(NSMutableOrderedSet *)self->_remainingAssets count];
      v33 = self->_remainingAssets;
      *buf = 138543874;
      v50 = self;
      v51 = 1024;
      *v52 = v32;
      *&v52[4] = 2114;
      *&v52[6] = v33;
      v34 = "%{public}@ %d assets remaining: %{public}@";
      v35 = v30;
      v36 = 28;
LABEL_25:
      _os_log_impl(&dword_223819000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
    }

    goto LABEL_28;
  }

  if (objc_opt_respondsToSelector())
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __45__ATAssetSessionTask__finishAsset_withError___block_invoke;
    v47[3] = &unk_2784E5938;
    v48 = v18;
    dispatch_client_async(v48, v47);
  }

  v37 = +[ATClientController sharedInstance];
  v38 = [v37 queueForClient:v18];
  dispatch_barrier_sync(v38, &__block_literal_global_2947);

  if (self->_retryUntilFinished)
  {
    v39 = _ATLogCategoryFramework_Oversize();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      retryInterval = self->_retryInterval;
      v41 = [(ATSessionTask *)self recentlyFailedAssets];
      *buf = 138543874;
      v50 = self;
      v51 = 1024;
      *v52 = retryInterval;
      *&v52[4] = 2114;
      *&v52[6] = v41;
      _os_log_impl(&dword_223819000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ Re-querying client bundle for more assets in %d seconds. recentlyFailedAssets=%{public}@", buf, 0x1Cu);
    }

    self->_waitingForRetry = 1;
    retryTimer = self->_retryTimer;
    v43 = dispatch_time(0, (self->_retryInterval * 1000000000.0));
    dispatch_source_set_timer(retryTimer, v43, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }

  else
  {
    v45 = [(ATAssetSessionTask *)self assetLinkController];
    [v45 removeObserver:self];

    [(ATSessionTask *)self setFinished:1];
  }

LABEL_28:
}

- (void)assetLinkController:(id)a3 didFinishAsset:(id)a4
{
  v5 = a4;
  if (![(ATSessionTask *)self isCancelled])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__ATAssetSessionTask_assetLinkController_didFinishAsset___block_invoke;
    v7[3] = &unk_2784E5960;
    v7[4] = self;
    v8 = v5;
    dispatch_async(queue, v7);
  }
}

void __57__ATAssetSessionTask_assetLinkController_didFinishAsset___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 152) containsObject:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) shouldRetryAssetBlock];
    if (v2 && (v3 = v2, [*(a1 + 32) shouldRetryAssetBlock], v4 = objc_claimAutoreleasedReturnValue(), v5 = v4[2](v4, *(a1 + 40)), v4, v3, v5))
    {
      v6 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138543618;
        v16 = v7;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Retrying %{public}@ because of a recoverable error.", buf, 0x16u);
      }

      v9 = [*(a1 + 32) assetLinkController];
      v14 = *(a1 + 40);
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      [v9 enqueueAssets:v10];
    }

    else
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = [v11 error];
      [v12 _finishAsset:v11 withError:?];
    }
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATAssetSessionTask;
  v4 = [(ATSessionTask *)&v8 description];
  v5 = [(ATAssetSessionTask *)self remainingAssets];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)remainingAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2962;
  v10 = __Block_byref_object_dispose__2963;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ATAssetSessionTask_remainingAssets__block_invoke;
  v5[3] = &unk_2784E5008;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__ATAssetSessionTask_remainingAssets__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 152) array];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)cancelAllAssets
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATAssetSessionTask_cancelAllAssets__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__ATAssetSessionTask_cancelAllAssets__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 152) count];
    v8 = 138543618;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling %d assets.", &v8, 0x12u);
  }

  *(*(a1 + 32) + 192) = 1;
  v5 = [*(a1 + 32) assetLinkController];
  v6 = [*(*(a1 + 32) + 152) array];
  v7 = [v6 copy];
  [v5 cancelAssets:v7 withCompletion:0];
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ATAssetSessionTask_cancel__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __28__ATAssetSessionTask_cancel__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = [*(v3 + 152) count];
      *buf = 138543618;
      v18 = v3;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling task with %d assets remaining.", buf, 0x12u);
    }

    [*(a1 + 32) setCancelled:1];
    v5 = [*(a1 + 32) assetLinkController];
    v6 = [*(*(a1 + 32) + 152) array];
    v7 = [v6 copy];
    [v5 cancelAssets:v7 withCompletion:0];

    [*(*(a1 + 32) + 152) removeAllObjects];
    v8 = [*(a1 + 32) assetLinkController];
    [v8 removeObserver:*(a1 + 32)];

    v9 = +[ATClientController sharedInstance];
    v10 = [*(a1 + 32) dataClass];
    v11 = [v9 clientForDataclass:v10];

    if (objc_opt_respondsToSelector())
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __28__ATAssetSessionTask_cancel__block_invoke_34;
      v14[3] = &unk_2784E5960;
      v12 = v11;
      v13 = *(a1 + 32);
      v15 = v12;
      v16 = v13;
      dispatch_client_async(v12, v14);
    }

    else
    {
      [*(a1 + 32) setFinished:1];
    }
  }
}

uint64_t __28__ATAssetSessionTask_cancel__block_invoke_34(uint64_t a1)
{
  [*(a1 + 32) assetTransferEndedWithSuccess:0];
  v2 = *(a1 + 40);

  return [v2 setFinished:1];
}

- (void)start
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [(ATSessionTask *)self dataClass];

  if (v2)
  {
    v3 = +[ATClientController sharedInstance];
    v4 = [(ATSessionTask *)self dataClass];
    v5 = [v3 clientForDataclass:v4];

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__2962;
      *&buf[32] = __Block_byref_object_dispose__2963;
      v47 = 0;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __27__ATAssetSessionTask_start__block_invoke;
      v41[3] = &unk_2784E5008;
      v42 = v5;
      v43 = buf;
      dispatch_client_sync(v42, v41);
      if (self->_filterPredicate)
      {
        v6 = [*(*&buf[8] + 40) filteredArrayUsingPredicate:?];
        v7 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v6;
      }

      [(NSMutableOrderedSet *)self->_remainingAssets addObjectsFromArray:*(*&buf[8] + 40)];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v8 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(ATSessionTask *)self dataClass];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ No ATClient for asset dataClass %{public}@", buf, 0x16u);
      }
    }
  }

  if ([(ATSessionTask *)self totalItemCount])
  {
    [(ATSessionTask *)self setCompletedItemCount:[(ATSessionTask *)self totalItemCount]- [(NSMutableOrderedSet *)self->_remainingAssets count]];
    [(ATSessionTask *)self setProgress:([(ATSessionTask *)self completedItemCount]/ [(ATSessionTask *)self totalItemCount])];
  }

  else
  {
    [(ATSessionTask *)self setTotalItemCount:[(NSMutableOrderedSet *)self->_remainingAssets count]];
    [(ATSessionTask *)self setCompletedItemCount:0];
    v10 = [MEMORY[0x277CBEA60] array];
    [(ATSessionTask *)self setRecentlyFailedAssets:v10];

    [(ATSessionTask *)self setTotalBytesTransferred:&unk_2836F50F8];
    [(ATSessionTask *)self setTotalBytesToTransfer:&unk_2836F50F8];
  }

  v11 = [(ATSessionTask *)self totalBytesTransferred];
  v12 = [v11 unsignedLongLongValue];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = self->_remainingAssets;
  v14 = 0;
  v15 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v15)
  {
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v14 += [*(*(&v37 + 1) + 8 * i) totalBytes];
      }

      v15 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v15);
  }

  v18 = v14 + v12;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
  [(ATSessionTask *)self setTotalBytesToTransfer:v19];

  v20 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(NSMutableOrderedSet *)self->_remainingAssets count];
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    *&buf[18] = 2048;
    *&buf[20] = v14;
    *&buf[28] = 2048;
    *&buf[30] = v18;
    _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Preparing to transfer %d assets (%llu/%llu total bytes)", buf, 0x26u);
  }

  [(NSMutableSet *)self->_failedAssets removeAllObjects];
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0u;
  obj = self->_remainingAssets;
  v22 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v22)
  {
    v23 = *v34;
    v24 = MEMORY[0x277D85DD0];
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        [v26 setEnqueueSource:1];
        v32[0] = v24;
        v32[1] = 3221225472;
        v32[2] = __27__ATAssetSessionTask_start__block_invoke_12;
        v32[3] = &unk_2784E4F38;
        v32[4] = self;
        [v26 setCompletionBlock:v32];
        v31[0] = v24;
        v31[1] = 3221225472;
        v31[2] = __27__ATAssetSessionTask_start__block_invoke_4;
        v31[3] = &unk_2784E4F60;
        v31[4] = self;
        [v26 setProgressBlock:v31];
      }

      v22 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v22);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ATAssetSessionTask_start__block_invoke_7;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __27__ATAssetSessionTask_start__block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) outstandingAssetTransfersWithDownloadManager:0];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      return result;
    }

    v2 = [*(a1 + 32) outstandingAssetTransfers];
  }

  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __27__ATAssetSessionTask_start__block_invoke_12(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];
  v5 = ATIsPendingDownloadError();

  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ATAssetSessionTask_start__block_invoke_2;
  block[3] = &unk_2784E5480;
  v35 = v5;
  block[4] = v6;
  v8 = v3;
  v34 = v8;
  dispatch_async(v7, block);
  if (!v5)
  {
    v11 = [v8 error];
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = v11;
    v13 = [v8 error];
    v14 = [v13 domain];
    if ([v14 isEqualToString:@"ATError"])
    {
      v15 = [v8 error];
      v16 = [v15 code];

      if (v16 != 2)
      {
        goto LABEL_11;
      }

      v12 = [*(a1 + 32) error];
      if (v12)
      {
        [v8 setError:v12];
      }

      else
      {
        v27 = [*(a1 + 32) session];
        v28 = [v27 error];
        if (v28)
        {
          [v8 setError:v28];
        }

        else
        {
          v29 = [v8 error];
          [v8 setError:v29];
        }
      }
    }

    else
    {
    }

LABEL_11:
    v17 = +[ATClientController sharedInstance];
    v18 = [v8 dataclass];
    v9 = [v17 clientForDataclass:v18];

    if ([v8 isInstalled])
    {
      v19 = [v8 error];

      if (v19)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_20;
        }

        v20 = v32;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v21 = __27__ATAssetSessionTask_start__block_invoke_18;
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_20;
        }

        v20 = v31;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v21 = __27__ATAssetSessionTask_start__block_invoke_2_21;
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_20;
      }

      v20 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v21 = __27__ATAssetSessionTask_start__block_invoke_3;
    }

    v20[2] = v21;
    v20[3] = &unk_2784E5960;
    v22 = v9;
    v20[4] = v22;
    v20[5] = v8;
    dispatch_client_async(v22, v20);

LABEL_20:
    v23 = [v8 dataclass];
    if ([v23 isEqualToString:@"Application"])
    {
      v24 = [v8 error];
      v25 = [v24 domain];
      v26 = [v25 isEqualToString:*MEMORY[0x277D1C1E0]];

      if (!v26)
      {
        goto LABEL_24;
      }

      v23 = [v8 prettyName];
      ATDisplayErrorForAppInstall(v23, [v8 isRestore]);
    }

    goto LABEL_24;
  }

  v9 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138543618;
    v37 = v10;
    v38 = 2114;
    v39 = v8;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Not hooking up %{public}@ as it's begin downloading by another source", buf, 0x16u);
  }

LABEL_24:
}

void __27__ATAssetSessionTask_start__block_invoke_4(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ATAssetSessionTask_start__block_invoke_5;
  block[3] = &unk_2784E5848;
  block[4] = v6;
  v8 = v5;
  v16 = v8;
  v17 = a3;
  dispatch_async(v7, block);
  v9 = +[ATClientController sharedInstance];
  v10 = [v8 dataclass];
  v11 = [v9 clientForDataclass:v10];

  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __27__ATAssetSessionTask_start__block_invoke_6;
    v12[3] = &unk_2784E5960;
    v13 = v11;
    v14 = v8;
    dispatch_client_async(v13, v12);
  }
}

void __27__ATAssetSessionTask_start__block_invoke_7(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 152) count];
  v3 = *(a1 + 32);
  if (v2 && *(v3 + 192) == 1)
  {
    *(v3 + 217) = 0;
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [*(v5 + 152) count];
      *buf = 138543618;
      v31 = v5;
      v32 = 1024;
      v33 = v6;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Preemptively cancelling %d assets at start.", buf, 0x12u);
    }

    v7 = [*(*(a1 + 32) + 152) array];
    v8 = [v7 copy];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
          [v14 setError:v15];

          v16 = [v14 completionBlock];
          (v16)[2](v16, v14);

          v17 = *(a1 + 32);
          v18 = [v14 error];
          [v17 _finishAsset:v14 withError:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v19 = [*(v3 + 152) count];
    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v20 assetLinkController];
      [v21 addObserver:*(a1 + 32)];

      v24 = [*(a1 + 32) assetLinkController];
      v22 = [*(*(a1 + 32) + 152) array];
      v23 = [v22 copy];
      [v24 enqueueAssets:v23];
    }

    else
    {

      [v20 setFinished:1];
    }
  }
}

uint64_t __27__ATAssetSessionTask_start__block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 176) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 176) allObjects];
  [*(a1 + 32) setCurrentItems:v2];

  v3 = *(a1 + 48) * (1.0 / [*(a1 + 32) totalItemCount]);
  v4 = [*(a1 + 32) completedItemCount];
  v5 = (v3 + (v4 / [*(a1 + 32) totalItemCount]));
  v6 = *(a1 + 32);

  return [v6 setProgress:v5];
}

uint64_t __27__ATAssetSessionTask_start__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [v2 downloadProgress];
  v4 = v3;

  return [v1 assetTransfer:v2 updatedProgress:v4];
}

void __27__ATAssetSessionTask_start__block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(*(a1 + 32) + 176) removeObject:*(a1 + 40)];
    v3 = [*(*(a1 + 32) + 176) allObjects];
    [*(a1 + 32) setCurrentItems:v3];
  }
}

void __27__ATAssetSessionTask_start__block_invoke_18(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 error];
  [v2 assetInstallFailed:v3 withError:v4];

  v5 = [MEMORY[0x277CE53F0] sharedInstance];
  v7[0] = *(a1 + 40);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v5 installCompleteForAssets:v6];
}

void __27__ATAssetSessionTask_start__block_invoke_2_21(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) assetInstallSucceeded:*(a1 + 40)];
  v2 = [MEMORY[0x277CE53F0] sharedInstance];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 installCompleteForAssets:v3];
}

void __27__ATAssetSessionTask_start__block_invoke_3(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 error];
  v5 = [*(a1 + 40) error];
  [v2 assetTransfer:v3 succeeded:v4 == 0 withError:v5];

  v6 = [MEMORY[0x277CE53F0] sharedInstance];
  v8[0] = *(a1 + 40);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v6 installCompleteForAssets:v7];
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ATAssetSessionTask_resume__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __28__ATAssetSessionTask_resume__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSuspended:0];
  v2 = *(a1 + 32);
  if (*(v2 + 216) == 1)
  {
    v3 = *(v2 + 208);

    dispatch_source_set_timer(v3, 0, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }
}

- (void)suspend
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ATAssetSessionTask_suspend__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __29__ATAssetSessionTask_suspend__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSuspended:1];
  v2 = *(*(a1 + 32) + 208);

  dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

- (id)_initWithDataClass:(id)a3 assets:(id)a4
{
  v6 = a4;
  v27.receiver = self;
  v27.super_class = ATAssetSessionTask;
  v7 = [(ATSessionTask *)&v27 initWithDataClass:a3];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      [(NSMutableOrderedSet *)v7->_remainingAssets addObjectsFromArray:v6];
    }

    v8->_recentFailedArrayIndex = 0;
    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_create(Name, 0);
    queue = v8->_queue;
    v8->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
    remainingAssets = v8->_remainingAssets;
    v8->_remainingAssets = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    failedAssets = v8->_failedAssets;
    v8->_failedAssets = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    currentAssets = v8->_currentAssets;
    v8->_currentAssets = v17;

    v19 = [MEMORY[0x277CE53F0] sharedInstance];
    assetLinkController = v8->_assetLinkController;
    v8->_assetLinkController = v19;

    v8->_retryInterval = 10.0;
    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8->_queue);
    retryTimer = v8->_retryTimer;
    v8->_retryTimer = v21;

    dispatch_source_set_timer(v8->_retryTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v23 = v8->_retryTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__ATAssetSessionTask__initWithDataClass_assets___block_invoke;
    handler[3] = &unk_2784E5938;
    v26 = v8;
    dispatch_source_set_event_handler(v23, handler);
    dispatch_resume(v8->_retryTimer);
  }

  return v8;
}

uint64_t __48__ATAssetSessionTask__initWithDataClass_assets___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 200) = *(*(a1 + 32) + 200) + 10.0;
  *(*(a1 + 32) + 216) = 0;
  return [*(a1 + 32) start];
}

@end