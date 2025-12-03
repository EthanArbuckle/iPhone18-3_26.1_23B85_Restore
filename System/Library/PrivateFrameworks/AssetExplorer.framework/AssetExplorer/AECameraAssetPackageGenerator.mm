@interface AECameraAssetPackageGenerator
- (AECameraAssetPackageGenerator)init;
- (void)_populatePackage:(id)package fromReviewAsset:(id)asset withCompletionHandler:(id)handler;
- (void)generatePackageFromReviewAsset:(id)asset withCompletionHandler:(id)handler;
@end

@implementation AECameraAssetPackageGenerator

- (void)generatePackageFromReviewAsset:(id)asset withCompletionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  _generationQueue = [(AECameraAssetPackageGenerator *)self _generationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__AECameraAssetPackageGenerator_generatePackageFromReviewAsset_withCompletionHandler___block_invoke;
  block[3] = &unk_278CC7568;
  v12 = assetCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = assetCopy;
  dispatch_async(_generationQueue, block);
}

void __86__AECameraAssetPackageGenerator_generatePackageFromReviewAsset_withCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  v2 = [[AEMutableAssetPackage alloc] initWithAssetIdentifier:v3];
  [*(a1 + 40) _populatePackage:v2 fromReviewAsset:*(a1 + 32) withCompletionHandler:*(a1 + 48)];
}

- (void)_populatePackage:(id)package fromReviewAsset:(id)asset withCompletionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  assetCopy = asset;
  handlerCopy = handler;
  playbackStyle = [assetCopy playbackStyle];
  if ((playbackStyle - 1) <= 1)
  {
    providedFullsizeImageURL = [assetCopy providedFullsizeImageURL];
    providedFullsizeRenderImageURL = [assetCopy providedFullsizeRenderImageURL];
    identifier = [*MEMORY[0x277CE1DB0] identifier];
    if (providedFullsizeRenderImageURL)
    {
      [packageCopy storeURL:providedFullsizeRenderImageURL forType:identifier];

      [packageCopy storeURL:providedFullsizeImageURL forType:@"com.apple.assetexplorer.editedoriginalimage"];
      goto LABEL_27;
    }

    [packageCopy storeURL:providedFullsizeImageURL forType:identifier];
LABEL_26:

    goto LABEL_27;
  }

  if (playbackStyle == 3)
  {
    providedFullsizeImageURL = [assetCopy providedFullsizeImageURL];
    providedFullsizeRenderImageURL = [assetCopy providedFullsizeRenderImageURL];
    if (providedFullsizeRenderImageURL && providedFullsizeImageURL)
    {
      [packageCopy storeURL:providedFullsizeImageURL forType:@"com.apple.assetexplorer.editedoriginalimage"];
      identifier2 = [*MEMORY[0x277CE1DB0] identifier];
      v15 = packageCopy;
      v16 = providedFullsizeRenderImageURL;
    }

    else
    {
      if (!providedFullsizeImageURL)
      {
        v28 = PLAssetExplorerGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v30 = 138543362;
          v31 = 0;
          _os_log_impl(&dword_2411DE000, v28, OS_LOG_TYPE_ERROR, "<Camera> Failed to store live photo image URL %{public}@ into live photo asset package!", &v30, 0xCu);
        }

        packageCopy = 0;
LABEL_19:
        identifier = [assetCopy providedVideoURL];
        providedFullsizeRenderVideoURL = [assetCopy providedFullsizeRenderVideoURL];
        if (providedFullsizeRenderVideoURL && identifier)
        {
          [packageCopy storeURL:identifier forType:@"com.apple.assetexplorer.editedoriginalvideo"];
          identifier3 = [*MEMORY[0x277CE1E00] identifier];
          v22 = packageCopy;
          v23 = providedFullsizeRenderVideoURL;
        }

        else
        {
          if (!identifier)
          {
            v29 = PLAssetExplorerGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = 138543362;
              v31 = 0;
              _os_log_impl(&dword_2411DE000, v29, OS_LOG_TYPE_ERROR, "<Camera> Failed to store live photo video URL %{public}@ into live photo asset package!", &v30, 0xCu);
            }

            identifier3 = packageCopy;
            packageCopy = 0;
            goto LABEL_25;
          }

          identifier3 = [*MEMORY[0x277CE1E00] identifier];
          v22 = packageCopy;
          v23 = identifier;
        }

        [v22 storeURL:v23 forType:identifier3];
LABEL_25:

        goto LABEL_26;
      }

      identifier2 = [*MEMORY[0x277CE1DB0] identifier];
      v15 = packageCopy;
      v16 = providedFullsizeImageURL;
    }

    [v15 storeURL:v16 forType:identifier2];

    goto LABEL_19;
  }

  if ((playbackStyle & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    providedFullsizeImageURL = [assetCopy providedVideoURL];
    providedFullsizeRenderVideoURL2 = [assetCopy providedFullsizeRenderVideoURL];
    providedFullsizeRenderImageURL = providedFullsizeRenderVideoURL2;
    if (!providedFullsizeImageURL || (v18 = providedFullsizeImageURL, providedFullsizeRenderVideoURL2))
    {
      if (!providedFullsizeImageURL || !providedFullsizeRenderVideoURL2)
      {
        goto LABEL_27;
      }

      [packageCopy storeURL:providedFullsizeImageURL forType:@"com.apple.assetexplorer.editedoriginalvideo"];
      v18 = providedFullsizeRenderImageURL;
    }

    identifier4 = [*MEMORY[0x277CE1E00] identifier];
    [packageCopy storeURL:v18 forType:identifier4];

LABEL_27:
    if (packageCopy)
    {
      providedPreviewImage = [assetCopy providedPreviewImage];
      if (providedPreviewImage)
      {
        [packageCopy setSidecarObject:providedPreviewImage forKey:@"com.apple.assetexplorer.asset-preview-image"];
      }
    }

    v25 = 0;
    goto LABEL_32;
  }

  v27 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_2411DE000, v27, OS_LOG_TYPE_ERROR, "<Camera> Failed to generate an asset package – no suitable data is available", &v30, 2u);
  }

  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AECameraAssetPackageGeneratorErrorDomain" code:-47201 userInfo:0];
  packageCopy = 0;
LABEL_32:
  [packageCopy storeMetadataFromReviewAsset:assetCopy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, packageCopy, v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (AECameraAssetPackageGenerator)init
{
  v8.receiver = self;
  v8.super_class = AECameraAssetPackageGenerator;
  v2 = [(AECameraAssetPackageGenerator *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.asset-explorer.camera-package-generation", v3);
    generationQueue = v2->__generationQueue;
    v2->__generationQueue = v4;

    v6 = v2;
  }

  return v2;
}

@end