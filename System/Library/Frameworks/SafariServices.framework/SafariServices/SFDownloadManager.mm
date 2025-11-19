@interface SFDownloadManager
@end

@implementation SFDownloadManager

void __35___SFDownloadManager_sharedManager__block_invoke()
{
  v0 = [[_SFDownloadManager alloc] initAsReadonly:0];
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

id __37___SFDownloadManager_initAsReadonly___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _dataForPersistingToHistory];

  return v2;
}

void __69___SFDownloadManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___SFDownloadManager_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  v3[3] = &unk_1E848F8F0;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained getDownloadsWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
}

void __69___SFDownloadManager_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeOldDownloadsAndUpdateTimerIfNeeded];
}

void __55___SFDownloadManager__loadDownloadHistoryAsynchronous___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 8) count] && objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "count"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    [*(*(a1 + 32) + 8) addObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
  }

  [*(a1 + 32) _removeDeletedDownloads];
  [*(a1 + 32) _removeOldDownloadsAndUpdateTimerIfNeeded];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(*(a1 + 32) + 24) scheduleWrite];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 32) + 96) regenerateIconForSource:{*(*(&v10 + 1) + 8 * v6++), v10}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 32) = 1;
  v7 = *(*(a1 + 32) + 40);
  if (v7)
  {
    (*(v7 + 16))();
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void __55___SFDownloadManager__loadDownloadHistoryAsynchronous___block_invoke_2(uint64_t a1)
{
  v2 = [objc_opt_class() downloadRepresentationsAtURL:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 56) + 8) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___SFDownloadManager__loadDownloadHistoryAsynchronous___block_invoke_3;
  v12[3] = &unk_1E8495DE0;
  v6 = *(a1 + 72);
  v12[4] = *(a1 + 32);
  v12[5] = v6;
  v7 = [v5 safari_mapObjectsUsingBlock:v12];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) count];
  if (v10 != [*(*(*(a1 + 64) + 8) + 40) count])
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v11 = *(a1 + 48);
  if (*(a1 + 80) == 1)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else
  {
    v11[2](*(a1 + 48));
  }
}

_SFDownload *__55___SFDownloadManager__loadDownloadHistoryAsynchronous___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = a2;
  v4 = [[_SFDownload alloc] initWithDictionaryRepresentation:v3 didUpdateRepresentation:&v6];

  [(_SFDownload *)v4 setDelegate:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | v6) & 1;

  return v4;
}

uint64_t __56___SFDownloadManager_getDownloadsWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

BOOL __54___SFDownloadManager_removeDownloadsStartedAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dateAdded];
  v4 = [v3 compare:*(a1 + 32)] == 1;

  return v4;
}

BOOL __45___SFDownloadManager__removeDeletedDownloads__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 4)
  {
    v3 = [v2 completedFileURL];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __63___SFDownloadManager__removeOldDownloadsAndUpdateTimerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dateFinished];
  if (v3)
  {
    [*(a1 + 32) timeIntervalSinceDate:v3];
    v5 = v4 >= *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __63___SFDownloadManager__removeOldDownloadsAndUpdateTimerIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeOldDownloadsAndUpdateTimerIfNeeded];
}

void __61___SFDownloadManager_downloadDidImportFileToDownloadsFolder___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v7 = 0;
  [v2 removeItemAtURL:v4 error:&v7];
  v5 = v7;

  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61___SFDownloadManager_downloadDidImportFileToDownloadsFolder___block_invoke_cold_1(v3, v6, v5);
    }
  }
}

void __67___SFDownloadManager_createDirectoryForDownload_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 createDirectoryAtURL:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) path];
  (*(v3 + 16))(v3, v4);
}

uint64_t __83___SFDownloadManager_downloadShouldContinueAfterReceivingResponse_decisionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _addDownload:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __61___SFDownloadManager_downloadDidImportFileToDownloadsFolder___block_invoke_cold_1(uint64_t *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138478083;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Failed to remove download container (%{private}@): %{public}@", &v7, 0x16u);
}

@end