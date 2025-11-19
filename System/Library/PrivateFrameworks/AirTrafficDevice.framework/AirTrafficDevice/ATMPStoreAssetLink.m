@interface ATMPStoreAssetLink
- (ATAssetLinkDelegate)delegate;
- (ATMPStoreAssetLink)init;
- (BOOL)canEnqueueAsset:(id)a3;
- (BOOL)open;
- (id)_assetTypeForStoreKind:(id)a3;
- (id)_dataClassForStoreKind:(id)a3;
- (id)_errorForFinishedDownload:(id)a3;
- (id)enqueueAssets:(id)a3 force:(BOOL)a4;
- (void)_enqueueAssets:(id)a3;
- (void)_finishAsset:(id)a3 error:(id)a4 retryable:(BOOL)a5;
- (void)cancelAssets:(id)a3;
- (void)close;
- (void)downloadManager:(id)a3 didAddActiveDownloads:(id)a4 removeActiveDownloads:(id)a5;
- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4;
- (void)downloadManager:(id)a3 downloadDidProgress:(id)a4;
- (void)prioritizeAsset:(id)a3;
@end

@implementation ATMPStoreAssetLink

- (ATAssetLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_errorForFinishedDownload:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 failureError];
  if ([v4 isCanceled])
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [v4 failureError];
    if (v7)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v3 = [v4 failureError];
      v17[0] = v3;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v8 = 0;
    }

    v10 = v6;
    v11 = 2;
  }

  else
  {
    if ([v5 code] != 103)
    {
      goto LABEL_14;
    }

    v9 = MEMORY[0x277CCA9B8];
    v7 = [v4 failureError];
    if (v7)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v3 = [v4 failureError];
      v15 = v3;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    }

    else
    {
      v8 = 0;
    }

    v10 = v9;
    v11 = 14;
  }

  v12 = [v10 errorWithDomain:@"ATError" code:v11 userInfo:v8];

  if (v7)
  {
  }

  v5 = v12;
LABEL_14:

  return v5;
}

- (void)_finishAsset:(id)a3 error:(id)a4 retryable:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 identifier];
  v11 = [v10 longLongValue];

  assetMap = self->_assetMap;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
  [(NSMutableDictionary *)assetMap removeObjectForKey:v13];

  downloadsMap = self->_downloadsMap;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
  [(NSMutableDictionary *)downloadsMap removeObjectForKey:v15];

  callbackQueue = self->_callbackQueue;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __51__ATMPStoreAssetLink__finishAsset_error_retryable___block_invoke;
  v26 = &unk_2784E4A80;
  v17 = v8;
  v27 = v17;
  v28 = self;
  v18 = v9;
  v29 = v18;
  v30 = a5;
  dispatch_async(callbackQueue, &v23);
  if (v18)
  {
    ATReportEventIncrementingScalarKey();
    v19 = [v18 domain];
    v20 = [v19 isEqualToString:@"ATError"];

    if (v20)
    {
      v21 = [v18 code];
      if (v21 == 8 || v21 == 4 || v21 == 2)
      {
        ATReportEventIncrementingScalarKey();
      }
    }
  }

  else
  {
    ATReportEventIncrementingScalarKey();
    [v17 transferStartTime];
    if (v22 != 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [v17 transferStartTime];
      ATReportEventAddDoubleToScalarKey();
    }
  }
}

void __51__ATMPStoreAssetLink__finishAsset_error_retryable___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [WeakRetained assetLink:*(a1 + 40) didFinishAsset:*(a1 + 32) error:*(a1 + 48) retryable:*(a1 + 56)];
  }
}

