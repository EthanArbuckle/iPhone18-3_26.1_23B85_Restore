@interface ATLegacyAssetLink
- (ATAssetLinkDelegate)delegate;
- (ATLegacyAssetLink)initWithMessageLink:(id)a3 hostVersion:(id)a4;
- (ATLegacyAssetLinkProgressDelegate)progressDelegate;
- (BOOL)canEnqueueAsset:(id)a3;
- (BOOL)open;
- (NSArray)readyDataClasses;
- (id)_assetManifestForDataclasses:(id)a3;
- (id)_assetsForDataClass:(id)a3 identifier:(id)a4;
- (id)_manifestEntryForATAsset:(id)a3;
- (id)enqueueAssets:(id)a3 force:(BOOL)a4;
- (void)_enqueueAndRequestAssets;
- (void)_finishAsset:(id)a3 withError:(id)a4;
- (void)_handleFileCompleteMessage:(id)a3;
- (void)_handleFileErrorMessage:(id)a3;
- (void)_handleFileProgressMessage:(id)a3;
- (void)cancelAssets:(id)a3;
- (void)close;
- (void)prioritizeAsset:(id)a3;
- (void)setReadyDataClasses:(id)a3;
@end

@implementation ATLegacyAssetLink

- (ATLegacyAssetLinkProgressDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

- (ATAssetLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_manifestEntryForATAsset:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 storeInfo];
  v7 = [v6 syncID];
  v8 = [v7 longLongValue];

  if (v8)
  {
    v9 = [v4 storeInfo];
    v10 = [v9 syncID];
    [v5 setObject:v10 forKey:@"AssetID"];
  }

  else
  {
    v9 = [v4 identifier];
    [v5 setObject:v9 forKey:@"AssetID"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isDownload")}];
  [v5 setObject:v11 forKey:@"IsDownload"];

  v12 = [v4 variantOptions];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB38]);
    v14 = [v4 variantOptions];
    v15 = [v13 initWithDictionary:v14];

    if ([(NSString *)self->_hostVersion compare:@"12.6.0.43" options:64]== NSOrderedAscending)
    {
      [v4 setLyricsEmbeddedInAsset:1];
      v16 = [v4 assetParts];
      [v15 removeObjectForKey:@"AssetParts"];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16 & 6 | 1];
      [v15 setObject:v17 forKey:@"AssetParts"];

      v18 = _ATLogCategoryiTunesSync();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218498;
        v27 = v16;
        v28 = 2048;
        v29 = v16 & 6 | 1;
        v30 = 2114;
        v31 = v4;
        _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "updating parts from %lu to %lu for asset %{public}@", &v26, 0x20u);
      }
    }

    v19 = [v4 dataclass];
    v20 = [v19 isEqualToString:@"Application"];

    if (v20)
    {
      [v15 removeObjectForKey:@"AssetParts"];
    }

    [v5 setObject:v15 forKey:@"Variant"];
  }

  v21 = [v4 path];

  if (v21)
  {
    v22 = [v4 path];
    [v5 setObject:v22 forKey:@"AssetPath"];
  }

  v23 = [v4 assetType];

  if (v23)
  {
    v24 = [v4 assetType];
    [v5 setObject:v24 forKey:@"AssetType"];
  }

  return v5;
}

