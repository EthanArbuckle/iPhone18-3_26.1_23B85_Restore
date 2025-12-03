@interface MPMediaDownloadManager
+ (MPMediaDownloadManager)sharedManager;
- (BOOL)_hasRequiredAirTrafficEntitlement;
- (BOOL)_isValidMediaAsset:(id)asset;
- (BOOL)hasActiveDownloads;
- (MPMediaDownloadManager)init;
- (NSArray)allMediaDownloadLibraryIdentifiers;
- (id)_downloadProgressConnection;
- (id)_init;
- (id)_keepLocalTaskConnection;
- (id)_statusChangeObservers;
- (id)_updateCacheAndGetItemToReportForATAssetDownloadPauseReasonChange:(id)change;
- (id)_updateCacheAndGetMediaDownloadToReportForStoreDownloadProgress:(id)progress;
- (id)_updateCacheAndItemToReportForATAssetDownloadProgressChange:(id)change;
- (id)activeDownloadForMediaItemPersistentID:(int64_t)d;
- (id)activeDownloadForStoreID:(int64_t)d;
- (id)downloadForIdentifierSet:(id)set downloadState:(int64_t *)state;
- (int64_t)activeDownloadsCount;
- (void)_notifyObserversOfAssetDownloadProgress:(id)progress;
- (void)_notifyObserversOfDownloadCompleteForAssets:(id)assets withError:(id)error;
- (void)_notifyObserversOfDownloadPauseReasonChangedForAssets:(id)assets;
- (void)_prefectchAllATDownloads;
- (void)atcDidDownloadAsset:(id)asset withError:(id)error;
- (void)atcDidEnqueueAsset:(id)asset;
- (void)atcDidUpdateAsset:(id)asset withProgress:(float)progress;
- (void)atcDidUpdateDownloadStateForAssets:(id)assets;
- (void)atcWillEnqueueDownloads:(id)downloads cancelDownloads:(id)cancelDownloads;
- (void)cancelDownloads:(id)downloads;
- (void)dealloc;
- (void)downloadLibraryWithCompletionHandler:(id)handler;
- (void)downloadManager:(id)manager didAddDownloads:(id)downloads removeDownloads:(id)removeDownloads;
- (void)downloadManager:(id)manager downloadDidFinish:(id)finish;
- (void)downloadManager:(id)manager downloadDidProgress:(id)progress;
- (void)downloadManager:(id)manager downloadsDidProgress:(id)progress;
- (void)enqueueAssetForDownload:(int64_t)download withCompletionHandler:(id)handler;
- (void)prioritizeDownload:(int64_t)download;
- (void)registerObserver:(id)observer;
- (void)sendKeepLocalStatusChanged:(int64_t)changed forLibraryIdentifier:(int64_t)identifier entityType:(int64_t)type withCompletionHandler:(id)handler;
- (void)unregisterObserver:(id)observer;
@end

@implementation MPMediaDownloadManager

- (id)_downloadProgressConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MPMediaDownloadManager__downloadProgressConnection__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(xpcConnectionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__MPMediaDownloadManager__downloadProgressConnection__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 96) == 1)
  {
    v3 = *(v1 + 40);
    if (!v3)
    {
      v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        getATMachDownloadObserverServiceName();
        *buf = 138543362;
        v24 = v5;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Connecting to %{public}@ ", buf, 0xCu);
      }

      v6 = objc_alloc(MEMORY[0x1E696B0B8]);
      getATMachDownloadObserverServiceName();
      v8 = [v6 initWithMachServiceName:v7 options:0];
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15AA108];
      v12 = MEMORY[0x1E695DFD8];
      v13 = objc_opt_class();
      getATAssetClass();
      v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
      [v11 setClasses:v14 forSelector:sel_getAllDownloadsWithReplyBlock_ argumentIndex:0 ofReply:1];

      v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      [v11 setClasses:v15 forSelector:sel_getAllDownloadsWithReplyBlock_ argumentIndex:1 ofReply:1];

      v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F150C7E0];
      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_opt_class();
      getATAssetClass();
      v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
      [v16 setClasses:v19 forSelector:sel_atcDidUpdateDownloadStateForAssets_ argumentIndex:0 ofReply:0];

      [*(*(a1 + 32) + 40) setRemoteObjectInterface:v11];
      [*(*(a1 + 32) + 40) setExportedInterface:v16];
      [*(*(a1 + 32) + 40) setExportedObject:?];
      objc_initWeak(buf, *(a1 + 32));
      [*(*(a1 + 32) + 40) setInterruptionHandler:&__block_literal_global_172];
      v20 = *(*(a1 + 32) + 40);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __53__MPMediaDownloadManager__downloadProgressConnection__block_invoke_173;
      v21[3] = &unk_1E76825E8;
      objc_copyWeak(&v22, buf);
      [v20 setInvalidationHandler:v21];
      [*(*(a1 + 32) + 40) resume];
      [*(a1 + 32) _prefectchAllATDownloads];
      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);

      v3 = *(*(a1 + 32) + 40);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }
}

void __53__MPMediaDownloadManager__downloadProgressConnection__block_invoke_173(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    getATMachDownloadObserverServiceName();
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %{public}@ invalidated", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    *(WeakRetained + 5) = 0;
  }
}

void __53__MPMediaDownloadManager__downloadProgressConnection__block_invoke_170()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    getATMachDownloadObserverServiceName();
    v2 = 138543362;
    v3 = v1;
    _os_log_impl(&dword_1A238D000, v0, OS_LOG_TYPE_DEFAULT, "Connection to %{public}@ interrupted", &v2, 0xCu);
  }
}

