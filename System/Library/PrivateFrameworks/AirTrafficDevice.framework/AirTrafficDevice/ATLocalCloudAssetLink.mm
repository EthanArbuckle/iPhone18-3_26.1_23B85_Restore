@interface ATLocalCloudAssetLink
- (ATAssetLinkDelegate)delegate;
- (ATLocalCloudAssetLink)initWithMessageLink:(id)link;
- (BOOL)canEnqueueAsset:(id)asset;
- (BOOL)open;
- (id)enqueueAssets:(id)assets force:(BOOL)force;
- (void)_finishAsset:(id)asset withError:(id)error;
- (void)_handleLocalCloudDownloadResponse:(id)response;
- (void)_requestNextDownload;
- (void)cancelAssets:(id)assets;
- (void)close;
- (void)dealloc;
- (void)messageLinkWasInitialized:(id)initialized;
- (void)prioritizeAsset:(id)asset;
@end

@implementation ATLocalCloudAssetLink

- (ATAssetLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_requestNextDownload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ATLocalCloudAssetLink__requestNextDownload__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__ATLocalCloudAssetLink__requestNextDownload__block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) count] <= 1)
  {
    v2 = [*(*(a1 + 32) + 40) objectEnumerator];
    v3 = [v2 nextObject];

    if (v3)
    {
      [*(*(a1 + 32) + 40) removeObject:v3];
      v20 = objc_alloc_init(ATLocalCloudAssetRequest);
      [(ATLocalCloudAssetRequest *)v20 setAsset:v3];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [(ATLocalCloudAssetRequest *)v20 setStartTime:?];
      v4 = *(*(a1 + 32) + 48);
      v5 = [v3 identifier];
      [v4 setObject:v20 forKey:v5];

      [v3 setAssetState:1];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
      v7 = *(a1 + 32);
      v25[0] = v3;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [WeakRetained assetLink:v7 didTransitionAssetStates:v8];

      v23[0] = @"AssetID";
      v9 = [v3 identifier];
      v24[0] = v9;
      v23[1] = @"Dataclass";
      v10 = [v3 dataclass];
      v24[1] = v10;
      v23[2] = @"DSID";
      v11 = [v3 storeInfo];
      v12 = [v11 cloudDSID];
      v24[2] = v12;
      v23[3] = @"StoreSagaId";
      v13 = MEMORY[0x277CCABB0];
      v14 = [v3 storeInfo];
      v15 = [v14 sagaID];
      v16 = [v13 numberWithLongLong:{objc_msgSend(v15, "longLongValue")}];
      v24[3] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

      v18 = *(*(a1 + 32) + 32);
      v19 = [MEMORY[0x277CEA448] messageWithName:@"LocalCloudDownloadRequest" parameters:v17];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __45__ATLocalCloudAssetLink__requestNextDownload__block_invoke_2;
      v21[3] = &unk_2784E59D8;
      v21[4] = *(a1 + 32);
      v22 = v3;
      [v18 sendMessage:v19 withCompletion:v21];
    }
  }
}

void __45__ATLocalCloudAssetLink__requestNextDownload__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ATLocalCloudAssetLink__requestNextDownload__block_invoke_3;
  block[3] = &unk_2784E59B0;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __45__ATLocalCloudAssetLink__requestNextDownload__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _ATLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_ERROR, "failed to send asset request message. err=%@", &v8, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    [v4 _finishAsset:v5 withError:v6];

    [*(*(a1 + 40) + 32) close];
  }

  return [*(a1 + 40) _requestNextDownload];
}

- (void)_handleLocalCloudDownloadResponse:(id)response
{
  responseCopy = response;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATLocalCloudAssetLink__handleLocalCloudDownloadResponse___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = responseCopy;
  selfCopy = self;
  v6 = responseCopy;
  dispatch_async(queue, v7);
}

