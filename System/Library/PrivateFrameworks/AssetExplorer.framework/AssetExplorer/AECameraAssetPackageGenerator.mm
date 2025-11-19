@interface AECameraAssetPackageGenerator
- (AECameraAssetPackageGenerator)init;
- (void)_populatePackage:(id)a3 fromReviewAsset:(id)a4 withCompletionHandler:(id)a5;
- (void)generatePackageFromReviewAsset:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation AECameraAssetPackageGenerator

- (void)generatePackageFromReviewAsset:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AECameraAssetPackageGenerator *)self _generationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__AECameraAssetPackageGenerator_generatePackageFromReviewAsset_withCompletionHandler___block_invoke;
  block[3] = &unk_278CC7568;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __86__AECameraAssetPackageGenerator_generatePackageFromReviewAsset_withCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  v2 = [[AEMutableAssetPackage alloc] initWithAssetIdentifier:v3];
  [*(a1 + 40) _populatePackage:v2 fromReviewAsset:*(a1 + 32) withCompletionHandler:*(a1 + 48)];
}

- (void)_populatePackage:(id)a3 fromReviewAsset:(id)a4 withCompletionHandler:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 playbackStyle];
  if ((v10 - 1) <= 1)
  {
    v11 = [v8 providedFullsizeImageURL];
    v12 = [v8 providedFullsizeRenderImageURL];
    v13 = [*MEMORY[0x277CE1DB0] identifier];
    if (v12)
    {
      [v7 storeURL:v12 forType:v13];

      [v7 storeURL:v11 forType:@"com.apple.assetexplorer.editedoriginalimage"];
      goto LABEL_27;
    }

    [v7 storeURL:v11 forType:v13];
LABEL_26:

    goto LABEL_27;
  }

  if (v10 == 3)
  {
    v11 = [v8 providedFullsizeImageURL];
    v12 = [v8 providedFullsizeRenderImageURL];
    if (v12 && v11)
    {
      [v7 storeURL:v11 forType:@"com.apple.assetexplorer.editedoriginalimage"];
      v14 = [*MEMORY[0x277CE1DB0] identifier];
      v15 = v7;
      v16 = v12;
    }

    else
    {
      if (!v11)
      {
        v28 = PLAssetExplorerGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v30 = 138543362;
          v31 = 0;
          _os_log_impl(&dword_2411DE000, v28, OS_LOG_TYPE_ERROR, "<Camera> Failed to store live photo image URL %{public}@ into live photo asset package!", &v30, 0xCu);
        }

        v7 = 0;
LABEL_19:
        v13 = [v8 providedVideoURL];
        v20 = [v8 providedFullsizeRenderVideoURL];
        if (v20 && v13)
        {
          [v7 storeURL:v13 forType:@"com.apple.assetexplorer.editedoriginalvideo"];
          v21 = [*MEMORY[0x277CE1E00] identifier];
          v22 = v7;
          v23 = v20;
        }

        else
        {
          if (!v13)
          {
            v29 = PLAssetExplorerGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = 138543362;
              v31 = 0;
              _os_log_impl(&dword_2411DE000, v29, OS_LOG_TYPE_ERROR, "<Camera> Failed to store live photo video URL %{public}@ into live photo asset package!", &v30, 0xCu);
            }

            v21 = v7;
            v7 = 0;
            goto LABEL_25;
          }

          v21 = [*MEMORY[0x277CE1E00] identifier];
          v22 = v7;
          v23 = v13;
        }

        [v22 storeURL:v23 forType:v21];
LABEL_25:

        goto LABEL_26;
      }

      v14 = [*MEMORY[0x277CE1DB0] identifier];
      v15 = v7;
      v16 = v11;
    }

    [v15 storeURL:v16 forType:v14];

    goto LABEL_19;
  }

  if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v11 = [v8 providedVideoURL];
    v17 = [v8 providedFullsizeRenderVideoURL];
    v12 = v17;
    if (!v11 || (v18 = v11, v17))
    {
      if (!v11 || !v17)
      {
        goto LABEL_27;
      }

      [v7 storeURL:v11 forType:@"com.apple.assetexplorer.editedoriginalvideo"];
      v18 = v12;
    }

    v19 = [*MEMORY[0x277CE1E00] identifier];
    [v7 storeURL:v18 forType:v19];

LABEL_27:
    if (v7)
    {
      v24 = [v8 providedPreviewImage];
      if (v24)
      {
        [v7 setSidecarObject:v24 forKey:@"com.apple.assetexplorer.asset-preview-image"];
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
  v7 = 0;
LABEL_32:
  [v7 storeMetadataFromReviewAsset:v8];
  if (v9)
  {
    v9[2](v9, v7, v25);
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