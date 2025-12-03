@interface AVTStickerChangeObserver
- (AVTPBackendImageHandlingDelegate)imageHandlingDelegate;
- (AVTStickerChangeObserver)initWithStickerBackend:(id)backend environment:(id)environment;
- (void)processChangesForChangeTracker:(id)tracker completionHandler:(id)handler;
@end

@implementation AVTStickerChangeObserver

- (AVTStickerChangeObserver)initWithStickerBackend:(id)backend environment:(id)environment
{
  backendCopy = backend;
  environmentCopy = environment;
  v12.receiver = self;
  v12.super_class = AVTStickerChangeObserver;
  v9 = [(AVTStickerChangeObserver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    objc_storeStrong(&v10->_stickerBackend, backend);
  }

  return v10;
}

- (void)processChangesForChangeTracker:(id)tracker completionHandler:(id)handler
{
  trackerCopy = tracker;
  handlerCopy = handler;
  v8 = self->_environment;
  stickerImageStoreLocation = [(AVTCoreEnvironment *)v8 stickerImageStoreLocation];
  v10 = self->_stickerBackend;
  WeakRetained = objc_loadWeakRetained(&self->_imageHandlingDelegate);
  objc_initWeak(&location, v10);
  objc_initWeak(&from, WeakRetained);
  logger = [(AVTCoreEnvironment *)self->_environment logger];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__AVTStickerChangeObserver_processChangesForChangeTracker_completionHandler___block_invoke;
  v16[3] = &unk_278CFAFF0;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  v13 = trackerCopy;
  v17 = v13;
  v14 = stickerImageStoreLocation;
  v18 = v14;
  v15 = handlerCopy;
  v19 = v15;
  [logger deletingStickerRecentsForRemoteChanges:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __77__AVTStickerChangeObserver_processChangesForChangeTracker_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__AVTStickerChangeObserver_processChangesForChangeTracker_completionHandler___block_invoke_2;
  v11[3] = &unk_278CFAFC8;
  objc_copyWeak(&v12, (a1 + 56));
  objc_copyWeak(&v13, (a1 + 64));
  v4 = MEMORY[0x245CF3540](v11);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = 0;
  v7 = [v5 processChangeTransactionsWithChangeTokenLocation:v6 handler:v4 error:&v10];
  v8 = v10;
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v8);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
}

uint64_t __77__AVTStickerChangeObserver_processChangesForChangeTracker_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v3 avt_map:&__block_literal_global_9];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v5 deleteImagesForAvatarRecordIdentifier:v11 error:0];
        [WeakRetained deleteRecentStickersWithAvatarIdentifier:v11 stickerIdentifier:0 completionHandler:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (AVTPBackendImageHandlingDelegate)imageHandlingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageHandlingDelegate);

  return WeakRetained;
}

@end