- (id)_keepLocalTaskConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MPMediaDownloadManager__keepLocalTaskConnection__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(xpcConnectionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__MPMediaDownloadManager__keepLocalTaskConnection__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 96) == 1 && !*(v2 + 48))
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Download");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      getATMachKeepLocalRequestHandlerServiceName();
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Connecting to %{public}@ ", buf, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x1E69B14F0]);
    getATMachKeepLocalRequestHandlerServiceName();
    v7 = [v5 initWithMachServiceName:v6 options:0];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    [*(*(a1 + 32) + 48) setExportedObject:?];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15AA048];
    [*(*(a1 + 32) + 48) setRemoteObjectInterface:v10];
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15AA0A8];
    [*(*(a1 + 32) + 48) setExportedInterface:v11];
    objc_initWeak(buf, *(a1 + 32));
    [*(*(a1 + 32) + 48) setInterruptionHandler:&__block_literal_global_149];
    v12 = *(*(a1 + 32) + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__MPMediaDownloadManager__keepLocalTaskConnection__block_invoke_150;
    v13[3] = &unk_1E76825E8;
    objc_copyWeak(&v14, buf);
    [v12 setInvalidationHandler:v13];
    [*(*(a1 + 32) + 48) resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);

    v2 = *(a1 + 32);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v2 + 48));
}

void __50__MPMediaDownloadManager__keepLocalTaskConnection__block_invoke_150(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    getATMachKeepLocalRequestHandlerServiceName();
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "Connection to %{public}@ invalidated", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 6);
    *(WeakRetained + 6) = 0;
  }
}

void __50__MPMediaDownloadManager__keepLocalTaskConnection__block_invoke_147()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    getATMachKeepLocalRequestHandlerServiceName();
    v2 = 138543362;
    v3 = v1;
    _os_log_impl(&dword_1A238D000, v0, OS_LOG_TYPE_ERROR, "Connection to %{public}@ interrupted", &v2, 0xCu);
  }
}

- (void)_prefectchAllATDownloads
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _downloadProgressConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_78];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke_79;
  v4[3] = &unk_1E7675160;
  v4[4] = *(a1 + 32);
  [v3 getAllDownloadsWithReplyBlock:v4];
}

void __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke_2_80;
  block[3] = &unk_1E76800A0;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke_2_80(id *a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [a1[4] msv_description];
      *buf = 138543362;
      v59 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "finished getting downloads in ATC pipeline error=%{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "finished getting downloads in ATC pipeline", buf, 2u);
  }

  v42 = [MEMORY[0x1E695DF70] array];
  v6 = [*(a1[5] + 7) userDownloads];
  v7 = [MEMORY[0x1E695DFA8] set];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v64 count:16];
  v10 = 0x1E696A000uLL;
  if (v9)
  {
    v11 = v9;
    v12 = *v55;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v54 + 1) + 8 * i), "libraryItemIdentifier")}];
        [v7 addObject:v14];
      }

      v11 = [v8 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v11);
  }

  v41 = v8;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = *(a1[5] + 1);
  v16 = [v15 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v50 + 1) + 8 * j);
        if (([v7 containsObject:v20] & 1) == 0)
        {
          [*(a1[5] + 2) removeObjectForKey:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v17);
  }

  [*(a1[5] + 1) removeAllObjects];
  [*(a1[5] + 3) removeAllObjects];
  [*(a1[5] + 4) removeAllObjects];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = a1[6];
  v21 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v47;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v46 + 1) + 8 * k);
        if ([a1[5] _isValidMediaAsset:v25])
        {
          v26 = [v25 identifier];
          v27 = [v26 longLongValue];

          v28 = v10;
          v29 = [*(v10 + 3480) numberWithLongLong:v27];
          [*(a1[5] + 1) addObject:v29];
          v30 = [[MPMediaDownload alloc] initWithATAsset:v25];
          [v42 addObject:v30];
          [v25 downloadProgress];
          if (v31 <= 0.0 || ([*(a1[5] + 2) objectForKey:v29], v32 = objc_claimAutoreleasedReturnValue(), v32, v32))
          {
            v10 = v28;
            if ([v25 downloadPauseReason])
            {
              v33 = 32;
              goto LABEL_33;
            }
          }

          else
          {
            v33 = 16;
            v10 = v28;
LABEL_33:
            [*(a1[5] + v33) setObject:v30 forKey:v29];
          }

          continue;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v22);
  }

  v34 = a1[5];
  v35 = *(v34 + 10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke_82;
  block[3] = &unk_1E76823C0;
  block[4] = v34;
  v36 = v42;
  v45 = v36;
  dispatch_async(v35, block);
  v37 = os_log_create("com.apple.amp.mediaplayer", "Download_Oversize");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = a1[5];
    v39 = *(v38 + 1);
    v40 = [*(v38 + 4) allValues];
    *buf = 138543618;
    v59 = v39;
    v60 = 2114;
    v61 = v40;
    _os_log_impl(&dword_1A238D000, v37, OS_LOG_TYPE_DEFAULT, "ATC's download pipeline: active=%{public}@, paused=%{public}@", buf, 0x16u);
  }
}

void __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke_82(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _statusChangeObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 downloadManager:*(a1 + 32) didEnqueueAssetDownloads:*(a1 + 40) didRemoveAssetDownloads:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __50__MPMediaDownloadManager__prefectchAllATDownloads__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "error %{public}@ connecting to remote object to get downloads in ATC queue", &v4, 0xCu);
  }
}

