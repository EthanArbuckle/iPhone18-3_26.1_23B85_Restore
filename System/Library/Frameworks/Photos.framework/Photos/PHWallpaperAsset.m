@interface PHWallpaperAsset
- (BOOL)clearSegmentationResourceCacheWithError:(id *)a3;
- (CGRect)acceptableCropRect;
- (CGRect)gazeAreaRect;
- (CGRect)preferredCropRect;
- (NSArray)faceRegions;
- (NSString)localIdentifier;
- (NSURL)segmentationResourceURL;
- (PHWallpaperAsset)initWithPhotoAsset:(id)a3;
- (int)loadCropRectsWithResultHandler:(id)a3;
- (int)loadFocalLengthIn35mm:(id)a3;
- (int)loadMotionScore:(id)a3;
- (int)loadParallaxResource:(int64_t)a3 options:(id)a4 resultHandler:(id)a5;
- (int)loadPetsRegionsWithOptions:(id)a3 resultHandler:(id)a4;
- (void)cancelParallaxResourceRequest:(int)a3;
- (void)updateSegmentationResource:(id)a3;
@end

@implementation PHWallpaperAsset

- (int)loadFocalLengthIn35mm:(id)a3
{
  photoAsset = self->_photoAsset;
  v5 = a3;
  [(PHObject *)photoAsset fetchPropertySetsIfNeeded];
  v6 = [(PHAsset *)self->_photoAsset photosInfoPanelExtendedProperties];
  v7 = [v6 focalLengthIn35mm];

  v5[2](v5, v7, 0);
  return 0;
}

- (int)loadMotionScore:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHWallpaperAsset *)self photoAsset];
  [v5 fetchPropertySetsIfNeeded];

  v6 = [(PHWallpaperAsset *)self photoAsset];
  v7 = [v6 mediaAnalysisProperties];
  [v7 settlingEffectScore];
  v9 = v8;

  if (v9 >= 0.0)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [(PHWallpaperAsset *)self localIdentifier];
      *buf = 138543618;
      v29 = v20;
      v30 = 2048;
      v31 = v9;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_INFO, "Motion score already computed for asset: %{public}@, score: %.2f", buf, 0x16u);
    }

    v21.n128_f32[0] = v9;
    v4[2](v4, 0, v21);
    goto LABEL_12;
  }

  v10 = [(PHWallpaperAsset *)self photoAsset];
  v11 = [v10 isPhotoIris];

  v12 = PLBackendGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if ((v11 & 1) == 0)
  {
    if (v13)
    {
      v22 = [(PHWallpaperAsset *)self localIdentifier];
      *buf = 138543362;
      v29 = v22;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "No motion score for non-Live Photo asset: %{public}@", buf, 0xCu);
    }

    v23.n128_u32[0] = -1.0;
    v4[2](v4, 0, v23);
LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  if (v13)
  {
    v14 = [(PHWallpaperAsset *)self localIdentifier];
    *buf = 138543362;
    v29 = v14;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "Requesting on-demand analysis of motion score for asset: %{public}@", buf, 0xCu);
  }

  v15 = MEMORY[0x1E69BE5A0];
  v16 = [(PHWallpaperAsset *)self photoAsset];
  v27 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __36__PHWallpaperAsset_loadMotionScore___block_invoke;
  v25[3] = &unk_1E75A7B78;
  v25[4] = self;
  v26 = v4;
  v18 = [v15 requestMovieCurationForAssets:v17 withOptions:0 progressHandler:0 completionHandler:v25];

LABEL_13:
  return v18;
}

