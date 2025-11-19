@interface PHImportController
+ (BOOL)isValidFolderAtURL:(id)a3;
+ (id)sharedInstance;
- (BOOL)importInProgress;
- (BOOL)sourceIsConnected:(id)a3;
- (PHImportController)init;
- (id)filterDuplicates:(id)a3 onSource:(id)a4 library:(id)a5 options:(id)a6 delegate:(id)a7;
- (id)importSourceForURLs:(id)a3 exceptions:(id *)a4;
- (id)importUrls:(id)a3 intoLibrary:(id)a4 withOptions:(id)a5 delegate:(id)a6 performanceDelegate:(id)a7 atEnd:(id)a8;
- (id)importUrls:(id)a3 withOptions:(id)a4 delegate:(id)a5 atEnd:(id)a6;
- (id)supportedTypes;
- (void)_addImportSource:(id)a3;
- (void)_notifyOfFailureToAddImportSource:(id)a3 exceptions:(id)a4;
- (void)_removeImportSourceWithUUID:(id)a3;
- (void)accessSourceList:(id)a3;
- (void)addImportControllerObserver:(id)a3;
- (void)addImportSourceForUrls:(id)a3;
- (void)deviceBrowser:(id)a3 didAddDevice:(id)a4 moreComing:(BOOL)a5;
- (void)deviceBrowser:(id)a3 didRemoveDevice:(id)a4 moreGoing:(BOOL)a5;
- (void)enableDeviceImport;
- (void)importAssets:(id)a3 fromImportSource:(id)a4 intoLibrary:(id)a5 withOptions:(id)a6 progress:(id *)a7 delegate:(id)a8 performanceDelegate:(id)a9 atEnd:(id)a10;
- (void)importAssets:(id)a3 fromImportSource:(id)a4 intoLibraryAtURL:(id)a5 withOptions:(id)a6 progress:(id *)a7 delegate:(id)a8 performanceDelegate:(id)a9 atEnd:(id)a10;
- (void)importAssets:(id)a3 fromImportSource:(id)a4 withOptions:(id)a5 progress:(id *)a6 delegate:(id)a7 atEnd:(id)a8;
- (void)importEnding;
- (void)importStarting;
- (void)removeImportSource:(id)a3;
@end

@implementation PHImportController

uint64_t __36__PHImportController_sharedInstance__block_invoke()
{
  sharedInstance_controller = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (PHImportController)init
{
  v7.receiver = self;
  v7.super_class = PHImportController;
  v2 = [(PHImportController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_sourceListLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;
  }

  return v3;
}

void __40__PHImportController_enableDeviceImport__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PHImportController_enableDeviceImport__block_invoke_2;
  block[3] = &unk_1E75AB270;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)enableDeviceImport
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PHImportController_enableDeviceImport__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  if (enableDeviceImport_onceToken != -1)
  {
    dispatch_once(&enableDeviceImport_onceToken, block);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_3437);
  }

  v3 = sharedInstance_controller;

  return v3;
}

void __40__PHImportController_enableDeviceImport__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PHImportController_enableDeviceImport__block_invoke_3;
  block[3] = &unk_1E75AB270;
  block[4] = *(a1 + 32);
  dispatch_after(v2, v3, block);
}

- (void)deviceBrowser:(id)a3 didRemoveDevice:(id)a4 moreGoing:(BOOL)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setDelegate:0];
    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 name];
      v10 = 136315394;
      v11 = "[PHImportController deviceBrowser:didRemoveDevice:moreGoing:]";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "%s - %@", &v10, 0x16u);
    }

    v9 = [v6 UUIDString];
    [(PHImportController *)self _removeImportSourceWithUUID:v9];
  }
}

- (void)deviceBrowser:(id)a3 didAddDevice:(id)a4 moreComing:(BOOL)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 name];
      v10 = 136315394;
      v11 = "[PHImportController deviceBrowser:didAddDevice:moreComing:]";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "%s - %@", &v10, 0x16u);
    }

    v9 = [[PHImportDeviceSource alloc] initWithDevice:v6];
    [(PHImportController *)self _addImportSource:v9];
  }
}

- (void)_removeImportSourceWithUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__PHImportController__removeImportSourceWithUUID___block_invoke;
    v6[3] = &unk_1E75AAEB0;
    v6[4] = self;
    v7 = v4;
    [(PHImportController *)self accessSourceList:v6];
  }
}