- (void)_enqueueAssets:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 count];
  ATReportEventAddIntToScalarKey();
  v28 = [MEMORY[0x277CBEB18] array];
  v29 = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v4)
  {
    v30 = *v36;
    *&v5 = 138543362;
    v25 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v8 longLongValue];

        v10 = [getMPMediaLibraryClass() defaultMediaLibrary];
        v11 = [v10 itemWithPersistentID:v9 verifyExistence:0];

        if ([v7 downloadOnly])
        {
          v12 = 2;
        }

        else
        {
          v12 = 0;
        }

        v43[0] = @"MPStoreDownloadAttributeBackgroundRequest";
        v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "isForeground") ^ 1}];
        v44[0] = v13;
        v44[1] = MEMORY[0x277CBEC38];
        v43[1] = @"MPStoreDownloadAttributeShouldRespectMusicCellularDataRestriction";
        v43[2] = @"MPStoreDownloadAttributeShouldRespectStoreCellularDataRestriction";
        v44[2] = MEMORY[0x277CBEC28];
        v44[3] = @"com.apple.Music";
        v43[3] = @"MPStoreDownloadAttributeClientBundleIdentifier";
        v43[4] = @"MPStoreDownloadAttributeSkipInstall";
        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "downloadOnly")}];
        v44[4] = v14;
        v43[5] = @"MPStoreDownloadAttributeReason";
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
        v44[5] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:6];

        v39 = 0;
        v40 = &v39;
        v41 = 0x2050000000;
        v17 = getMPStoreDownloadClass_softClass;
        v42 = getMPStoreDownloadClass_softClass;
        if (!getMPStoreDownloadClass_softClass)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v47 = __getMPStoreDownloadClass_block_invoke;
          v48 = &unk_2784E5B40;
          v49 = &v39;
          __getMPStoreDownloadClass_block_invoke(&buf);
          v17 = v40[3];
        }

        v18 = v17;
        _Block_object_dispose(&v39, 8);
        v19 = [v17 storeDownloadForMediaItem:v11 type:1 attributes:v16];
        if (v19)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
          [v29 setObject:v7 forKey:v20];

          [v28 addObject:v19];
        }

        else
        {
          v21 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v25;
            *(&buf + 4) = v7;
            _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_ERROR, "failed to create download for asset %{public}@ cancelling the asset download ", &buf, 0xCu);
          }

          v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
          [(ATMPStoreAssetLink *)self _finishAsset:v7 error:v22 retryable:1];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v4);
  }

  if ([v28 count])
  {
    v23 = [(MPStoreDownloadManager *)self->_downloadManager addDownloads:v28];
    v24 = _ATLogCategoryStoreDownloads_Oversize();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_223819000, v24, OS_LOG_TYPE_DEFAULT, "StoreDownloadManager returned %{public}@ added downloads", &buf, 0xCu);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __37__ATMPStoreAssetLink__enqueueAssets___block_invoke;
    v32[3] = &unk_2784E4A30;
    v33 = v29;
    v34 = self;
    [v23 enumerateObjectsUsingBlock:v32];
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __37__ATMPStoreAssetLink__enqueueAssets___block_invoke_2;
  v31[3] = &unk_2784E4A58;
  v31[4] = self;
  [v29 enumerateKeysAndObjectsUsingBlock:v31];
}

void __37__ATMPStoreAssetLink__enqueueAssets___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 libraryItemIdentifier];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  v5 = [*(a1 + 32) objectForKey:v4];
  if (v5)
  {
    [*(*(a1 + 40) + 48) setObject:v5 forKey:v4];
    [*(*(a1 + 40) + 56) setObject:v6 forKey:v4];
    [*(a1 + 32) removeObjectForKey:v4];
  }
}

void __37__ATMPStoreAssetLink__enqueueAssets___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "failed to enqueue asset %{public}@ for download", &v6, 0xCu);
  }

  [*(a1 + 32) _finishAsset:v4 error:0 retryable:1];
}

- (id)_dataClassForStoreKind:(id)a3
{
  v5 = a3;
  if (_dataClassForStoreKind__onceToken_1481 != -1)
  {
    dispatch_once(&_dataClassForStoreKind__onceToken_1481, &__block_literal_global_47);
  }

  v6 = [_dataClassForStoreKind__dataClassByKind_1482 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ATMPStoreAssetLink.m" lineNumber:324 description:{@"Unknown dataclass for kind %@", v5}];
  }

  return v6;
}