- (id)_statusChangeObservers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MPMediaDownloadManager__statusChangeObservers__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__MPMediaDownloadManager__statusChangeObservers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_isValidMediaAsset:(id)asset
{
  assetCopy = asset;
  v4 = assetCopy;
  if (!assetCopy)
  {
    goto LABEL_4;
  }

  identifier = [assetCopy identifier];
  if (![identifier longLongValue])
  {
    goto LABEL_10;
  }

  downloadOnly = [v4 downloadOnly];

  if ((downloadOnly & 1) == 0)
  {
    identifier = [v4 assetType];
    if (([identifier isEqualToString:@"Movie"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"Music") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"TVEpisode") & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"MusicVideo"))
    {
      v7 = 1;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

LABEL_4:
  v7 = 0;
LABEL_12:

  return v7;
}

- (void)_notifyObserversOfDownloadPauseReasonChangedForAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    calloutQueue = self->_calloutQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__MPMediaDownloadManager__notifyObserversOfDownloadPauseReasonChangedForAssets___block_invoke;
    v6[3] = &unk_1E76823C0;
    v6[4] = self;
    v7 = assetsCopy;
    dispatch_async(calloutQueue, v6);
  }
}

void __80__MPMediaDownloadManager__notifyObserversOfDownloadPauseReasonChangedForAssets___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _statusChangeObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 downloadManager:*(a1 + 32) didChangeDownloadPausedReasonForAssets:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfDownloadCompleteForAssets:(id)assets withError:(id)error
{
  assetsCopy = assets;
  errorCopy = error;
  if ([assetsCopy count])
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__MPMediaDownloadManager__notifyObserversOfDownloadCompleteForAssets_withError___block_invoke;
    block[3] = &unk_1E76800A0;
    block[4] = self;
    v10 = assetsCopy;
    v11 = errorCopy;
    dispatch_async(calloutQueue, block);
  }
}

void __80__MPMediaDownloadManager__notifyObserversOfDownloadCompleteForAssets_withError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _statusChangeObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 downloadManager:*(a1 + 32) didFinishAsset:*(a1 + 40) withError:*(a1 + 48)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfAssetDownloadProgress:(id)progress
{
  progressCopy = progress;
  if ([progressCopy count])
  {
    calloutQueue = self->_calloutQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__MPMediaDownloadManager__notifyObserversOfAssetDownloadProgress___block_invoke;
    v6[3] = &unk_1E76823C0;
    v6[4] = self;
    v7 = progressCopy;
    dispatch_async(calloutQueue, v6);
  }
}

void __66__MPMediaDownloadManager__notifyObserversOfAssetDownloadProgress___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _statusChangeObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 downloadManager:*(a1 + 32) didUpdateDownloadProgress:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)_hasRequiredAirTrafficEntitlement
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    error = 0;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.atc.private", &error);
    v5 = error;
    if (!v4 || error)
    {
      v7 = 0;
      LODWORD(v8) = 0;
      if (!v4)
      {
        if (!error)
        {
LABEL_12:
          CFRelease(v3);
          v11 = os_log_create("com.apple.amp.mediaplayer", "Download");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
            bundleIdentifier = [mainBundle bundleIdentifier];
            v14 = bundleIdentifier;
            v15 = "cannot";
            if (v8)
            {
              v15 = "can";
            }

            *buf = 138412546;
            v19 = bundleIdentifier;
            v20 = 2080;
            v21 = v15;
            _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s connect to atc", buf, 0x16u);
          }

          return v8;
        }

LABEL_11:
        CFRelease(v5);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = CFGetTypeID(v4);
      v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    }

    CFRelease(v4);
    v5 = error;
    LODWORD(v8) = v7;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    *buf = 138412290;
    v19 = bundleIdentifier2;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%@ cannot connect to atc [unable to create SecTask]", buf, 0xCu);
  }

  LOBYTE(v8) = 0;
  return v8;
}

- (id)_updateCacheAndGetMediaDownloadToReportForStoreDownloadProgress:(id)progress
{
  progressCopy = progress;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(progressCopy, "libraryItemIdentifier")}];
  v6 = [(NSMutableDictionary *)self->_cachedProgressMap objectForKey:v5];
  [progressCopy percentComplete];
  if (v6)
  {
    v8 = v7;
    [(MPMediaDownload *)v6 downloadProgress];
    if (vabdd_f64(v8, v9) <= 0.000001)
    {

      v6 = 0;
    }

    else
    {
      [(MPMediaDownload *)v6 setDownloadProgress:v8];
    }
  }

  else
  {
    v6 = [[MPMediaDownload alloc] initWithMPStoreDownload:progressCopy];
    if (v6)
    {
      [(NSMutableDictionary *)self->_cachedProgressMap setObject:v6 forKey:v5];
    }
  }

  return v6;
}

- (id)_updateCacheAndGetItemToReportForATAssetDownloadPauseReasonChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = MEMORY[0x1E696AD98];
  identifier = [changeCopy identifier];
  v7 = [v5 numberWithLongLong:{objc_msgSend(identifier, "longLongValue")}];

  v8 = [(NSMutableDictionary *)self->_cachedATPausedDownloads objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    downloadPausedReason = [(MPMediaDownload *)v8 downloadPausedReason];
    v11 = [MPMediaDownload MPMediaDownloadPauseReasonForATAsset:changeCopy];
    if (downloadPausedReason == v11)
    {
      v12 = downloadPausedReason;
    }

    else
    {
      v12 = v11;
      [(MPMediaDownload *)v9 setDownloadPausedReason:v11];
      if (![(MPMediaDownload *)v9 downloadPausedReason])
      {
        [(NSMutableDictionary *)self->_cachedATPausedDownloads removeObjectForKey:v7];
      }
    }
  }

  else
  {
    v12 = [MPMediaDownload MPMediaDownloadPauseReasonForATAsset:changeCopy];
    v9 = [[MPMediaDownload alloc] initWithATAsset:changeCopy];
    if ([(MPMediaDownload *)v9 downloadPausedReason])
    {
      [(NSMutableDictionary *)self->_cachedATPausedDownloads setObject:v9 forKey:v7];
    }

    LODWORD(downloadPausedReason) = 0;
  }

  v13 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = "updated";
    v16 = 136315906;
    if (!v9)
    {
      v14 = "not updated";
    }

    v17 = v14;
    v18 = 2114;
    v19 = changeCopy;
    v20 = 1024;
    v21 = downloadPausedReason;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEBUG, "%s cache handling state change for %{public}@ - download pause reason (existing:%d, current:%d)", &v16, 0x22u);
  }

  return v9;
}

