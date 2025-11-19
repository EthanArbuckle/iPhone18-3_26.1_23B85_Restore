@interface MPLibraryKeepLocalStatusObserver
- (BOOL)_updateActiveDownloadsAllowingDownloadRemoval:(BOOL)a3;
- (MPLibraryActiveKeepLocalStatus)_calculateCurrentStatus;
- (MPLibraryActiveKeepLocalStatus)currentStatus;
- (MPLibraryKeepLocalStatusObserver)init;
- (NSString)description;
- (id)_descriptionForStatusType:(int64_t)a3;
- (void)_handleDownloadStateChanged:(id)a3;
- (void)_transientStateDidChangeNotification:(id)a3;
- (void)_updateCurrentStatus;
- (void)dealloc;
- (void)downloadManager:(id)a3 didEnqueueAssetDownloads:(id)a4 didRemoveAssetDownloads:(id)a5;
- (void)setConfiguration:(id)a3;
@end

@implementation MPLibraryKeepLocalStatusObserver

- (MPLibraryActiveKeepLocalStatus)currentStatus
{
  downloadProgress = self->_currentStatus.downloadProgress;
  statusType = self->_currentStatus.statusType;
  result.downloadProgress = downloadProgress;
  result.statusType = statusType;
  return result;
}

- (id)_descriptionForStatusType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E767A8C8[a3 - 1];
  }
}

- (void)_updateCurrentStatus
{
  v3 = [(MPLibraryKeepLocalStatusObserver *)self _calculateCurrentStatus];
  if (self->_currentStatus.statusType != v3 || vabdd_f64(self->_currentStatus.downloadProgress, v4) > 0.00000011920929)
  {
    self->_currentStatus.statusType = v3;
    self->_currentStatus.downloadProgress = v4;
    statusBlock = self->_statusBlock;
    if (statusBlock)
    {
      v6 = *(statusBlock + 2);

      v6();
    }
  }
}