void __50__PHImportController__removeImportSourceWithUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) importSources];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 progress];
    [v4 cancel];

    v5 = [*(a1 + 32) importSources];
    v6 = [v3 uuid];
    [v5 removeObjectForKey:v6];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = *(*(a1 + 32) + 40);
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          [*(*(&v12 + 1) + 8 * v11++) importController:*(a1 + 32) removedImportSource:{v3, v12}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_addImportSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__PHImportController__addImportSource___block_invoke;
    v6[3] = &unk_1E75AAEB0;
    v6[4] = self;
    v7 = v4;
    [(PHImportController *)self accessSourceList:v6];
  }
}

void __39__PHImportController__addImportSource___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) importSources];
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = [*(a1 + 32) importSources];

    if (!v5)
    {
      v6 = objc_opt_new();
      [*(a1 + 32) setImportSources:v6];
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) importSources];
    v9 = [*(a1 + 40) uuid];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = *(*(a1 + 32) + 40);
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) importController:*(a1 + 32) addedImportSource:{*(a1 + 40), v15}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)importAssets:(id)a3 fromImportSource:(id)a4 intoLibrary:(id)a5 withOptions:(id)a6 progress:(id *)a7 delegate:(id)a8 performanceDelegate:(id)a9 atEnd:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if ([(PHImportController *)self importInProgress])
  {
    if (v22)
    {
      v23 = v17;
      v24 = objc_alloc_init(PHImportResults);
      v25 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Import in progress. Cannot start another import session."];
      v26 = [(PHImportExceptionRecorder *)v24 addExceptionWithType:0 path:0 underlyingError:v25 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportController.m" line:399];
      v22[2](v22, v24, 0);

      v17 = v23;
    }
  }

  else
  {
    [(PHImportController *)self importStarting];
    [v21 startImporting];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __120__PHImportController_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_performanceDelegate_atEnd___block_invoke;
    v27[3] = &unk_1E75A3EF8;
    v27[4] = self;
    v28 = v21;
    v29 = v19;
    v30 = v17;
    v31 = v22;
    [PHImporter importAssets:v16 fromImportSource:v30 intoLibrary:v18 withOptions:v29 progress:a7 delegate:v20 atEnd:v27];
  }
}

void __120__PHImportController_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_performanceDelegate_atEnd___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) importEnding];
  [*(a1 + 40) endImporting];
  if ([*(a1 + 48) deleteAfterImport] && objc_msgSend(*(a1 + 56), "canDeleteContent"))
  {
    v4 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v3;
    v5 = [v3 importRecords];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v21;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 importAsset];
        if ([v11 canDelete])
        {
          v12 = [v10 exceptions];
          v13 = [v12 count];

          if (v13)
          {
            continue;
          }

          v11 = [v10 importAsset];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v7)
      {
LABEL_14:

        if ([v4 count])
        {
          v14 = *(a1 + 56);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __120__PHImportController_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_performanceDelegate_atEnd___block_invoke_2;
          v18[3] = &unk_1E75AB320;
          v19 = v4;
          v15 = [v14 deleteImportAssets:v19 isConfirmed:1 atEnd:v18];
        }

        else
        {
          v15 = 0;
        }

        v3 = v17;
        goto LABEL_19;
      }
    }
  }

  v15 = 0;
LABEL_19:
  v16 = *(a1 + 64);
  if (v16)
  {
    (*(v16 + 16))(v16, v3, v15);
  }
}

void __120__PHImportController_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_performanceDelegate_atEnd___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) count];
    if (v3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@": %@", v3];
    }

    else
    {
      v6 = &stru_1F0FC60C8;
    }

    *buf = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_INFO, "Deleted %lu assets%@", buf, 0x16u);
    if (v3)
    {
    }
  }
}

- (void)importAssets:(id)a3 fromImportSource:(id)a4 withOptions:(id)a5 progress:(id *)a6 delegate:(id)a7 atEnd:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[PHPhotoLibrary systemPhotoLibraryURL];
  [(PHImportController *)self importAssets:v18 fromImportSource:v17 intoLibraryAtURL:v19 withOptions:v16 progress:a6 delegate:v15 performanceDelegate:0 atEnd:v14];
}

