@interface AEPhotosAssetPackageGenerator
+ (void)deleteTemporaryStorageWithTimeout:(double)timeout;
- (AEPhotosAssetPackageGenerator)initWithAsset:(id)asset;
- (AEPhotosAssetPackageGenerator)initWithAssetReference:(id)reference;
- (BOOL)retrieveGeneratedPackageWithCompletion:(id)completion;
- (NSProgress)progress;
- (id)_assetPackageforPHAsset:(id)asset withAssetExportRequestFileURLs:(id)ls error:(id *)error;
- (id)_copyAssetExportFileURLs:(id)ls forAsset:(id)asset error:(id *)error;
- (id)_copyItemAtURL:(id)l toOutputDirectory:(id)directory error:(id *)error;
- (id)_createOutputDirectoryBaseURLWithIdentifier:(id)identifier error:(id *)error;
- (id)_generatePackageFromAsset:(id)asset;
- (id)beginGenerating;
- (void)_callCompletionWithResult:(id)result;
- (void)_commonAEPhotosAssetPackageGeneratorInitWithAsset:(id)asset assetReference:(id)reference;
- (void)_generatePackageWithAssetExportFileURLs:(id)ls error:(id)error;
- (void)cancelReviewAssetRequest;
- (void)requestReviewAssetWithCompletionHandler:(id)handler;
@end

@implementation AEPhotosAssetPackageGenerator

- (void)cancelReviewAssetRequest
{
  progress = [(AEPhotosAssetPackageGenerator *)self progress];
  [progress cancel];
}

- (void)requestReviewAssetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  beginGenerating = [(AEPhotosAssetPackageGenerator *)self beginGenerating];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__AEPhotosAssetPackageGenerator_requestReviewAssetWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC7590;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(AEPhotosAssetPackageGenerator *)self retrieveGeneratedPackageWithCompletion:v7];
}

void __73__AEPhotosAssetPackageGenerator_requestReviewAssetWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v10)
  {
    v12 = [v7 reviewAssetFromPackageMetadata];
  }

  else
  {
    v12 = 0;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__AEPhotosAssetPackageGenerator_requestReviewAssetWithCompletionHandler___block_invoke_2;
  v18[3] = &unk_278CC7708;
  v21 = *(a1 + 32);
  v22 = v11;
  v23 = a4;
  v13 = v9;
  v19 = v13;
  v14 = v12;
  v20 = v14;
  v15 = MEMORY[0x245CDF210](v18);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v15[2](v15);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__AEPhotosAssetPackageGenerator_requestReviewAssetWithCompletionHandler___block_invoke_3;
    block[3] = &unk_278CC7730;
    v17 = v15;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __73__AEPhotosAssetPackageGenerator_requestReviewAssetWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 57), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

