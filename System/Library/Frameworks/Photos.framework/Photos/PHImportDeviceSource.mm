@interface PHImportDeviceSource
- (BOOL)canEject;
- (BOOL)isAppleDevice;
- (BOOL)isAvailable;
- (BOOL)isDeleting;
- (CGImage)icon;
- (PHImportDeviceSource)initWithDevice:(id)device;
- (id)assetsByProcessingItem:(id)item;
- (id)cameraFilesForAssets:(id)assets;
- (id)deleteImportAssets:(id)assets isConfirmed:(BOOL)confirmed atEnd:(id)end;
- (id)iconSymbolName;
- (id)importAssetForCameraFile:(id)file create:(BOOL)create;
- (id)name;
- (id)uuid;
- (void)_removeCameraFiles:(id)files;
- (void)beginProcessingWithCompletion:(id)completion;
- (void)cameraDevice:(id)device didAddItems:(id)items;
- (void)cameraDevice:(id)device didRemoveItems:(id)items;
- (void)cameraDevice:(id)device setAccessState:(unsigned __int8)state;
- (void)cameraDeviceDidChangeCapability:(id)capability;
- (void)cameraDeviceDidEnableAccessRestriction:(id)restriction;
- (void)cameraDeviceDidRemoveAccessRestriction:(id)restriction;
- (void)deviceDidBecomeReady:(id)ready;
- (void)deviceDidBecomeReadyWithCompleteContentCatalog:(id)catalog;
- (void)deviceFinishedEnumeratingItems:(id)items;
- (void)didRemoveDevice:(id)device;
- (void)eject;
- (void)fetchMetadataForRequest:(id)request importAsset:(id)asset completion:(id)completion;
- (void)fetchMetadataUsingRequest:(id)request withCompletion:(id)completion;
- (void)fetchThumbnailDataUsingRequest:(id)request withCompletion:(id)completion;
- (void)removeAssetForCameraFile:(id)file;
- (void)sendNextMetadataRequest;
- (void)sendNextThumbnailRequest;
@end

@implementation PHImportDeviceSource

- (void)_removeCameraFiles:(id)files
{
  filesCopy = files;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(filesCopy, "count")}];
  deleteEjectQueue = [(PHImportDeviceSource *)self deleteEjectQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PHImportDeviceSource__removeCameraFiles___block_invoke;
  block[3] = &unk_1E75AB248;
  block[4] = self;
  v10 = filesCopy;
  v11 = v5;
  v7 = v5;
  v8 = filesCopy;
  dispatch_async(deleteEjectQueue, block);
}

uint64_t __43__PHImportDeviceSource__removeCameraFiles___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] valueForKey:@"PHImportFileUUID"];
  [v2 addSourceFileIdentifiersForRemovedFiles:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [a1[4] importAssetForCameraFile:v9 create:{0, v14}];
          if (v10)
          {
            [a1[6] addObject:v10];
            [a1[4] removeAssetForCameraFile:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([a1[6] count])
  {
    v11 = [a1[4] removalCoalescer];
    [v11 coalesceItems:a1[6]];
  }

  result = [a1[4] isDeleting];
  if ((result & 1) == 0)
  {
    result = [a1[4] ejectAfterDelete];
    if (result)
    {
      v13 = [a1[4] camera];
      [v13 requestEject];

      return [a1[4] setIsEjecting:1];
    }
  }

  return result;
}

- (void)deviceFinishedEnumeratingItems:(id)items
{
  v10 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = PLImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    name = [itemsCopy name];
    v6 = 138412546;
    v7 = name;
    v8 = 2080;
    v9 = "[PHImportDeviceSource deviceFinishedEnumeratingItems:]";
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "%@ [%s]", &v6, 0x16u);
  }
}

- (void)cameraDeviceDidRemoveAccessRestriction:(id)restriction
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    camera = [(PHImportDeviceSource *)self camera];
    name = [camera name];
    v8 = 138412290;
    v9 = name;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_INFO, "%@ state chaged to unlocked", &v8, 0xCu);
  }

  camera2 = [(PHImportDeviceSource *)self camera];
  [(PHImportDeviceSource *)self cameraDevice:camera2 setAccessState:2];
}

- (void)cameraDeviceDidEnableAccessRestriction:(id)restriction
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    camera = [(PHImportDeviceSource *)self camera];
    name = [camera name];
    v8 = 138412290;
    v9 = name;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_INFO, "%@ state changed to passcode locked", &v8, 0xCu);
  }

  camera2 = [(PHImportDeviceSource *)self camera];
  [(PHImportDeviceSource *)self cameraDevice:camera2 setAccessState:1];
}