- (BOOL)_updateActiveDownloadsAllowingDownloadRemoval:(BOOL)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  objc_opt_class();
  v29 = a3;
  if (objc_opt_isKindOfClass())
  {
    v7 = [(MPLibraryKeepLocalStatusObserverConfiguration *)self->_configuration pendingItemIdentifiers];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = self->_configuration;
      if ((-[MPLibraryKeepLocalStatusObserverConfiguration isCollectionType](v8, "isCollectionType") & 1) != 0 || (-[MPLibraryKeepLocalStatusObserverConfiguration identifyingModelObject](v8, "identifyingModelObject"), v9 = objc_claimAutoreleasedReturnValue(), [v9 identifiers], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
      {
        v7 = 0;
      }

      else
      {
        v36[0] = v10;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v30 = 0;
        v17 = +[MPMediaDownloadManager sharedManager];
        v18 = [v17 downloadForIdentifierSet:v16 downloadState:&v30];
        v19 = v18;
        if (v18)
        {
          if (v30 > 1)
          {
            if (v30 == 2)
            {
              [(NSSet *)v6 addObject:v18];
              self->_downloadPausedReason = [v19 downloadPausedReason];
            }
          }

          else if (([v18 downloadReason] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            [(NSSet *)v5 addObject:v19];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  if (!v29)
  {
    v20 = [(NSSet *)v5 count];
    activeDownloads = self->_activeDownloads;
    if (v20)
    {
      if ([(NSSet *)activeDownloads count])
      {
        [(NSSet *)v5 unionSet:self->_activeDownloads];
      }
    }

    else
    {
      v22 = [(NSSet *)activeDownloads mutableCopy];

      v5 = v22;
    }
  }

  v23 = self->_activeDownloads;
  if (v23 == v5 || [(NSSet *)v23 isEqualToSet:v5])
  {
    v24 = 0;
  }

  else
  {
    objc_storeStrong(&self->_activeDownloads, v5);
    v24 = 1;
  }

  pausedDownloads = self->_pausedDownloads;
  p_pausedDownloads = &self->_pausedDownloads;
  v25 = pausedDownloads;
  if (pausedDownloads != v6 && ![(NSSet *)v25 isEqualToSet:v6])
  {
    objc_storeStrong(p_pausedDownloads, v6);
    v24 = 1;
  }

  return v24;
}

- (MPLibraryActiveKeepLocalStatus)_calculateCurrentStatus
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = self->_activeDownloads;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v28 + 1) + 8 * i) downloadProgress];
        v7 = v7 + v9;
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [(MPLibraryKeepLocalStatusObserverConfiguration *)self->_configuration identifyingModelObject];
  if (v10)
  {
    v11 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
    v12 = [v11 transientKeepLocalStateForModelObject:v10];
  }

  else
  {
    v12 = 0;
  }

  v13 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    *buf = 138543874;
    v33 = self;
    v34 = 2048;
    v35 = v12;
    v36 = 2114;
    v37 = configuration;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Calculating current state with transient state %ld and configuration: %{public}@", buf, 0x20u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = 0;
      goto LABEL_52;
    }

    v15 = self->_configuration;
    if ([(MPLibraryKeepLocalStatusObserverConfiguration *)v15 hasNonPurgeableAsset])
    {
      goto LABEL_25;
    }

    if ([(MPLibraryKeepLocalStatusObserverConfiguration *)v15 isCollectionType])
    {
      v20 = [(MPLibraryKeepLocalStatusObserverConfiguration *)v15 managedStatus];
      if (v20)
      {
        if (v20 != 1)
        {
          if (v20 != 2)
          {
            goto LABEL_43;
          }

          goto LABEL_25;
        }

LABEL_42:
        v16 = 3;
        goto LABEL_51;
      }
    }

    else
    {
      if ([(NSSet *)self->_activeDownloads count])
      {
        self->_downloadProgress = v7;
        goto LABEL_42;
      }

      if ([(NSSet *)self->_pausedDownloads count])
      {
        self->_downloadProgress = 0.0;
        v16 = 6;
        goto LABEL_51;
      }

      v22 = [(MPLibraryKeepLocalStatusObserverConfiguration *)v15 managedStatus];
      if (v22 <= 5 && ((1 << v22) & 0x32) != 0)
      {
        v16 = 2;
        goto LABEL_51;
      }
    }

    v16 = [(MPLibraryKeepLocalStatusObserverConfiguration *)v15 isStoreRedownloadable];
    goto LABEL_51;
  }

  v15 = self->_configuration;
  v16 = [(MPLibraryKeepLocalStatusObserverConfiguration *)v15 redownloadableItemCount];
  v17 = [(MPLibraryKeepLocalStatusObserverConfiguration *)v15 nonPurgeableItemCount];
  v18 = [(MPLibraryKeepLocalStatusObserverConfiguration *)v15 downloadEnabledItemCount];
  if (!v16)
  {
    self->_downloadProgress = 0.0;
    goto LABEL_51;
  }

  if (v17 < v16)
  {
    if (v16 > v18)
    {
      if (![(NSSet *)self->_activeDownloads count])
      {
        v16 = 1;
        goto LABEL_51;
      }

      v19 = (v7 + v17) / v16;
      if (v19 > 1.0)
      {
        v19 = 1.0;
      }

      self->_downloadProgress = fmax(v19, 0.0);
      goto LABEL_42;
    }

    if (v18 >= 1)
    {
      v21 = (v7 + v17) / v18;
      if (v21 > 1.0)
      {
        v21 = 1.0;
      }

      self->_downloadProgress = fmax(v21, 0.0);
      if (![(NSSet *)self->_activeDownloads count])
      {
        if (self->_downloadProgress <= 0.00000011920929)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }

        goto LABEL_51;
      }

      goto LABEL_42;
    }

LABEL_43:
    v16 = 0;
    goto LABEL_51;
  }

LABEL_25:
  self->_downloadProgress = 1.0;
  v16 = 4;
LABEL_51:

LABEL_52:
  if (v12 == 3)
  {
    if (v16 == 2)
    {
      v16 = 1;
    }
  }

  else if (v12 == 1 && v16 == 1)
  {
    v16 = 2;
  }

  v23 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(MPLibraryKeepLocalStatusObserver *)self _descriptionForStatusType:v16];
    *buf = 138543874;
    v33 = self;
    v34 = 2048;
    v35 = v16;
    v36 = 2114;
    v37 = v24;
    _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning keep-local status %ld (%{public}@)", buf, 0x20u);
  }

  downloadProgress = self->_downloadProgress;
  v26 = v16;
  v27 = downloadProgress;
  result.downloadProgress = v27;
  result.statusType = v26;
  return result;
}

- (void)_handleDownloadStateChanged:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __64__MPLibraryKeepLocalStatusObserver__handleDownloadStateChanged___block_invoke;
    v9 = &unk_1E76823C0;
    v10 = self;
    v11 = v4;
    v5 = _Block_copy(&v6);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v5[2](v5);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v5);
    }
  }
}

void __64__MPLibraryKeepLocalStatusObserver__handleDownloadStateChanged___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _updateActiveDownloadsAllowingDownloadRemoval:0] & 1) != 0 || (v2 = *(*(a1 + 32) + 8), objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(a1 + 40)), v3 = objc_claimAutoreleasedReturnValue(), LODWORD(v2) = objc_msgSend(v2, "intersectsSet:", v3), v3, v2))
  {
    v4 = *(a1 + 32);

    [v4 _updateCurrentStatus];
  }
}

- (void)_transientStateDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MPLibraryKeepLocalStatusObserver__transientStateDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setConfiguration:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating configuration: %{public}@", &v11, 0x16u);
  }

  p_configuration = &self->_configuration;
  configuration = self->_configuration;
  if (configuration != v5 && ![(MPLibraryKeepLocalStatusObserverConfiguration *)configuration isEqual:v5])
  {
    v9 = *p_configuration;
    objc_storeStrong(&self->_configuration, a3);
    if (!*p_configuration || v9)
    {
      if (*p_configuration || !v9)
      {
        goto LABEL_12;
      }

      v10 = +[MPMediaDownloadManager sharedManager];
      [v10 unregisterObserver:self];
    }

    else
    {
      v10 = +[MPMediaDownloadManager sharedManager];
      [v10 registerObserver:self];
    }

LABEL_12:
    [(MPLibraryKeepLocalStatusObserver *)self _updateActiveDownloadsAllowingDownloadRemoval:1];
    [(MPLibraryKeepLocalStatusObserver *)self _updateCurrentStatus];
  }
}

- (void)downloadManager:(id)a3 didEnqueueAssetDownloads:(id)a4 didRemoveAssetDownloads:(id)a5
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__MPLibraryKeepLocalStatusObserver_downloadManager_didEnqueueAssetDownloads_didRemoveAssetDownloads___block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5[2](v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __101__MPLibraryKeepLocalStatusObserver_downloadManager_didEnqueueAssetDownloads_didRemoveAssetDownloads___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateActiveDownloadsAllowingDownloadRemoval:0];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateCurrentStatus];
  }

  return result;
}

- (NSString)description
{
  v3 = [(MPLibraryKeepLocalStatusObserverConfiguration *)self->_configuration identifyingModelObject];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 identifiers];
  v8 = [v7 library];
  v9 = [v4 stringWithFormat:@"<%@ %p: [%@ %lld]>", v5, self, v6, objc_msgSend(v8, "persistentID")];

  return v9;
}

- (void)dealloc
{
  if (self->_configuration)
  {
    v3 = +[MPMediaDownloadManager sharedManager];
    [v3 unregisterObserver:self];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  [v4 removeObserver:self name:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:v5];

  v6.receiver = self;
  v6.super_class = MPLibraryKeepLocalStatusObserver;
  [(MPLibraryKeepLocalStatusObserver *)&v6 dealloc];
}

- (MPLibraryKeepLocalStatusObserver)init
{
  v6.receiver = self;
  v6.super_class = MPLibraryKeepLocalStatusObserver;
  v2 = [(MPLibraryKeepLocalStatusObserver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
    [v3 addObserver:v2 selector:sel__transientStateDidChangeNotification_ name:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:v4];
  }

  return v2;
}

@end