- (void)_enqueueAndRequestAssets
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(NSMutableDictionary *)self->_enqueuedAssetsByDataClass allKeys];
  v5 = [v3 setWithArray:v4];

  v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = self;
  v7 = self->_unqueuedAssets;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    v35 = v5;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [v12 dataclass];
        if (([v5 containsObject:v13] & 1) == 0)
        {
          readyDataClasses = v6->_readyDataClasses;
          v15 = [v12 dataclass];
          LODWORD(readyDataClasses) = [(NSMutableArray *)readyDataClasses containsObject:v15];

          if (!readyDataClasses)
          {
            continue;
          }

          v16 = v7;
          enqueuedAssetsByDataClass = v6->_enqueuedAssetsByDataClass;
          v18 = [v12 dataclass];
          v13 = [(NSMutableDictionary *)enqueuedAssetsByDataClass objectForKey:v18];

          if (!v13)
          {
            v13 = objc_opt_new();
            v19 = v6->_enqueuedAssetsByDataClass;
            v20 = [v12 dataclass];
            [(NSMutableDictionary *)v19 setObject:v13 forKey:v20];
          }

          [v12 setAssetState:1];
          [v13 addObject:v12];
          [v37 addObject:v12];
          v21 = [v12 dataclass];
          [v36 addObject:v21];

          v22 = [v12 storeInfo];
          v23 = [v22 syncID];
          v24 = [v23 longLongValue];

          if (v24)
          {
            syncIDToItemPidMap = v6->_syncIDToItemPidMap;
            v26 = [v12 identifier];
            v27 = [v12 storeInfo];
            v28 = [v27 syncID];
            [(NSMutableDictionary *)syncIDToItemPidMap setObject:v26 forKey:v28];
          }

          v7 = v16;
          v5 = v35;
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  [(NSMutableSet *)v6->_unqueuedAssets minusSet:v37];
  v29 = [v36 allObjects];
  v30 = [(ATLegacyAssetLink *)v6 _assetManifestForDataclasses:v29];

  if (v30 && [v30 count])
  {
    messageLink = v6->_messageLink;
    v32 = MEMORY[0x277CEA448];
    v43 = @"AssetManifest";
    v44 = v30;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v34 = [v32 messageWithName:@"AssetManifest" parameters:v33];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __45__ATLegacyAssetLink__enqueueAndRequestAssets__block_invoke;
    v38[3] = &unk_2784E58E8;
    v38[4] = v6;
    [(ATLegacyMessageLink *)messageLink sendMessage:v34 withCompletion:v38];
  }
}

uint64_t __45__ATLegacyAssetLink__enqueueAndRequestAssets__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) close];
  }

  return result;
}

- (id)_assetManifestForDataclasses:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(NSMutableDictionary *)self->_enqueuedAssetsByDataClass allKeys];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v22 = *v31;
    do
    {
      v8 = 0;
      v24 = v6;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        if ([v4 containsObject:{v9, v22}])
        {
          v10 = v4;
          v11 = MEMORY[0x277CBEB18];
          v12 = [(NSMutableDictionary *)self->_enqueuedAssetsByDataClass objectForKey:v9];
          v13 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = [(NSMutableDictionary *)self->_enqueuedAssetsByDataClass objectForKey:v9];
          v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v27;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v26 + 1) + 8 * i);
                if (([v19 readyForStore] & 1) == 0)
                {
                  v20 = [(ATLegacyAssetLink *)self _manifestEntryForATAsset:v19];
                  [v13 addObject:v20];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v16);
          }

          [v23 setObject:v13 forKey:v9];
          v4 = v10;
          v7 = v22;
          v6 = v24;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  return v23;
}

- (id)_assetsForDataClass:(id)a3 identifier:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_enqueuedAssetsByDataClass objectForKey:a3];
  v8 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 identifier];
        v16 = [v15 isEqualToString:v6];

        if (v16)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (void)_finishAsset:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  enqueuedAssetsByDataClass = self->_enqueuedAssetsByDataClass;
  v9 = [v6 dataclass];
  v10 = [(NSMutableDictionary *)enqueuedAssetsByDataClass objectForKey:v9];

  [v10 removeObject:v6];
  if (![v10 count])
  {
    v11 = self->_enqueuedAssetsByDataClass;
    v12 = [v6 dataclass];
    [(NSMutableDictionary *)v11 removeObjectForKey:v12];
  }

  v13 = [v6 storeInfo];
  v14 = [v13 syncID];

  if (v14)
  {
    syncIDToItemPidMap = self->_syncIDToItemPidMap;
    v16 = [v6 storeInfo];
    v17 = [v16 syncID];
    [(NSMutableDictionary *)syncIDToItemPidMap removeObjectForKey:v17];
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATLegacyAssetLink__finishAsset_withError___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v22 = v6;
  v23 = v7;
  v19 = v7;
  v20 = v6;
  dispatch_async(callbackQueue, block);
}