void __59__ATLocalCloudAssetLink__handleLocalCloudDownloadResponse___block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) parameters];
  v3 = [v2 objectForKey:@"AssetID"];

  v4 = [*(a1 + 32) parameterForKey:@"ErrorCode"];
  v5 = [*(*(a1 + 40) + 48) objectForKey:v3];
  v6 = [v5 asset];
  if (!v5)
  {
    v9 = _ATLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v3;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "ignoring unexpected identifier in local cloud response '%@'", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    v9 = [*(a1 + 32) parameterForKey:@"Data"];
    v45 = [*(a1 + 32) parameterForKey:@"EOF"];
    v47 = [*(a1 + 32) parameterForKey:@"AssetProgress"];
    v11 = [*(a1 + 32) parameters];
    v12 = [v11 objectForKey:@"_AssetFileName"];

    v13 = [MEMORY[0x277CEA430] sharedInstance];
    v14 = [v6 dataclass];
    v56[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    [v13 createAirlockForDataclasses:v15];

    v16 = [MEMORY[0x277CEA430] sharedInstance];
    v17 = [v6 dataclass];
    v18 = [v16 pathForDataclass:v17];

    v44 = v12;
    v19 = [v12 pathExtension];
    v20 = [v3 stringByAppendingPathExtension:v19];

    v42 = v20;
    v43 = v18;
    v21 = [v18 stringByAppendingPathComponent:v20];
    v46 = [*(a1 + 32) parameterForKey:@"FileSize"];
    if (v9)
    {
      v22 = [v5 fileHandle];

      v4 = 0;
      if (v22)
      {
        v10 = 0;
      }

      else
      {
        v23 = [MEMORY[0x277CEA430] sharedInstance];
        v24 = [v6 dataclass];
        v55 = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [v23 createAirlockForDataclasses:v25];

        v26 = [MEMORY[0x277CCAA00] defaultManager];
        [v26 removeItemAtPath:v21 error:0];

        v27 = [MEMORY[0x277CBEA90] data];
        v48 = 0;
        [v27 writeToFile:v21 options:0 error:&v48];
        v10 = v48;

        v28 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v21];
        [v5 setFileHandle:v28];

        if (!v28)
        {
          v39 = _ATLogCategoryDefault();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v50 = v6;
            _os_log_impl(&dword_223819000, v39, OS_LOG_TYPE_ERROR, "failed to create file handle for asset %@", buf, 0xCu);
          }

          v40 = *(a1 + 40);
          v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:13 userInfo:0];
          [v40 _finishAsset:v6 withError:v41];

          v32 = v45;
          goto LABEL_19;
        }
      }

      v29 = [v5 fileHandle];
      [v29 writeData:v9];
    }

    else
    {
      v10 = 0;
      v4 = 0;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    v31 = *(a1 + 40);
    [v47 doubleValue];
    [WeakRetained assetLink:v31 didUpdateAsset:v6 progress:?];

    v32 = v45;
    if ([v45 BOOLValue])
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v34 = v33;
      [v5 startTime];
      v36 = v35;
      v37 = _ATLogCategoryDefault();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v46 longLongValue];
        *buf = 138412802;
        v50 = v6;
        v51 = 2048;
        v52 = v34 - v36;
        v53 = 2048;
        v54 = v38 / (v34 - v36);
        _os_log_impl(&dword_223819000, v37, OS_LOG_TYPE_DEFAULT, "finished asset %@ in %.2f seconds (%f b/s)", buf, 0x20u);
      }

      [v6 setPath:v21];
      [*(a1 + 40) _finishAsset:v6 withError:0];
    }

LABEL_19:

    goto LABEL_20;
  }

  v7 = _ATLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v50 = [v4 longValue];
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "received error in local cloud response. errorCode=%ld", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:objc_msgSend(v4 userInfo:{"integerValue"), 0}];
  [v8 _finishAsset:v6 withError:v9];
LABEL_8:
  v10 = 0;
LABEL_20:
}

- (void)_finishAsset:(id)asset withError:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ATLocalCloudAssetLink__finishAsset_withError___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = assetCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = assetCopy;
  dispatch_async(callbackQueue, block);
}