- (id)_assetPackageforPHAsset:(id)asset withAssetExportRequestFileURLs:(id)ls error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  lsCopy = ls;
  v51 = [lsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A50]];
  v50 = [lsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A58]];
  v49 = [lsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A48]];
  v8 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [assetCopy uuid];
    *buf = 138543618;
    *&buf[4] = uuid;
    *&buf[12] = 2114;
    *&buf[14] = lsCopy;
    _os_log_impl(&dword_2411DE000, v8, OS_LOG_TYPE_DEFAULT, "[AEPhotosAssetPackageGenerator] Creating asset package for asset %{public}@ with file URLS: %{public}@", buf, 0x16u);
  }

  if ([assetCopy isPhoto])
  {
    v10 = [assetCopy canPlayLoopingVideo] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  if ([assetCopy isVideo])
  {
    canPlayLoopingVideo = 1;
  }

  else
  {
    canPlayLoopingVideo = [assetCopy canPlayLoopingVideo];
  }

  if (v51)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    v13 = v51;
    if ([assetCopy playbackStyle] == 3)
    {
      if (!v50)
      {
        uuid4 = PLAssetExplorerGetLog();
        if (os_log_type_enabled(uuid4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2411DE000, uuid4, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] No video URL found for Live Photo asset, from asset export request.", buf, 2u);
        }

        v29 = 0;
        aLAssetURL = 0;
        v14 = 0;
        goto LABEL_57;
      }

      v14 = v50;
      aLAssetURL = 0;
    }

    else
    {
      aLAssetURL = 0;
      v14 = 0;
    }
  }

  else
  {
    if (v50)
    {
      v16 = canPlayLoopingVideo;
    }

    else
    {
      v16 = 0;
    }

    if (v16 != 1)
    {
      uuid4 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(uuid4, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [assetCopy uuid];
        if (v10)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        v19 = v18;
        if (v51)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v21 = v20;
        v22 = v19;
        if (canPlayLoopingVideo)
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v24 = v23;
        v25 = v21;
        if (v50)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v27 = v26;
        v28 = v24;
        *buf = 138544386;
        *&buf[4] = uuid2;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        *&buf[22] = 2114;
        v60 = v21;
        *v61 = 2114;
        *&v61[2] = v24;
        *&v61[10] = 2114;
        *&v61[12] = v27;
        _os_log_impl(&dword_2411DE000, uuid4, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Could not retrieve valid URLs for creating a package for asset: %{public}@. Is image? %{public}@. Photo URL available? %{public}@. Is video or auto/loop? %{public}@. Video URL available? %{public}@.", buf, 0x34u);
      }

      v29 = 0;
      aLAssetURL = 0;
      v14 = 0;
      v13 = 0;
      goto LABEL_57;
    }

    v14 = v50;
    if ([assetCopy isHighFrameRateVideo])
    {
      aLAssetURL = [assetCopy ALAssetURL];
    }

    else
    {
      aLAssetURL = 0;
    }

    v13 = 0;
  }

  v30 = assetCopy;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = __Block_byref_object_copy__1254;
  *v61 = __Block_byref_object_dispose__1255;
  *&v61[8] = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__1254;
  v57 = __Block_byref_object_dispose__1255;
  v58 = 0;
  defaultFormatChooser = [MEMORY[0x277D3B228] defaultFormatChooser];
  masterThumbnailFormat = [defaultFormatChooser masterThumbnailFormat];

  [masterThumbnailFormat sizeWithFallBackSize:{256.0, 256.0}];
  v34 = v33;
  v36 = v35;
  v37 = objc_alloc_init(MEMORY[0x277CD98A0]);
  [v37 setVersion:0];
  [v37 setSynchronous:1];
  [v37 setDeliveryMode:1];
  [v37 setNetworkAccessAllowed:0];
  defaultManager = [MEMORY[0x277CD9898] defaultManager];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = ___PreviewImageForAsset_block_invoke;
  v52[3] = &unk_278CC7758;
  v52[4] = buf;
  v52[5] = &v53;
  [defaultManager requestImageForAsset:v30 targetSize:0 contentMode:v37 options:v52 resultHandler:{v34, v36}];

  if (error)
  {
    v39 = v54[5];
    if (v39)
    {
      *error = v39;
    }
  }

  v29 = *(*&buf[8] + 40);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(buf, 8);

  if (!v29)
  {
    uuid4 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(uuid4, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [v30 uuid];
      v44 = *error;
      *buf = 138543618;
      *&buf[4] = uuid3;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      _os_log_impl(&dword_2411DE000, uuid4, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Could not generate preview image for asset: %{public}@. Error: %{public}@", buf, 0x16u);
    }

    v29 = 0;
LABEL_57:
    v40 = 0;
    goto LABEL_58;
  }

  uuid4 = [v30 uuid];
  v40 = [[AEMutableAssetPackage alloc] initWithAssetIdentifier:uuid4];
  if (v13)
  {
    identifier = [*MEMORY[0x277CE1DB0] identifier];
    [(AEMutableAssetPackage *)v40 storeURL:v13 forType:identifier];
  }

  if (v14)
  {
    identifier2 = [*MEMORY[0x277CE1E00] identifier];
    [(AEMutableAssetPackage *)v40 storeURL:v14 forType:identifier2];
  }

  [(AEMutableAssetPackage *)v40 setSidecarObject:v29 forKey:@"com.apple.assetexplorer.asset-preview-image"];
  if (aLAssetURL)
  {
    [(AEMutableAssetPackage *)v40 storeURL:aLAssetURL forType:@"com.apple.assetexplorer.alasset.url"];
  }

  [(AEMutableAssetPackage *)v40 storeMetadataFromPHAsset:v30 imageURL:v51 adjustmentURL:v49];
LABEL_58:

  v45 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_copyAssetExportFileURLs:(id)ls forAsset:(id)asset error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  uuid = [asset uuid];
  v10 = [(AEPhotosAssetPackageGenerator *)self _createOutputDirectoryBaseURLWithIdentifier:uuid error:error];

  v27 = v10;
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(lsCopy, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = lsCopy;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v26 = lsCopy;
      v15 = *v29;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:v17, v26];
          v19 = [(AEPhotosAssetPackageGenerator *)self _copyItemAtURL:v18 toOutputDirectory:v27 error:error];
          if (!v19)
          {
            v21 = PLAssetExplorerGetLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = *error;
              *buf = 138543618;
              v33 = v12;
              v34 = 2114;
              v35 = v22;
              _os_log_impl(&dword_2411DE000, v21, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Error making local copy of asset export file URLs: %{public}@. Error: %{public}@", buf, 0x16u);
            }

            v11 = 0;
            goto LABEL_14;
          }

          v20 = v19;
          [v11 setObject:v19 forKeyedSubscript:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_14:
      lsCopy = v26;
    }
  }

  else
  {
    v12 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = *error;
      *buf = 138543362;
      v33 = v23;
      _os_log_impl(&dword_2411DE000, v12, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Error making local copy of asset export file URLs because the temporary output directory coudln't be created: %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_copyItemAtURL:(id)l toOutputDirectory:(id)directory error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = MEMORY[0x277CCAA00];
  directoryCopy = directory;
  defaultManager = [v8 defaultManager];
  lastPathComponent = [lCopy lastPathComponent];
  v12 = [directoryCopy URLByAppendingPathComponent:lastPathComponent];

  if ([defaultManager copyItemAtURL:lCopy toURL:v12 error:error])
  {
    v13 = v12;
  }

  else
  {
    v14 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      v18 = 138543874;
      v19 = lCopy;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_2411DE000, v14, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Couldn't copy item at URL '%{public}@' to '%{public}@'. Error: %{public}@", &v18, 0x20u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_createOutputDirectoryBaseURLWithIdentifier:(id)identifier error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lastPathComponent = [identifierCopy lastPathComponent];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  if ([defaultManager fileExistsAtPath:v8])
  {
    v11 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = identifierCopy;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_2411DE000, v11, OS_LOG_TYPE_DEFAULT, "[AEPhotosAssetPackageGenerator] Output directory for identifier '%{public}@' already exists at: '%{public}@'. Deleting...", &v21, 0x16u);
    }

    if (([defaultManager removeItemAtURL:v10 error:error] & 1) == 0)
    {
      v12 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *error;
        v21 = 138543618;
        v22 = v8;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_2411DE000, v12, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Error deleting directory '%{public}@'. Error: %{public}@", &v21, 0x16u);
      }
    }
  }

  if (*error)
  {
    goto LABEL_16;
  }

  v14 = [defaultManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:error];
  v15 = PLAssetExplorerGetLog();
  v16 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = *error;
      v21 = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = identifierCopy;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_2411DE000, v16, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Unable to create directory '%{public}@' for saving exported asset resources of identifier: %{public}@. Error: %{public}@", &v21, 0x20u);
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_2411DE000, v16, OS_LOG_TYPE_DEFAULT, "[AEPhotosAssetPackageGenerator] Created output directory for identifier '%{public}@' at: '%{public}@'.", &v21, 0x16u);
  }

  v17 = v10;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_generatePackageFromAsset:(id)asset
{
  assetCopy = asset;
  _packagerWorkGroup = [(AEPhotosAssetPackageGenerator *)self _packagerWorkGroup];
  dispatch_group_enter(_packagerWorkGroup);
  _exportRequest = [(AEPhotosAssetPackageGenerator *)self _exportRequest];
  progress = [_exportRequest progress];

  if (PLIsLockdownMode())
  {
    v8 = PLPickerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2411DE000, v8, OS_LOG_TYPE_DEFAULT, "Lockdown mode is enabled, excluding location and caption metadata by default.", buf, 2u);
    }
  }

  preparationOptions = [(AEPhotosAssetPackageGenerator *)self preparationOptions];

  if (preparationOptions)
  {
    preparationOptions2 = [(AEPhotosAssetPackageGenerator *)self preparationOptions];
    [preparationOptions2 shouldIncludeLocation];

    preparationOptions3 = [(AEPhotosAssetPackageGenerator *)self preparationOptions];
    [preparationOptions3 shouldIncludeCaption];

    preparationOptions4 = [(AEPhotosAssetPackageGenerator *)self preparationOptions];
    [preparationOptions4 userEncodingPolicy];
  }

  v13 = PUActivityItemSharingPreferencesMake();
  v15 = v14;
  v16 = objc_alloc(MEMORY[0x277D3D008]);
  _exportRequest2 = [(AEPhotosAssetPackageGenerator *)self _exportRequest];
  variants = [_exportRequest2 variants];
  v19 = [v16 initWithAsset:assetCopy availableSharingVariants:variants activityType:*MEMORY[0x277D54738] preferences:{v13, v15}];

  assetExportRequestOptions = [v19 assetExportRequestOptions];
  [assetExportRequestOptions setFlattenSlomoVideos:0];
  _exportRequest3 = [(AEPhotosAssetPackageGenerator *)self _exportRequest];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__AEPhotosAssetPackageGenerator__generatePackageFromAsset___block_invoke;
  v25[3] = &unk_278CC76D0;
  v25[4] = self;
  v26 = assetCopy;
  v27 = _packagerWorkGroup;
  v22 = _packagerWorkGroup;
  v23 = assetCopy;
  [_exportRequest3 exportWithOptions:assetExportRequestOptions completionHandler:v25];

  return progress;
}