void __36__PHWallpaperAsset_loadMotionScore___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) localIdentifier];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"SettlingEffectsGatingResults"];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 firstObject];
        v9 = [v8 objectForKeyedSubscript:@"quality"];
        if (v9)
        {
          v10 = v9;
          [v9 floatValue];
          (*(*(a1 + 40) + 16))(v11);
        }

        else
        {
          v21 = PLBackendGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [*(a1 + 32) localIdentifier];
            *buf = 138543618;
            v34 = v22;
            v35 = 2114;
            v36 = v7;
            _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "Missing motion score value for asset: %{public}@, results: %{public}@", buf, 0x16u);
          }

          v23 = *(a1 + 40);
          v24 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E696A278];
          v32 = @"Missing motion score value";
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v26 = [v24 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v25];
          (*(v23 + 16))(v23, v26, -1.0);

          v10 = 0;
        }
      }

      else
      {
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [*(a1 + 32) localIdentifier];
          *buf = 138543362;
          v34 = v17;
          _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Invalid motion score results for asset: %{public}@", buf, 0xCu);
        }

        v18 = *(a1 + 40);
        v19 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A278];
        v30 = @"Invalid motion score results";
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v10 = [v19 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v8];
        v20.n128_u32[0] = -1.0;
        (*(v18 + 16))(v20);
      }
    }

    else
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 32) localIdentifier];
        *buf = 138543362;
        v34 = v13;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to get motion score results for asset: %{public}@", buf, 0xCu);
      }

      v14 = *(a1 + 40);
      v15 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A278];
      v28 = @"Failed to get motion score results";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v8 = [v15 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v7];
      (*(v14 + 16))(v14, v8, -1.0);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))(-1.0);
  }
}

- (void)cancelParallaxResourceRequest:(int)a3
{
  v3 = *&a3;
  v4 = +[PHImageManager defaultManager];
  [v4 cancelImageRequest:v3];
}

- (void)updateSegmentationResource:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 temporaryDirectory];
  v7 = [(PHWallpaperAsset *)self photoAsset];
  v8 = [v7 uuid];
  v9 = [v6 URLByAppendingPathComponent:v8];
  v10 = [v9 URLByAppendingPathExtension:@"segmentation"];

  v11 = [(PHWallpaperAsset *)self photoAsset];
  v12 = [v11 photoLibrary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__PHWallpaperAsset_updateSegmentationResource___block_invoke;
  v17[3] = &unk_1E75AA870;
  v20 = v4;
  v18 = v10;
  v19 = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__PHWallpaperAsset_updateSegmentationResource___block_invoke_86;
  v15[3] = &unk_1E75A77C0;
  v15[4] = self;
  v16 = v18;
  v13 = v18;
  v14 = v4;
  [v12 performChanges:v17 completionHandler:v15];
}

void __47__PHWallpaperAsset_updateSegmentationResource___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 48) + 16))())
  {
    v2 = [*(a1 + 40) photoAsset];
    v3 = [PHAssetChangeRequest changeRequestForAsset:v2];

    if (([v3 addAssetResourceWithType:109 fromFileAtURL:*(a1 + 32)]& 1) == 0)
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [*(a1 + 40) localIdentifier];
        v7 = 138543362;
        v8 = v5;
        _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Failed to copy segmentation resource file for asset: %{public}@", &v7, 0xCu);
      }
    }
  }

  else
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 40) localIdentifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_ERROR, "Failed to write segmentation resource file for asset: %{public}@", &v7, 0xCu);
    }
  }
}

void __47__PHWallpaperAsset_updateSegmentationResource___block_invoke_86(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) localIdentifier];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to update segmentation resource for asset: %{public}@, error: %{public}@", &v9, 0x16u);
    }
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 removeItemAtURL:*(a1 + 40) error:0];
}

- (int)loadCropRectsWithResultHandler:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHWallpaperAsset *)self photoAsset];
  v6 = [v5 photoLibrary];
  v7 = MEMORY[0x1E69BE5A0];
  v8 = [v5 localIdentifier];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v10 = [v6 photoLibraryURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PHWallpaperAsset_loadCropRectsWithResultHandler___block_invoke;
  v15[3] = &unk_1E75A7798;
  v16 = v6;
  v17 = v5;
  v18 = self;
  v19 = v4;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  LODWORD(v7) = [v7 requestProcessingTypes:1 forAssetsWithLocalIdentifiers:v9 fromPhotoLibraryWithURL:v10 progressHandler:0 completionHandler:v15];

  return v7;
}

