@interface ATDownloadProgressManager
+ (id)sharedInstance;
- (ATDownloadProgressManager)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)assetLinkController:(id)controller didChangeDownloadStateForAssets:(id)assets;
- (void)assetLinkController:(id)controller didEnqueueAsset:(id)asset;
- (void)assetLinkController:(id)controller didProcessFinishedAsset:(id)asset;
- (void)assetLinkController:(id)controller didUpdateAsset:(id)asset;
- (void)getAllDownloadsWithReplyBlock:(id)block;
- (void)prioritizeDownloadWithStoreForLibraryIdentifier:(int64_t)identifier withReplyBlock:(id)block;
- (void)start;
- (void)stop;
@end

@implementation ATDownloadProgressManager

- (void)prioritizeDownloadWithStoreForLibraryIdentifier:(int64_t)identifier withReplyBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_DEFAULT, "got request to prioritize download with library identifier:%lld", &buf, 0xCu);
  }

  v7 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1140;
  v17 = __Block_byref_object_dispose__1141;
  v18 = 0;
  v8 = +[ATAssetLinkController sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__ATDownloadProgressManager_prioritizeDownloadWithStoreForLibraryIdentifier_withReplyBlock___block_invoke;
  v11[3] = &unk_2784E9148;
  p_buf = &buf;
  v9 = v7;
  v12 = v9;
  [v8 prioritizeAssetWithStoreForLibraryIdentifier:identifier withCompletion:v11];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (blockCopy)
  {
    blockCopy[2](blockCopy, *(*(&buf + 1) + 40));
  }

  _Block_object_dispose(&buf, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __92__ATDownloadProgressManager_prioritizeDownloadWithStoreForLibraryIdentifier_withReplyBlock___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)getAllDownloadsWithReplyBlock:(id)block
{
  v11 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "got request to get all downloads", v10, 2u);
  }

  if (blockCopy)
  {
    v5 = +[ATAssetLinkController sharedInstance];
    allAssets = [v5 allAssets];

    v7 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [allAssets count];
      v10[0] = 67109120;
      v10[1] = v8;
      _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "total number of downloads in ATC queue (%d)", v10, 8u);
    }

    blockCopy[2](blockCopy, allAssets, 0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assetLinkController:(id)controller didChangeDownloadStateForAssets:(id)assets
{
  v5 = MEMORY[0x277CBEA60];
  assetsCopy = assets;
  v7 = [[v5 alloc] initWithArray:assetsCopy copyItems:1];

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__ATDownloadProgressManager_assetLinkController_didChangeDownloadStateForAssets___block_invoke;
  v10[3] = &unk_2784E9608;
  v11 = v7;
  selfCopy = self;
  v9 = v7;
  dispatch_sync(queue, v10);
}

void __81__ATDownloadProgressManager_assetLinkController_didChangeDownloadStateForAssets___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v34;
    v23 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        if ([v9 assetParts])
        {
          if (v6 > 199)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v10 = *(*(v24 + 40) + 24);
            v11 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v30;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v30 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = [*(*(&v29 + 1) + 8 * j) remoteObjectProxyWithErrorHandler:&__block_literal_global_82];
                  [v15 atcDidUpdateDownloadStateForAssets:v2];
                }

                v12 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
              }

              while (v12);
            }

            [v2 removeAllObjects];
            v6 = 0;
            v3 = v23;
          }

          else
          {
            ++v6;
            [v2 addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = *(*(v24 + 40) + 24);
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v25 + 1) + 8 * k) remoteObjectProxyWithErrorHandler:&__block_literal_global_85];
          [v21 atcDidUpdateDownloadStateForAssets:v2];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v18);
    }

    [v2 removeAllObjects];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __81__ATDownloadProgressManager_assetLinkController_didChangeDownloadStateForAssets___block_invoke_83(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "failed to obtain remote proxy. err=%{public}@. could not send atcDidUpdateDownloadStateForAsset", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __81__ATDownloadProgressManager_assetLinkController_didChangeDownloadStateForAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "failed to obtain remote proxy. err=%{public}@. could not send atcDidUpdateDownloadStateForAsset", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)assetLinkController:(id)controller didProcessFinishedAsset:(id)asset
{
  v5 = [asset copy];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ATDownloadProgressManager_assetLinkController_didProcessFinishedAsset___block_invoke;
  v8[3] = &unk_2784E9608;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __73__ATDownloadProgressManager_assetLinkController_didProcessFinishedAsset___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) assetParts])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(*(a1 + 40) + 24);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(&v12 + 1) + 8 * i) remoteObjectProxyWithErrorHandler:{&__block_literal_global_78, v12}];
          v8 = *(a1 + 32);
          v9 = [v8 error];
          v10 = [v9 msv_errorByRemovingUnsafeUserInfo];
          [v7 atcDidDownloadAsset:v8 withError:v10];
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __73__ATDownloadProgressManager_assetLinkController_didProcessFinishedAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "failed to obtain remote proxy. err=%{public}@. could not send atcDidDownloadAsset", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)assetLinkController:(id)controller didUpdateAsset:(id)asset
{
  v5 = [asset copy];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ATDownloadProgressManager_assetLinkController_didUpdateAsset___block_invoke;
  v8[3] = &unk_2784E9608;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __64__ATDownloadProgressManager_assetLinkController_didUpdateAsset___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) assetParts])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(*(a1 + 40) + 24);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(&v10 + 1) + 8 * i) remoteObjectProxyWithErrorHandler:{&__block_literal_global_76, v10}];
          v8 = *(a1 + 32);
          [v8 downloadProgress];
          [v7 atcDidUpdateAsset:v8 withProgress:?];
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __64__ATDownloadProgressManager_assetLinkController_didUpdateAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "failed to obtain remote proxy. err=%{public}@. could not send atcDidUpdateAsset", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)assetLinkController:(id)controller didEnqueueAsset:(id)asset
{
  v5 = [asset copy];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ATDownloadProgressManager_assetLinkController_didEnqueueAsset___block_invoke;
  v8[3] = &unk_2784E9608;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __65__ATDownloadProgressManager_assetLinkController_didEnqueueAsset___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) assetParts])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(*(a1 + 40) + 24);
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

          v7 = [*(*(&v9 + 1) + 8 * v6) remoteObjectProxyWithErrorHandler:{&__block_literal_global_74, v9}];
          [v7 atcDidEnqueueAsset:*(a1 + 32)];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __65__ATDownloadProgressManager_assetLinkController_didEnqueueAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "error sending did enqueue asset notification. failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v9 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v29 = 1024;
    v30 = processIdentifier;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ got connection from pid %i", buf, 0x12u);
  }

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283702D98];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_atcDidEnqueueAsset_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v12 forSelector:sel_atcDidDownloadAsset_withError_ argumentIndex:0 ofReply:0];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_atcDidUpdateAsset_withProgress_ argumentIndex:0 ofReply:0];

  v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v14 forSelector:sel_atcDidUpdateDownloadStateForAssets_ argumentIndex:0 ofReply:0];

  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FDC80];
  [connectionCopy setExportedInterface:v15];

  [connectionCopy setRemoteObjectInterface:v10];
  [connectionCopy setExportedObject:self];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ATDownloadProgressManager_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_2784E9608;
  block[4] = self;
  v17 = connectionCopy;
  v26 = v17;
  dispatch_sync(queue, block);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__ATDownloadProgressManager_listener_shouldAcceptNewConnection___block_invoke_2;
  v23[3] = &unk_2784E9328;
  v23[4] = self;
  v24 = processIdentifier;
  [v17 setInterruptionHandler:v23];
  objc_initWeak(buf, v17);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__ATDownloadProgressManager_listener_shouldAcceptNewConnection___block_invoke_70;
  v20[3] = &unk_2784E93E8;
  v20[4] = self;
  v22 = processIdentifier;
  objc_copyWeak(&v21, buf);
  [v17 setInvalidationHandler:v20];
  [v17 resume];
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