void __59__AEPhotosAssetPackageGenerator__generatePackageFromAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v17 = 0;
    v9 = [v7 _copyAssetExportFileURLs:v5 forAsset:v8 error:&v17];
    v10 = v17;
    [*(a1 + 32) _generatePackageWithAssetExportFileURLs:v9 error:v10];
  }

  else if (v6)
  {
    v11 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *buf = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_2411DE000, v11, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Error during asset export request for asset: %{public}@. Error: %{public}@", buf, 0x16u);
    }

    v13 = [*(a1 + 32) _packagerIvarIsolationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AEPhotosAssetPackageGenerator__generatePackageFromAsset___block_invoke_220;
    block[3] = &unk_278CC76A8;
    block[4] = *(a1 + 32);
    v16 = v6;
    dispatch_sync(v13, block);
  }

  dispatch_group_leave(*(a1 + 48));

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_generatePackageWithAssetExportFileURLs:(id)ls error:(id)error
{
  lsCopy = ls;
  errorCopy = error;
  _asset = [(AEPhotosAssetPackageGenerator *)self _asset];
  _packagerWorkGroup = [(AEPhotosAssetPackageGenerator *)self _packagerWorkGroup];
  v10 = dispatch_get_global_queue(25, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__AEPhotosAssetPackageGenerator__generatePackageWithAssetExportFileURLs_error___block_invoke;
  v14[3] = &unk_278CC7680;
  v15 = errorCopy;
  v16 = lsCopy;
  selfCopy = self;
  v18 = _asset;
  v11 = _asset;
  v12 = lsCopy;
  v13 = errorCopy;
  dispatch_group_async(_packagerWorkGroup, v10, v14);
}

void __79__AEPhotosAssetPackageGenerator__generatePackageWithAssetExportFileURLs_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) && !*(a1 + 32))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v14 = v2;
    v3 = [v4 _assetPackageforPHAsset:v5 withAssetExportRequestFileURLs:? error:?];
    v6 = v14;

    v2 = v6;
  }

  else
  {
    v3 = 0;
  }

  v7 = [v3 copy];
  v8 = [*(a1 + 48) _packagerIvarIsolationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__AEPhotosAssetPackageGenerator__generatePackageWithAssetExportFileURLs_error___block_invoke_2;
  v11[3] = &unk_278CC7658;
  v11[4] = *(a1 + 48);
  v12 = v2;
  v13 = v7;
  v9 = v7;
  v10 = v2;
  dispatch_sync(v8, v11);
}