void __51__PHWallpaperAsset_loadCropRectsWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 48) localIdentifier];
      v20 = 138543618;
      v21 = v5;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch on-demand saliency rects for asset: %{public}@, error: %{public}@", &v20, 0x16u);
    }

    (*(*(a1 + 56) + 16))(*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }

  else
  {
    v6 = [*(a1 + 32) fetchUpdatedObject:*(a1 + 40)];
    v7 = *(a1 + 56);
    [v6 acceptableCropRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v6 preferredCropRect];
    (*(v7 + 16))(v7, 0, v9, v11, v13, v15, v16, v17, v18, v19);
  }
}

- (int)loadPetsRegionsWithOptions:(id)a3 resultHandler:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a3 needsInProcessHandling])
  {
    v7 = &unk_1F102E690;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E69BE5A0];
  v9 = [(PHWallpaperAsset *)self photoAsset];
  v17[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PHWallpaperAsset_loadPetsRegionsWithOptions_resultHandler___block_invoke_3;
  v14[3] = &unk_1E75A7770;
  v14[4] = self;
  v15 = &__block_literal_global_47;
  v16 = v6;
  v11 = v6;
  v12 = [v8 requestPetsAnalysisForAssets:v10 withOptions:v7 progressHandler:0 completionHandler:v14];

  return v12;
}

void __61__PHWallpaperAsset_loadPetsRegionsWithOptions_resultHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) localIdentifier];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = [v8 objectForKeyedSubscript:@"PetsResults"];
      v11 = (*(v9 + 16))(v9, v10);

      v12 = *(a1 + 40);
      v13 = [v8 objectForKeyedSubscript:@"PetsFaceResults"];
      v14 = (*(v12 + 16))(v12, v13);

      if (v11)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [*(a1 + 32) localIdentifier];
          *buf = 138543618;
          v34 = v17;
          v35 = 2114;
          v36 = v8;
          _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Invalid pets results for asset: %{public}@, results: %{public}@", buf, 0x16u);
        }

        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E69C09C0];
        v31 = *MEMORY[0x1E696A278];
        v32 = @"Invalid pets results";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v21 = [v18 errorWithDomain:v19 code:8 userInfo:v20];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [*(a1 + 32) localIdentifier];
        *buf = 138543362;
        v34 = v25;
        _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "Missing pets results for asset: %{public}@", buf, 0xCu);
      }

      v26 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E69C09C0];
      v29 = *MEMORY[0x1E696A278];
      v30 = @"Missing pets results";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v11 = [v26 errorWithDomain:v27 code:8 userInfo:v28];

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(a1 + 32) localIdentifier];
      *buf = 138543618;
      v34 = v23;
      v35 = 2114;
      v36 = v6;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Failed to analyze pets for asset: %{public}@, error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id __61__PHWallpaperAsset_loadPetsRegionsWithOptions_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"attributes"];
  v3 = [v2 objectForKeyedSubscript:@"petsBounds"];

  v6 = NSRectFromString(v3);
  v4 = [MEMORY[0x1E696B098] valueWithBytes:&v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

- (BOOL)clearSegmentationResourceCacheWithError:(id *)a3
{
  v4 = [(PHWallpaperAsset *)self segmentationResourceURL];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 removeItemAtURL:v4 error:a3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSURL)segmentationResourceURL
{
  v2 = [(PHWallpaperAsset *)self photoAsset];
  v3 = [PHAssetResource assetResourcesForAsset:v2 includeDerivatives:1];

  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_26237];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 objectAtIndexedSubscript:v4];
    v7 = [v6 privateFileURL];

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v5 = v11;
  }

  return v5;
}

