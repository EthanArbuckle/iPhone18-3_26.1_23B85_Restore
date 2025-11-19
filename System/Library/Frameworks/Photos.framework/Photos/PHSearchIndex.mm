@interface PHSearchIndex
+ (BOOL)_ensureSearchIndexIsReadyToBeQueriedForPhotoLibrary:(id)a3;
- (BOOL)isCheckingIfTheSearchIndexIsReady;
- (PHSearchIndex)init;
- (PHSearchIndex)initWithPhotoLibrary:(id)a3;
- (PLSearchIndexSceneTaxonomyProvider)sceneTaxonomyProvider;
- (PSIDatabase)_psiSearchIndex;
- (PSIDatabase)psiSearchIndex;
- (PSIDatabase)unverifiedPsiSearchIndex;
- (void)_openQueryConnectionToSearchIndexForPhotoLibrary:(id)a3 completion:(id)a4;
- (void)_spotlightIndexStateForLibraryWithCompletionHandler:(id)a3;
- (void)acquireSpotlightSandboxExtensionIfNeeded;
- (void)dealloc;
- (void)preWarmSearchIndexSynchronously:(BOOL)a3 completion:(id)a4;
- (void)setIsCheckingIfTheSearchIndexIsReady:(BOOL)a3;
- (void)set_psiSearchIndex:(id)a3;
- (void)startIndexingAndMonitoringSearchIndexStatus;
- (void)stopIndexingAndMonitoringSearchIndexStatus;
- (void)validateSpotlightIndexForLibraryExistsWithCompletionHandler:(id)a3;
@end

@implementation PHSearchIndex

- (PSIDatabase)unverifiedPsiSearchIndex
{
  v3 = [(PHSearchIndex *)self _psiSearchIndex];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    unverifiedPsiSearchIndex = v6->_unverifiedPsiSearchIndex;
    if (!unverifiedPsiSearchIndex)
    {
      v8 = objc_alloc(MEMORY[0x1E69BE8A0]);
      v9 = [(PHSearchIndex *)v6 photoLibrary];
      v10 = [v9 pathManager];
      v11 = [v8 initWithPathManager:v10 options:1];
      v12 = v6->_unverifiedPsiSearchIndex;
      v6->_unverifiedPsiSearchIndex = v11;

      unverifiedPsiSearchIndex = v6->_unverifiedPsiSearchIndex;
    }

    v5 = unverifiedPsiSearchIndex;
    objc_sync_exit(v6);
  }

  return v5;
}

- (PSIDatabase)_psiSearchIndex
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->__psiSearchIndex;
  objc_sync_exit(v2);

  return v3;
}

- (void)_spotlightIndexStateForLibraryWithCompletionHandler:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self->_photoLibrary wellKnownPhotoLibraryIdentifier];
  v6 = [MEMORY[0x1E69BE810] domainIdentifierForPhotoLibraryIdentifier:v5];
  if ([MEMORY[0x1E69BE810] shouldUseSpotlightPrivateIndexForLibraryIdentifier:v5])
  {
    [(PHSearchIndex *)self acquireSpotlightSandboxExtensionIfNeeded];
    v7 = [(PHPhotoLibrary *)self->_photoLibrary pathManager];
    v8 = [v7 spotlightSearchIndexPath];

    v9 = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "Retrieving Spotlight Private Index at path: %@", buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x1E6964E38]) initWithName:v6 protectionClass:0 path:v8];
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v18 = *MEMORY[0x1E696A278];
    v19 = @"Unable to open Spotlight Index";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [v13 errorWithDomain:v14 code:46502 userInfo:v15];

    v4[2](v4, 0, v12);
    goto LABEL_8;
  }

  v10 = [objc_alloc(MEMORY[0x1E6964E78]) initWithName:v6];
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = [MEMORY[0x1E69BE810] photosBundleIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PHSearchIndex__spotlightIndexStateForLibraryWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E75A60B0;
  v17 = v4;
  [v10 fetchLastClientStateWithProtectionClass:0 forBundleID:v11 clientStateName:v6 options:32 completionHandler:v16];

  v12 = v17;
LABEL_8:
}

- (void)validateSpotlightIndexForLibraryExistsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__PHSearchIndex_validateSpotlightIndexForLibraryExistsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E75A60B0;
  v7 = v4;
  v5 = v4;
  [(PHSearchIndex *)self _spotlightIndexStateForLibraryWithCompletionHandler:v6];
}

- (void)dealloc
{
  [(PHSearchIndex *)self set_psiSearchIndex:0];
  [(PHSearchIndex *)self setUnverifiedPsiSearchIndex:0];
  if ([MEMORY[0x1E69BE810] spotlightPrivateIndexEnabled])
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __24__PHSearchIndex_dealloc__block_invoke;
    v7 = &unk_1E75AB270;
    v8 = self;
    PLRunWithUnfairLock();
  }

  v3.receiver = self;
  v3.super_class = PHSearchIndex;
  [(PHSearchIndex *)&v3 dealloc];
}