void __44__ATLegacyAssetLink__finishAsset_withError___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v4 code] != 3 && objc_msgSend(*(a1 + 48), "code") != 16;
  [v6 assetLink:v2 didFinishAsset:v3 error:v4 retryable:v5];
}

- (void)_handleFileProgressMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ATLegacyAssetLink__handleFileProgressMessage___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __48__ATLegacyAssetLink__handleFileProgressMessage___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) parameterForKey:@"Dataclass"];
  v3 = [*(a1 + 32) parameterForKey:@"AssetProgress"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [*(a1 + 32) parameterForKey:@"AssetID"];
  v7 = [*(*(a1 + 40) + 32) objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  v26 = v10;
  v27 = v2;
  v11 = [*(a1 + 40) _assetsForDataClass:v2 identifier:v10];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v16 = v5;
        *&v13 = v16;
        [v18 setDownloadProgress:v13];
        v19 = *(a1 + 40);
        v20 = *(v19 + 64);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__ATLegacyAssetLink__handleFileProgressMessage___block_invoke_2;
        block[3] = &unk_2784E5520;
        block[4] = v19;
        block[5] = v18;
        *&block[6] = v5;
        dispatch_async(v20, block);
      }

      v14 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v21 = [*(a1 + 32) parameterForKey:@"OverallProgress"];
  if (v21)
  {
    v22 = [*(a1 + 40) progressDelegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = *(a1 + 40);
      v25 = *(v24 + 64);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __48__ATLegacyAssetLink__handleFileProgressMessage___block_invoke_3;
      v28[3] = &unk_2784E5960;
      v28[4] = v24;
      v29 = v21;
      dispatch_async(v25, v28);
    }
  }
}

void __48__ATLegacyAssetLink__handleFileProgressMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didUpdateAsset:*(a1 + 40) progress:*(a1 + 48)];
}

void __48__ATLegacyAssetLink__handleFileProgressMessage___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) progressDelegate];
  v2 = *(a1 + 32);
  [*(a1 + 40) doubleValue];
  [v3 assetLink:v2 didUpdateOverallProgress:?];
}

- (void)_handleFileErrorMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ATLegacyAssetLink__handleFileErrorMessage___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __45__ATLegacyAssetLink__handleFileErrorMessage___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) parameterForKey:@"Dataclass"];
  v3 = [*(a1 + 32) parameterForKey:@"ErrorIsVisible"];
  v4 = [*(a1 + 32) parameterForKey:@"ErrorCode"];
  v5 = [*(a1 + 32) parameterForKey:@"AssetID"];
  v6 = [*(*(a1 + 40) + 32) objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = objc_opt_new();
  v11 = v10;
  if (v3)
  {
    [v10 setObject:v3 forKeyedSubscript:@"ATLegacyAssetLinkErrorIsVisibleKey"];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:objc_msgSend(v4 userInfo:{"intValue", v4), v11}];
  v19 = v2;
  v13 = [*(a1 + 40) _assetsForDataClass:v2 identifier:v9];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(a1 + 40) _finishAsset:*(*(&v20 + 1) + 8 * i) withError:v12];
        [*(a1 + 40) _enqueueAndRequestAssets];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)_handleFileCompleteMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ATLegacyAssetLink__handleFileCompleteMessage___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __48__ATLegacyAssetLink__handleFileCompleteMessage___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) parameterForKey:@"Dataclass"];
  v3 = [*(a1 + 32) parameterForKey:@"AssetID"];
  v32 = [*(a1 + 32) parameterForKey:@"AssetPath"];
  v4 = [*(*(a1 + 40) + 32) objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v34 = v2;
  v8 = [*(a1 + 40) _assetsForDataClass:v2 identifier:v7];
  v9 = [v8 count];
  log = _ATLogCategoryiTunesSync();
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v10)
    {
      v11 = *(a1 + 40);
      *buf = 138543874;
      v41 = v11;
      v42 = 1024;
      v43 = [v8 count];
      v44 = 2114;
      v45 = v8;
      _os_log_impl(&dword_223819000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ Matched %d assets: %{public}@", buf, 0x1Cu);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    log = v8;
    v12 = [log countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v29 = v8;
      v30 = v7;
      v31 = v3;
      v14 = *v36;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(log);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          if ([v16 isDownload])
          {
            [v16 setPath:v32];
          }

          [v16 setBypassStore:1];
          v17 = [v16 dataclass];
          v18 = [v17 isEqualToString:@"Application"];

          if (v18)
          {
            [v16 setCompletedAssetParts:1];
          }

          v19 = [v16 dataclass];
          if ([v19 isEqualToString:@"Application"])
          {
            goto LABEL_19;
          }

          v20 = [v16 dataclass];
          v21 = [v20 isEqualToString:@"Media"];

          if ((v21 & 1) == 0)
          {
            v19 = [MEMORY[0x277CEA430] sharedInstance];
            [v19 processCompletedAsset:v16];
LABEL_19:
          }

          [*(a1 + 40) _finishAsset:v16 withError:0];
          v22 = +[ATClientController sharedInstance];
          v23 = [v22 clientForDataclass:v34];

          v24 = [*(a1 + 32) parameterForKey:@"Metadata"];
          if (v24)
          {
            v25 = v24;
            v26 = objc_opt_respondsToSelector();

            if (v26)
            {
              v27 = [*(a1 + 32) parameterForKey:@"Metadata"];
              v28 = [*(a1 + 32) parameterForKey:@"Anchor"];
              [v23 metadataUpdate:v27 forAsset:v16 withNewAnchor:v28];
            }
          }

          [*(a1 + 40) _enqueueAndRequestAssets];
        }

        v13 = [log countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (!v13)
        {
          v7 = v30;
          v3 = v31;
          v8 = v29;
          break;
        }
      }
    }
  }

  else if (v10)
  {
    *buf = 138543362;
    v41 = v7;
    _os_log_impl(&dword_223819000, log, OS_LOG_TYPE_DEFAULT, "ignoring transfer completion for unknown asset %{public}@", buf, 0xCu);
  }
}