- (int)loadParallaxResource:(int64_t)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (a3 != 6)
  {
    v14 = 0.0;
    v15 = 1;
    v16 = 0x10000;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        [v9 imageSize];
        v17 = v30;
        v14 = v31;
        v16 = 0;
        v15 = 1;
      }

      else
      {
        if (a3 == 4)
        {
LABEL_18:
          v19 = objc_alloc_init(PHContentEditingInputRequestOptions);
          -[PHContentEditingInputRequestOptions setNetworkAccessAllowed:](v19, "setNetworkAccessAllowed:", [v9 networkAccessAllowed]);
          v20 = [v9 canHandleAdjustmentData];
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke_3;
          v50[3] = &unk_1E75A7698;
          v21 = v20;
          v51 = v21;
          [(PHContentEditingInputRequestOptions *)v19 setCanHandleAdjustmentData:v50];
          v22 = [v9 resultHandlerQueue];
          [(PHContentEditingInputRequestOptions *)v19 setResultHandlerQueue:v22];

          if (a3 == 6 && [v9 priority])
          {
            [(PHContentEditingInputRequestOptions *)v19 setDownloadIntent:10];
          }

          v23 = [v9 downloadProgressHandler];
          v24 = v23;
          if (v23)
          {
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke_4;
            v48[3] = &unk_1E75A76C0;
            v49 = v23;
            [(PHContentEditingInputRequestOptions *)v19 setProgressHandler:v48];
          }

          v46[0] = 0;
          v46[1] = v46;
          v46[2] = 0x2020000000;
          v47 = 0;
          v25 = +[PHImageManager defaultManager];
          v26 = [(PHWallpaperAsset *)self photoAsset];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke_5;
          v42[3] = &unk_1E75A76E8;
          v44 = v46;
          v45 = a3;
          v42[4] = self;
          v43 = v10;
          v13 = [v25 requestContentEditingInputForAsset:v26 withOptions:v19 completionHandler:v42];

          _Block_object_dispose(v46, 8);
          v27 = v51;
LABEL_35:

          goto LABEL_36;
        }

        if (a3 == 5)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"PHWallpaperAsset.m" lineNumber:121 description:@"Unsupported format"];

          v15 = 1;
          v16 = 0x10000;
        }

        v17 = 0.0;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        [v9 imageSize];
        v17 = v32;
        v14 = v33;
        v16 = 0;
        v15 = 0;
      }

      else
      {
        if (a3 == 2)
        {
          v17 = -1.0;
        }

        else
        {
          v17 = 0.0;
        }

        if (a3 == 2)
        {
          v14 = -1.0;
          v16 = 0x10000;
          v15 = 1;
        }
      }
    }

    else
    {
      [v9 imageSize];
      v17 = v28;
      v14 = v29;
      v15 = 0;
      v16 = 0x10000;
    }

    v19 = objc_alloc_init(PHImageRequestOptions);
    [(PHContentEditingInputRequestOptions *)v19 setVersion:v15];
    [(PHContentEditingInputRequestOptions *)v19 setDeliveryMode:1];
    [(PHContentEditingInputRequestOptions *)v19 setResizeMode:1];
    -[PHContentEditingInputRequestOptions setNetworkAccessAllowed:](v19, "setNetworkAccessAllowed:", [v9 networkAccessAllowed]);
    [(PHContentEditingInputRequestOptions *)v19 setSynchronous:0];
    v34 = [v9 resultHandlerQueue];
    [(PHContentEditingInputRequestOptions *)v19 setResultHandlerQueue:v34];

    [(PHContentEditingInputRequestOptions *)v19 setLoadingMode:v16];
    v35 = [v9 priority];
    if (v35 == 1)
    {
      v36 = 9;
    }

    else
    {
      if (v35 != 2)
      {
LABEL_32:
        v37 = [v9 downloadProgressHandler];
        v21 = v37;
        if (v37)
        {
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke;
          v55[3] = &unk_1E75A9368;
          v56 = v37;
          [(PHContentEditingInputRequestOptions *)v19 setProgressHandler:v55];
        }

        v38 = [v9 aspectFit] ^ 1;
        v39 = +[PHImageManager defaultManager];
        v40 = [(PHWallpaperAsset *)self photoAsset];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke_2;
        v52[3] = &unk_1E75A7670;
        v54 = a3;
        v53 = v10;
        v13 = [v39 requestNewCGImageForAsset:v40 targetSize:v38 contentMode:v19 options:v52 resultHandler:{v17, v14}];

        v27 = v53;
        goto LABEL_35;
      }

      v36 = 8;
    }

    [(PHContentEditingInputRequestOptions *)v19 setDownloadIntent:v36];
    goto LABEL_32;
  }

  v11 = [(PHWallpaperAsset *)self photoAsset];
  v12 = [v11 mediaSubtypes];

  if ((v12 & 8) != 0)
  {
    goto LABEL_18;
  }

  (*(v10 + 2))(v10, 0, 0);
  v13 = 0;