- (id)importUrls:(id)a3 intoLibrary:(id)a4 withOptions:(id)a5 delegate:(id)a6 performanceDelegate:(id)a7 atEnd:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v14 count];
  if (v19 && !v20)
  {
    v21 = objc_alloc_init(PHImportResults);
    v22 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Requested to import an empty asset list"];
    v23 = v21;
    v24 = v22;
    v25 = 337;
LABEL_7:
    v27 = [(PHImportExceptionRecorder *)v23 addExceptionWithType:0 path:0 underlyingError:v24 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportController.m" line:v25];
    v19[2](v19, v21);

    v28 = 0;
    goto LABEL_14;
  }

  v26 = [(PHImportController *)self importInProgress];
  if (v19 && v26)
  {
    v21 = objc_alloc_init(PHImportResults);
    v22 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Import in progress. Cannot start another import session."];
    v23 = v21;
    v24 = v22;
    v25 = 346;
    goto LABEL_7;
  }

  v49[0] = 0;
  v29 = [(PHImportController *)self importSourceForURLs:v14 exceptions:v49];
  v30 = v49[0];
  if (![v30 count])
  {
    goto LABEL_12;
  }

  v31 = [PHImportResults resultsWithExceptions:v30];
  v32 = v31;
  if (!v19)
  {

LABEL_12:
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__3360;
    v47 = __Block_byref_object_dispose__3361;
    v48 = objc_alloc_init(MEMORY[0x1E696AE38]);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __92__PHImportController_importUrls_intoLibrary_withOptions_delegate_performanceDelegate_atEnd___block_invoke;
    v35[3] = &unk_1E75A3ED0;
    v36 = v16;
    v37 = self;
    v38 = v29;
    v39 = v15;
    v40 = v17;
    v42 = &v43;
    v41 = v19;
    v33 = [v38 loadAssetsForLibrary:v39 allowDuplicates:0 order:0 atEnd:v35];
    v28 = v44[5];

    _Block_object_dispose(&v43, 8);
    goto LABEL_13;
  }

  v19[2](v19, v31);

  v28 = 0;
LABEL_13:

LABEL_14:

  return v28;
}

void __92__PHImportController_importUrls_intoLibrary_withOptions_delegate_performanceDelegate_atEnd___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (([*(a1 + 32) allowDuplicates] & 1) == 0)
  {
    v8 = v7;
    if ([v7 count])
    {
      v8 = [*(a1 + 40) filterDuplicates:v7 onSource:*(a1 + 48) library:*(a1 + 56) options:*(a1 + 32) delegate:*(a1 + 64)];
    }
  }

  if ([v8 count])
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(*(a1 + 80) + 8);
    obj = *(v13 + 40);
    v14 = *(a1 + 64);
    v19 = v9;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __92__PHImportController_importUrls_intoLibrary_withOptions_delegate_performanceDelegate_atEnd___block_invoke_2;
    v20[3] = &unk_1E75A3EA8;
    v21 = v6;
    v22 = *(a1 + 72);
    [v11 importAssets:v8 fromImportSource:v19 intoLibrary:v10 withOptions:v12 progress:&obj delegate:v14 performanceDelegate:0 atEnd:v20];
    objc_storeStrong((v13 + 40), obj);

    v15 = v21;
LABEL_13:

    goto LABEL_14;
  }

  if (*(a1 + 72))
  {
    if ([v6 count])
    {
      v16 = [PHImportResults resultsWithExceptions:v6];
    }

    else
    {
      v17 = PLImportGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [*(a1 + 48) name];
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_INFO, "Nothing to import from '%@'", buf, 0xCu);
      }

      v16 = objc_alloc_init(PHImportResults);
    }

    v15 = v16;
    (*(*(a1 + 72) + 16))();
    goto LABEL_13;
  }

LABEL_14:
}

void __92__PHImportController_importUrls_intoLibrary_withOptions_delegate_performanceDelegate_atEnd___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 addExceptions:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)importEnding
{
  os_unfair_lock_lock(&self->_importInProgressLock);
  if (self->_importInProgress)
  {
    self->_importInProgress = 0;
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 endActivity:self->_processInfoActivityToken];

    processInfoActivityToken = self->_processInfoActivityToken;
    self->_processInfoActivityToken = 0;
  }

  os_unfair_lock_unlock(&self->_importInProgressLock);
}

- (void)importStarting
{
  os_unfair_lock_lock(&self->_importInProgressLock);
  if (!self->_importInProgress)
  {
    self->_importInProgress = 1;
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 beginActivityWithOptions:0xFFFFFFLL reason:@"Photos Import"];
    processInfoActivityToken = self->_processInfoActivityToken;
    self->_processInfoActivityToken = v4;
  }

  os_unfair_lock_unlock(&self->_importInProgressLock);
}

- (BOOL)importInProgress
{
  os_unfair_lock_lock(&self->_importInProgressLock);
  importInProgress = self->_importInProgress;
  os_unfair_lock_unlock(&self->_importInProgressLock);
  return importInProgress;
}