- (NSArray)readyDataClasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2197;
  v10 = __Block_byref_object_dispose__2198;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ATLegacyAssetLink_readyDataClasses__block_invoke;
  v5[3] = &unk_2784E5008;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__ATLegacyAssetLink_readyDataClasses__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 56) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)setReadyDataClasses:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ATLegacyAssetLink_setReadyDataClasses___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __41__ATLegacyAssetLink_setReadyDataClasses___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(a1 + 32);

  return [v5 _enqueueAndRequestAssets];
}

- (void)prioritizeAsset:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Prioritize %{public}@", buf, 0x16u);
  }

  if ([(NSMutableSet *)self->_unqueuedAssets containsObject:v4])
  {
    [(NSMutableSet *)self->_unqueuedAssets removeObject:v4];
    [(NSMutableSet *)self->_unqueuedAssets addObject:v4];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v25 = __Block_byref_object_copy__2197;
    v26 = __Block_byref_object_dispose__2198;
    v27 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ATLegacyAssetLink_prioritizeAsset___block_invoke;
    block[3] = &unk_2784E5988;
    v18 = buf;
    block[4] = self;
    v7 = v4;
    v17 = v7;
    dispatch_sync(queue, block);
    if ([*(*&buf[8] + 40) count])
    {
      [v7 setIsPrioritized:1];
      v22 = @"AssetManifest";
      v8 = [v7 dataclass];
      v20 = v8;
      v9 = [(ATLegacyAssetLink *)self _manifestEntryForATAsset:v7];
      v19 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v21 = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v23 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      messageLink = self->_messageLink;
      v14 = [MEMORY[0x277CEA448] messageWithName:@"PrioritizeAsset" parameters:v12];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __37__ATLegacyAssetLink_prioritizeAsset___block_invoke_2;
      v15[3] = &unk_2784E58E8;
      v15[4] = self;
      [(ATLegacyMessageLink *)messageLink sendMessage:v14 withCompletion:v15];
    }

    _Block_object_dispose(buf, 8);
  }
}