- (void)cameraDeviceDidChangeCapability:(id)capability
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PHImportDeviceSource_cameraDeviceDidChangeCapability___block_invoke;
  v3[3] = &unk_1E75A7AE0;
  v3[4] = self;
  [(PHImportSource *)self notifyObserversUsingBlock:v3];
}

- (void)cameraDevice:(id)device didRemoveItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v8 = PLImportGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [itemsCopy count];
    v10 = &stru_1F0FC60C8;
    if ([itemsCopy count] <= 1)
    {
      v11 = &stru_1F0FC60C8;
    }

    else
    {
      v11 = @"s";
    }

    v12 = [itemsCopy count];
    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v4 = [itemsCopy valueForKey:@"name"];
      v5 = [v4 componentsJoinedByString:{@", "}];
      v10 = [v13 stringWithFormat:@" [%@]", v5];
    }

    *buf = 136315906;
    v18 = "[PHImportDeviceSource cameraDevice:didRemoveItems:]";
    v19 = 2048;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "%s - %lu asset%@ were removed%@", buf, 0x2Au);
    if (v12)
    {
    }
  }

  if ([itemsCopy count])
  {
    [(PHImportDeviceSource *)self _removeCameraFiles:itemsCopy];
  }

  else
  {
    v14 = PLImportGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      camera = [(PHImportDeviceSource *)self camera];
      name = [camera name];
      *buf = 138412290;
      v18 = name;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "ImageCapture told us that the device '%@' removed no items ... weird!", buf, 0xCu);
    }
  }
}

- (void)cameraDevice:(id)device didAddItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:{v12, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(PHImportSource *)self addItems:v6];
}

- (void)deviceDidBecomeReady:(id)ready
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PHImportDeviceSource_deviceDidBecomeReady___block_invoke;
  v3[3] = &unk_1E75A7AE0;
  v3[4] = self;
  [(PHImportSource *)self notifyObserversUsingBlock:v3];
}

- (void)didRemoveDevice:(id)device
{
  deviceCopy = device;
  camera = [(PHImportDeviceSource *)self camera];

  if (camera == deviceCopy)
  {
    progress = [(PHImportSource *)self progress];
    [progress cancel];

    camera2 = [(PHImportDeviceSource *)self camera];
    mediaFiles = [camera2 mediaFiles];
    [(PHImportDeviceSource *)self _removeCameraFiles:mediaFiles];
  }
}

- (void)deviceDidBecomeReadyWithCompleteContentCatalog:(id)catalog
{
  v11 = *MEMORY[0x1E69E9840];
  catalogCopy = catalog;
  v5 = PLImportGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    name = [catalogCopy name];
    v7 = 136315394;
    v8 = "[PHImportDeviceSource deviceDidBecomeReadyWithCompleteContentCatalog:]";
    v9 = 2112;
    v10 = name;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "%s - %@", &v7, 0x16u);
  }

  [(PHImportSource *)self stopAssetLoading];
}

- (BOOL)isAvailable
{
  v3 = +[PHImportController sharedInstance];
  LOBYTE(self) = [v3 sourceIsConnected:self];

  return self;
}

- (void)eject
{
  deleteEjectQueue = [(PHImportDeviceSource *)self deleteEjectQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PHImportDeviceSource_eject__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  dispatch_async(deleteEjectQueue, block);
}

void __29__PHImportDeviceSource_eject__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEjecting] & 1) == 0)
  {
    v2 = [*(a1 + 32) isDeleting];
    v3 = *(a1 + 32);
    if (v2)
    {

      [v3 setEjectAfterDelete:1];
    }

    else
    {
      v4 = [v3 camera];
      [v4 requestEject];
    }
  }
}

- (BOOL)isDeleting
{
  deleteProgress = [(PHImportDeviceSource *)self deleteProgress];
  v3 = deleteProgress != 0;

  return v3;
}

- (BOOL)canEject
{
  capabilities = [(ICCameraDevice *)self->_camera capabilities];
  v3 = [capabilities containsObject:*MEMORY[0x1E696D188]];

  return v3;
}

- (BOOL)isAppleDevice
{
  camera = [(PHImportDeviceSource *)self camera];
  isAppleDevice = [camera isAppleDevice];

  return isAppleDevice;
}

- (id)iconSymbolName
{
  camera = [(PHImportDeviceSource *)self camera];
  systemSymbolName = [camera systemSymbolName];
  v5 = systemSymbolName;
  if (systemSymbolName)
  {
    lowercaseString = systemSymbolName;
  }

  else
  {
    productKind = [(PHImportDeviceSource *)self productKind];
    lowercaseString = [productKind lowercaseString];
  }

  return lowercaseString;
}

- (CGImage)icon
{
  camera = [(PHImportDeviceSource *)self camera];
  icon = [camera icon];

  return icon;
}