void __24__PHSearchIndex_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (void)acquireSpotlightSandboxExtensionIfNeeded
{
  if ([MEMORY[0x1E69BE810] spotlightPrivateIndexEnabled])
  {
    PLRunWithUnfairLock();
  }
}

void __57__PHSearchIndex_acquireSpotlightSandboxExtensionIfNeeded__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v3 = objc_alloc(MEMORY[0x1E69BE7B8]);
    v7 = [*(*(a1 + 32) + 40) pathManager];
    v4 = [v3 initWithPathManager:v7];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }
}

- (void)stopIndexingAndMonitoringSearchIndexStatus
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PHSearchIndex *)self photoLibrary];
  v4 = [v3 photoLibrary];
  v5 = [v4 assetsdClient];
  v6 = [v5 libraryInternalClient];

  [v6 pauseSearchIndexingWithCompletionHandler:&__block_literal_global_54];
  v7 = [(PHSearchIndex *)self searchIndexStatusTimer];
  v8 = PLSearchUIQueryGetLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_INFO, "Photos Search Index Manager: Will stop monitoring the search indexing status", &v11, 2u);
    }

    [v7 invalidate];
    [(PHSearchIndex *)self setSearchIndexStatusTimer:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PHSearchIndex *)self _psiSearchIndex];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Photos Search Index Manager: Requested to stop monitoring indexing status for a search index that is not being monitored %@", &v11, 0xCu);
    }
  }
}

- (void)startIndexingAndMonitoringSearchIndexStatus
{
  v3 = [(PHSearchIndex *)self photoLibrary];
  v4 = [v3 photoLibrary];
  v5 = [v4 assetsdClient];
  v6 = [v5 libraryInternalClient];

  v7 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PHSearchIndex_startIndexingAndMonitoringSearchIndexStatus__block_invoke;
  block[3] = &unk_1E75AB270;
  v8 = v6;
  v18 = v8;
  dispatch_async(v7, block);

  v9 = [(PHSearchIndex *)self searchIndexStatusTimer];

  if (!v9)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E695DFF0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PHSearchIndex_startIndexingAndMonitoringSearchIndexStatus__block_invoke_3;
    v12[3] = &unk_1E75A6088;
    v13 = v8;
    objc_copyWeak(&v15, &location);
    v14 = self;
    v11 = [v10 scheduledTimerWithTimeInterval:1 repeats:v12 block:10.0];
    [(PHSearchIndex *)self setSearchIndexStatusTimer:v11];
    [v11 fire];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __60__PHSearchIndex_startIndexingAndMonitoringSearchIndexStatus__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PHSearchIndex_startIndexingAndMonitoringSearchIndexStatus__block_invoke_4;
  v5[3] = &unk_1E75A6060;
  objc_copyWeak(&v6, (a1 + 48));
  v5[4] = *(a1 + 40);
  [v4 getSearchIndexProgress:v5];
  objc_destroyWeak(&v6);
}

void __60__PHSearchIndex_startIndexingAndMonitoringSearchIndexStatus__block_invoke_4(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PHSearchIndex_startIndexingAndMonitoringSearchIndexStatus__block_invoke_5;
  v8[3] = &unk_1E75A6038;
  v9 = a3;
  v7 = *(a1 + 32);
  v8[4] = WeakRetained;
  v8[5] = v7;
  v8[6] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __60__PHSearchIndex_startIndexingAndMonitoringSearchIndexStatus__block_invoke_5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v6[0] = @"PHSearchIndexIndexingPausedKey";
    v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
    v6[1] = @"PHSearchIndexItemsRemainingKey";
    v7[0] = v2;
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    v7[1] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"PHSearchIndexIndexingStatusDidChangeNotification" object:*(a1 + 40) userInfo:v4];
  }
}

- (void)preWarmSearchIndexSynchronously:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PHSearchIndex *)self _psiSearchIndex];
  if (v7)
  {
    if (v6)
    {
      v6[2](v6, v7);
    }
  }

  else if (v4)
  {
    v8 = objc_opt_class();
    v9 = [(PHSearchIndex *)self photoLibrary];
    LODWORD(v8) = [v8 _ensureSearchIndexIsReadyToBeQueriedForPhotoLibrary:v9];

    if (v8)
    {
      v10 = [(PHSearchIndex *)self unverifiedPsiSearchIndex];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x1E69BE8A0]);
        v16 = [(PHSearchIndex *)self photoLibrary];
        v17 = [v16 pathManager];
        v12 = [v15 initWithPathManager:v17 options:1];
      }

      [(PHSearchIndex *)self set_psiSearchIndex:v12];
      if (v6)
      {
        v6[2](v6, v12);
      }
    }

    else
    {
      v14 = PLSearchUIQueryGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18[0] = 0;
        _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_INFO, "Unable to establish query connection to PSIDatabase", v18, 2u);
      }

      if (v6)
      {
        v6[2](v6, 0);
      }
    }
  }

  else
  {
    v13 = [(PHSearchIndex *)self photoLibrary];
    [(PHSearchIndex *)self _openQueryConnectionToSearchIndexForPhotoLibrary:v13 completion:v6];
  }
}

