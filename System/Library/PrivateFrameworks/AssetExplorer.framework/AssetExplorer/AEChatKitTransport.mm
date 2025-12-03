@interface AEChatKitTransport
- (AEChatKitTransport)init;
- (id)_chatkitPackageForIdentifer:(id)identifer;
- (id)_persistedURLsFromURLs:(id)ls inBaseDirectory:(id)directory outError:(id *)error;
- (id)_preparePackageForCommit:(id)commit inBaseDirectory:(id)directory outError:(id *)error;
- (id)finalizePackage:(id)package error:(id *)error;
- (id)orderedStagedPayloads;
- (id)payloadForIdentifier:(id)identifier;
- (void)_beginStagingWorkForPackage:(id)package;
- (void)_evictPersistedURLs:(id)ls;
- (void)_evictPersistedURLsForPackageIdentifier:(id)identifier evictFiles:(BOOL)files;
- (void)_notifyDelegateOfStagingCompleteForIdentifier:(id)identifier;
- (void)_stagePackage:(id)package initiateStagingWork:(BOOL)work;
- (void)_unstagePackagesWithIdentifiers:(id)identifiers evictFiles:(BOOL)files;
- (void)_updatePrimaryURLsForPackageIdentifier:(id)identifier urls:(id)urls;
- (void)commitPackage:(id)package;
- (void)stagePackages:(id)packages;
- (void)stagePersistedPayloads:(id)payloads;
- (void)unstagePackagesWithIdentifiers:(id)identifiers evictFiles:(BOOL)files;
@end

@implementation AEChatKitTransport

- (id)payloadForIdentifier:(id)identifier
{
  v3 = [(AEChatKitTransport *)self _chatkitPackageForIdentifer:identifier];
  browserItemPayload = [v3 browserItemPayload];

  return browserItemPayload;
}