- (id)filterDuplicates:(id)a3 onSource:(id)a4 library:(id)a5 options:(id)a6 delegate:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (![v11 count] || objc_msgSend(v14, "allowDuplicates"))
  {
    v16 = v11;
    goto LABEL_32;
  }

  if (!v11)
  {
    _PFAssertFailHandler();
LABEL_36:
    _PFAssertFailHandler();
  }

  if (!v13)
  {
    goto LABEL_36;
  }

  v16 = [v11 mutableCopy];
  v37 = 0;
  v17 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v19)
  {

LABEL_29:
    if ([v17 count])
    {
      [v16 removeObjectsInArray:v17];
    }

    goto LABEL_31;
  }

  v20 = v19;
  v29 = v16;
  v30 = v14;
  v31 = v12;
  v32 = v11;
  v21 = 0;
  v22 = *v34;
  while (2)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v34 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v33 + 1) + 8 * i);
      if ([v24 isDuplicate])
      {
        if (v37 == 1)
        {
          if (v21 == 1)
          {
            [v17 addObject:v24];
          }
        }

        else
        {
          v25 = [v24 duplicateAssetsForLibrary:v13];
          v26 = [v25 firstObject];

          v27 = [v15 importAsset:v24 asDuplicateOfLibraryAsset:v26 applyToAll:&v37];
          v21 = v27;
          if (v27)
          {
            if (v27 == 1)
            {
              [v17 addObject:v24];
            }

            else if (v27 == 2)
            {
              goto LABEL_25;
            }
          }

          else if (v37)
          {
LABEL_25:

            goto LABEL_26;
          }
        }
      }
    }

    v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_26:

  v12 = v31;
  v11 = v32;
  v16 = v29;
  v14 = v30;
  if (v21 != 2)
  {
    goto LABEL_29;
  }

  [v29 removeAllObjects];
LABEL_31:

LABEL_32:

  return v16;
}

- (void)accessSourceList:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_sourceListLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_sourceListLock);
}

- (void)importAssets:(id)a3 fromImportSource:(id)a4 intoLibraryAtURL:(id)a5 withOptions:(id)a6 progress:(id *)a7 delegate:(id)a8 performanceDelegate:(id)a9 atEnd:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v34 = a9;
  v19 = a10;
  v20 = a5;
  v21 = [[PHPhotoLibrary alloc] initWithPhotoLibraryURL:v20];

  v36 = 0;
  LOBYTE(v20) = [(PHPhotoLibrary *)v21 openAndWaitWithUpgrade:0 error:&v36];
  v22 = v36;
  if ((v20 & 1) == 0)
  {
    v23 = objc_opt_new();
    +[PHPhotoLibrary systemPhotoLibraryURL];
    v33 = v19;
    v24 = v22;
    v25 = self;
    v26 = v18;
    v27 = v17;
    v28 = v16;
    v30 = v29 = v15;
    v31 = [v30 path];

    v15 = v29;
    v16 = v28;
    v17 = v27;
    v18 = v26;
    self = v25;
    v22 = v24;
    v19 = v33;
    v32 = [v23 addExceptionWithType:0 path:v31 underlyingError:v22 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportController.m" line:192];
    v19[2](v19, v23, 0);
  }

  [(PHImportController *)self importAssets:v15 fromImportSource:v16 intoLibrary:v21 withOptions:v17 progress:a7 delegate:v18 performanceDelegate:v34 atEnd:v19];
}

- (id)importUrls:(id)a3 withOptions:(id)a4 delegate:(id)a5 atEnd:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [PHPhotoLibrary alloc];
  v15 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v16 = [(PHPhotoLibrary *)v14 initWithPhotoLibraryURL:v15];

  v25 = 0;
  v17 = [(PHPhotoLibrary *)v16 openAndWaitWithUpgrade:0 error:&v25];
  v18 = v25;
  if (v17)
  {
    v19 = [(PHImportController *)self importUrls:v10 intoLibrary:v16 withOptions:v11 delegate:v12 performanceDelegate:0 atEnd:v13];
  }

  else
  {
    v20 = objc_opt_new();
    v21 = +[PHPhotoLibrary systemPhotoLibraryURL];
    v22 = [v21 path];

    v23 = [v20 addExceptionWithType:0 path:v22 underlyingError:v18 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportController.m" line:179];
    v13[2](v13, v20);

    v19 = 0;
  }

  return v19;
}

- (void)removeImportSource:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uuid];
    [(PHImportController *)self _removeImportSourceWithUUID:v5];
  }

  else
  {
    v6 = PLImportGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "ERROR: attempting to remove a non URL import source (%@)", &v7, 0xCu);
    }
  }
}