- (id)_updateCacheAndItemToReportForATAssetDownloadProgressChange:(id)change
{
  changeCopy = change;
  v5 = MEMORY[0x1E696AD98];
  identifier = [changeCopy identifier];
  v7 = [v5 numberWithLongLong:{objc_msgSend(identifier, "longLongValue")}];

  v8 = [(NSMutableDictionary *)self->_cachedProgressMap objectForKey:v7];
  [changeCopy downloadProgress];
  if (!v8)
  {
    v8 = [[MPMediaDownload alloc] initWithATAsset:changeCopy];
    if (!v8)
    {
      goto LABEL_8;
    }

    [(NSMutableDictionary *)self->_cachedProgressMap setObject:v8 forKey:v7];
    goto LABEL_6;
  }

  v10 = v9;
  [(MPMediaDownload *)v8 downloadProgress];
  if (vabdd_f64(v10, v11) > 0.000001)
  {
    [(MPMediaDownload *)v8 setDownloadProgress:v10];
LABEL_6:
    [(NSMutableDictionary *)self->_cachedATPausedDownloads removeObjectForKey:v7];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)atcWillEnqueueDownloads:(id)downloads cancelDownloads:(id)cancelDownloads
{
  downloadsCopy = downloads;
  cancelDownloadsCopy = cancelDownloads;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MPMediaDownloadManager_atcWillEnqueueDownloads_cancelDownloads___block_invoke;
  block[3] = &unk_1E76800A0;
  v12 = downloadsCopy;
  selfCopy = self;
  v14 = cancelDownloadsCopy;
  v9 = cancelDownloadsCopy;
  v10 = downloadsCopy;
  dispatch_async(queue, block);
}

void __66__MPMediaDownloadManager_atcWillEnqueueDownloads_cancelDownloads___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 24) addObject:*(*(&v16 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(a1 + 40) + 24) removeObject:{*(*(&v12 + 1) + 8 * v11++), v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)atcDidUpdateDownloadStateForAssets:(id)assets
{
  assetsCopy = assets;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  array = [MEMORY[0x1E695DF70] array];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MPMediaDownloadManager_atcDidUpdateDownloadStateForAssets___block_invoke;
  block[3] = &unk_1E7681330;
  v6 = assetsCopy;
  v8 = v6;
  selfCopy = self;
  v10 = &v11;
  dispatch_async(queue, block);
  [(MPMediaDownloadManager *)self _notifyObserversOfDownloadPauseReasonChangedForAssets:v12[5]];

  _Block_object_dispose(&v11, 8);
}

void __61__MPMediaDownloadManager_atcDidUpdateDownloadStateForAssets___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Download_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v21 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "atcDidUpdateDownloadStateForAssets=%{public}@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 40) _isValidMediaAsset:{v9, v15}])
        {
          v10 = *(*(a1 + 40) + 8);
          v11 = MEMORY[0x1E696AD98];
          v12 = [v9 identifier];
          v13 = [v11 numberWithLongLong:{objc_msgSend(v12, "longLongValue")}];
          [v10 addObject:v13];

          v14 = [*(a1 + 40) _updateCacheAndGetItemToReportForATAssetDownloadPauseReasonChange:v9];
          if (v14)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)atcDidUpdateAsset:(id)asset withProgress:(float)progress
{
  assetCopy = asset;
  if ([(MPMediaDownloadManager *)self _isValidMediaAsset:assetCopy])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__MPMediaDownloadManager_atcDidUpdateAsset_withProgress___block_invoke;
    v7[3] = &unk_1E76823C0;
    v7[4] = self;
    v8 = assetCopy;
    dispatch_async(queue, v7);
  }
}

void __57__MPMediaDownloadManager_atcDidUpdateAsset_withProgress___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v2 = [*(a1 + 32) _updateCacheAndItemToReportForATAssetDownloadProgressChange:*(a1 + 40)];
  if (v2)
  {
    [v3 addObject:v2];
  }

  [*(a1 + 32) _notifyObserversOfAssetDownloadProgress:v3];
}

- (void)atcDidDownloadAsset:(id)asset withError:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  if ([(MPMediaDownloadManager *)self _isValidMediaAsset:assetCopy])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MPMediaDownloadManager_atcDidDownloadAsset_withError___block_invoke;
    block[3] = &unk_1E76800A0;
    v10 = assetCopy;
    selfCopy = self;
    v12 = errorCopy;
    dispatch_async(queue, block);
  }
}

void __56__MPMediaDownloadManager_atcDidDownloadAsset_withError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) identifier];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v6 = [*(*(a1 + 40) + 8) containsObject:v4];
  v7 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "atc finished %{public}@ with error %{public}@", &v11, 0x16u);
  }

  v10 = [*(*(a1 + 40) + 16) objectForKey:v4];
  if (((v10 == 0) & v6) == 1)
  {
    v10 = [[MPMediaDownload alloc] initWithATAsset:*(a1 + 32)];
  }

  if (v10)
  {
    [v5 addObject:v10];
  }

  [*(*(a1 + 40) + 16) removeObjectForKey:v4];
  [*(*(a1 + 40) + 8) removeObject:v4];
  [*(*(a1 + 40) + 32) removeObjectForKey:v4];
  [*(a1 + 40) _notifyObserversOfDownloadCompleteForAssets:v5 withError:*(a1 + 48)];
}