- (id)orderedStagedPayloads
{
  v24 = *MEMORY[0x277D85DE8];
  orderedStagedIdentifiers = [(AEPackageTransport *)self orderedStagedIdentifiers];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = orderedStagedIdentifiers;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(AEChatKitTransport *)self payloadForIdentifier:v11, v16, v17];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = PLAssetExplorerGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&dword_2411DE000, v13, OS_LOG_TYPE_ERROR, "Failed to generate browser payload for package identifier %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)unstagePackagesWithIdentifiers:(id)identifiers evictFiles:(BOOL)files
{
  filesCopy = files;
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (filesCopy)
  {
    [(AEChatKitTransport *)self _unstagePackagesWithIdentifiers:identifiersCopy evictFiles:1];
  }

  else
  {
    orderedStagedPayloads = [(AEChatKitTransport *)self orderedStagedPayloads];
    [(AEChatKitTransport *)self _unstagePackagesWithIdentifiers:identifiersCopy evictFiles:0];
    v8 = orderedStagedPayloads;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v8);
          }

          userInfo = [*(*(&v17 + 1) + 8 * i) userInfo];
          v15 = [userInfo objectForKey:kAEChatKitPayloadSendSource];

          if (v15)
          {
            ++v11;
            AEChatKitSendAnalyticsEventAssetSentFromSource([v15 integerValue]);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    AEChatKitSendAnalyticsEventAssetsSentCount(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_unstagePackagesWithIdentifiers:(id)identifiers evictFiles:(BOOL)files
{
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = AEChatKitTransport;
  [(AEPackageTransport *)&v14 unstagePackagesWithIdentifiers:identifiersCopy];
  _packagePreparationGroup = [(AEChatKitTransport *)self _packagePreparationGroup];
  _workQueue = [(AEChatKitTransport *)self _workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__AEChatKitTransport__unstagePackagesWithIdentifiers_evictFiles___block_invoke;
  block[3] = &unk_278CC7380;
  v11 = identifiersCopy;
  selfCopy = self;
  filesCopy = files;
  v9 = identifiersCopy;
  dispatch_group_async(_packagePreparationGroup, _workQueue, block);
}

void __65__AEChatKitTransport__unstagePackagesWithIdentifiers_evictFiles___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(a1 + 40) _evictPersistedURLsForPackageIdentifier:*(*(&v8 + 1) + 8 * v6++) evictFiles:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stagePackages:(id)packages
{
  v17 = *MEMORY[0x277D85DE8];
  packagesCopy = packages;
  v15.receiver = self;
  v15.super_class = AEChatKitTransport;
  [(AEPackageTransport *)&v15 stagePackages:packagesCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = packagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AEChatKitTransport *)self _beginStagingWorkForPackage:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stagePackage:(id)package initiateStagingWork:(BOOL)work
{
  workCopy = work;
  packageCopy = package;
  v7.receiver = self;
  v7.super_class = AEChatKitTransport;
  [(AEPackageTransport *)&v7 stagePackage:packageCopy];
  if (workCopy)
  {
    [(AEChatKitTransport *)self _beginStagingWorkForPackage:packageCopy];
  }
}

- (void)commitPackage:(id)package
{
  browserItemPayload = [package browserItemPayload];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__AEChatKitTransport_commitPackage___block_invoke;
  v6[3] = &unk_278CC76A8;
  v6[4] = self;
  v7 = browserItemPayload;
  v5 = browserItemPayload;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __36__AEChatKitTransport_commitPackage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 chatKitTransport:*(a1 + 32) commitPayload:*(a1 + 40)];
}

- (id)finalizePackage:(id)package error:(id *)error
{
  packageCopy = package;
  identifier = [packageCopy identifier];
  lastPathComponent = [identifier lastPathComponent];
  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingPathComponent:lastPathComponent];

  v11 = DCIM_MakeUniqueDirectoryWithPath();
  v12 = [(AEChatKitTransport *)self _preparePackageForCommit:packageCopy inBaseDirectory:v11 outError:error];

  return v12;
}

- (id)_chatkitPackageForIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v5 = [(AEPackageTransport *)self stagedPackageForIdentifier:identiferCopy];
  if (v5)
  {
    _packagePreparationGroup = [(AEChatKitTransport *)self _packagePreparationGroup];
    dispatch_group_wait(_packagePreparationGroup, 0xFFFFFFFFFFFFFFFFLL);

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__987;
    v20 = __Block_byref_object_dispose__988;
    v21 = 0;
    _urlSidetableIsolationQueue = [(AEChatKitTransport *)self _urlSidetableIsolationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__AEChatKitTransport__chatkitPackageForIdentifer___block_invoke;
    block[3] = &unk_278CC7358;
    block[4] = self;
    v15 = &v16;
    v8 = identiferCopy;
    v14 = v8;
    dispatch_sync(_urlSidetableIsolationQueue, block);

    sidecarSnapshot = [v5 sidecarSnapshot];
    v10 = [AEChatKitAssetPackage alloc];
    v11 = [(AEAssetPackage *)v10 initWithAssetIdentifier:v8 durableURLs:v17[5] sidecar:sidecarSnapshot];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __50__AEChatKitTransport__chatkitPackageForIdentifer___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _alternateURLsByIdentifier];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_notifyDelegateOfStagingCompleteForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(AEPackageTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chatKitTransport:self didUpdatePersistedURLsForPackageIdentifier:identifierCopy];
  }
}

- (void)_updatePrimaryURLsForPackageIdentifier:(id)identifier urls:(id)urls
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  urlsCopy = urls;
  v8 = [(AEPackageTransport *)self stagedPackageForIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = urlsCopy;
    v11 = urlsCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:v16];
          [v10 replaceURLForType:v16 withURL:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    [(AEChatKitTransport *)self _stagePackage:v10 initiateStagingWork:0];
    urlsCopy = v19;
  }

  else
  {
    v10 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = identifierCopy;
      _os_log_impl(&dword_2411DE000, v10, OS_LOG_TYPE_ERROR, "Staging work ending early; couldn't find staged package with identifier %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_beginStagingWorkForPackage:(id)package
{
  v22 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  v5 = [packageCopy durableURLsSnapshotApplyingSuppression:1];
  identifier = [packageCopy identifier];

  delegate = [(AEPackageTransport *)self delegate];
  workingDirForDraft = [delegate workingDirForDraft];
  lastPathComponent = [identifier lastPathComponent];
  path = [workingDirForDraft path];
  v11 = [path stringByAppendingPathComponent:lastPathComponent];

  if ([v11 length])
  {
    _packagePreparationGroup = [(AEChatKitTransport *)self _packagePreparationGroup];
    _workQueue = [(AEChatKitTransport *)self _workQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke;
    v16[3] = &unk_278CC7680;
    v16[4] = self;
    v17 = identifier;
    v18 = v11;
    v19 = v5;
    dispatch_group_async(_packagePreparationGroup, _workQueue, v16);
  }

  else
  {
    v14 = PXAssertGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v21 = workingDirForDraft;
      _os_log_fault_impl(&dword_2411DE000, v14, OS_LOG_TYPE_FAULT, "Draft directory is empty or nil. Unable to persist attachments for staging: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__987;
  v67 = __Block_byref_object_dispose__988;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__987;
  v61 = __Block_byref_object_dispose__988;
  v62 = 0;
  v2 = [*(a1 + 32) _urlSidetableIsolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_2;
  block[3] = &unk_278CC7308;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v55 = &v63;
  v54 = v3;
  v56 = &v57;
  dispatch_barrier_sync(v2, block);

  v4 = *(a1 + 48);
  v5 = DCIM_MakeUniqueDirectoryWithPath();
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v52 = 0;
  v8 = [v6 _persistedURLsFromURLs:v7 inBaseDirectory:v5 outError:&v52];
  v9 = v52;
  v10 = v58[5];
  if (!v10)
  {
    v11 = [AEAssetPackage unsuppressedURLsFromURLs:v8];
    v12 = v58[5];
    v58[5] = v11;
  }

  if (v8)
  {
    v13 = [*(a1 + 32) _urlSidetableIsolationQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_425;
    v45[3] = &unk_278CC7330;
    v45[4] = *(a1 + 32);
    v46 = v8;
    v14 = *(a1 + 40);
    v48 = v10 == 0;
    v47[0] = v14;
    v47[1] = &v57;
    dispatch_barrier_sync(v13, v45);

    v15 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138543618;
      v71 = v16;
      v72 = 2114;
      v73 = v5;
      _os_log_impl(&dword_2411DE000, v15, OS_LOG_TYPE_DEFAULT, "Successfully staged package with identifier %{public}@ using base directory %{public}@", buf, 0x16u);
    }

    v17 = v10 == 0;

    v18 = &v46;
    v19 = v47;
    if (v17)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_426;
      v42[3] = &unk_278CC7358;
      v20 = *(a1 + 40);
      v42[4] = *(a1 + 32);
      v43 = v20;
      v44 = &v57;
      dispatch_async(MEMORY[0x277D85CD0], v42);
    }
  }

  else
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_3;
    v49[3] = &unk_278CC7658;
    v21 = *(a1 + 40);
    v49[4] = *(a1 + 32);
    v50 = v21;
    v22 = v9;
    v51 = v22;
    dispatch_async(MEMORY[0x277D85CD0], v49);
    v23 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v25 = [v22 localizedDescription];
      *buf = 138543874;
      v71 = v24;
      v72 = 2114;
      v73 = v5;
      v74 = 2114;
      v75 = v25;
      _os_log_impl(&dword_2411DE000, v23, OS_LOG_TYPE_ERROR, "Error occurred while staging package with identifier %{public}@ using base directory %{public}@: %{public}@", buf, 0x20u);
    }

    v18 = &v50;
    v19 = &v51;
  }

  v26 = v64[5];
  if (v26)
  {
    v27 = MEMORY[0x277CBEB58];
    v28 = [v26 allValues];
    v29 = [v27 setWithArray:v28];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = [v58[5] allValues];
    v31 = [v30 countByEnumeratingWithState:&v38 objects:v69 count:16];
    if (v31)
    {
      v32 = *v39;
      do
      {
        v33 = 0;
        do
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(v30);
          }

          [v29 removeObject:*(*(&v38 + 1) + 8 * v33++)];
        }

        while (v31 != v33);
        v31 = [v30 countByEnumeratingWithState:&v38 objects:v69 count:16];
      }

      while (v31);
    }

    [*(a1 + 32) _evictPersistedURLs:v29];
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_2_427;
  v36[3] = &unk_278CC76A8;
  v34 = *(a1 + 40);
  v36[4] = *(a1 + 32);
  v37 = v34;
  dispatch_async(MEMORY[0x277D85CD0], v36);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  v35 = *MEMORY[0x277D85DE8];
}

void __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_2(uint64_t a1)
{
  v9 = [*(a1 + 32) _alternateURLsByIdentifier];
  v2 = [v9 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v9 removeObjectForKey:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) _primaryURLsByIdentifier];
  v6 = [v5 objectForKey:*(a1 + 40)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) unstagePackageWithIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 reportError:v3];
}

void __50__AEChatKitTransport__beginStagingWorkForPackage___block_invoke_425(uint64_t a1)
{
  v3 = [*(a1 + 32) _alternateURLsByIdentifier];
  [v3 setObject:*(a1 + 40) forKey:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) _primaryURLsByIdentifier];
    [v2 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 48)];
  }
}