uint64_t __45__ATMPStoreAssetLink__dataClassForStoreKind___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _dataClassForStoreKind__dataClassByKind_1482;
  _dataClassForStoreKind__dataClassByKind_1482 = v0;

  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Application" forKeyedSubscript:*MEMORY[0x277D69EE0]];
  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Book" forKeyedSubscript:*MEMORY[0x277D69EB0]];
  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EA0]];
  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EB8]];
  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EC0]];
  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EC8]];
  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EF0]];
  [_dataClassForStoreKind__dataClassByKind_1482 setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69F00]];
  v2 = _dataClassForStoreKind__dataClassByKind_1482;
  v3 = *MEMORY[0x277D69ED0];

  return [v2 setObject:@"Media" forKeyedSubscript:v3];
}

- (id)_assetTypeForStoreKind:(id)a3
{
  v3 = _assetTypeForStoreKind__onceToken_1495;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_assetTypeForStoreKind__onceToken_1495, &__block_literal_global_1496);
  }

  v5 = [_assetTypeForStoreKind__assetTypeByStoreKind_1497 objectForKeyedSubscript:v4];

  return v5;
}

uint64_t __45__ATMPStoreAssetLink__assetTypeForStoreKind___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _assetTypeForStoreKind__assetTypeByStoreKind_1497;
  _assetTypeForStoreKind__assetTypeByStoreKind_1497 = v0;

  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"Audiobook" forKeyedSubscript:*MEMORY[0x277D69EA0]];
  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"Movie" forKeyedSubscript:*MEMORY[0x277D69EB8]];
  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"Music" forKeyedSubscript:*MEMORY[0x277D69EC0]];
  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"MusicVideo" forKeyedSubscript:*MEMORY[0x277D69EC8]];
  v2 = *MEMORY[0x277D69ED0];
  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"Podcast" forKeyedSubscript:*MEMORY[0x277D69ED0]];
  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"TVEpisode" forKeyedSubscript:*MEMORY[0x277D69EF0]];
  v3 = *MEMORY[0x277D69F00];
  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"VideoPodcast" forKeyedSubscript:*MEMORY[0x277D69F00]];
  [_assetTypeForStoreKind__assetTypeByStoreKind_1497 setObject:@"iTunesU" forKeyedSubscript:v2];
  v4 = _assetTypeForStoreKind__assetTypeByStoreKind_1497;

  return [v4 setObject:@"iTunesUVideo" forKeyedSubscript:v3];
}

- (void)downloadManager:(id)a3 didAddActiveDownloads:(id)a4 removeActiveDownloads:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ATMPStoreAssetLink_downloadManager_didAddActiveDownloads_removeActiveDownloads___block_invoke;
  block[3] = &unk_2784E59B0;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(queue, block);
}

void __82__ATMPStoreAssetLink_downloadManager_didAddActiveDownloads_removeActiveDownloads___block_invoke(void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1516;
  v11 = __Block_byref_object_dispose__1517;
  v12 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__ATMPStoreAssetLink_downloadManager_didAddActiveDownloads_removeActiveDownloads___block_invoke_2;
  v6[3] = &unk_2784E4A08;
  v2 = a1[4];
  v6[4] = a1[5];
  v6[5] = &v7;
  [v2 enumerateObjectsUsingBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__ATMPStoreAssetLink_downloadManager_didAddActiveDownloads_removeActiveDownloads___block_invoke_3;
  v5[3] = &unk_2784E4A08;
  v3 = a1[6];
  v5[4] = a1[5];
  v5[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v5];
  WeakRetained = objc_loadWeakRetained((a1[5] + 16));
  [WeakRetained assetLink:a1[5] didTransitionAssetStates:v8[5]];

  _Block_object_dispose(&v7, 8);
}

void __82__ATMPStoreAssetLink_downloadManager_didAddActiveDownloads_removeActiveDownloads___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 libraryItemIdentifier];
  v4 = *(*(a1 + 32) + 48);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [v6 setAssetState:1];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

void __82__ATMPStoreAssetLink_downloadManager_didAddActiveDownloads_removeActiveDownloads___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 libraryItemIdentifier];
  v4 = *(*(a1 + 32) + 48);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [v6 setAssetState:0];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