- (id)name
{
  camera = [(PHImportDeviceSource *)self camera];
  name = [camera name];

  return name;
}

- (id)cameraFilesForAssets:(id)assets
{
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        cameraFiles = [*(*(&v12 + 1) + 8 * i) cameraFiles];
        [v4 addObjectsFromArray:cameraFiles];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)deleteImportAssets:(id)assets isConfirmed:(BOOL)confirmed atEnd:(id)end
{
  confirmedCopy = confirmed;
  v44 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  endCopy = end;
  v10 = PLImportGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [assetsCopy count];
    if (confirmedCopy)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = _Block_copy(endCopy);
    *buf = 136316162;
    v35 = "[PHImportDeviceSource deleteImportAssets:isConfirmed:atEnd:]";
    v36 = 2048;
    v37 = assetsCopy;
    v38 = 2048;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    v42 = 2048;
    v43 = v13;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "%s - %p[%lu], %@, %p", buf, 0x34u);
  }

  deleteProgress = [(PHImportDeviceSource *)self deleteProgress];

  if (deleteProgress)
  {
    v15 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A278];
    v33 = @"A delete action is already in progress.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v17 = v15;
    v18 = -7;
  }

  else if (confirmedCopy)
  {
    if ([assetsCopy count])
    {
LABEL_16:
      deleteEjectQueue = [(PHImportDeviceSource *)self deleteEjectQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__PHImportDeviceSource_deleteImportAssets_isConfirmed_atEnd___block_invoke;
      block[3] = &unk_1E75AA870;
      block[4] = self;
      v26 = assetsCopy;
      v27 = endCopy;
      dispatch_sync(deleteEjectQueue, block);

      deleteProgress2 = [(PHImportDeviceSource *)self deleteProgress];

      v21 = 0;
      goto LABEL_17;
    }

    v19 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A278];
    v29 = @"Requested delete of content but provided no content";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = v19;
    v18 = -2;
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A278];
    v31 = @"Requested delete of content without indicating user confirmation";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v17 = v20;
    v18 = -1;
  }

  v21 = [v17 errorWithDomain:@"com.apple.ImportErrorDomain" code:v18 userInfo:v16];

  if (!v21)
  {
    goto LABEL_16;
  }

  if (endCopy)
  {
    (*(endCopy + 2))(endCopy, v21);
  }

  deleteProgress2 = 0;
LABEL_17:

  return deleteProgress2;
}

void __61__PHImportDeviceSource_deleteImportAssets_isConfirmed_atEnd___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEjecting] & 1) == 0)
  {
    v2 = [*(a1 + 32) cameraFilesForAssets:*(a1 + 40)];
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v13 = [v2 count];
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "DELETE: Requesting delete of %lu assets", buf, 0xCu);
    }

    v4 = [*(a1 + 32) camera];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __61__PHImportDeviceSource_deleteImportAssets_isConfirmed_atEnd___block_invoke_108;
    v9 = &unk_1E75A7B78;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v5 = [v4 requestDeleteFiles:v2 deleteFailed:&__block_literal_global_28123 completion:&v6];
    [*(a1 + 32) setDeleteProgress:{v5, v6, v7, v8, v9, v10}];
  }
}

void __61__PHImportDeviceSource_deleteImportAssets_isConfirmed_atEnd___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 allKeys];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = *MEMORY[0x1E696D180];
  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696D180]];
  v11 = [v10 count];

  if (v11)
  {
    v12 = PLImportGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 objectForKeyedSubscript:v9];
      v23 = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "DELETE: %@\nThe following files failed to delete:\n%@", &v23, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E696D178];
  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696D178]];
  v16 = [v15 count];

  if (v16)
  {
    v17 = PLImportGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v5 objectForKeyedSubscript:v14];
      v23 = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "\nDELETE: %@\nThe following files were not deleted:\n%@", &v23, 0x16u);
    }
  }

  v19 = PLImportGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v5 objectForKeyedSubscript:v8];
    v21 = [v20 count];
    v22 = @"none";
    if (v6)
    {
      v22 = v6;
    }

    v23 = 134218242;
    v24 = v21;
    v25 = 2112;
    v26 = v22;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "DELETE: Deleted Count: %lu, Deleted Error: %@", &v23, 0x16u);
  }

  [*(a1 + 32) setDeleteProgress:0];
  (*(*(a1 + 40) + 16))();
}

void __61__PHImportDeviceSource_deleteImportAssets_isConfirmed_atEnd___block_invoke_106(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLImportGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_ERROR, "Failed to delete %@", &v4, 0xCu);
  }
}