LABEL_36:

  return v13;
}

void __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke_2(uint64_t a1, CGImage *a2, void *a3)
{
  v11 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69C0740]);
  [v5 setType:*(a1 + 40)];
  if (a2)
  {
    [v5 setProxyImage:a2];
    (*(*(a1 + 32) + 16))();
    CGImageRelease(a2);
  }

  else
  {
    v6 = [v11 objectForKeyedSubscript:@"PHImageFileURLKey"];
    if (v6)
    {
      [v5 setImageFileURL:v6];
      v7 = [v11 objectForKeyedSubscript:@"PHImageFileUTIKey"];
      [v5 setFileType:v7];

      v8 = [v11 objectForKeyedSubscript:@"PHImageFileOrientationKey"];
      [v8 intValue];
      [v5 setOrientation:PLExifOrientationFromImageOrientation()];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = [v11 objectForKeyedSubscript:@"PHImageErrorKey"];
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

uint64_t __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  v4 = [v3 formatIdentifier];
  v5 = [v3 formatVersion];

  v6 = (*(v2 + 16))(v2, v4, v5);
  return v6;
}

void __63__PHWallpaperAsset_loadParallaxResource_options_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [*(a1 + 32) localIdentifier];
      v23 = 138543362;
      v24 = v10;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_FAULT, "Image manager completion handler called more than once for asset %{public}@", &v23, 0xCu);
    }
  }

  else
  {
    *(v8 + 24) = 1;
    if (v5)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69C0740]);
      v11 = [v5 fullSizeImageURL];
      [v9 setImageFileURL:v11];

      v12 = [v5 uniformTypeIdentifier];
      [v9 setFileType:v12];

      -[NSObject setOrientation:](v9, "setOrientation:", [v5 fullSizeImageOrientation]);
      v13 = [v5 adjustmentData];
      if (v13)
      {
        [v9 setType:4];
        v14 = [v13 data];
        [v9 setAdjustmentData:v14];

        v15 = [v13 formatIdentifier];
        [v9 setAdjustmentFormat:v15];

        v16 = [v13 formatVersion];
        [v9 setAdjustmentVersion:v16];
      }

      else
      {
        [v9 setType:2];
      }

      if (*(a1 + 56) == 6)
      {
        v18 = [v5 livePhoto];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 imageURL];
          [v9 setImageFileURL:v20];

          v21 = [v19 videoURL];
          [v9 setVideoFileURL:v21];

          if ([v5 baseVersion])
          {
            v22 = 4;
          }

          else
          {
            v22 = 6;
          }

          [v9 setType:v22];
        }
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v17 = *(a1 + 40);
      v9 = [v6 objectForKeyedSubscript:@"PHContentEditingInputErrorKey"];
      (*(v17 + 16))(v17, 0, v9);
    }
  }
}

- (NSString)localIdentifier
{
  v2 = [(PHWallpaperAsset *)self photoAsset];
  v3 = [v2 localIdentifier];

  return v3;
}

- (NSArray)faceRegions
{
  v2 = [(PHWallpaperAsset *)self photoAsset];
  v3 = [v2 faceRegions];

  return v3;
}

- (CGRect)gazeAreaRect
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(PHWallpaperAsset *)self photoAsset];
  v4 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:v3];

  [v4 setMinimumVerifiedFaceCount:1];
  v5 = [(PHWallpaperAsset *)self photoAsset];
  v6 = [PHFace fetchFacesInAsset:v5 options:v4];

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        [v16 gazeConfidence];
        if (v17 > 0.0)
        {
          [v16 gazeRect];
          v35.origin.x = v18;
          v35.origin.y = v19;
          v35.size.width = v20;
          v35.size.height = v21;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v35);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = [(PHWallpaperAsset *)self photoAsset];
  [v2 preferredCropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)acceptableCropRect
{
  v2 = [(PHWallpaperAsset *)self photoAsset];
  [v2 acceptableCropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PHWallpaperAsset)initWithPhotoAsset:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHWallpaperAsset;
  v5 = [(PHWallpaperAsset *)&v8 init];
  photoAsset = v5->_photoAsset;
  v5->_photoAsset = v4;

  return v5;
}

@end