uint64_t __48__ATLocalCloudAssetLink__finishAsset_withError___block_invoke(id *a1)
{
  [a1[4] setAssetState:2];
  v2 = *(a1[5] + 6);
  v3 = [a1[4] identifier];
  [v2 removeObjectForKey:v3];

  v4 = [a1[5] delegate];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = [v7 code] != 3 && objc_msgSend(a1[6], "code") != 16;
  [v4 assetLink:v5 didFinishAsset:v6 error:v7 retryable:v8];

  v9 = a1[5];

  return [v9 _requestNextDownload];
}

- (void)messageLinkWasInitialized:(id)initialized
{
  mEMORY[0x277CE53F0] = [MEMORY[0x277CE53F0] sharedInstance];
  [mEMORY[0x277CE53F0] addAssetLink:self];

  [(ATLocalCloudAssetLink *)self open];
}

- (void)prioritizeAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ATLocalCloudAssetLink_prioritizeAsset___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

uint64_t __41__ATLocalCloudAssetLink_prioritizeAsset___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
  if (result)
  {
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 insertObject:v3 atIndex:0];
  }

  return result;
}

- (void)cancelAssets:(id)assets
{
  assetsCopy = assets;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ATLocalCloudAssetLink_cancelAssets___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = assetsCopy;
  selfCopy = self;
  v6 = assetsCopy;
  dispatch_async(queue, v7);
}

void __38__ATLocalCloudAssetLink_cancelAssets___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 40) containsObject:v7];
        v9 = *(a1 + 40);
        if (v8)
        {
          [*(v9 + 40) removeObject:v7];
          v10 = *(a1 + 40);
          v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
          [v10 _finishAsset:v7 withError:v11];
        }

        else
        {
          v12 = *(v9 + 48);
          v13 = [v7 identifier];
          v11 = [v12 objectForKey:v13];

          if (v11)
          {
            v14 = *(*(a1 + 40) + 48);
            v15 = [v7 identifier];
            [v14 removeObjectForKey:v15];

            v26[0] = @"AssetID";
            v16 = [v7 identifier];
            v27[0] = v16;
            v26[1] = @"Dataclass";
            v17 = [v7 dataclass];
            v26[2] = @"ErrorCode";
            v27[1] = v17;
            v27[2] = &unk_2836F51A0;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

            v19 = *(*(a1 + 40) + 32);
            v20 = [MEMORY[0x277CEA448] messageWithName:@"LocalCloudDownloadCancelRequest" parameters:v18];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __38__ATLocalCloudAssetLink_cancelAssets___block_invoke_56;
            v21[3] = &unk_2784E59D8;
            v21[4] = *(a1 + 40);
            v21[5] = v7;
            [v19 sendMessage:v20 withCompletion:v21];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }
}

void __38__ATLocalCloudAssetLink_cancelAssets___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 32) + 16);
  block[2] = __38__ATLocalCloudAssetLink_cancelAssets___block_invoke_2;
  block[3] = &unk_2784E59B0;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

void __38__ATLocalCloudAssetLink_cancelAssets___block_invoke_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
  [v2 _finishAsset:v3 withError:v4];

  if (a1[6])
  {
    v5 = _ATLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[6];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "failed to send asset cancelled message. err=%@", &v7, 0xCu);
    }

    [*(a1[4] + 32) close];
  }
}

- (BOOL)canEnqueueAsset:(id)asset
{
  assetCopy = asset;
  if (!-[ATLegacyMessageLink hostSupportsLocalCloudDownloads](self->_messageLink, "hostSupportsLocalCloudDownloads") || ![assetCopy isDownload])
  {
    goto LABEL_7;
  }

  storeInfo = [assetCopy storeInfo];
  cloudDSID = [storeInfo cloudDSID];
  if (![cloudDSID longLongValue])
  {

    goto LABEL_7;
  }

  storeInfo2 = [assetCopy storeInfo];
  sagaID = [storeInfo2 sagaID];
  longLongValue = [sagaID longLongValue];

  if (!longLongValue)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = 1;
LABEL_8:

  return v10;
}