- (id)assetsByProcessingItem:(id)item
{
  v27 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PHImportDeviceSource *)self importAssetForCameraFile:itemCopy create:1], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v5 addObject:v6];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    sidecarFiles = [itemCopy sidecarFiles];
    v9 = [sidecarFiles countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(sidecarFiles);
          }

          v13 = [PHImportDeviceAsset assetFileForFile:*(*(&v20 + 1) + 8 * i) source:self];
          v14 = v13;
          if (v13)
          {
            if ([v13 isSidecar])
            {
              if ([v14 resourceSubType] != 512)
              {
                [v5 insertObject:v14 atIndex:0];
              }
            }

            else
            {
              [v5 addObject:v14];
            }
          }
        }

        v10 = [sidecarFiles countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15 = PLImportGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      name = [itemCopy name];
      *buf = 138412290;
      v25 = name;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "UNSUPPORTED asset '%@'", buf, 0xCu);
    }

    sidecarFiles = [0 fileName];
    v17 = [(PHImportExceptionRecorder *)self addExceptionWithType:1 path:sidecarFiles underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportDeviceSource.m" line:395];
    v7 = 0;
  }

LABEL_21:
  if ([v5 count])
  {
    v18 = [(PHImportSource *)self processAssets:v5];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)removeAssetForCameraFile:(id)file
{
  fileCopy = file;
  assetByCameraFileAccess = self->_assetByCameraFileAccess;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PHImportDeviceSource_removeAssetForCameraFile___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = fileCopy;
  v6 = fileCopy;
  dispatch_sync(assetByCameraFileAccess, v7);
}

void __49__PHImportDeviceSource_removeAssetForCameraFile___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) assetByCameraFile];
  v2 = [*(a1 + 40) uuid];
  [v3 removeObjectForKey:v2];
}

- (id)importAssetForCameraFile:(id)file create:(BOOL)create
{
  fileCopy = file;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__28146;
  v20 = __Block_byref_object_dispose__28147;
  v21 = 0;
  assetByCameraFileAccess = self->_assetByCameraFileAccess;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PHImportDeviceSource_importAssetForCameraFile_create___block_invoke;
  v11[3] = &unk_1E75A7B30;
  selfCopy = self;
  v14 = &v16;
  v12 = fileCopy;
  createCopy = create;
  v8 = fileCopy;
  dispatch_sync(assetByCameraFileAccess, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __56__PHImportDeviceSource_importAssetForCameraFile_create___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) uuid];
  v2 = [*(a1 + 40) assetByCameraFile];
  v3 = [v2 objectForKeyedSubscript:v12];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 56) == 1)
  {
    v6 = [PHImportDeviceAsset assetFileForFile:*(a1 + 32) source:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(a1 + 40);
    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = [v9 assetByCameraFile];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }
}

- (void)beginProcessingWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ICEnumerationPrioritizeSpeed"];
  if ([(PHImportSource *)self assetLoadOrder])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportSource assetLoadOrder](self, "assetLoadOrder")}];
    [dictionary setObject:v6 forKeyedSubscript:@"ICEnumerationChronologicalOrder"];
  }

  v7 = PLImportGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    camera = [(PHImportDeviceSource *)self camera];
    name = [camera name];
    *buf = 138412290;
    v16 = name;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_INFO, "Requesting session open for device %@", buf, 0xCu);
  }

  camera2 = [(PHImportDeviceSource *)self camera];
  [camera2 setMediaPresentation:2];

  camera3 = [(PHImportDeviceSource *)self camera];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PHImportDeviceSource_beginProcessingWithCompletion___block_invoke;
  v13[3] = &unk_1E75A7B08;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [camera3 requestOpenSessionWithOptions:dictionary completion:v13];
}

void __54__PHImportDeviceSource_beginProcessingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v10 = *(a1 + 32);
    v6 = [v10 camera];
    v7 = v10;
    v8 = v6;
    v9 = 2;
    goto LABEL_5;
  }

  if ([v3 code] == -9943)
  {
    v5 = *(a1 + 32);
    v6 = [v5 camera];
    v7 = v5;
    v8 = v6;
    v9 = 1;
LABEL_5:
    [v7 cameraDevice:v8 setAccessState:v9];

    goto LABEL_9;
  }

  v11 = PLImportGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Received error from [ICCameraDevice requestOpenSessionWithOptions:completion:]: %@", &v17, 0xCu);
  }