- (void)atcDidEnqueueAsset:(id)asset
{
  assetCopy = asset;
  if ([(MPMediaDownloadManager *)self _isValidMediaAsset:assetCopy])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__MPMediaDownloadManager_atcDidEnqueueAsset___block_invoke;
    v6[3] = &unk_1E76823C0;
    v7 = assetCopy;
    selfCopy = self;
    dispatch_async(queue, v6);
  }
}

void __45__MPMediaDownloadManager_atcDidEnqueueAsset___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) identifier];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  [*(*(a1 + 40) + 8) addObject:v4];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v6 = [[MPMediaDownload alloc] initWithATAsset:*(a1 + 32)];
  [v5 addObject:v6];
  if ([v5 count])
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Download");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "atc enqueued %{public}@ for download", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 80);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__MPMediaDownloadManager_atcDidEnqueueAsset___block_invoke_50;
    v11[3] = &unk_1E76823C0;
    v11[4] = v9;
    v12 = v5;
    dispatch_async(v10, v11);
  }
}

void __45__MPMediaDownloadManager_atcDidEnqueueAsset___block_invoke_50(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _statusChangeObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 downloadManager:*(a1 + 32) didEnqueueAssetDownloads:*(a1 + 40) didRemoveAssetDownloads:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)downloadManager:(id)manager downloadDidFinish:(id)finish
{
  finishCopy = finish;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MPMediaDownloadManager_downloadManager_downloadDidFinish___block_invoke;
  v8[3] = &unk_1E76823C0;
  v9 = finishCopy;
  selfCopy = self;
  v7 = finishCopy;
  dispatch_async(queue, v8);
}

void __60__MPMediaDownloadManager_downloadManager_downloadDidFinish___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "libraryItemIdentifier")}];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v4 = [*(a1 + 32) failureError];

  v5 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v7 failureError];
      v9 = [v8 msv_description];
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "store download finished %{public}@ error=%{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "store download finished %{public}@", &v14, 0xCu);
  }

  v11 = [*(*(a1 + 40) + 16) objectForKey:v2];
  if (v11)
  {
    [v3 addObject:v11];
    [*(*(a1 + 40) + 16) removeObjectForKey:v2];
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) failureError];
  [v12 _notifyObserversOfDownloadCompleteForAssets:v3 withError:v13];
}

- (void)downloadManager:(id)manager downloadsDidProgress:(id)progress
{
  progressCopy = progress;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MPMediaDownloadManager_downloadManager_downloadsDidProgress___block_invoke;
  v8[3] = &unk_1E76823C0;
  v9 = progressCopy;
  selfCopy = self;
  v7 = progressCopy;
  dispatch_async(queue, v8);
}

void __63__MPMediaDownloadManager_downloadManager_downloadsDidProgress___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) _updateCacheAndGetMediaDownloadToReportForStoreDownloadProgress:{*(*(&v9 + 1) + 8 * v7), v9}];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) _notifyObserversOfAssetDownloadProgress:v2];
}

- (void)downloadManager:(id)manager downloadDidProgress:(id)progress
{
  progressCopy = progress;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__MPMediaDownloadManager_downloadManager_downloadDidProgress___block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(queue, v8);
}

void __62__MPMediaDownloadManager_downloadManager_downloadDidProgress___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DF70] array];
  v2 = [*(a1 + 32) _updateCacheAndGetMediaDownloadToReportForStoreDownloadProgress:*(a1 + 40)];
  if (v2)
  {
    [v3 addObject:v2];
  }

  [*(a1 + 32) _notifyObserversOfAssetDownloadProgress:v3];
}

- (void)downloadManager:(id)manager didAddDownloads:(id)downloads removeDownloads:(id)removeDownloads
{
  downloadsCopy = downloads;
  removeDownloadsCopy = removeDownloads;
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MPMediaDownloadManager_downloadManager_didAddDownloads_removeDownloads___block_invoke;
  block[3] = &unk_1E76800A0;
  v13 = downloadsCopy;
  v14 = removeDownloadsCopy;
  selfCopy = self;
  v10 = removeDownloadsCopy;
  v11 = downloadsCopy;
  dispatch_async(calloutQueue, block);
}

void __74__MPMediaDownloadManager_downloadManager_didAddDownloads_removeDownloads___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MPMediaDownload MPMediaDownloadsFromMPStoreDownloads:*(a1 + 32)];
  v3 = [MPMediaDownload MPMediaDownloadsFromMPStoreDownloads:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 48) _statusChangeObservers];
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
        if (objc_opt_respondsToSelector())
        {
          [v9 downloadManager:*(a1 + 48) didEnqueueAssetDownloads:v2 didRemoveAssetDownloads:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)downloadLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__MPMediaDownloadManager_downloadLibraryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __63__MPMediaDownloadManager_downloadLibraryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _keepLocalTaskConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__MPMediaDownloadManager_downloadLibraryWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E76816D0;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MPMediaDownloadManager_downloadLibraryWithCompletionHandler___block_invoke_46;
  v4[3] = &unk_1E76816D0;
  v5 = *(a1 + 40);
  [v3 downloadLibraryWithCompletionBlock:v4];
}