- (id)enqueueAssets:(id)assets force:(BOOL)force
{
  assetsCopy = assets;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4938;
  v17 = __Block_byref_object_dispose__4939;
  array = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ATLocalCloudAssetLink_enqueueAssets_force___block_invoke;
  block[3] = &unk_2784E5988;
  block[4] = self;
  v11 = assetsCopy;
  v12 = &v13;
  v7 = assetsCopy;
  dispatch_sync(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __45__ATLocalCloudAssetLink_enqueueAssets_force___block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (*(v1 + 56) == 1 && *(v1 + 32))
  {
    v2 = result;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(result + 40);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
LABEL_5:
      v7 = 0;
      while (1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [*(*(v2 + 32) + 40) addObject:{v8, v10}];
        [*(*(*(v2 + 48) + 8) + 40) addObject:v8];
        v9 = [*(*(v2 + 32) + 40) count];
        if (v9 >= [*(v2 + 32) maximumBatchSize])
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v5)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    return [*(v2 + 32) _requestNextDownload];
  }

  return result;
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ATLocalCloudAssetLink_close__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __30__ATLocalCloudAssetLink_close__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 56) == 1)
  {
    v3 = [*(v1 + 48) allValues];
    [*(*(a1 + 32) + 48) removeAllObjects];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 32);
          v10 = [*(*(&v21 + 1) + 8 * v8) asset];
          v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:16 userInfo:0];
          [v9 _finishAsset:v10 withError:v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [*(*(a1 + 32) + 40) array];
    [v12 addObjectsFromArray:v13];

    [*(*(a1 + 32) + 40) removeAllObjects];
    *(*(a1 + 32) + 56) = 0;
    [*(*(a1 + 32) + 32) removeObserver:?];
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = 0;

    v16 = *(a1 + 32);
    v17 = *(v16 + 8);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __30__ATLocalCloudAssetLink_close__block_invoke_2;
    v19[3] = &unk_2784E5960;
    v19[4] = v16;
    v20 = v12;
    v18 = v12;
    dispatch_async(v17, v19);
  }
}

void __30__ATLocalCloudAssetLink_close__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 assetLink:*(a1 + 32) didCloseWithOutstandingAssets:*(a1 + 40)];
  }
}

- (BOOL)open
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ATLocalCloudAssetLink_open__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
  return self->_open;
}

void __29__ATLocalCloudAssetLink_open__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 56) & 1) == 0)
  {
    *(v1 + 56) = 1;
    objc_initWeak(&location, *(a1 + 32));
    v3 = *(*(a1 + 32) + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__ATLocalCloudAssetLink_open__block_invoke_2;
    v7[3] = &unk_2784E5910;
    objc_copyWeak(&v8, &location);
    [v3 setHandlerForMessage:@"LocalCloudDownloadResponse" handler:v7];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__ATLocalCloudAssetLink_open__block_invoke_3;
    block[3] = &unk_2784E5938;
    block[4] = v4;
    dispatch_async(v5, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __29__ATLocalCloudAssetLink_open__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLocalCloudDownloadResponse:v4];
}

void __29__ATLocalCloudAssetLink_open__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 assetLink:*(a1 + 32) didOpenWithPendingAssets:0];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ATLocalCloudAssetLink;
  [(ATLocalCloudAssetLink *)&v2 dealloc];
}

- (ATLocalCloudAssetLink)initWithMessageLink:(id)link
{
  linkCopy = link;
  v16.receiver = self;
  v16.super_class = ATLocalCloudAssetLink;
  v6 = [(ATLocalCloudAssetLink *)&v16 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.atc.ATLocalCloudAssetLink", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = dispatch_queue_create("com.apple.atc.ATLocalCloudAssetLink.callback", 0);
    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v9;

    objc_storeStrong(&v6->_messageLink, link);
    [(ATConcreteMessageLink *)v6->_messageLink addObserver:v6];
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    queuedAssets = v6->_queuedAssets;
    v6->_queuedAssets = orderedSet;

    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    activeRequests = v6->_activeRequests;
    v6->_activeRequests = v13;
  }

  return v6;
}

@end