LABEL_9:
  v12 = PLImportGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 32) camera];
    v14 = [v13 name];
    v15 = [v4 code];
    v16 = @"unlocked";
    if (v15 == -9943)
    {
      v16 = @"locked";
    }

    v17 = 138412546;
    v18 = v14;
    v19 = 2114;
    v20 = v16;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "Open session for %@ completed. Device is %{public}@", &v17, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cameraDevice:(id)device setAccessState:(unsigned __int8)state
{
  stateCopy = state;
  v26 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (stateCopy == 2)
  {
    if ([(PHImportSource *)self sourceAccessState]!= 2)
    {
      v11 = PLImportGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        camera = [(PHImportDeviceSource *)self camera];
        name = [camera name];
        *buf = 138412290;
        v25 = name;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEBUG, "Notifying observers that %@ is unlocked", buf, 0xCu);
      }

      [(PHImportSource *)self setSourceAccessState:2];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __52__PHImportDeviceSource_cameraDevice_setAccessState___block_invoke_74;
      v17 = &unk_1E75A7AE0;
      selfCopy = self;
      v10 = &v14;
      goto LABEL_11;
    }
  }

  else
  {
    if (stateCopy != 1)
    {
      [(PHImportSource *)self setSourceAccessState:0];
      goto LABEL_13;
    }

    if ([(PHImportSource *)self sourceAccessState]!= 1)
    {
      v7 = PLImportGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        camera2 = [(PHImportDeviceSource *)self camera];
        name2 = [camera2 name];
        *buf = 138412290;
        v25 = name2;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Notifying observers that %@ is locked", buf, 0xCu);
      }

      [(PHImportSource *)self setSourceAccessState:1];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __52__PHImportDeviceSource_cameraDevice_setAccessState___block_invoke;
      v22 = &unk_1E75A7AE0;
      selfCopy2 = self;
      v10 = &v19;
LABEL_11:
      [(PHImportSource *)self notifyObserversUsingBlock:v10, v14, v15, v16, v17, selfCopy, v19, v20, v21, v22, selfCopy2];
    }
  }

LABEL_13:
}

- (void)fetchMetadataForRequest:(id)request importAsset:(id)asset completion:(id)completion
{
  requestCopy = request;
  assetCopy = asset;
  completionCopy = completion;
  representedObject = [assetCopy representedObject];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PHImportDeviceSource_fetchMetadataForRequest_importAsset_completion___block_invoke;
  v17[3] = &unk_1E75A7AB8;
  v18 = representedObject;
  v19 = requestCopy;
  v23 = v12;
  v20 = assetCopy;
  selfCopy = self;
  v22 = completionCopy;
  v13 = completionCopy;
  v14 = assetCopy;
  v15 = requestCopy;
  v16 = representedObject;
  [v16 requestMetadataDictionaryWithOptions:MEMORY[0x1E695E0F8] completion:v17];
}

void __71__PHImportDeviceSource_fetchMetadataForRequest_importAsset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = PLImportGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) name];
    v9 = *(a1 + 40);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11 = v10 - *(a1 + 72);
    *buf = 138412802;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "META COMP: %@ <%p> (%gs)", buf, 0x20u);
  }

  v12 = [*(a1 + 48) createMetadataFromProperties:v6];

  [*(a1 + 48) setMetadata:v12];
  [*(a1 + 32) flushMetadataCache];
  v13 = [*(a1 + 40) asset];
  if (v13 == *(a1 + 48))
  {
    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))(v16, v12, *(a1 + 40), v5);
    }
  }

  else
  {
    v14 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PHImportDeviceSource_fetchMetadataForRequest_importAsset_completion___block_invoke_71;
    v17[3] = &unk_1E75A7A90;
    v15 = *(a1 + 56);
    v20 = *(a1 + 64);
    v18 = v12;
    v19 = v5;
    [v15 fetchMetadataForRequest:v14 importAsset:v13 completion:v17];
  }
}

uint64_t __71__PHImportDeviceSource_fetchMetadataForRequest_importAsset_completion___block_invoke_71(void *a1, uint64_t a2, uint64_t a3)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a3, a1[5]);
  }

  return result;
}