void __63__MPMediaDownloadManager_downloadLibraryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "error %{public}@ initiating a keep local session to download music library", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __63__MPMediaDownloadManager_downloadLibraryWithCompletionHandler___block_invoke_46(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      v8 = 138543618;
      v9 = v3;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "initiated a keep local session to download library with error %{public}@ error=%{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "initiated a keep local session to download library with error %{public}@", &v8, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (id)downloadForIdentifierSet:(id)set downloadState:(int64_t *)state
{
  setCopy = set;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  if (state)
  {
    *state = 0;
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__MPMediaDownloadManager_downloadForIdentifierSet_downloadState___block_invoke;
  v11[3] = &unk_1E7681680;
  v12 = setCopy;
  selfCopy = self;
  v14 = &v16;
  stateCopy = state;
  v8 = setCopy;
  dispatch_sync(queue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __65__MPMediaDownloadManager_downloadForIdentifierSet_downloadState___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) library];
  v3 = [v2 persistentID];

  if (!v3)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      return;
    }

    goto LABEL_33;
  }

  v4 = *(*(a1 + 40) + 16);
  v5 = 0x1E696A000uLL;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v3];
  v7 = [v4 objectForKey:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_33;
  }

  v10 = [*(a1 + 32) universalStore];
  v11 = [v10 adamID];

  v12 = [*(a1 + 32) universalStore];
  v13 = [v12 subscriptionAdamID];

  if (v11 | v13)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [*(*(a1 + 40) + 16) allValues];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v33;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          if (v11 && [*(*(&v32 + 1) + 8 * i) storeItemID] == v11)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v20);
            goto LABEL_27;
          }

          if (!v17 && v13)
          {
            if ([v20 storeItemID] == v13)
            {
              v17 = v20;
            }

            else
            {
              v17 = 0;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_27:

    v28 = *(*(a1 + 48) + 8);
    v30 = *(v28 + 40);
    v29 = (v28 + 40);
    if (v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = v17 == 0;
    }

    if (!v31)
    {
      objc_storeStrong(v29, v17);
    }

    v5 = 0x1E696A000;
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
LABEL_33:
    v26 = *(a1 + 56);
    if (!v26)
    {
      return;
    }

    v27 = 1;
    goto LABEL_35;
  }

LABEL_22:
  v21 = *(*(a1 + 40) + 32);
  v22 = [*(v5 + 3480) numberWithLongLong:v3];
  v23 = [v21 objectForKey:v22];
  v24 = *(*(a1 + 48) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v26 = *(a1 + 56);
    if (v26)
    {
      v27 = 2;
LABEL_35:
      *v26 = v27;
    }
  }
}

- (id)activeDownloadForStoreID:(int64_t)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MPMediaDownloadManager_activeDownloadForStoreID___block_invoke;
  block[3] = &unk_1E76814A0;
  block[5] = &v7;
  block[6] = d;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__MPMediaDownloadManager_activeDownloadForStoreID___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1[4] + 16) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 storeItemID] == a1[6])
        {
          objc_storeStrong((*(a1[5] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)activeDownloadForMediaItemPersistentID:(int64_t)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MPMediaDownloadManager_activeDownloadForMediaItemPersistentID___block_invoke;
  block[3] = &unk_1E76814A0;
  block[4] = self;
  block[5] = &v7;
  block[6] = d;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__MPMediaDownloadManager_activeDownloadForMediaItemPersistentID___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v3 = [v2 objectForKey:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)sendKeepLocalStatusChanged:(int64_t)changed forLibraryIdentifier:(int64_t)identifier entityType:(int64_t)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__MPMediaDownloadManager_sendKeepLocalStatusChanged_forLibraryIdentifier_entityType_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7675138;
  identifierCopy = identifier;
  typeCopy = type;
  changedCopy = changed;
  block[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  dispatch_async(queue, block);
}

void __107__MPMediaDownloadManager_sendKeepLocalStatusChanged_forLibraryIdentifier_entityType_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _keepLocalTaskConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__MPMediaDownloadManager_sendKeepLocalStatusChanged_forLibraryIdentifier_entityType_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7675110;
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v13 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__MPMediaDownloadManager_sendKeepLocalStatusChanged_forLibraryIdentifier_entityType_withCompletionHandler___block_invoke_45;
  v7[3] = &unk_1E7675110;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v8 = *(a1 + 40);
  [v3 handleKeepLocalStatusChanged:v4 forLibraryIdentifier:v6 entityType:v5 withCompletionBlock:v7];
}

void __107__MPMediaDownloadManager_sendKeepLocalStatusChanged_forLibraryIdentifier_entityType_withCompletionHandler___block_invoke_2(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v9 = 138544130;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "error %{public}@ initiating a keep local session for libraryIdentifier %lld, mediaType:%d, keep local status:%d", &v9, 0x22u);
  }

  v8 = a1[4];
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void __107__MPMediaDownloadManager_sendKeepLocalStatusChanged_forLibraryIdentifier_entityType_withCompletionHandler___block_invoke_45(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[7];
      v9 = [v3 msv_description];
      v14 = 134218754;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "initiated a keep local session for libraryIdentifier %llu mediaType:%d new keep local status:%d error=%{public}@", &v14, 0x22u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    v14 = 134218496;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    v18 = 1024;
    v19 = v12;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "initiated a keep local session for libraryIdentifier %llu mediaType:%d new keep local status:%d", &v14, 0x18u);
  }

  v13 = a1[4];
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

- (void)enqueueAssetForDownload:(int64_t)download withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7681358;
  v10 = handlerCopy;
  downloadCopy = download;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _keepLocalTaskConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7680808;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = *(a1 + 48);
  v12[4] = v4;
  v13 = v3;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_2_43;
  v9[3] = &unk_1E7680808;
  v8 = *(a1 + 32);
  v11 = v7;
  v9[4] = v8;
  v10 = v6;
  [v5 enqueueAssetForDownload:v7 withCompletionBlock:v9];
}