uint64_t __79__AEPhotosAssetPackageGenerator__generatePackageWithAssetExportFileURLs_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setIvarQueueLastError:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _setIvarQueueCurrentPackage:v3];
}

- (void)_callCompletionWithResult:(id)result
{
  resultCopy = result;
  progress = [(AEPhotosAssetPackageGenerator *)self progress];
  isCancelled = [progress isCancelled];

  v7 = 0;
  v8 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1254;
  v21 = __Block_byref_object_dispose__1255;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1254;
  v15 = __Block_byref_object_dispose__1255;
  v16 = 0;
  if ((isCancelled & 1) == 0)
  {
    _packagerIvarIsolationQueue = [(AEPhotosAssetPackageGenerator *)self _packagerIvarIsolationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AEPhotosAssetPackageGenerator__callCompletionWithResult___block_invoke;
    block[3] = &unk_278CC7630;
    block[4] = self;
    block[5] = &v17;
    block[6] = &v11;
    dispatch_sync(_packagerIvarIsolationQueue, block);

    v8 = v18[5];
    v7 = v12[5];
  }

  resultCopy[2](resultCopy, v8, v7, isCancelled);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
}

uint64_t __59__AEPhotosAssetPackageGenerator__callCompletionWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ivarQueue_currentPackage];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) _ivarQueue_lastError];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (NSProgress)progress
{
  _exportRequest = [(AEPhotosAssetPackageGenerator *)self _exportRequest];
  progress = [_exportRequest progress];

  return progress;
}