void __37__ATLegacyAssetLink_prioritizeAsset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) dataclass];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _assetsForDataClass:v7 identifier:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __37__ATLegacyAssetLink_prioritizeAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ATLegacyAssetLink_prioritizeAsset___block_invoke_3;
  v7[3] = &unk_2784E5960;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __37__ATLegacyAssetLink_prioritizeAsset___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v8 = v3;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_ERROR, "failed to send asset cancelled message. err=%{public}@", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = *(v4 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ATLegacyAssetLink_prioritizeAsset___block_invoke_50;
    block[3] = &unk_2784E5938;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

- (void)cancelAssets:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ATLegacyAssetLink_cancelAssets___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __34__ATLegacyAssetLink_cancelAssets___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    v5 = 0x277CCA000uLL;
    do
    {
      v6 = 0;
      v23 = v3;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        v8 = [*(*(a1 + 40) + 8) containsObject:v7];
        v9 = *(a1 + 40);
        if (v8)
        {
          [*(v9 + 8) removeObject:v7];
          v10 = *(a1 + 40);
          v11 = [*(v5 + 2488) errorWithDomain:@"ATError" code:2 userInfo:0];
          [v10 _finishAsset:v7 withError:v11];
        }

        else
        {
          v12 = *(v9 + 16);
          v13 = [v7 dataclass];
          v11 = [v12 objectForKey:v13];

          if ([v11 containsObject:v7])
          {
            v14 = MEMORY[0x277CBEAC0];
            v15 = [v7 identifier];
            v16 = [v7 dataclass];
            [MEMORY[0x277CCABB0] numberWithInt:2];
            v18 = v17 = v4;
            v19 = [v14 dictionaryWithObjectsAndKeys:{v15, @"AssetID", v16, @"Dataclass", v18, @"ErrorCode", 0}];

            v20 = *(*(a1 + 40) + 24);
            v21 = [MEMORY[0x277CEA448] messageWithName:@"FileError" parameters:v19];
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __34__ATLegacyAssetLink_cancelAssets___block_invoke_2;
            v25[3] = &unk_2784E59D8;
            v25[4] = *(a1 + 40);
            v25[5] = v7;
            v22 = v20;
            v4 = v17;
            v3 = v23;
            [v22 sendMessage:v21 withCompletion:v25];

            v5 = 0x277CCA000;
          }
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v3);
  }
}

void __34__ATLegacyAssetLink_cancelAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ATLegacyAssetLink_cancelAssets___block_invoke_3;
  block[3] = &unk_2784E59B0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void __34__ATLegacyAssetLink_cancelAssets___block_invoke_3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = a1[4];
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_ERROR, "failed to send asset cancelled message. err=%{public}@", &v7, 0xCu);
    }

    [*(a1[5] + 24) close];
  }

  v5 = a1[5];
  v4 = a1[6];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
  [v5 _finishAsset:v4 withError:v6];
}

- (BOOL)canEnqueueAsset:(id)a3
{
  v4 = a3;
  if ([v4 installOnly])
  {
    goto LABEL_5;
  }

  v5 = [(ATLegacyAssetLink *)self supportedDataClasses];
  v6 = [v4 dataclass];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v4 dataclass];
  if ([v8 isEqualToString:@"Application"])
  {
    v9 = [v4 isRestore];

    if (v9)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  if ([v4 isLegacy])
  {
    v10 = 1;
  }

  else
  {
    v12 = [v4 storeInfo];
    v13 = [v12 syncID];
    v10 = v13 != 0;
  }

LABEL_6:

  return v10;
}