void __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 48);
    *buf = 138543618;
    v13 = v3;
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "error %{public}@ enqueuing download persistent id:%lld with atc", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 80);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_42;
  v9[3] = &unk_1E76824C8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_2_43(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v7 = [v3 msv_description];
      *buf = 134218242;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "finished enqueuing download persistent id: %lld with atc error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "finished enqueuing download persistent id: %lld with atc", buf, 0xCu);
  }

  v9 = *(*(a1 + 32) + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_44;
  v12[3] = &unk_1E76824C8;
  v10 = *(a1 + 40);
  v13 = v3;
  v14 = v10;
  v11 = v3;
  dispatch_async(v9, v12);
}

uint64_t __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_44(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t __72__MPMediaDownloadManager_enqueueAssetForDownload_withCompletionHandler___block_invoke_42(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)prioritizeDownload:(int64_t)download
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MPMediaDownloadManager_prioritizeDownload___block_invoke;
  v4[3] = &unk_1E7682398;
  v4[4] = self;
  v4[5] = download;
  dispatch_async(queue, v4);
}

void __45__MPMediaDownloadManager_prioritizeDownload___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 134217984;
    v24 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "prioritizing download with persistentId:%lld", buf, 0xCu);
  }

  [*(*(a1 + 32) + 56) userDownloads];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 libraryItemIdentifier] == *(a1 + 40))
        {
          v21 = v9;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
          [*(*(a1 + 32) + 56) resumeDownloads:v13];
          [*(*(a1 + 32) + 56) prioritizeDownloads:v13];
          v14 = os_log_create("com.apple.amp.mediaplayer", "Download");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 40);
            *buf = 134217984;
            v24 = v15;
            _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "prioritized download with identifier %llu with the store", buf, 0xCu);
          }

          v12 = v4;
          goto LABEL_17;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 134217984;
    v24 = v11;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "identifier %llu not found in the store queue", buf, 0xCu);
  }

  v12 = [*(a1 + 32) _downloadProgressConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__MPMediaDownloadManager_prioritizeDownload___block_invoke_40;
  v16[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v16[4] = *(a1 + 40);
  v13 = [v12 remoteObjectProxyWithErrorHandler:v16];
  [v13 prioritizeDownloadWithStoreForLibraryIdentifier:MEMORY[0x1E69E9820] withReplyBlock:{3221225472, __45__MPMediaDownloadManager_prioritizeDownload___block_invoke_41, &__block_descriptor_40_e17_v16__0__NSError_8l, *(a1 + 40)}];
LABEL_17:
}

void __45__MPMediaDownloadManager_prioritizeDownload___block_invoke_40(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "error %{public}@ prioritizing download identifier %llu with atc", &v6, 0x16u);
  }
}

void __45__MPMediaDownloadManager_prioritizeDownload___block_invoke_41(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      v9 = 134218242;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "prioritized download for identifier %llu with atc error=%{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "prioritized download for identifier %llu with atc", &v9, 0xCu);
  }
}

- (BOOL)hasActiveDownloads
{
  userDownloads = [(MPStoreDownloadManager *)self->_storeDownloadManager userDownloads];
  if ([userDownloads count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NSMutableOrderedSet *)self->_cachedATDownloads count]!= 0;
  }

  return v4;
}

- (int64_t)activeDownloadsCount
{
  userDownloads = [(MPStoreDownloadManager *)self->_storeDownloadManager userDownloads];
  v4 = [userDownloads count];
  v5 = [(NSMutableOrderedSet *)self->_cachedATDownloads count];

  return v5 + v4;
}

- (NSArray)allMediaDownloadLibraryIdentifiers
{
  v27 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  userDownloads = [(MPStoreDownloadManager *)self->_storeDownloadManager userDownloads];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [userDownloads countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(userDownloads);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (([v9 isCanceled] & 1) == 0)
        {
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "libraryItemIdentifier")}];
          [orderedSet addObject:v10];
        }
      }

      v6 = [userDownloads countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  queue = self->_queue;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__MPMediaDownloadManager_allMediaDownloadLibraryIdentifiers__block_invoke;
  v19 = &unk_1E76823C0;
  selfCopy = self;
  v21 = orderedSet;
  v12 = orderedSet;
  dispatch_sync(queue, &v16);
  v13 = [(MPMediaDownloadManager *)self _downloadProgressConnection:v16];
  array = [v12 array];

  return array;
}

void __60__MPMediaDownloadManager_allMediaDownloadLibraryIdentifiers__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 8);
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

        [*(a1 + 40) addObject:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)cancelDownloads:(id)downloads
{
  downloadsCopy = downloads;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MPMediaDownloadManager_cancelDownloads___block_invoke;
  v7[3] = &unk_1E76823C0;
  v8 = downloadsCopy;
  selfCopy = self;
  v6 = downloadsCopy;
  dispatch_async(queue, v7);
}