- (void)sendNextMetadataRequest
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_assetDataRequestQueue);
  v27 = *MEMORY[0x1E696A278];
  do
  {
    if (![(NSMutableArray *)self->_assetMetadataRequests count])
    {
      break;
    }

    v3 = [(NSMutableArray *)self->_assetMetadataRequests objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_assetMetadataRequests removeObjectAtIndex:0];
    requestAsset = [v3 requestAsset];
    representedObject = [requestAsset representedObject];
    completionHandler = [v3 completionHandler];
    isCanceled = [v3 isCanceled];
    v8 = isCanceled;
    if (isCanceled)
    {
      v9 = PLImportGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        name = [representedObject name];
        *buf = 138412546;
        v33 = name;
        v34 = 2048;
        v35 = v3;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "META CNCL: %@ <%p>", buf, 0x16u);
      }

      v11 = MEMORY[0x1E696ABC0];
      v30 = v27;
      v12 = MEMORY[0x1E696AEC0];
      fileName = [requestAsset fileName];
      v14 = [v12 stringWithFormat:@"Request for metadata for %@ was canceled.", fileName];
      v31 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v16 = [v11 errorWithDomain:@"com.apple.ImportErrorDomain" code:-4 userInfo:v15];
      (completionHandler)[2](completionHandler, 0, v3, v16);
    }

    else
    {
      requestAsset2 = [v3 requestAsset];
      metadata = [requestAsset2 metadata];

      if (!metadata)
      {
        goto LABEL_12;
      }

      v19 = PLImportGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        requestAsset3 = [v3 requestAsset];
        representedObject2 = [requestAsset3 representedObject];
        name2 = [representedObject2 name];
        *buf = 138412546;
        v33 = name2;
        v34 = 2048;
        v35 = v3;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "META CACH: %@ <%p>", buf, 0x16u);
      }

      if (completionHandler)
      {
        requestAsset4 = [v3 requestAsset];
        metadata2 = [requestAsset4 metadata];
        (completionHandler)[2](completionHandler, metadata2, v3, 0);
      }

      else
      {
LABEL_12:
        v25 = PLImportGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          name3 = [representedObject name];
          *buf = 138412546;
          v33 = name3;
          v34 = 2048;
          v35 = v3;
          _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEBUG, "META SEND: %@ <%p>", buf, 0x16u);
        }

        self->_waitingForAssetMetadataRequest = 1;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __47__PHImportDeviceSource_sendNextMetadataRequest__block_invoke;
        v28[3] = &unk_1E75A7A68;
        v28[4] = self;
        v29 = completionHandler;
        [(PHImportDeviceSource *)self fetchMetadataForRequest:v3 importAsset:requestAsset completion:v28];
      }
    }
  }

  while ((v8 & 1) != 0);
}

void __47__PHImportDeviceSource_sendNextMetadataRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 376);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PHImportDeviceSource_sendNextMetadataRequest__block_invoke_2;
  block[3] = &unk_1E75AB270;
  block[4] = v10;
  dispatch_async(v11, block);
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v9);
  }
}

- (void)fetchMetadataUsingRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  assetDataRequestQueue = self->_assetDataRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PHImportDeviceSource_fetchMetadataUsingRequest_withCompletion___block_invoke;
  block[3] = &unk_1E75AA870;
  selfCopy = self;
  v14 = completionCopy;
  v12 = requestCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(assetDataRequestQueue, block);
}

void __65__PHImportDeviceSource_fetchMetadataUsingRequest_withCompletion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCanceled])
  {
    v2 = PLImportGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [*(a1 + 32) requestAsset];
      v4 = [v3 representedObject];
      v5 = [v4 name];
      v6 = *(a1 + 32);
      *buf = 138412546;
      v35 = v5;
      v36 = 2048;
      v37 = v6;
      _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_DEBUG, "META CNCL: %@ <%p>", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A278];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v8 asset];
    v12 = [v11 fileName];
    v13 = [v10 stringWithFormat:@"Request for thumbnail for %@ was canceled.", v12];
    v33 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v15 = [v9 errorWithDomain:@"com.apple.ImportErrorDomain" code:-4 userInfo:v14];
    (*(v7 + 16))(v7, 0, v8, v15);
  }

  else
  {
    v16 = [*(a1 + 32) requestAsset];
    v17 = [v16 metadata];

    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = PLImportGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = [*(a1 + 32) requestAsset];
      v20 = [v19 representedObject];
      v21 = [v20 name];
      v22 = *(a1 + 32);
      *buf = 138412546;
      v35 = v21;
      v36 = 2048;
      v37 = v22;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "META CACH: %@ <%p>", buf, 0x16u);
    }

    v23 = *(a1 + 48);
    if (v23)
    {
      v24 = [*(a1 + 32) requestAsset];
      v25 = [v24 metadata];
      (*(v23 + 16))(v23, v25, *(a1 + 32), 0);
    }

    else
    {
LABEL_10:
      v26 = PLImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(a1 + 32) requestAsset];
        v28 = [v27 representedObject];
        v29 = [v28 name];
        v30 = *(a1 + 32);
        *buf = 138412546;
        v35 = v29;
        v36 = 2048;
        v37 = v30;
        _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "META QUED: %@ <%p>", buf, 0x16u);
      }

      [*(a1 + 32) setCompletionHandler:*(a1 + 48)];
      [*(*(a1 + 40) + 344) addObject:*(a1 + 32)];
      v31 = *(a1 + 40);
      if ((v31[352] & 1) == 0)
      {
        [v31 sendNextMetadataRequest];
      }
    }
  }
}