- (void)_openQueryConnectionToSearchIndexForPhotoLibrary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHSearchIndex *)self _psiSearchIndex];

  if (v8)
  {
    if (v7)
    {
      v9 = [(PHSearchIndex *)self _psiSearchIndex];
      v7[2](v7, v9);
    }
  }

  else if ([(PHSearchIndex *)self isCheckingIfTheSearchIndexIsReady])
  {
    v10 = PLSearchUIQueryGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_INFO, "Already trying to open search index, subsequent request ignored", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    [(PHSearchIndex *)self setIsCheckingIfTheSearchIndexIsReady:1];
    objc_initWeak(buf, self);
    v11 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PHSearchIndex__openQueryConnectionToSearchIndexForPhotoLibrary_completion___block_invoke;
    block[3] = &unk_1E75A9A40;
    objc_copyWeak(&v15, buf);
    v13 = v6;
    v14 = v7;
    dispatch_async(v11, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __77__PHSearchIndex__openQueryConnectionToSearchIndexForPhotoLibrary_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [objc_opt_class() _ensureSearchIndexIsReadyToBeQueriedForPhotoLibrary:*(a1 + 32)];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 unverifiedPsiSearchIndex];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E69BE8A0]);
      v11 = [*(a1 + 32) pathManager];
      v7 = [v10 initWithPathManager:v11 options:1];
    }

    v12 = objc_loadWeakRetained((a1 + 48));
    [v12 set_psiSearchIndex:v7];

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v7);
    }
  }

  else
  {
    v8 = PLSearchUIQueryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Unable to establish query connection to PSIDatabase", v15, 2u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  v14 = objc_loadWeakRetained((a1 + 48));
  [v14 setIsCheckingIfTheSearchIndexIsReady:0];
}

- (PSIDatabase)psiSearchIndex
{
  v3 = [(PHSearchIndex *)self _psiSearchIndex];

  if (!v3)
  {
    v4 = [(PHSearchIndex *)self photoLibrary];
    [(PHSearchIndex *)self _openQueryConnectionToSearchIndexForPhotoLibrary:v4 completion:0];
  }

  return [(PHSearchIndex *)self _psiSearchIndex];
}

- (void)set_psiSearchIndex:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  psiSearchIndex = obj->__psiSearchIndex;
  obj->__psiSearchIndex = v4;

  objc_sync_exit(obj);
}

- (BOOL)isCheckingIfTheSearchIndexIsReady
{
  v2 = self;
  objc_sync_enter(v2);
  isCheckingIfTheSearchIndexIsReady = v2->_isCheckingIfTheSearchIndexIsReady;
  objc_sync_exit(v2);

  return isCheckingIfTheSearchIndexIsReady;
}

- (void)setIsCheckingIfTheSearchIndexIsReady:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isCheckingIfTheSearchIndexIsReady = a3;
  objc_sync_exit(obj);
}

- (PLSearchIndexSceneTaxonomyProvider)sceneTaxonomyProvider
{
  sceneTaxonomyProvider = self->_sceneTaxonomyProvider;
  if (!sceneTaxonomyProvider)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69BE7A0]);
    v5 = self->_sceneTaxonomyProvider;
    self->_sceneTaxonomyProvider = v4;

    sceneTaxonomyProvider = self->_sceneTaxonomyProvider;
  }

  return sceneTaxonomyProvider;
}

- (PHSearchIndex)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHSearchIndex.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PHSearchIndex;
  v7 = [(PHSearchIndex *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    v8->_queryLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (PHSearchIndex)init
{
  v3 = PLSearchUIQueryGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_ERROR, "Init unavailable for PHSearchIndex", v5, 2u);
  }

  return 0;
}

+ (BOOL)_ensureSearchIndexIsReadyToBeQueriedForPhotoLibrary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a3 photoLibrary];
  v4 = [v3 assetsdClient];
  v5 = [v4 libraryInternalClient];

  v15 = 0;
  v6 = [v5 waitForSearchIndexExistenceWithError:&v15];
  v7 = v15;
  v8 = PLSearchUIQueryGetLog();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Search index exists on disk";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 2;
LABEL_6:
      _os_log_impl(&dword_19C86F000, v11, v12, v10, buf, v13);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v7;
    v10 = "Failed to find search index on disk with error: %@.";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 12;
    goto LABEL_6;
  }

  return v6;
}

@end