- (void)downloadManager:(id)a3 downloadDidProgress:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ATMPStoreAssetLink_downloadManager_downloadDidProgress___block_invoke;
  v8[3] = &unk_2784E5960;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __58__ATMPStoreAssetLink_downloadManager_downloadDidProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryItemIdentifier];
  v3 = *(*(a1 + 40) + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
  v7 = [v3 objectForKey:v4];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = *(a1 + 40);
    [*(a1 + 32) percentComplete];
    [WeakRetained assetLink:v6 didUpdateAsset:v7 progress:?];
  }
}

- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ download finished: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ATMPStoreAssetLink_downloadManager_downloadDidFinish___block_invoke;
  v9[3] = &unk_2784E5960;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_sync(queue, v9);
}

void __56__ATMPStoreAssetLink_downloadManager_downloadDidFinish___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) libraryItemIdentifier];
  v3 = *(*(a1 + 40) + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [*(a1 + 40) _errorForFinishedDownload:*(a1 + 32)];
    v7 = [*(a1 + 32) _getDownloadFilePath];
    v8 = v7;
    if (!v6 && v7)
    {
      v9 = [MEMORY[0x277CEA430] sharedInstance];
      v10 = [v5 dataclass];
      v28 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      [v9 createAirlockForDataclasses:v11];

      v12 = [v5 dataclass];
      v13 = [v9 pathForDataclass:v12];
      v14 = [v8 lastPathComponent];
      v15 = [v13 stringByAppendingPathComponent:v14];

      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = 0;
      LOBYTE(v14) = [v16 moveItemAtPath:v8 toPath:v15 error:&v26];
      v6 = v26;

      if (v14)
      {
        [v5 setPath:v15];
      }

      else
      {
        v18 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v30 = v6;
          _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_ERROR, "failed to move download file to airlock. error=%{public}@", buf, 0xCu);
        }
      }
    }

    v19 = *(*(a1 + 40) + 56);
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
    [v19 removeObjectForKey:v20];

    v21 = *(*(a1 + 40) + 48);
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
    [v21 removeObjectForKey:v22];

    v23 = *(a1 + 40);
    v24 = *(v23 + 40);
    v27 = *(a1 + 32);
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [v24 removeObserver:v23 forDownloads:v25];

    [*(a1 + 40) _finishAsset:v5 error:v6 retryable:1];
  }

  else
  {
    v6 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "no pending asset found for download. download=%{public}@", buf, 0xCu);
    }
  }
}

- (void)prioritizeAsset:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Prioritize %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ATMPStoreAssetLink_prioritizeAsset___block_invoke;
  v8[3] = &unk_2784E5960;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(queue, v8);
}

void __38__ATMPStoreAssetLink_prioritizeAsset___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 longLongValue];

  v4 = *(*(a1 + 40) + 56);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v14[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [*(*(a1 + 40) + 40) resumeDownloads:v7];
    [*(*(a1 + 40) + 40) prioritizeDownloads:v7];
    [*(a1 + 32) setIsPrioritized:1];
  }

  else
  {
    v7 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ can't prioritize asset because no download was found. asset=%{public}@", &v10, 0x16u);
    }
  }
}

- (void)cancelAssets:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ATMPStoreAssetLink_cancelAssets___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __35__ATMPStoreAssetLink_cancelAssets___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138543618;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v9 longLongValue];

        v11 = *(*(a1 + 40) + 56);
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        v13 = [v11 objectForKey:v12];

        if (v13)
        {
          v14 = *(*(a1 + 40) + 40);
          v26 = v13;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
          [v14 cancelDownloads:v15];
        }

        else
        {
          v15 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 40);
            *buf = v17;
            v23 = v16;
            v24 = 2114;
            v25 = v8;
            _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ can't cancel asset because no download was found. asset=%{public}@", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v5);
  }
}