- (BOOL)retrieveGeneratedPackageWithCompletion:(id)completion
{
  completionCopy = completion;
  _packagerWorkGroup = [(AEPhotosAssetPackageGenerator *)self _packagerWorkGroup];
  v6 = dispatch_group_wait(_packagerWorkGroup, 0);

  if (v6)
  {
    _packagerWorkGroup2 = [(AEPhotosAssetPackageGenerator *)self _packagerWorkGroup];
    v8 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__AEPhotosAssetPackageGenerator_retrieveGeneratedPackageWithCompletion___block_invoke_2;
    block[3] = &unk_278CC75E0;
    block[4] = self;
    v14 = completionCopy;
    v9 = completionCopy;
    dispatch_group_notify(_packagerWorkGroup2, v8, block);

    v10 = v14;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__AEPhotosAssetPackageGenerator_retrieveGeneratedPackageWithCompletion___block_invoke;
    v15[3] = &unk_278CC7590;
    v16 = completionCopy;
    v11 = completionCopy;
    [(AEPhotosAssetPackageGenerator *)self _callCompletionWithResult:v15];
    v10 = v16;
  }

  return v6 == 0;
}

void __72__AEPhotosAssetPackageGenerator_retrieveGeneratedPackageWithCompletion___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __72__AEPhotosAssetPackageGenerator_retrieveGeneratedPackageWithCompletion___block_invoke_3;
  v2[3] = &unk_278CC7590;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _callCompletionWithResult:v2];
}

void __72__AEPhotosAssetPackageGenerator_retrieveGeneratedPackageWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__AEPhotosAssetPackageGenerator_retrieveGeneratedPackageWithCompletion___block_invoke_4;
  v12[3] = &unk_278CC75B8;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v13 = v7;
  v16 = a4;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

- (id)beginGenerating
{
  _asset = [(AEPhotosAssetPackageGenerator *)self _asset];
  v4 = [(AEPhotosAssetPackageGenerator *)self _generatePackageFromAsset:_asset];

  return v4;
}

- (AEPhotosAssetPackageGenerator)initWithAsset:(id)asset
{
  assetCopy = asset;
  v8.receiver = self;
  v8.super_class = AEPhotosAssetPackageGenerator;
  v5 = [(AEPhotosAssetPackageGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AEPhotosAssetPackageGenerator *)v5 _commonAEPhotosAssetPackageGeneratorInitWithAsset:assetCopy assetReference:0];
  }

  return v6;
}