- (void)sendNextThumbnailRequest
{
  v52 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_assetDataRequestQueue);
  selfCopy = self;
  p_assetThumbnailHighPriorityRequests = &self->_assetThumbnailHighPriorityRequests;
  if (![(NSMutableArray *)*p_assetThumbnailHighPriorityRequests count])
  {
    p_assetThumbnailHighPriorityRequests = &selfCopy->_assetThumbnailRequests;
  }

  v4 = *p_assetThumbnailHighPriorityRequests;
  v33 = *MEMORY[0x1E696D1A0];
  v32 = *MEMORY[0x1E696D198];
  v31 = *MEMORY[0x1E696A278];
  while ([(NSMutableArray *)v4 count])
  {
    v5 = [(NSMutableArray *)v4 objectAtIndexedSubscript:0];
    [(NSMutableArray *)v4 removeObjectAtIndex:0];
    requestAsset = [v5 requestAsset];
    representedObject = [requestAsset representedObject];
    completionHandler = [v5 completionHandler];
    v9 = completionHandler;
    if (!representedObject || !completionHandler)
    {
      v10 = PLImportGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = _Block_copy(v9);
        *buf = 138412546;
        v47 = representedObject;
        v48 = 2112;
        v49 = v11;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Expect to have non-nil cameraFile and completionHandler: %@, %@", buf, 0x16u);
      }
    }

    isCanceled = [v5 isCanceled];
    v13 = PLImportGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (isCanceled)
    {
      if (v14)
      {
        name = [representedObject name];
        longestSide = [v5 longestSide];
        *buf = 138412802;
        v47 = name;
        v48 = 2048;
        v49 = longestSide;
        v50 = 2048;
        v51 = v5;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "THMB CNCL: %@ (%lu) <%p>", buf, 0x20u);
      }

      if (!v9)
      {
        goto LABEL_19;
      }

      v17 = MEMORY[0x1E696ABC0];
      v44 = v31;
      v18 = MEMORY[0x1E696AEC0];
      fileName = [requestAsset fileName];
      v20 = [v18 stringWithFormat:@"Request for thumbnail for %@ was canceled.", fileName];
      v45 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v22 = [v17 errorWithDomain:@"com.apple.ImportErrorDomain" code:-4 userInfo:v21];
      (v9)[2](v9, 0, v5, v22);
    }

    else
    {
      if (v14)
      {
        name2 = [representedObject name];
        longestSide2 = [v5 longestSide];
        *buf = 138412802;
        v47 = name2;
        v48 = 2048;
        v49 = longestSide2;
        v50 = 2048;
        v51 = v5;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "THMB SEND: %@ (%lu) <%p>", buf, 0x20u);
      }

      selfCopy->_waitingForAssetThumbnailRequest = 1;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v26 = v25;
      v42[0] = v33;
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "longestSide")}];
      v42[1] = v32;
      v43[0] = v27;
      v43[1] = MEMORY[0x1E695E110];
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __48__PHImportDeviceSource_sendNextThumbnailRequest__block_invoke;
      v35[3] = &unk_1E75A7A40;
      v29 = representedObject;
      v36 = v29;
      v30 = v5;
      v41 = v26;
      v37 = v30;
      v38 = selfCopy;
      v39 = requestAsset;
      v40 = v9;
      [v29 requestThumbnailDataWithOptions:v28 completion:v35];

      fileName = v36;
    }

LABEL_19:
    if ((isCanceled & 1) == 0)
    {
      break;
    }
  }
}

void __48__PHImportDeviceSource_sendNextThumbnailRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLImportGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) name];
    v9 = [*(a1 + 40) longestSide];
    v10 = *(a1 + 40);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v12 = v11 - *(a1 + 72);
    *buf = 138413058;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v10;
    v32 = 2048;
    v33 = v12;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "THMB COMP: %@ (%lu) <%p> (%gs)", buf, 0x2Au);
  }

  if (!v5)
  {
    v13 = PLImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 32) name];
      v15 = *(a1 + 40);
      *buf = 138412546;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "WARNING: ICC returned nil image data for %@ <%p>", buf, 0x16u);
    }
  }

  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__PHImportDeviceSource_sendNextThumbnailRequest__block_invoke_65;
  v22[3] = &unk_1E75A7A18;
  v22[4] = v16;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v24 = v6;
  v25 = v19;
  v23 = v5;
  v20 = v6;
  v21 = v5;
  [v16 fetchMetadataForRequest:v17 importAsset:v18 completion:v22];
}

void __48__PHImportDeviceSource_sendNextThumbnailRequest__block_invoke_65(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[4];
  v6 = *(v5 + 376);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PHImportDeviceSource_sendNextThumbnailRequest__block_invoke_2;
  block[3] = &unk_1E75AB270;
  block[4] = v5;
  dispatch_async(v6, block);
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, a1[5], v4, a1[6]);
  }
}

- (void)fetchThumbnailDataUsingRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  assetDataRequestQueue = self->_assetDataRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PHImportDeviceSource_fetchThumbnailDataUsingRequest_withCompletion___block_invoke;
  block[3] = &unk_1E75AA870;
  selfCopy = self;
  v14 = completionCopy;
  v12 = requestCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(assetDataRequestQueue, block);
}

void __70__PHImportDeviceSource_fetchThumbnailDataUsingRequest_withCompletion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isCanceled];
  v3 = PLImportGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) requestAsset];
      v6 = [v5 representedObject];
      v7 = [v6 name];
      v8 = [*(a1 + 32) longestSide];
      v9 = *(a1 + 32);
      *buf = 138412802;
      v30 = v7;
      v31 = 2048;
      v32 = v8;
      v33 = 2048;
      v34 = v9;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "THMB CNCL: %@ (%lu) <%p>", buf, 0x20u);
    }

    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A278];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v11 asset];
    v15 = [v14 fileName];
    v16 = [v13 stringWithFormat:@"Request for thumbnail for %@ was canceled.", v15];
    v28 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v18 = [v12 errorWithDomain:@"com.apple.ImportErrorDomain" code:-4 userInfo:v17];
    (*(v10 + 16))(v10, 0, v11, v18);
  }

  else
  {
    if (v4)
    {
      v19 = [*(a1 + 32) requestAsset];
      v20 = [v19 representedObject];
      v21 = [v20 name];
      v22 = [*(a1 + 32) longestSide];
      v23 = *(a1 + 32);
      *buf = 138412802;
      v30 = v21;
      v31 = 2048;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "THMB QUED: %@ (%lu) <%p>", buf, 0x20u);
    }

    v24 = [*(a1 + 32) priority];
    v25 = &OBJC_IVAR___PHImportDeviceSource__assetThumbnailRequests;
    if (v24 == 1)
    {
      v25 = &OBJC_IVAR___PHImportDeviceSource__assetThumbnailHighPriorityRequests;
    }

    v14 = *(*(a1 + 40) + *v25);
    [*(a1 + 32) setCompletionHandler:*(a1 + 48)];
    [v14 addObject:*(a1 + 32)];
    v26 = *(a1 + 40);
    if ((v26[336] & 1) == 0)
    {
      [v26 sendNextThumbnailRequest];
    }
  }
}

- (id)uuid
{
  uUIDString = [(ICCameraDevice *)self->_camera UUIDString];
  v4 = uUIDString;
  if (uUIDString)
  {
    uuid = uUIDString;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHImportDeviceSource;
    uuid = [(PHImportSource *)&v8 uuid];
  }

  v6 = uuid;

  return v6;
}

- (PHImportDeviceSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = PHImportDeviceSource;
  v6 = [(PHImportSource *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_camera, device);
    [deviceCopy setDelegate:v7];
    v8 = objc_opt_new();
    assetByCameraFile = v7->_assetByCameraFile;
    v7->_assetByCameraFile = v8;

    v10 = dispatch_queue_create("assetByCameraFile access", 0);
    assetByCameraFileAccess = v7->_assetByCameraFileAccess;
    v7->_assetByCameraFileAccess = v10;

    objc_initWeak(&location, v7);
    v12 = [ICCameraDeviceRemovedItemsCoalescer alloc];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __39__PHImportDeviceSource_initWithDevice___block_invoke;
    v33 = &unk_1E75A79E8;
    objc_copyWeak(&v34, &location);
    v13 = [(ICCameraDeviceRemovedItemsCoalescer *)v12 initWithSource:v7 block:&v30];
    removalCoalescer = v7->_removalCoalescer;
    v7->_removalCoalescer = v13;

    v15 = dispatch_queue_create("Import Asset Delete/Eject", 0);
    deleteEjectQueue = v7->_deleteEjectQueue;
    v7->_deleteEjectQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetThumbnailRequests = v7->_assetThumbnailRequests;
    v7->_assetThumbnailRequests = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetMetadataRequests = v7->_assetMetadataRequests;
    v7->_assetMetadataRequests = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetThumbnailHighPriorityRequests = v7->_assetThumbnailHighPriorityRequests;
    v7->_assetThumbnailHighPriorityRequests = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_USER_INITIATED, -1);
    v25 = dispatch_queue_create("com.photos.import.devicesource.assetdatarequests", v24);
    assetDataRequestQueue = v7->_assetDataRequestQueue;
    v7->_assetDataRequestQueue = v25;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    assetDataRequestsByCameraItem = v7->_assetDataRequestsByCameraItem;
    v7->_assetDataRequestsByCameraItem = weakToStrongObjectsMapTable;

    [(PHImportSource *)v7 setSourceAccessState:0];
    [(PHImportSource *)v7 setOpen:1];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __39__PHImportDeviceSource_initWithDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeAssets:v3];
}

@end