- (BOOL)canEnqueueAsset:(id)a3
{
  v3 = a3;
  v4 = +[ATDeviceSettings sharedInstance];
  v5 = [v4 useNewDownloadService];

  if (v5 & 1) != 0 || ([v3 variantOptions], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", @"AssetParts"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "unsignedIntegerValue"), v7, v6, (objc_msgSend(v3, "bypassStore")))
  {
    v9 = 0;
  }

  else
  {
    v10 = [v3 dataclass];
    if ([v10 isEqualToString:@"Media"])
    {
      if ([v3 isRestore])
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 & 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)enqueueAssets:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1516;
  v22 = __Block_byref_object_dispose__1517;
  v23 = [MEMORY[0x277CBEB18] array];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1516;
  v16[4] = __Block_byref_object_dispose__1517;
  v17 = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ATMPStoreAssetLink_enqueueAssets_force___block_invoke;
  block[3] = &unk_2784E49E0;
  block[4] = self;
  v12 = v6;
  v15 = a4;
  v13 = &v18;
  v14 = v16;
  v8 = v6;
  dispatch_sync(queue, block);
  v9 = v19[5];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

uint64_t __42__ATMPStoreAssetLink_enqueueAssets_force___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 40);
  v25 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v25)
  {
    v4 = *v27;
    *&v3 = 138544130;
    v23 = v3;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = [v6 identifier];
        v8 = [v7 longLongValue];

        v9 = *(*(a1 + 32) + 56);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
        v11 = [v9 objectForKey:v10];

        if (v11)
        {
          v12 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v4;
            v14 = v2;
            v15 = *(a1 + 32);
            v16 = [v11 phaseIdentifier];
            *buf = v23;
            v31 = v15;
            v2 = v14;
            v4 = v13;
            v32 = 2114;
            v33 = v11;
            v34 = 2114;
            v35 = v16;
            v36 = 2114;
            v37 = v6;
            _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Matched enqueued download %{public}@ (%{public}@) for %{public}@", buf, 0x2Au);
          }

          v17 = *(*(a1 + 32) + 48);
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
          [v17 setObject:v6 forKey:v18];

          [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
        }

        else if ((*(a1 + 64) & 1) != 0 || v2 <= 2)
        {
          [*(*(*(a1 + 56) + 8) + 40) addObject:v6];
          [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
          ++v2;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v25);
  }

  result = [*(*(*(a1 + 56) + 8) + 40) count];
  if (result)
  {
    v20 = _ATLogCategoryStoreDownloads_Oversize();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueuing %{public}@ new assets to download", buf, 0x16u);
    }

    return [*(a1 + 32) _enqueueAssets:*(*(*(a1 + 56) + 8) + 40)];
  }

  return result;
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ATMPStoreAssetLink_close__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __27__ATMPStoreAssetLink_close__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 8) = 0;
    v5 = [*(*(a1 + 32) + 56) allValues];
    if ([v5 count])
    {
      [*(*(a1 + 32) + 40) removeObserver:*(a1 + 32) forDownloads:v5];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ATMPStoreAssetLink_close__block_invoke_2;
    block[3] = &unk_2784E5938;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

void __27__ATMPStoreAssetLink_close__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didCloseWithOutstandingAssets:0];
}

- (BOOL)open
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ATMPStoreAssetLink_open__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
  return 1;
}