- (AEPhotosAssetPackageGenerator)initWithAssetReference:(id)reference
{
  referenceCopy = reference;
  asset = [referenceCopy asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = AEPhotosAssetPackageGenerator;
    v6 = [(AEPhotosAssetPackageGenerator *)&v10 init];
    v7 = v6;
    if (v6)
    {
      [(AEPhotosAssetPackageGenerator *)v6 _commonAEPhotosAssetPackageGeneratorInitWithAsset:asset assetReference:referenceCopy];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_commonAEPhotosAssetPackageGeneratorInitWithAsset:(id)asset assetReference:(id)reference
{
  v25 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  referenceCopy = reference;
  v9 = dispatch_group_create();
  packagerWorkGroup = self->__packagerWorkGroup;
  self->__packagerWorkGroup = v9;

  objc_storeStrong(&self->__asset, asset);
  v11 = [referenceCopy copy];

  v12 = v11;
  if (!v11)
  {
    v13 = objc_alloc(MEMORY[0x277D3CCF0]);
    v14 = *(MEMORY[0x277D3CFD8] + 16);
    *buf = *MEMORY[0x277D3CFD8];
    *&buf[16] = v14;
    v12 = [v13 initWithSectionObject:0 itemObject:assetCopy subitemObject:0 indexPath:buf];
  }

  objc_storeStrong(&self->_sourceAssetReference, v12);
  if (!v11)
  {
  }

  v23 = 0;
  v15 = [MEMORY[0x277CD97D8] exportRequestForAsset:assetCopy error:&v23];
  v16 = v23;
  exportRequest = self->__exportRequest;
  self->__exportRequest = v15;

  v18 = self->__exportRequest;
  if (!v18)
  {
    v19 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = assetCopy;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_2411DE000, v19, OS_LOG_TYPE_ERROR, "[AEPhotosAssetPackageGenerator] Could not create export request for asset: %{public}@. Error: %{public}@", buf, 0x16u);
    }

    v18 = self->__exportRequest;
  }

  [(PHAssetExportRequest *)v18 setAnalyticsActivityType:*MEMORY[0x277D54738]];
  [(PHAssetExportRequest *)self->__exportRequest setShouldSendTimingIntervalsToAnalytics:1];
  v20 = dispatch_queue_create("com.apple.AssetExplorer.AEPhotosAssetPackageGenerator.ivarQueue", MEMORY[0x277D85CD8]);
  packagerIvarIsolationQueue = self->__packagerIvarIsolationQueue;
  self->__packagerIvarIsolationQueue = v20;

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)deleteTemporaryStorageWithTimeout:(double)timeout
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2411DE000, v4, OS_LOG_TYPE_DEFAULT, "Beginning clean of temporary asset package storage", buf, 2u);
  }

  v5 = NSTemporaryDirectory();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (v5 && [v5 containsString:@"Plugin"] && objc_msgSend(defaultManager, "fileExistsAtPath:", v5))
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v17 = 0;
    v8 = [defaultManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:1 error:&v17];
    v9 = v17;
    if (!v8)
    {
      v10 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_2411DE000, v10, OS_LOG_TYPE_ERROR, "Failed to get contents of tmp directory with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v11 = px_dispatch_queue_create_serial();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__AEPhotosAssetPackageGenerator_deleteTemporaryStorageWithTimeout___block_invoke;
    v13[3] = &unk_278CC7608;
    v14 = v8;
    timeoutCopy = timeout;
    v15 = defaultManager;
    dispatch_async(v11, v13);
  }

  else
  {
    v11 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2411DE000, v11, OS_LOG_TYPE_DEFAULT, "No temporary asset packages to clean up", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __67__AEPhotosAssetPackageGenerator_deleteTemporaryStorageWithTimeout___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if (CFAbsoluteTimeGetCurrent() - Current > *(a1 + 48))
        {
          v16 = PLAssetExplorerGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2411DE000, v16, OS_LOG_TYPE_DEFAULT, "Timed out deleting temporary asset package storage", buf, 2u);
          }

          goto LABEL_19;
        }

        v11 = *(a1 + 40);
        v21 = 0;
        v12 = [v11 removeItemAtURL:v10 error:&v21];
        v13 = v21;
        if (v12)
        {
          ++v7;
        }

        else
        {
          v14 = PLAssetExplorerGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = [v10 path];
            *buf = 138412546;
            v27 = *&v15;
            v28 = 2114;
            v29 = v13;
            _os_log_impl(&dword_2411DE000, v14, OS_LOG_TYPE_ERROR, "Failed to delete temporary asset package at %@: %{public}@", buf, 0x16u);
          }

          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

LABEL_19:

  v17 = CFAbsoluteTimeGetCurrent();
  v18 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 32) count];
    *buf = 134218752;
    v27 = v17 - Current;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = v19;
    v32 = 2048;
    v33 = v6;
    _os_log_impl(&dword_2411DE000, v18, OS_LOG_TYPE_DEFAULT, "Finished deleting temporary asset package storage in %lf seconds. Deleted %lu of %lu with %lu failures", buf, 0x2Au);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end