- (id)_preparePackageForCommit:(id)commit inBaseDirectory:(id)directory outError:(id *)error
{
  commitCopy = commit;
  directoryCopy = directory;
  v10 = [commitCopy durableURLsSnapshotApplyingSuppression:1];
  v11 = [(AEChatKitTransport *)self _persistedURLsFromURLs:v10 inBaseDirectory:directoryCopy outError:error];

  if (v11)
  {
    identifier = [commitCopy identifier];
    sidecarSnapshot = [commitCopy sidecarSnapshot];
    v14 = [(AEAssetPackage *)[AEChatKitAssetPackage alloc] initWithAssetIdentifier:identifier durableURLs:v11 sidecar:sidecarSnapshot];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_evictPersistedURLs:(id)ls
{
  v16 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [lsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(lsCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isFileURL])
        {
          defaultManager = [MEMORY[0x277D3D070] defaultManager];
          [defaultManager removeItemAtURL:v8 completion:0];
        }
      }

      v5 = [lsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_evictPersistedURLsForPackageIdentifier:(id)identifier evictFiles:(BOOL)files
{
  filesCopy = files;
  identifierCopy = identifier;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__987;
  v35 = __Block_byref_object_dispose__988;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__987;
  v29 = __Block_byref_object_dispose__988;
  v30 = 0;
  _urlSidetableIsolationQueue = [(AEChatKitTransport *)self _urlSidetableIsolationQueue];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __73__AEChatKitTransport__evictPersistedURLsForPackageIdentifier_evictFiles___block_invoke;
  v20 = &unk_278CC7308;
  selfCopy = self;
  v23 = &v31;
  v8 = identifierCopy;
  v22 = v8;
  v24 = &v25;
  dispatch_barrier_sync(_urlSidetableIsolationQueue, &v17);

  if (filesCopy)
  {
    v9 = v32[5];
    if (v9 || v26[5])
    {
      v10 = MEMORY[0x277CBEB58];
      v11 = [v9 count];
      v12 = [v10 setWithCapacity:{objc_msgSend(v26[5], "count") + v11}];
      v13 = v32[5];
      if (v13)
      {
        allValues = [v13 allValues];
        [v12 addObjectsFromArray:allValues];
      }

      v15 = v26[5];
      if (v15)
      {
        allValues2 = [v15 allValues];
        [v12 addObjectsFromArray:allValues2];
      }

      [(AEChatKitTransport *)self _evictPersistedURLs:v12];
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __73__AEChatKitTransport__evictPersistedURLsForPackageIdentifier_evictFiles___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) _alternateURLsByIdentifier];
  v2 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [v9 setObject:0 forKeyedSubscript:*(a1 + 40)];
  v5 = [*(a1 + 32) _primaryURLsByIdentifier];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v5 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (id)_persistedURLsFromURLs:(id)ls inBaseDirectory:(id)directory outError:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  directoryCopy = directory;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [lsCopy allKeys];
  v9 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    errorCopy = error;
    v39 = *v49;
    v37 = lsCopy;
    while (2)
    {
      v12 = 0;
      v40 = v10;
      do
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * v12);
        v14 = [lsCopy objectForKeyedSubscript:v13];
        if ([v14 isFileURL])
        {
          lastPathComponent = [v14 lastPathComponent];
          pathExtension = [lastPathComponent pathExtension];
          v44 = pathExtension;
          v45 = v8;
          if ([pathExtension isEqualToString:@"mov"])
          {
            stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
            uppercaseString = [pathExtension uppercaseString];
            v19 = [stringByDeletingPathExtension stringByAppendingPathExtension:uppercaseString];

            lastPathComponent = v19;
          }

          lastPathComponent2 = [v13 lastPathComponent];
          v21 = MEMORY[0x277CBEBC0];
          v52[0] = directoryCopy;
          v52[1] = lastPathComponent2;
          v43 = lastPathComponent2;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
          v23 = [v21 fileURLWithPathComponents:v22];

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v47 = 0;
          v25 = [defaultManager createDirectoryAtURL:v23 withIntermediateDirectories:0 attributes:0 error:&v47];
          v26 = v47;

          if (v25)
          {
            v27 = [v23 URLByAppendingPathComponent:lastPathComponent];
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v46 = 0;
            v29 = [defaultManager2 copyItemAtURL:v14 toURL:v27 error:&v46];
            v30 = v46;

            if (v29)
            {
              v31 = v27;
            }

            else
            {
              if (errorCopy)
              {
                v33 = v30;
                *errorCopy = v30;
              }

              v31 = 0;
              v45 = 0;
            }

            lsCopy = v37;
          }

          else
          {
            if (errorCopy)
            {
              v32 = v26;
              v31 = 0;
              v29 = 0;
              *errorCopy = v26;
            }

            else
            {
              v31 = 0;
              v29 = 0;
            }

            v27 = v45;
            v45 = 0;
          }

          if ((v29 & 1) == 0)
          {

            v8 = v45;
            goto LABEL_27;
          }

          v8 = v45;
          v11 = v39;
          v10 = v40;
        }

        else
        {
          v31 = v14;
        }

        [v8 setObject:v31 forKey:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  v34 = [v8 copy];
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)stagePersistedPayloads:(id)payloads
{
  v20 = *MEMORY[0x277D85DE8];
  payloadsCopy = payloads;
  if ([payloadsCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = payloadsCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [AEChatKitAssetPackage alloc];
          v13 = [(AEChatKitAssetPackage *)v12 initWithPayload:v11, v15];
          [v5 addObject:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(AEChatKitTransport *)self stagePackages:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (AEChatKitTransport)init
{
  v12.receiver = self;
  v12.super_class = AEChatKitTransport;
  v2 = [(AEPackageTransport *)&v12 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    packagePreparationGroup = v2->__packagePreparationGroup;
    v2->__packagePreparationGroup = v3;

    v5 = dispatch_queue_create("com.apple.AssetExplorer.AEChatKitTransport.sidetable-isolation", MEMORY[0x277D85CD8]);
    urlSidetableIsolationQueue = v2->__urlSidetableIsolationQueue;
    v2->__urlSidetableIsolationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    alternateURLsByIdentifier = v2->__alternateURLsByIdentifier;
    v2->__alternateURLsByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    primaryURLsByIdentifier = v2->__primaryURLsByIdentifier;
    v2->__primaryURLsByIdentifier = v9;
  }

  return v2;
}

@end