void __64__ATDownloadProgressManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection interrupted from pid: %i", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __64__ATDownloadProgressManager_listener_shouldAcceptNewConnection___block_invoke_70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ATDownloadProgressManager_listener_shouldAcceptNewConnection___block_invoke_2_71;
  block[3] = &unk_2784E93E8;
  block[4] = v1;
  v5 = *(a1 + 48);
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_sync(v2, block);
  objc_destroyWeak(&v4);
}

void __64__ATDownloadProgressManager_listener_shouldAcceptNewConnection___block_invoke_2_71(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v8 = 138543618;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection invalidated from pid: %i", &v8, 0x12u);
  }

  v5 = *(*(a1 + 32) + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v5 removeObject:WeakRetained];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping", &v7, 0xCu);
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    [(NSXPCListener *)self->_listener setDelegate:0];
  }

  v5 = +[ATAssetLinkController sharedInstance];
  [v5 removeObserver:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", &v9, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CCAE98]);
  v5 = [v4 initWithMachServiceName:*MEMORY[0x277CEA3E8]];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v7 = +[ATAssetLinkController sharedInstance];
  [v7 addObserver:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (ATDownloadProgressManager)init
{
  v10.receiver = self;
  v10.super_class = ATDownloadProgressManager;
  v2 = [(ATDownloadProgressManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    downloadObservers = v2->_downloadObservers;
    v2->_downloadObservers = v7;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1175 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1175, &__block_literal_global_1176);
  }

  v3 = __sharedInstance_1177;

  return v3;
}

uint64_t __43__ATDownloadProgressManager_sharedInstance__block_invoke()
{
  __sharedInstance_1177 = objc_alloc_init(ATDownloadProgressManager);

  return MEMORY[0x2821F96F8]();
}

@end