void __42__MPMediaDownloadManager_cancelDownloads___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  v3 = *(a1 + 32);
  v4 = [v3 valueForKey:@"longLongValue"];
  v5 = [v2 dictionaryWithObjects:v3 forKeys:v4];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  [*(*(a1 + 40) + 56) downloads];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v7 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v51;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "libraryItemIdentifier")}];
        v13 = [v5 objectForKey:v12];

        if (v13)
        {
          [v6 setObject:v11 forKey:v12];
          [v5 removeObjectForKey:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v8);
  }

  v14 = MEMORY[0x1E695DFA0];
  v15 = [v5 allKeys];
  v16 = [v14 orderedSetWithArray:v15];

  v17 = [v6 allKeys];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v47;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v46 + 1) + 8 * j);
        if ([*(*(a1 + 40) + 8) containsObject:v22])
        {
          [v16 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v19);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v23 = *(*(a1 + 40) + 24);
  v24 = [v23 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v16 addObject:*(*(&v42 + 1) + 8 * k)];
      }

      v25 = [v23 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v25);
  }

  v28 = +[MPMediaLibrary deviceMediaLibrary];
  v54[0] = @"keepLocal";
  v54[1] = @"keepLocalStatus";
  v54[2] = @"keepLocalStatusReason";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v30 = [v16 array];
  [v28 setValues:&unk_1F1509D48 forProperties:v29 forItemPersistentIDs:v30];

  v31 = [*(a1 + 40) _keepLocalTaskConnection];
  v32 = [v31 remoteObjectProxyWithErrorHandler:&__block_literal_global_27];
  [v32 cancelDownloadsForMediaTypes:&unk_1F1509D60];

  v33 = *(*(a1 + 40) + 56);
  v34 = [v6 allValues];
  [v33 cancelDownloads:v34];

  [*(*(a1 + 40) + 8) removeAllObjects];
  [*(*(a1 + 40) + 24) removeAllObjects];
  [*(*(a1 + 40) + 16) removeAllObjects];
  [*(*(a1 + 40) + 32) removeAllObjects];
  v35 = *(a1 + 40);
  v36 = *(v35 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MPMediaDownloadManager_cancelDownloads___block_invoke_36;
  block[3] = &unk_1E76823C0;
  v40 = obj;
  v41 = v35;
  v37 = obj;
  dispatch_async(v36, block);
}

void __42__MPMediaDownloadManager_cancelDownloads___block_invoke_36(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MPMediaDownload MPMediaDownloadsFromMPStoreDownloads:*(a1 + 32)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 40) _statusChangeObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 downloadManager:*(a1 + 40) didCancelAssets:v2];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __42__MPMediaDownloadManager_cancelDownloads___block_invoke_24(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "error %{public}@ cancelling downloads with ATC", &v4, 0xCu);
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MPMediaDownloadManager_unregisterObserver___block_invoke;
  v7[3] = &unk_1E76823C0;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __45__MPMediaDownloadManager_unregisterObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(*(result + 40) + 64) removeObject:?];
  }

  return result;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MPMediaDownloadManager_registerObserver___block_invoke;
  v7[3] = &unk_1E76823C0;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __43__MPMediaDownloadManager_registerObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = [*(*(result + 40) + 64) containsObject:?];
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
      v3 = *(*(v1 + 40) + 64);

      return [v3 addObject:v2];
    }
  }

  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->__downloadProgressConnection invalidate];
  [(NSXPCConnection *)self->__keepLocalTaskConnection invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  getATStartupCompleteNotification();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
  v5.receiver = self;
  v5.super_class = MPMediaDownloadManager;
  [(MPMediaDownloadManager *)&v5 dealloc];
}

- (id)_init
{
  v27.receiver = self;
  v27.super_class = MPMediaDownloadManager;
  v2 = [(MPMediaDownloadManager *)&v27 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedProgressMap = v2->_cachedProgressMap;
    v2->_cachedProgressMap = dictionary;

    v5 = dispatch_queue_create("com.apple.mediaplayer.mediadownloadmanager.queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_create("com.apple.mediaplayer.mediadownloadmanager.callout", MEMORY[0x1E69E96A8]);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v7;

    v9 = dispatch_queue_create("com.apple.mediaplayer.mediadownloadmanager.xpcconnections", 0);
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
    downloadObservers = v2->_downloadObservers;
    v2->_downloadObservers = v11;

    v13 = +[MPStoreDownloadManager sharedManager];
    storeDownloadManager = v2->_storeDownloadManager;
    v2->_storeDownloadManager = v13;

    [(MPStoreDownloadManager *)v2->_storeDownloadManager addObserver:v2 forDownloads:0];
    _hasRequiredAirTrafficEntitlement = [(MPMediaDownloadManager *)v2 _hasRequiredAirTrafficEntitlement];
    v2->_hasRequiredAirTrafficEntitlement = _hasRequiredAirTrafficEntitlement;
    if (_hasRequiredAirTrafficEntitlement)
    {
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      cachedATDownloads = v2->_cachedATDownloads;
      v2->_cachedATDownloads = orderedSet;

      orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
      cachedATUnEnqueuedDownloads = v2->_cachedATUnEnqueuedDownloads;
      v2->_cachedATUnEnqueuedDownloads = orderedSet2;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      cachedATPausedDownloads = v2->_cachedATPausedDownloads;
      v2->_cachedATPausedDownloads = dictionary2;

      _keepLocalTaskConnection = [(MPMediaDownloadManager *)v2 _keepLocalTaskConnection];
      _downloadProgressConnection = [(MPMediaDownloadManager *)v2 _downloadProgressConnection];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      getATStartupCompleteNotification();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleATCStartupCompletedNotification, v25, 0, CFNotificationSuspensionBehaviorDrop);
    }
  }

  return v2;
}

- (MPMediaDownloadManager)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-init is not supported, use +sharedInstance"}];

  return 0;
}

+ (MPMediaDownloadManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global);
  }

  v3 = sharedManager__sharedManager;

  return v3;
}

void __39__MPMediaDownloadManager_sharedManager__block_invoke()
{
  v0 = [[MPMediaDownloadManager alloc] _init];
  v1 = sharedManager__sharedManager;
  sharedManager__sharedManager = v0;
}

@end