- (id)enqueueAssets:(id)a3 force:(BOOL)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2197;
  v17 = __Block_byref_object_dispose__2198;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ATLegacyAssetLink_enqueueAssets_force___block_invoke;
  block[3] = &unk_2784E5988;
  block[4] = self;
  v11 = v5;
  v12 = &v13;
  v7 = v5;
  dispatch_sync(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __41__ATLegacyAssetLink_enqueueAssets_force___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 40) == 1 && *(v1 + 24))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = *(*(a1 + 32) + 16);
          v10 = [v8 dataclass];
          v11 = [v9 objectForKey:v10];
          v12 = [v11 containsObject:v8];

          if ((v12 & 1) == 0)
          {
            if (([v8 isDownload] & 1) == 0)
            {
              v13 = [v8 dataclass];
              v14 = [v13 isEqualToString:@"Application"];

              if ((v14 & 1) == 0)
              {
                v15 = [MEMORY[0x277CEA430] sharedInstance];
                [v15 copyAssetToAirlock:v8];
              }
            }

            [*(*(a1 + 32) + 8) addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    [*(a1 + 32) _enqueueAndRequestAssets];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  }
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ATLegacyAssetLink_close__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __26__ATLegacyAssetLink_close__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = [*(*(a1 + 32) + 8) allObjects];
    [v2 addObjectsFromArray:v3];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = *(*(a1 + 32) + 16);
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v8)];
          [v2 addObjectsFromArray:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    [*(*(a1 + 32) + 8) removeAllObjects];
    [*(*(a1 + 32) + 16) removeAllObjects];
    [*(*(a1 + 32) + 32) removeAllObjects];
    *(*(a1 + 32) + 40) = 0;
    [*(*(a1 + 32) + 24) removeObserver:?];
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;

    v12 = *(a1 + 32);
    v13 = *(v12 + 64);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __26__ATLegacyAssetLink_close__block_invoke_2;
    v15[3] = &unk_2784E5960;
    v15[4] = v12;
    v16 = v2;
    v14 = v2;
    dispatch_async(v13, v15);
  }
}

void __26__ATLegacyAssetLink_close__block_invoke_2(uint64_t a1)
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
  block[2] = __25__ATLegacyAssetLink_open__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
  return self->_open;
}

void __25__ATLegacyAssetLink_open__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    [*(*(a1 + 32) + 24) addObserver:?];
    objc_initWeak(&location, *(a1 + 32));
    v3 = *(*(a1 + 32) + 24);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __25__ATLegacyAssetLink_open__block_invoke_2;
    v13[3] = &unk_2784E5910;
    objc_copyWeak(&v14, &location);
    [v3 setHandlerForMessage:@"FileComplete" handler:v13];
    v4 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __25__ATLegacyAssetLink_open__block_invoke_3;
    v11[3] = &unk_2784E5910;
    objc_copyWeak(&v12, &location);
    [v4 setHandlerForMessage:@"FileError" handler:v11];
    v5 = *(*(a1 + 32) + 24);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__ATLegacyAssetLink_open__block_invoke_4;
    v9[3] = &unk_2784E5910;
    objc_copyWeak(&v10, &location);
    [v5 setHandlerForMessage:@"FileProgress" handler:v9];
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__ATLegacyAssetLink_open__block_invoke_5;
    block[3] = &unk_2784E5938;
    block[4] = v6;
    dispatch_async(v7, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __25__ATLegacyAssetLink_open__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFileCompleteMessage:v4];
}

void __25__ATLegacyAssetLink_open__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFileErrorMessage:v4];
}

void __25__ATLegacyAssetLink_open__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFileProgressMessage:v4];
}

void __25__ATLegacyAssetLink_open__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 assetLink:*(a1 + 32) didOpenWithPendingAssets:0];
  }
}

- (ATLegacyAssetLink)initWithMessageLink:(id)a3 hostVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = ATLegacyAssetLink;
  v9 = [(ATLegacyAssetLink *)&v29 init];
  if (v9)
  {
    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_create(Name, 0);
    queue = v9->_queue;
    v9->_queue = v12;

    v14 = dispatch_queue_create("com.apple.atc.legacyassetlink.callback", 0);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v14;

    objc_storeStrong(&v9->_messageLink, a3);
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    unqueuedAssets = v9->_unqueuedAssets;
    v9->_unqueuedAssets = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    enqueuedAssetsByDataClass = v9->_enqueuedAssetsByDataClass;
    v9->_enqueuedAssetsByDataClass = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncIDToItemPidMap = v9->_syncIDToItemPidMap;
    v9->_syncIDToItemPidMap = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    supportedDataClasses = v9->_supportedDataClasses;
    v9->_supportedDataClasses = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    readyDataClasses = v9->_readyDataClasses;
    v9->_readyDataClasses = v24;

    v26 = [v8 copy];
    hostVersion = v9->_hostVersion;
    v9->_hostVersion = v26;
  }

  return v9;
}

@end