void __26__ATMPStoreAssetLink_open__block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [*(*(a1 + 32) + 40) downloads];
    v3 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v44;
      v6 = *MEMORY[0x277D6A010];
      v40 = *MEMORY[0x277D6A000];
      v35 = *MEMORY[0x277D6A020];
      v34 = *MEMORY[0x277D6A0D8];
      v33 = *MEMORY[0x277D6A0C8];
      v36 = *MEMORY[0x277D6A010];
      do
      {
        v7 = 0;
        v38 = v4;
        do
        {
          if (*v44 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v43 + 1) + 8 * v7);
          v9 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            *buf = 138543618;
            v48 = v10;
            v49 = 2114;
            v50 = v8;
            _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Found active download: %{public}@", buf, 0x16u);
          }

          v11 = [v8 _SSDownload];
          v12 = *(a1 + 32);
          v13 = [v11 valueForProperty:v6];
          v14 = [v12 _dataClassForStoreKind:v13];

          v15 = [v11 valueForProperty:v40];
          v16 = [v15 BOOLValue];

          if ([v14 isEqualToString:@"Media"])
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v18 = objc_alloc_init(MEMORY[0x277CEA438]);
            v19 = [v11 valueForProperty:v35];
            [v18 setIdentifier:v19];

            [v18 setDataclass:v14];
            [v18 setIsDownload:1];
            v20 = *(a1 + 32);
            [v11 valueForProperty:v6];
            v22 = v21 = v5;
            v23 = [v20 _assetTypeForStoreKind:v22];
            [v18 setAssetType:v23];

            [v18 setVariantOptions:&unk_2836F51E0];
            [v18 setIsRestore:0];
            v24 = [v11 valueForProperty:v34];
            [v18 setPrettyName:v24];

            v25 = [v11 valueForProperty:v33];
            [v18 setIcon:v25];

            -[NSObject setStorePID:](v18, "setStorePID:", [v11 persistentIdentifier]);
            v26 = *(*(a1 + 32) + 48);
            v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "libraryItemIdentifier")}];
            [v26 setObject:v18 forKey:v27];

            v28 = *(*(a1 + 32) + 56);
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "libraryItemIdentifier")}];
            [v28 setObject:v8 forKey:v29];

            v5 = v21;
            v4 = v38;
            v6 = v36;
            [v37 addObject:v18];
          }

          else
          {
            v18 = _ATLogCategoryStoreDownloads();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138543874;
              v48 = v8;
              v49 = 2114;
              v50 = v14;
              v51 = 1024;
              v52 = v16;
              _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_INFO, "ignoring active download:%{public}@. dataClass:%{public}@, isRestore%d", buf, 0x1Cu);
            }
          }

          ++v7;
        }

        while (v4 != v7);
        v4 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v4);
    }

    v30 = *(a1 + 32);
    v31 = *(v30 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__ATMPStoreAssetLink_open__block_invoke_11;
    block[3] = &unk_2784E5960;
    block[4] = v30;
    v42 = v37;
    v32 = v37;
    dispatch_async(v31, block);
  }
}

void __26__ATMPStoreAssetLink_open__block_invoke_11(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  [v4 assetLink:v2 didOpenWithPendingAssets:v3];
}

- (ATMPStoreAssetLink)init
{
  v19.receiver = self;
  v19.super_class = ATMPStoreAssetLink;
  v2 = [(ATMPStoreAssetLink *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ATMPStoreAssetLink", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("ATMPStoreAssetLink - callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v7 = getMPMediaQueryClass_softClass;
    v28 = getMPMediaQueryClass_softClass;
    if (!getMPMediaQueryClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getMPMediaQueryClass_block_invoke;
      v23 = &unk_2784E5B40;
      v24 = &v25;
      __getMPMediaQueryClass_block_invoke(&v20);
      v7 = v26[3];
    }

    v8 = v7;
    _Block_object_dispose(&v25, 8);
    [v7 setFilteringDisabled:1];
    v9 = [getMPMediaLibraryClass() defaultMediaLibrary];
    [v9 setCloudFilteringType:1];

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v10 = getMPStoreDownloadManagerClass_softClass;
    v28 = getMPStoreDownloadManagerClass_softClass;
    if (!getMPStoreDownloadManagerClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getMPStoreDownloadManagerClass_block_invoke;
      v23 = &unk_2784E5B40;
      v24 = &v25;
      __getMPStoreDownloadManagerClass_block_invoke(&v20);
      v10 = v26[3];
    }

    v11 = v10;
    _Block_object_dispose(&v25, 8);
    v12 = [v10 sharedManager];
    downloadManager = v2->_downloadManager;
    v2->_downloadManager = v12;

    [(MPStoreDownloadManager *)v2->_downloadManager addObserver:v2 forDownloads:0];
    v14 = objc_opt_new();
    assetMap = v2->_assetMap;
    v2->_assetMap = v14;

    v16 = objc_opt_new();
    downloadsMap = v2->_downloadsMap;
    v2->_downloadsMap = v16;
  }

  return v2;
}

@end