- (void)_notifyOfFailureToAddImportSource:(id)a3 exceptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PHImportController__notifyOfFailureToAddImportSource_exceptions___block_invoke;
  v10[3] = &unk_1E75AB248;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PHImportController *)self accessSourceList:v10];
}

void __67__PHImportController__notifyOfFailureToAddImportSource_exceptions___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1[4] + 40);
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
          [v7 importController:a1[4] failedToAddImportSource:a1[5] exceptions:{a1[6], v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)importSourceForURLs:(id)a3 exceptions:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    if ([v5 count] != 1 || (v7 = MEMORY[0x1E69C08F0], objc_msgSend(MEMORY[0x1E69C08F0], "photosLibraryType"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "url:conformsToType:", v6, v8), v8, !v7) || (+[PHImportLibrarySource importLibrarySourceForURL:exceptions:](PHImportLibrarySource, "importLibrarySourceForURL:exceptions:", v6, a4), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [[PHImportUrlSource alloc] initWithURLs:v5];
    }

    if (![(PHImportUrlSource *)v9 containsSupportedMediaWithImportExceptions:a4])
    {
      v10 = PLImportGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_INFO, "%@ does not contain any importable content", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addImportSourceForUrls:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0;
  v5 = [(PHImportController *)self importSourceForURLs:v4 exceptions:&v10];
  v6 = v10;
  if ([v6 count])
  {
    [(PHImportController *)self _notifyOfFailureToAddImportSource:v5 exceptions:v6];
  }

  else
  {
    [(PHImportController *)self _addImportSource:v5];
    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 name];
      v9 = [v4 count];
      *buf = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_INFO, "Created source for '%{public}@' containing %lu URL(s)", buf, 0x16u);
    }
  }
}

- (BOOL)sourceIsConnected:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PHImportController_sourceIsConnected___block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  [(PHImportController *)self accessSourceList:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __40__PHImportController_sourceIsConnected___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) importSources];
  v2 = [*(a1 + 40) uuid];
  v3 = [v4 objectForKeyedSubscript:v2];
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

- (void)addImportControllerObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PHImportController_addImportControllerObserver___block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PHImportController *)self accessSourceList:v6];
}

void __50__PHImportController_addImportControllerObserver___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (([*(*(a1 + 32) + 40) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(*(a1 + 32) + 32);
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

          v8 = *(a1 + 32);
          v7 = *(a1 + 40);
          v9 = [*(v8 + 32) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v6), v10}];
          [v7 importController:v8 addedImportSource:v9];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }
}

- (id)supportedTypes
{
  v2 = [MEMORY[0x1E69C08F0] typesSupportedForImport];
  v3 = +[PHImportLibrarySource supportedImportLibraryTypes];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

uint64_t __40__PHImportController_enableDeviceImport__block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(*(a1 + 32) + 24) setDelegate:?];
  v5 = PLImportGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "Listening for import sources from Image Capture", v7, 2u);
  }

  return [*(*(a1 + 32) + 24) start];
}

+ (BOOL)isValidFolderAtURL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = 0;
  v4 = *MEMORY[0x1E695DBA0];
  v15 = 0;
  v5 = [v3 getResourceValue:&v16 forKey:v4 error:&v15];
  v6 = v16;
  v7 = v15;
  if (v5)
  {
    if ([v6 BOOLValue])
    {
      v8 = MEMORY[0x1E69C08F0];
      v9 = +[PHImportLibrarySource supportedImportLibraryTypes];
      LOBYTE(v10) = [v8 url:v3 conformsToOneOfTypes:v9];
    }

    else
    {
      v9 = [v3 path];
      v12 = [v9 pathComponents];
      if (([v9 isEqualToString:@"/"]& 1) != 0 || ([v9 isEqualToString:@"/Volumes"]& 1) != 0)
      {
        LOBYTE(v10) = 0;
      }

      else if ([v12 count] == 2 || objc_msgSend(v12, "count") == 4 && -[NSObject hasPrefix:](v9, "hasPrefix:", @"/Volumes"))
      {
        v14 = [v9 lastPathComponent];
        if ([v14 isEqualToString:@"dev"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"var") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"bin") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"sbin") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"cores") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"opt") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"home") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"private") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"usr") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"tmp") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"automount") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"net") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"Volumes") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"Library"))
        {
          LOBYTE(v10) = 0;
        }

        else
        {
          v10 = [v14 isEqualToString:@"System"] ^ 1;
        }
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }
  }

  else
  {
    v9 = PLImportGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 path];
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "%@ is not a valid folder for import: %@", buf, 0x16u);
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

@end