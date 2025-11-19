@interface PHImageManager
+ (BOOL)_allowVideoAccessForAsset:(id)a3 options:(id)a4;
+ (PHImageManager)defaultManager;
+ (id)_videoAVObjectBuilderFromVideoURL:(id)a3 info:(id)a4 options:(id)a5 playbackOnly:(BOOL)a6;
+ (id)fileTypeForOutputURL:(id)a3;
+ (id)mediaItemURLForAssetUuid:(id)a3 fingerPrint:(id)a4 outOfBandPresentationHints:(id)a5;
+ (id)playerItemFromVideoMediaItemMakerData:(id)a3 forAssetUuid:(id)a4 fingerPrint:(id)a5 outOfBandPresentationHints:(id)a6;
+ (id)playerItemFromVideoMediaItemMakerDataInMediaResult:(id)a3 forAsset:(id)a4;
+ (void)buildAVAssetFromVideoURL:(id)a3 infoDictionary:(id)a4 options:(id)a5 completion:(id)a6;
+ (void)buildAVPlayerItemFromRemoteStreamVideoURL:(id)a3 infoDictionary:(id)a4 completion:(id)a5;
+ (void)buildAVPlayerItemFromVideoURL:(id)a3 infoDictionary:(id)a4 options:(id)a5 completion:(id)a6;
+ (void)buildExportSessionFromVideoURL:(id)a3 infoDictionary:(id)a4 options:(id)a5 exportPreset:(id)a6 completion:(id)a7;
+ (void)configureAssetCacheInAssetCreationOptionsDictionary:(id)a3;
+ (void)exportVideoFileForTimeRange:(id *)a3 fromVideoMediaItemMakerData:(id)a4 forAssetUuid:(id)a5 toOutputFileURL:(id)a6 fingerPrint:(id)a7 signpostId:(unint64_t)a8 options:(id)a9 completion:(id)a10;
+ (void)startExportSession:(id)a3 assetUuid:(id)a4 signpostId:(unint64_t)a5 completion:(id)a6;
- (BOOL)_canStreamVideoForAsset:(id)a3;
- (PHImageManager)init;
- (PHImageRequestID)requestAVAssetForVideo:(PHAsset *)asset options:(PHVideoRequestOptions *)options resultHandler:(void *)resultHandler;
- (PHImageRequestID)requestExportSessionForVideo:(PHAsset *)asset options:(PHVideoRequestOptions *)options exportPreset:(NSString *)exportPreset resultHandler:(void *)resultHandler;
- (PHImageRequestID)requestImageDataAndOrientationForAsset:(PHAsset *)asset options:(PHImageRequestOptions *)options resultHandler:(void *)resultHandler;
- (PHImageRequestID)requestImageDataForAsset:(PHAsset *)asset options:(PHImageRequestOptions *)options resultHandler:(void *)resultHandler;
- (PHImageRequestID)requestImageForAsset:(PHAsset *)asset targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHImageRequestOptions *)options resultHandler:(void *)resultHandler;
- (PHImageRequestID)requestLivePhotoForAsset:(PHAsset *)asset targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHLivePhotoRequestOptions *)options resultHandler:(void *)resultHandler;
- (PHImageRequestID)requestPlayerItemForVideo:(PHAsset *)asset options:(PHVideoRequestOptions *)options resultHandler:(void *)resultHandler;
- (id)synchronousImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
- (int)_requestImagePropertiesFromFileForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)_requestLiveRenderAVAssetForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestAVAssetForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestAVProxyForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestContentEditingInputForAsset:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (int)requestImagePropertiesForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestNewCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)runRequestWithContext:(id)a3;
- (void)_handleResultForContentEditingInput:(id)a3 request:(id)a4 options:(id)a5 asset:(id)a6 completionHandler:(id)a7;
- (void)_prepareLivePhotoResultWithImage:(CGImage *)a3 uiOrientation:(int64_t)a4 shouldIncludeVideo:(BOOL)a5 videoURL:(id)a6 info:(id)a7 photoTime:(id *)a8 asset:(id)a9 completion:(id)a10;
- (void)_runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:(id)a3 options:(id)a4 block:(id)a5;
- (void)cancelImageRequest:(PHImageRequestID)requestID;
- (void)mediaRequestContext:(id)a3 isQueryingCacheForRequest:(id)a4 didWait:(BOOL *)a5 didFindImage:(BOOL *)a6 resultHandler:(id)a7;
- (void)mediaRequestContextDidFinish:(id)a3;
@end

@implementation PHImageManager

+ (PHImageManager)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PHImageManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultManager_onceToken_51993 != -1)
  {
    dispatch_once(&defaultManager_onceToken_51993, block);
  }

  v2 = defaultManager_manager;

  return v2;
}

void __32__PHImageManager_defaultManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultManager_manager;
  defaultManager_manager = v1;

  *(defaultManager_manager + 24) = 1;
}

- (PHImageManager)init
{
  v7.receiver = self;
  v7.super_class = PHImageManager;
  v2 = [(PHImageManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(1u, &v2->_nextRequestID);
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    requestContextsByID = v3->_requestContextsByID;
    v3->_requestContextsByID = v4;

    v3->_lock._os_unfair_lock_opaque = 0;
    if (PHNextImageAndAssetResourceManagerID_onceToken != -1)
    {
      dispatch_once(&PHNextImageAndAssetResourceManagerID_onceToken, &__block_literal_global_24244);
    }

    v3->_managerID = atomic_fetch_add(&PHNextImageAndAssetResourceManagerID_managerID, 1uLL);
  }

  return v3;
}

- (int)requestImagePropertiesForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isPhoto])
  {
    if (v9)
    {
      v11 = [v9 copy];
    }

    else
    {
      v11 = objc_alloc_init(PHImageRequestOptions);
    }

    v14 = v11;
    if ([(PHImageRequestOptions *)v11 loadingMode]!= 0x10000)
    {
      [(PHImageRequestOptions *)v14 setLoadingMode:0x10000];
    }

    v13 = [(PHImageManager *)self _requestImagePropertiesFromFileForAsset:v8 options:v14 resultHandler:v10];
  }

  else
  {
    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Requesting image properties from a non-photo asset is invalid", v16, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (int)_requestImagePropertiesFromFileForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__PHImageManager_Properties___requestImagePropertiesFromFileForAsset_options_resultHandler___block_invoke;
  v11[3] = &unk_1E75A7FF0;
  v12 = v8;
  v9 = v8;
  LODWORD(a4) = [(PHImageManager *)self requestImageForAsset:a3 targetSize:0 contentMode:a4 options:v11 resultHandler:-1.0, -1.0];

  return a4;
}

void __92__PHImageManager_Properties___requestImagePropertiesFromFileForAsset_options_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 objectForKey:@"PHImageFileURLKey"];
  if (v4 && ([MEMORY[0x1E696AC08] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), -[__CFURL path](v4, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:isDirectory:", v6, 0), v6, v5, v7))
  {
    v8 = CGImageSourceCreateWithURL(v4, 0);
    v9 = [MEMORY[0x1E69BE540] newImagePropertiesFromImageSource:v8];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)fileTypeForOutputURL:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a3 pathExtension];
  v4 = [MEMORY[0x1E69C08F0] typeForFilenameExtensionOrLastPathComponent:v3];
  v5 = [v4 identifier];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = PLImageManagerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Unable to map path extension %{public}@ to AVFileType: %{public}@", &v11, 0x16u);
    }

    v9 = *MEMORY[0x1E69874C0];
    v6 = v9;
  }

  return v6;
}

+ (void)startExportSession:(id)a3 assetUuid:(id)a4 signpostId:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 outputURL];
  v14 = [a1 fileTypeForOutputURL:v13];
  [v10 setOutputFileType:v14];

  v15 = PLImageManagerGetLog();
  v16 = v15;
  if (a5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, a5, "com.apple.photos.backend.adpExportVideoFileTimeRange.exportSession", byte_19CB567AE, buf, 2u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__PHImageManager_VideoUtilities__startExportSession_assetUuid_signpostId_completion___block_invoke;
  v20[3] = &unk_1E75AAAF0;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = a5;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [v19 exportAsynchronouslyWithCompletionHandler:v20];
}

void __85__PHImageManager_VideoUtilities__startExportSession_assetUuid_signpostId_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = PLImageManagerGetLog();
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "com.apple.photos.backend.adpExportVideoFileTimeRange.exportSession", byte_19CB567AE, &v11, 2u);
  }

  v5 = [*(a1 + 32) status];
  if (v5 == 3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = v5;
    v7 = [*(a1 + 32) error];
    v8 = PLImageManagerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) outputURL];
      v11 = 138413058;
      v12 = v9;
      v13 = 2048;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "ADP time range export session completed unsuccessfully for asset %@: status=%td, error: %@, output URL: %@", &v11, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)exportVideoFileForTimeRange:(id *)a3 fromVideoMediaItemMakerData:(id)a4 forAssetUuid:(id)a5 toOutputFileURL:(id)a6 fingerPrint:(id)a7 signpostId:(unint64_t)a8 options:(id)a9 completion:(id)a10
{
  v64[2] = *MEMORY[0x1E69E9840];
  v52 = a4;
  v54 = a5;
  v16 = a6;
  v51 = a7;
  v50 = a9;
  v17 = a10;
  if ((a3->var0.var2 & 1) == 0 || (a3->var1.var2 & 1) == 0 || a3->var1.var3 || a3->var1.var0 < 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PHImageManager+VideoUtilities.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"CMTIMERANGE_IS_VALID(timeRange)"}];
  }

  v19 = v52;
  if (!v52)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"PHImageManager+VideoUtilities.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"videoMediaItemMakerData"}];
  }

  if (!v54)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:a1 file:@"PHImageManager+VideoUtilities.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"assetUuid"}];
  }

  if (([v16 isFileURL] & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    [v46 handleFailureInMethod:a2 object:a1 file:@"PHImageManager+VideoUtilities.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"[outputURL isFileURL]"}];

    if (v17)
    {
      goto LABEL_11;
    }

LABEL_35:
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:a1 file:@"PHImageManager+VideoUtilities.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"originalCompletion"}];

    goto LABEL_11;
  }

  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_11:
  v49 = v16;
  v20 = PLImageManagerGetLog();
  v21 = v20;
  v22 = a8 - 1;
  if (a8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_BEGIN, a8, "com.apple.photos.backend.adpExportVideoTimeRange", byte_19CB567AE, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __161__PHImageManager_VideoUtilities__exportVideoFileForTimeRange_fromVideoMediaItemMakerData_forAssetUuid_toOutputFileURL_fingerPrint_signpostId_options_completion___block_invoke;
  aBlock[3] = &unk_1E75A8270;
  v58 = a8;
  v48 = v17;
  v57 = v48;
  v23 = _Block_copy(aBlock);
  v55 = 0;
  v24 = [objc_alloc(getCKMediaItemMakerClass()) initWithData:v52 error:&v55];
  v25 = v55;
  v26 = v25;
  if (v24)
  {
    v27 = [a1 mediaItemURLForAssetUuid:v54 fingerPrint:v51 outOfBandPresentationHints:0];
    v28 = [MEMORY[0x1E695DF90] dictionary];
    v29 = [v50 objectForKey:@"PHVideoExportOmitFromAssetCacheKey"];
    v30 = [v29 BOOLValue];

    if ((v30 & 1) == 0)
    {
      [a1 configureAssetCacheInAssetCreationOptionsDictionary:v28];
    }

    v31 = PLImageManagerGetLog();
    v32 = v31;
    if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v32, OS_SIGNPOST_INTERVAL_BEGIN, a8, "com.apple.photos.backend.adpExportVideoTimeRange.makeExportSession", byte_19CB567AE, buf, 2u);
    }

    v33 = [v24 makeAVAssetExportSession:v27 options:v28 presetName:*MEMORY[0x1E6987338]];
    v34 = PLImageManagerGetLog();
    v35 = v34;
    if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v35, OS_SIGNPOST_INTERVAL_END, a8, "com.apple.photos.backend.adpExportVideoTimeRange.makeExportSession", byte_19CB567AE, buf, 2u);
    }

    if (v33)
    {
      v36 = *&a3->var0.var3;
      *buf = *&a3->var0.var0;
      *&buf[16] = v36;
      v60 = *&a3->var1.var1;
      [v33 setTimeRange:buf];
      [v33 setOutputURL:v49];
      [a1 startExportSession:v33 assetUuid:v54 signpostId:a8 completion:v23];
    }

    else
    {
      v40 = PLImageManagerGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_ERROR, "Media item maker %@ failed to create export session for asset %@", buf, 0x16u);
      }

      v41 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A278];
      v62 = @"Unable to perform ADP video partial time range export, media item maker failed to create export session";
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v43 = [v41 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v42];

      v23[2](v23, 0, v43);
    }

    v19 = v52;
  }

  else
  {
    v37 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696AA08];
    v63[0] = *MEMORY[0x1E696A278];
    v63[1] = v38;
    v64[0] = @"Unable to perform ADP video partial time range export, failed to deserialize media item maker";
    v64[1] = v25;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v33 = [v37 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v39];

    v23[2](v23, 0, v33);
    v27 = PLImageManagerGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v54;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "Unable to deserialize media item maker for asset %@ to create export session: %@", buf, 0x16u);
    }
  }
}

void __161__PHImageManager_VideoUtilities__exportVideoFileForTimeRange_fromVideoMediaItemMakerData_forAssetUuid_toOutputFileURL_fingerPrint_signpostId_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PLImageManagerGetLog();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_END, v7, "com.apple.photos.backend.adpExportVideoTimeRange", byte_19CB567AE, v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)mediaItemURLForAssetUuid:(id)a3 fingerPrint:(id)a4 outOfBandPresentationHints:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setScheme:@"photos-avasset"];
  v11 = [MEMORY[0x1E696AD60] stringWithString:v9];

  if (v7)
  {
    v12 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v13 = [v12 mutableCopy];

    [v13 removeCharactersInString:@"/"];
    v14 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v13];
    [v11 appendFormat:@"/%@", v14];
  }

  [v10 setPath:v11];
  if ([v8 length])
  {
    [v10 setFragment:v8];
  }

  v15 = [v10 URL];

  return v15;
}

+ (id)playerItemFromVideoMediaItemMakerData:(id)a3 forAssetUuid:(id)a4 fingerPrint:(id)a5 outOfBandPresentationHints:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v21 = 0;
  v14 = [objc_alloc(getCKMediaItemMakerClass()) initWithData:v13 error:&v21];

  v15 = v21;
  if (v14)
  {
    v16 = [a1 mediaItemURLForAssetUuid:v10 fingerPrint:v11 outOfBandPresentationHints:v12];
    v17 = [MEMORY[0x1E695DF90] dictionary];
    [a1 configureAssetCacheInAssetCreationOptionsDictionary:v17];
    v18 = [v14 makeAVPlayerItemWithURL:v16 options:v17];
    if (!v18)
    {
      v19 = PLImageManagerGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v14;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Media item maker %@ failed to create player item for asset %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v16 = PLImageManagerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unable to deserialize media item maker for asset %@: %@", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

+ (id)playerItemFromVideoMediaItemMakerDataInMediaResult:(id)a3 forAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 videoMediaItemMakerData];
  v9 = [v7 fingerPrint];
  v10 = [v7 info];

  v11 = [v10 objectForKey:@"PHImageResultAVAssetOutOfBandPresentationHintsKey"];

  v12 = [v6 uuid];

  v13 = [a1 playerItemFromVideoMediaItemMakerData:v8 forAssetUuid:v12 fingerPrint:v9 outOfBandPresentationHints:v11];

  return v13;
}

+ (void)buildExportSessionFromVideoURL:(id)a3 infoDictionary:(id)a4 options:(id)a5 exportPreset:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v15 objectForKeyedSubscript:@"PHImageFileSandboxExtensionTokenKey"];
  v18 = [PHSandboxExtensionWrapper wrapperWithToken:v17];
  v19 = [a1 _videoAVObjectBuilderFromVideoURL:v16 info:v15 options:v14 playbackOnly:0];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112__PHImageManager_VideoUtilities__buildExportSessionFromVideoURL_infoDictionary_options_exportPreset_completion___block_invoke;
  v22[3] = &unk_1E75A8248;
  v23 = v18;
  v24 = v12;
  v20 = v12;
  v21 = v18;
  [v19 requestExportSessionWithExportPreset:v13 resultHandler:v22];
}

void __112__PHImageManager_VideoUtilities__buildExportSessionFromVideoURL_infoDictionary_options_exportPreset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  object = a2;
  v5 = a3;
  if (object)
  {
    objc_setAssociatedObject(object, "PHSandboxExtensionWrapperKey", *(a1 + 32), 0x301);
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)buildAVPlayerItemFromRemoteStreamVideoURL:(id)a3 infoDictionary:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [a1 _videoAVObjectBuilderFromVideoURL:a3 info:a4 options:0 playbackOnly:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__PHImageManager_VideoUtilities__buildAVPlayerItemFromRemoteStreamVideoURL_infoDictionary_completion___block_invoke;
  v11[3] = &unk_1E75A8220;
  v12 = v8;
  v10 = v8;
  [v9 requestAsynchronousPlayerItemWithResultHandler:v11];
}

+ (void)buildAVAssetFromVideoURL:(id)a3 infoDictionary:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 objectForKeyedSubscript:@"PHImageFileSandboxExtensionTokenKey"];
  v15 = [PHSandboxExtensionWrapper wrapperWithToken:v14];
  v16 = [a1 _videoAVObjectBuilderFromVideoURL:v13 info:v12 options:v11 playbackOnly:0];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__PHImageManager_VideoUtilities__buildAVAssetFromVideoURL_infoDictionary_options_completion___block_invoke;
  v19[3] = &unk_1E75A81F8;
  v20 = v15;
  v21 = v10;
  v17 = v10;
  v18 = v15;
  [v16 requestAVAssetWithResultHandler:v19];
}

void __93__PHImageManager_VideoUtilities__buildAVAssetFromVideoURL_infoDictionary_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  object = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (object)
  {
    objc_setAssociatedObject(object, "PHSandboxExtensionWrapperKey", *(a1 + 32), 0x301);
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)buildAVPlayerItemFromVideoURL:(id)a3 infoDictionary:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 objectForKeyedSubscript:@"PHImageFileSandboxExtensionTokenKey"];
  v15 = [PHSandboxExtensionWrapper wrapperWithToken:v14];
  v16 = [a1 _videoAVObjectBuilderFromVideoURL:v13 info:v12 options:v11 playbackOnly:1];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__PHImageManager_VideoUtilities__buildAVPlayerItemFromVideoURL_infoDictionary_options_completion___block_invoke;
  v20[3] = &unk_1E75A81D0;
  v22 = v16;
  v23 = v10;
  v21 = v15;
  v17 = v16;
  v18 = v10;
  v19 = v15;
  [v17 requestAsynchronousPlayerItemWithResultHandler:v20];
}

void __98__PHImageManager_VideoUtilities__buildAVPlayerItemFromVideoURL_infoDictionary_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  object = a2;
  v5 = a3;
  if (object)
  {
    objc_setAssociatedObject(object, "PHSandboxExtensionWrapperKey", *(a1 + 32), 0x301);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) playbackTimeRangeMapper];
  (*(v6 + 16))(v6, object, v7, v5);
}

+ (void)configureAssetCacheInAssetCreationOptionsDictionary:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x1E69BE6A8] debugAlwaysStreamSharedVideos] & 1) == 0 && objc_msgSend(MEMORY[0x1E69BF2F0], "isEntitledForPhotoKit"))
  {
    v3 = [MEMORY[0x1E69BE6A8] streamdVideoCache];
    [v4 setObject:v3 forKey:*MEMORY[0x1E6987B50]];
  }
}

+ (id)_videoAVObjectBuilderFromVideoURL:(id)a3 info:(id)a4 options:(id)a5 playbackOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6 && ([v10 isFileURL] & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = MEMORY[0x1E695E118];
    [v13 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6987BE8]];
    [v13 setObject:v14 forKey:*MEMORY[0x1E6987B90]];
    [v13 setObject:v14 forKey:*MEMORY[0x1E6987B98]];
    [v13 setObject:v14 forKey:*MEMORY[0x1E6987BD0]];
    [a1 configureAssetCacheInAssetCreationOptionsDictionary:v13];
  }

  else
  {
    v13 = 0;
  }

  v15 = [MEMORY[0x1E6988168] URLAssetWithURL:v10 options:v13];
  v16 = [v11 objectForKeyedSubscript:@"PHAdjustmentDataKey"];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69C0910]);
    v18 = [v16 formatIdentifier];
    v19 = [v16 formatVersion];
    v20 = [v16 data];
    v21 = [v17 initWithFormatIdentifier:v18 formatVersion:v19 data:v20 baseVersion:0 editorBundleID:0 renderTypes:0];
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v15 videoAdjustments:v21];
  v23 = [v11 objectForKeyedSubscript:@"PHApplyTimeRangeKey"];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    if (v12)
    {
      [v12 timeRange];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
    }

    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    [v22 setTimeRange:v26];
  }

  return v22;
}

- (void)mediaRequestContextDidFinish:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    managerID = self->_managerID;
    *buf = 134218498;
    v14 = managerID;
    v15 = 2048;
    v16 = [v4 requestID];
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM]: %ld-%ld image request %@ finished, removing from map table", buf, 0x20u);
  }

  if (PHImageManagerRecordEnabled())
  {
    +[PHImageManagerRequestTracer traceMessageForRequestID:message:](PHImageManagerRequestTracer, "traceMessageForRequestID:message:", [v4 requestID], @"[RM]: %ld-%ld image request %@ finished, removing from map table", self->_managerID, objc_msgSend(v4, "requestID"), v4);
  }

  os_unfair_lock_lock(&self->_lock);
  requestContextsByID = self->_requestContextsByID;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "requestID")}];
  [(NSMapTable *)requestContextsByID removeObjectForKey:v8];

  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v9 = PLImageManagerGetLog();
    v10 = [v4 signpostID];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      v12 = [v4 signpostLayoutID];
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v9, OS_SIGNPOST_INTERVAL_END, v11, "ContextEvent", "Context end", buf, 2u);
      }

      if (v12 != 101)
      {
        os_unfair_lock_lock(&s_lock);
        [s_availableLayoutIDs addIndex:v12];
        os_unfair_lock_unlock(&s_lock);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)mediaRequestContext:(id)a3 isQueryingCacheForRequest:(id)a4 didWait:(BOOL *)a5 didFindImage:(BOOL *)a6 resultHandler:(id)a7
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }
}

- (int)requestAVProxyForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isVideo])
  {
    v11 = [(PHImageManager *)self nextID];
    v12 = [(PHImageManager *)self managerID];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __63__PHImageManager_requestAVProxyForAsset_options_resultHandler___block_invoke;
    v20 = &unk_1E75AAB90;
    v21 = v8;
    v22 = self;
    v23 = v9;
    v24 = v10;
    v13 = [PHSingleMediaRequestContext avProxyRequestContextWithRequestID:v11 managerID:v12 asset:v21 options:v23 resultHandler:&v17];
    v14 = [(PHImageManager *)self runRequestWithContext:v13, v17, v18, v19, v20];

    v15 = v21;
  }

  else
  {
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Requesting avproxy from a non-video asset is invalid", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

void __63__PHImageManager_requestAVProxyForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 info];
  v8 = [v7 objectForKeyedSubscript:@"PHMediaMetadataTypeKey"];

  if (v8)
  {
    if ([v8 isEqualToString:@"AVAssetProxy"] && (objc_msgSend(v5, "mediaMetadata"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = MEMORY[0x1E696AE40];
      v11 = [v5 mediaMetadata];
      v35 = 0;
      v12 = [v10 propertyListWithData:v11 options:0 format:0 error:&v35];
      v13 = v35;

      if (v12)
      {
        v14 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v12];
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = PLImageManagerGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 32) uuid];
        v17 = [v5 mediaMetadata];
        *buf = 138543874;
        v39 = v16;
        v40 = 2114;
        v41 = v8;
        v42 = 2048;
        v43 = [v17 length];
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Failed to create avproxy for asset %{public}@ with metadata type %{public}@, data length: %ld", buf, 0x20u);
      }

      v18 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A278];
      v37 = @"Unable to create avproxy, wrong type or nonexistent data";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v13 = [v18 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v19];
    }
  }

  else
  {
    v13 = [v5 videoURL];

    if (v13)
    {
      v20 = MEMORY[0x1E6987E28];
      v21 = [v5 videoURL];
      v14 = [v20 assetWithURL:v21];

      v13 = 0;
      if (v14)
      {
        goto LABEL_19;
      }
    }
  }

  v22 = [v5 error];

  v14 = 0;
  if (v22 && !v13)
  {
    v23 = PLImageManagerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(a1 + 32) uuid];
      v25 = [v5 error];
      *buf = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Failed to create avproxy for asset %{public}@, error: %@", buf, 0x16u);
    }

    v13 = [v5 error];
    v14 = 0;
  }

LABEL_19:
  [v5 setErrorIfNone:v13];
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__PHImageManager_requestAVProxyForAsset_options_resultHandler___block_invoke_742;
  v31[3] = &unk_1E75AA870;
  v28 = *(a1 + 56);
  v33 = v5;
  v34 = v28;
  v32 = v14;
  v29 = v5;
  v30 = v14;
  [v26 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v6 options:v27 block:v31];
}

void __63__PHImageManager_requestAVProxyForAsset_options_resultHandler___block_invoke_742(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) sanitizedInfoDictionary];
  (*(v2 + 16))(v2, v1, v3);
}

- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = objc_alloc_init(PHImageRequestOptions);
  }

  v12 = v11;
  [(PHImageRequestOptions *)v11 setLoadingMode:0x10000];
  [(PHImageRequestOptions *)v12 setDeliveryMode:1];
  v13 = [(PHImageManager *)self nextID];
  v14 = PLImageManagerGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v12;
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "(animated image) options: %@", buf, 0xCu);
  }

  if (PHImageManagerRecordEnabled())
  {
    [PHImageManagerRequestTracer traceMessageForRequestID:v13 message:@"(animated image) options: %@", v12];
  }

  managerID = self->_managerID;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __69__PHImageManager_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  v32[3] = &unk_1E75AABE0;
  v16 = v12;
  v33 = v16;
  v34 = self;
  v17 = v10;
  v35 = v17;
  v36 = v13;
  v18 = [PHMediaRequestContext imageRequestContextWithRequestID:v13 managerID:managerID asset:v8 imageRequestOptions:v16 displaySpec:0 resultHandler:v32];
  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v19 = PLImageManagerGetLog();
    v20 = os_signpost_id_generate(v19);
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = v20;
      v30 = [v18 managerID];
      v28 = [v18 requestID];
      v29 = [v18 type];
      if (_getNextLayoutID_onceToken != -1)
      {
        dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
      }

      os_unfair_lock_lock(&s_lock);
      v22 = [s_availableLayoutIDs firstIndex];
      v31 = v8;
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 101;
      }

      else
      {
        v23 = v22;
        [s_availableLayoutIDs removeIndex:v22];
      }

      os_unfair_lock_unlock(&s_lock);
      v24 = [v18 asset];
      v25 = [v24 uuid];

      [v18 setSignpostID:v21];
      [v18 setSignpostLayoutID:v23];
      if (os_signpost_enabled(v19))
      {
        *buf = 134219266;
        v38 = v30;
        v39 = 2048;
        v40 = v28;
        v41 = 2112;
        v42 = &stru_1F0FC60C8;
        v43 = 2048;
        v44 = v29;
        v45 = 2112;
        v46 = v25;
        v47 = 2048;
        v48 = v23;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
      }

      v8 = v31;
    }
  }

  v26 = [(PHImageManager *)self runRequestWithContext:v18];

  return v26;
}

void __69__PHImageManager_requestAnimatedImageForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 imageURL];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 32);
      v9 = [PHAnimatedImage alloc];
      if ([v8 allowPreCaching])
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v11 = [v8 useSharedImageDecoding];

      v12 = [(PHAnimatedImage *)v9 initWithURL:v7 cachingStrategy:v10 useSharedDecoding:v11];
    }

    else
    {
      v12 = [[PHAnimatedImage alloc] initWithURL:v7];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__PHImageManager_requestAnimatedImageForAsset_options_resultHandler___block_invoke_2;
  v19[3] = &unk_1E75AABB8;
  v16 = *(a1 + 48);
  v21 = v13;
  v22 = v16;
  v23 = *(a1 + 56);
  v20 = v5;
  v17 = v13;
  v18 = v5;
  [v14 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v6 options:v15 block:v19];
}

void __69__PHImageManager_requestAnimatedImageForAsset_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) sanitizedInfoDictionary];
    v3 = PLImageManagerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "(animated image) called resultHandler with info: %@", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      [PHImageManagerRequestTracer traceMessageForRequestID:*(a1 + 56) message:@"(animated image) called resultHandler with info: %@", v2];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (int)requestContentEditingInputForAsset:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a4 copy];
  v11 = [PHContentEditingInputRequestContext shouldUseRAWResourceAsUnadjustedBaseForAsset:v8 options:v10];
  v12 = [(PHImageManager *)self nextID];
  managerID = self->_managerID;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __83__PHImageManager_requestContentEditingInputForAsset_withOptions_completionHandler___block_invoke;
  v30[3] = &unk_1E75AAB90;
  v30[4] = self;
  v14 = v10;
  v31 = v14;
  v15 = v8;
  v32 = v15;
  v16 = v9;
  v33 = v16;
  v17 = [PHMediaRequestContext contentEditingInputRequestContextWithRequestID:v12 managerID:managerID asset:v15 options:v14 useRAWAsUnadjustedBase:v11 resultHandler:v30];
  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v18 = PLImageManagerGetLog();
    v19 = os_signpost_id_generate(v18);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      v29 = [v17 managerID];
      v27 = [v17 requestID];
      v28 = [v17 type];
      if (_getNextLayoutID_onceToken != -1)
      {
        dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
      }

      os_unfair_lock_lock(&s_lock);
      v21 = [s_availableLayoutIDs firstIndex];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 101;
      }

      else
      {
        v22 = v21;
        [s_availableLayoutIDs removeIndex:v21];
      }

      os_unfair_lock_unlock(&s_lock);
      v23 = [v17 asset];
      v24 = [v23 uuid];

      [v17 setSignpostID:v20];
      [v17 setSignpostLayoutID:v22];
      if (os_signpost_enabled(v18))
      {
        *buf = 134219266;
        v35 = v29;
        v36 = 2048;
        v37 = v27;
        v38 = 2112;
        v39 = &stru_1F0FC60C8;
        v40 = 2048;
        v41 = v28;
        v42 = 2112;
        v43 = v24;
        v44 = 2048;
        v45 = v22;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
      }
    }
  }

  v25 = [(PHImageManager *)self runRequestWithContext:v17];

  return v25;
}

- (void)_handleResultForContentEditingInput:(id)a3 request:(id)a4 options:(id)a5 asset:(id)a6 completionHandler:(id)a7
{
  v88[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v11 videoURL];
  v17 = [v11 imageURL];
  if ([v14 isPhoto] && v17 || (v18 = 0, objc_msgSend(v14, "isVideo")) && v16)
  {
    v19 = [v11 error];

    if (v19)
    {
      v18 = 0;
      goto LABEL_31;
    }

    v67 = v16;
    v20 = MEMORY[0x1E69C08F0];
    v21 = [v11 uniformTypeIdentifier];
    v22 = [v20 typeWithIdentifier:v21];
    v23 = [v22 conformsToType:*MEMORY[0x1E6982F88]];

    if ([v14 shouldUseRAWResourceWithOriginalResourceChoice:{objc_msgSend(v14, "originalResourceChoice")}] && (v23 & 1) == 0 && (objc_msgSend(v11, "baseVersionNeeded"), (v24 = objc_claimAutoreleasedReturnValue()) != 0) && (v25 = v24, objc_msgSend(v11, "baseVersionNeeded"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "integerValue"), v26, v25, !v27))
    {
      v28 = MEMORY[0x1E696AD98];
      v29 = [v14 originalChoiceToFallbackForUnsupportRAW];
    }

    else
    {
      if (![v13 shouldForceOriginalChoice])
      {
        v70 = 0;
        goto LABEL_16;
      }

      v28 = MEMORY[0x1E696AD98];
      v29 = [v13 originalChoice];
    }

    v70 = [v28 numberWithUnsignedInteger:v29];
LABEL_16:
    v69 = [v11 uniformTypeIdentifier];
    if ([v11 imageRef])
    {
      v68 = DCIM_newPLImageWithCGImage();
    }

    else
    {
      v68 = 0;
    }

    v30 = [v11 exifOrientation];
    v65 = [v30 intValue];

    v31 = [v11 canHandleAdjustmentData];
    v32 = [v11 baseVersionNeeded];
    v63 = [v32 integerValue];

    v33 = [PHContentEditingInput alloc];
    v34 = [v14 photoLibrary];
    v35 = [v34 photoLibraryURL];
    v18 = [(PHContentEditingInput *)v33 initWithAppropriateURL:v35];

    -[PHContentEditingInput setMediaType:](v18, "setMediaType:", [v14 mediaType]);
    -[PHContentEditingInput setMediaSubtypes:](v18, "setMediaSubtypes:", [v14 mediaSubtypes]);
    -[PHContentEditingInput setPlaybackStyle:](v18, "setPlaybackStyle:", [v14 playbackStyle]);
    v36 = [v14 creationDate];
    [(PHContentEditingInput *)v18 setCreationDate:v36];

    v37 = [v14 location];
    [(PHContentEditingInput *)v18 setLocation:v37];

    if (v31)
    {
      v38 = [v11 adjustmentData];
      [(PHContentEditingInput *)v18 setAdjustmentData:v38];

      v39 = [v11 adjustmentSecondaryDataURL];
      [(PHContentEditingInput *)v18 setAdjustmentSecondaryDataURL:v39];
    }

    else
    {
      [(PHContentEditingInput *)v18 setAdjustmentData:0];
      [(PHContentEditingInput *)v18 setAdjustmentSecondaryDataURL:0];
    }

    [(PHContentEditingInput *)v18 setBaseVersion:v63];
    [(PHContentEditingInput *)v18 setDisplaySizeImage:v68];
    [(PHContentEditingInput *)v18 setFullSizeImageURL:v17];
    [(PHContentEditingInput *)v18 setUniformTypeIdentifier:v69];
    [(PHContentEditingInput *)v18 setFullSizeImageOrientation:v65];
    v40 = [v11 imageSandboxExtensionToken];
    [(PHContentEditingInput *)v18 consumeSandboxExtensionToken:v40];

    [(PHContentEditingInput *)v18 setOriginalResourceChoice:v70];
    v16 = v67;
    if (v67 && v17)
    {
      v41 = [v11 videoSandboxExtensionToken];
      [(PHContentEditingInput *)v18 consumeSandboxExtensionToken:v41];

      if (([v13 forceReturnFullLivePhoto] & 1) != 0 || (objc_msgSend(v14, "mediaSubtypes") & 8) != 0)
      {
        if ([v14 playbackStyle] == 5)
        {
          v88[0] = v67;
          v88[1] = v17;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
          v78 = 0;
          v43 = &v78;
          v44 = +[PHLivePhoto loopingLivePhotoWithResourceFileURLs:skipInstantiatingImageAndAVAsset:error:](PHLivePhoto, "loopingLivePhotoWithResourceFileURLs:skipInstantiatingImageAndAVAsset:error:", v42, [v13 skipLivePhotoImageAndAVAsset], &v78);
        }

        else
        {
          v87[0] = v67;
          v87[1] = v17;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
          v57 = [v13 skipLivePhotoImageAndAVAsset];
          v77 = 0;
          v43 = &v77;
          v44 = [PHLivePhoto livePhotoWithResourceFileURLs:v42 targetSize:1 contentMode:v57 skipInstantiatingImageAndAVAsset:&v77 error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
        }

        v58 = v44;
        v59 = *v43;

        if (!v58)
        {
          v60 = PLImageManagerGetLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v64 = [v14 localIdentifier];
            v62 = [v59 code];
            [v59 domain];
            v61 = v66 = v59;
            *buf = 138544130;
            v80 = v64;
            v81 = 2112;
            v82 = v66;
            v83 = 2048;
            v84 = v62;
            v85 = 2114;
            v86 = v61;
            _os_log_impl(&dword_19C86F000, v60, OS_LOG_TYPE_ERROR, "Unable to create PHLivePhoto object for asset with localIdentifier: %{public}@, error: %@, code: %ld, domain: %{public}@", buf, 0x2Au);

            v59 = v66;
          }
        }

        [(PHContentEditingInput *)v18 setLivePhoto:v58];

        v16 = v67;
      }

      if ([v14 playbackStyle] != 5)
      {
        goto LABEL_30;
      }
    }

    else if (!v67)
    {
LABEL_30:
      v45 = v11;
      v46 = [v45 overCapturePhotoURL];
      [(PHContentEditingInput *)v18 setOverCapturePhotoURL:v46];

      v47 = [v45 overCaptureVideoURL];
      [(PHContentEditingInput *)v18 setOverCaptureVideoURL:v47];

      v48 = [v45 frontSwappingImageRenderURL];
      [(PHContentEditingInput *)v18 setFrontSwappingImageRenderURL:v48];

      v49 = [v45 backSwappingImageRenderURL];
      [(PHContentEditingInput *)v18 setBackSwappingImageRenderURL:v49];

      v50 = [v45 frontSwappingVideoRenderURL];
      [(PHContentEditingInput *)v18 setFrontSwappingVideoRenderURL:v50];

      v51 = [v45 backSwappingVideoRenderURL];
      [(PHContentEditingInput *)v18 setBackSwappingVideoRenderURL:v51];

      v52 = [v45 originalAdjustmentData];

      [(PHContentEditingInput *)v18 setOriginalAdjustmentData:v52];
      goto LABEL_31;
    }

    [(PHContentEditingInput *)v18 setVideoURL:v16];
    goto LABEL_30;
  }

LABEL_31:
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __94__PHImageManager__handleResultForContentEditingInput_request_options_asset_completionHandler___block_invoke;
  v72[3] = &unk_1E75AA9D8;
  v73 = v11;
  v74 = v12;
  v75 = v18;
  v76 = v15;
  v53 = v18;
  v54 = v12;
  v55 = v11;
  v56 = v15;
  [(PHImageManager *)self _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v54 options:v13 block:v72];
}

void __94__PHImageManager__handleResultForContentEditingInput_request_options_asset_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) sanitizedInfoDictionary];
    v3 = PLImageManagerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) identifierString];
      v5 = *(a1 + 32);
      v6 = 138543874;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ content editing input request finished with %@, info: %@", &v6, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (int)requestAVAssetForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v56[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() _allowVideoAccessForAsset:v8 options:v9])
  {
    if (v9)
    {
      v11 = [v9 copy];
    }

    else
    {
      v11 = objc_alloc_init(PHVideoRequestOptions);
    }

    v15 = v11;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_DEFAULT, 0);

    v17 = dispatch_queue_create("com.apple.photos.requestAVAsset", v13);
    [(PHVideoRequestOptions *)v15 setResultHandlerQueue:v17];

    v12 = v15;
    if ([v8 deferredProcessingNeeded] == 2 && -[PHVideoRequestOptions liveRenderVideoIfNeeded](v12, "liveRenderVideoIfNeeded"))
    {
      v18 = [(PHVideoRequestOptions *)v12 isCurrentVersion];

      if (v18)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke;
        v41[3] = &unk_1E75AA910;
        v19 = &v42;
        v42 = v10;
        v14 = [(PHImageManager *)self _requestLiveRenderAVAssetForAsset:v8 options:v12 resultHandler:v41];
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
    }

    v20 = [(PHImageManager *)self nextID];
    managerID = self->_managerID;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_2;
    v38[3] = &unk_1E75AAAA0;
    v40 = v10;
    v38[4] = self;
    v39 = v12;
    v22 = [PHMediaRequestContext videoRequestContextWithRequestID:v20 managerID:managerID asset:v8 videoRequestOptions:v39 intent:1 resultHandler:v38];
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    v19 = &v40;
    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v23 = PLImageManagerGetLog();
      v24 = os_signpost_id_generate(v23);
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = v24;
        v34 = [v22 managerID];
        v31 = [v22 requestID];
        v33 = [v22 type];
        v37 = v23;
        if (_getNextLayoutID_onceToken != -1)
        {
          dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
        }

        os_unfair_lock_lock(&s_lock);
        v25 = [s_availableLayoutIDs firstIndex];
        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = 101;
        }

        else
        {
          v26 = v25;
          [s_availableLayoutIDs removeIndex:v25];
        }

        os_unfair_lock_unlock(&s_lock);
        v27 = [v22 asset];
        v35 = [v27 uuid];

        [v22 setSignpostID:v36];
        [v22 setSignpostLayoutID:v26];
        v28 = v37;
        if (os_signpost_enabled(v28))
        {
          v30 = v31;
          [v9 targetSize];
          v32 = DCIM_NSStringFromCGSize();
          *buf = 134219266;
          v44 = v34;
          v45 = 2048;
          v46 = v30;
          v47 = 2112;
          v48 = v32;
          v49 = 2048;
          v50 = v33;
          v51 = 2112;
          v52 = v35;
          v53 = 2048;
          v54 = v26;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v36, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
        }

        v23 = v37;
      }
    }

    v14 = [(PHImageManager *)self runRequestWithContext:v22];

    goto LABEL_27;
  }

  if (v10)
  {
    v12 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3306 userInfo:0];
    v55 = @"PHImageErrorKey";
    v56[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    (*(v10 + 2))(v10, 0, 0, 0, v13);
    v14 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v14 = 0;
LABEL_29:

  return v14;
}

void __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 videoURL];
  v8 = v7;
  v9 = a1[6];
  if (v9)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_5;
    block[3] = &unk_1E75AA820;
    v15 = &v23;
    v16 = &v22;
    v22 = v5;
    v23 = v9;
    v11 = v5;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    [a1[4] _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v6 options:a1[5] block:v12];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = [v5 info];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_3;
    v24[3] = &unk_1E75AAB68;
    v15 = v25;
    v25[0] = v5;
    v16 = &v28;
    v17 = a1[5];
    v18 = a1[6];
    v19 = a1[4];
    v28 = v18;
    v25[1] = v19;
    v26 = v6;
    v27 = a1[5];
    v20 = v5;
    [v13 buildAVAssetFromVideoURL:v8 infoDictionary:v14 options:v17 completion:v24];
  }
}

void __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  [*(a1 + 32) setErrorIfNone:a5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_4;
  block[3] = &unk_1E75AAB40;
  v12 = *(a1 + 64);
  v18 = v9;
  v19 = v10;
  v22 = v12;
  v20 = v11;
  v21 = *(a1 + 32);
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  [*(a1 + 40) _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:*(a1 + 48) options:*(a1 + 56) block:v16];
}

void __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) sanitizedInfoDictionary];
    (*(v1 + 16))(v1, 0, 0, 0, v2);
  }
}

void __63__PHImageManager_requestAVAssetForAsset_options_resultHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 56) sanitizedInfoDictionary];
  (*(v4 + 16))(v4, v1, v2, v3, v5);
}

- (int)_requestLiveRenderAVAssetForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(PHImageManager *)self nextID];
  managerID = self->_managerID;
  [v8 targetSize];
  v14 = v13;
  v16 = v15;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __74__PHImageManager__requestLiveRenderAVAssetForAsset_options_resultHandler___block_invoke;
  v35[3] = &unk_1E75AA898;
  v17 = v9;
  v37 = v17;
  v35[4] = self;
  v18 = v8;
  v36 = v18;
  v19 = [PHLiveRenderEditingInputRequestContext videoLiveRenderContextWithRequestID:v11 managerID:managerID asset:v10 options:v18 targetSize:v35 renderedVideoHandler:v14, v16];

  v20 = PLImageManagerGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_managerID;
    v22 = [v19 requestID];
    *buf = 134218240;
    v39 = v21;
    v40 = 2048;
    v41 = v22;
    _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEFAULT, "%ld-%ld - Making edit request in preparation for live rendering video", buf, 0x16u);
  }

  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v23 = PLImageManagerGetLog();
    v24 = os_signpost_id_generate(v23);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v25 = v24;
      v34 = [v19 managerID];
      v26 = [v19 requestID];
      v33 = [v19 type];
      if (_getNextLayoutID_onceToken != -1)
      {
        dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
      }

      os_unfair_lock_lock(&s_lock);
      v27 = [s_availableLayoutIDs firstIndex];
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = 101;
      }

      else
      {
        v28 = v27;
        [s_availableLayoutIDs removeIndex:v27];
      }

      os_unfair_lock_unlock(&s_lock);
      v29 = [v19 asset];
      v30 = [v29 uuid];

      [v19 setSignpostID:v25];
      [v19 setSignpostLayoutID:v28];
      if (os_signpost_enabled(v23))
      {
        *buf = 134219266;
        v39 = v34;
        v40 = 2048;
        v41 = v26;
        v42 = 2112;
        v43 = &stru_1F0FC60C8;
        v44 = 2048;
        v45 = v33;
        v46 = 2112;
        v47 = v30;
        v48 = 2048;
        v49 = v28;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v25, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
      }
    }
  }

  v31 = [(PHImageManager *)self runRequestWithContext:v19];

  return v31;
}

void __74__PHImageManager__requestLiveRenderAVAssetForAsset_options_resultHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a1[6];
  if (v15)
  {
    v17 = a1[4];
    v16 = a1[5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PHImageManager__requestLiveRenderAVAssetForAsset_options_resultHandler___block_invoke_2;
    v18[3] = &unk_1E75AAB40;
    v23 = v15;
    v19 = v11;
    v20 = v13;
    v21 = v12;
    v22 = v14;
    [v17 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:0 options:v16 block:v18];
  }
}

- (int)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(PHImageManager *)self nextID];
  managerID = self->_managerID;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __59__PHImageManager_requestURLForVideo_options_resultHandler___block_invoke;
  v31[3] = &unk_1E75AAB18;
  v13 = v9;
  v33 = v13;
  v14 = v8;
  v32 = v14;
  v15 = [PHMediaRequestContext videoRequestContextWithRequestID:v11 managerID:managerID asset:v10 videoRequestOptions:v14 intent:3 resultHandler:v31];

  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v16 = PLImageManagerGetLog();
    v17 = os_signpost_id_generate(v16);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      v19 = [v15 managerID];
      v20 = [v15 requestID];
      v29 = [v15 type];
      if (_getNextLayoutID_onceToken != -1)
      {
        dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
      }

      os_unfair_lock_lock(&s_lock);
      v21 = [s_availableLayoutIDs firstIndex];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 101;
      }

      else
      {
        v22 = v21;
        [s_availableLayoutIDs removeIndex:v21];
      }

      os_unfair_lock_unlock(&s_lock);
      v23 = [v15 asset];
      v30 = [v23 uuid];

      [v15 setSignpostID:v18];
      [v15 setSignpostLayoutID:v22];
      v24 = v16;
      if (os_signpost_enabled(v24))
      {
        v28 = v20;
        [v14 targetSize];
        v25 = DCIM_NSStringFromCGSize();
        *buf = 134219266;
        v35 = v19;
        v36 = 2048;
        v37 = v28;
        v38 = 2112;
        v39 = v25;
        v40 = 2048;
        v41 = v29;
        v42 = 2112;
        v43 = v30;
        v44 = 2048;
        v45 = v22;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v18, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
      }
    }
  }

  v26 = [(PHImageManager *)self runRequestWithContext:v15];

  return v26;
}

void __59__PHImageManager_requestURLForVideo_options_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v5 = [v3 videoURL];
    v6 = [*(a1 + 32) resultHandlerQueue];

    if (v6)
    {
      v7 = [*(a1 + 32) resultHandlerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__PHImageManager_requestURLForVideo_options_resultHandler___block_invoke_2;
      block[3] = &unk_1E75AA870;
      v13 = *(a1 + 40);
      v11 = v5;
      v12 = v4;
      dispatch_async(v7, block);
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = [v4 sanitizedInfoDictionary];
      (*(v8 + 16))(v8, v5, v9);
    }
  }
}

void __59__PHImageManager_requestURLForVideo_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) sanitizedInfoDictionary];
  (*(v2 + 16))(v2, v1, v3);
}

- (int)requestNewCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v63 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (v14)
  {
    v16 = [v14 copy];
  }

  else
  {
    v16 = objc_alloc_init(PHImageRequestOptions);
  }

  v17 = v16;
  if ([(PHImageRequestOptions *)v16 version]== 16 || [(PHImageRequestOptions *)v17 version]== 17)
  {
    v18 = [(PHImageRequestOptions *)v17 resultHandlerQueue];

    if (!v18)
    {
      v19 = dispatch_get_global_queue(33, 0);
      [(PHImageRequestOptions *)v17 setResultHandlerQueue:v19];
    }
  }

  v20 = [PHImageDisplaySpec alloc];
  [(PHImageRequestOptions *)v17 normalizedCropRect];
  v25 = [(PHImageDisplaySpec *)v20 initWithTargetSize:a5 contentMode:ceil(width) normalizedCropRect:ceil(height), v21, v22, v23, v24];
  [(PHImageRequestOptions *)v17 fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
  [(PHImageDisplaySpec *)v25 setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:?];
  v26 = [(PHImageManager *)self nextID];
  managerID = self->_managerID;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __89__PHImageManager_requestNewCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v47[3] = &unk_1E75AAAA0;
  v28 = v17;
  v48 = v28;
  v49 = self;
  v29 = v15;
  v50 = v29;
  v30 = [PHMediaRequestContext imageRequestContextWithRequestID:v26 managerID:managerID asset:v13 imageRequestOptions:v28 displaySpec:v25 resultHandler:v47];
  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v31 = PLImageManagerGetLog();
    v32 = os_signpost_id_generate(v31);
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v33 = v32;
      v44 = [v30 managerID];
      v41 = [v30 requestID];
      v43 = [v30 type];
      v45 = v13;
      if (_getNextLayoutID_onceToken != -1)
      {
        dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
      }

      os_unfair_lock_lock(&s_lock);
      v34 = [s_availableLayoutIDs firstIndex];
      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = 101;
      }

      else
      {
        v35 = v34;
        [s_availableLayoutIDs removeIndex:v34];
      }

      os_unfair_lock_unlock(&s_lock);
      v36 = [v30 asset];
      v46 = [v36 uuid];

      [v30 setSignpostID:v33];
      [v30 setSignpostLayoutID:v35];
      v37 = v31;
      if (os_signpost_enabled(v37))
      {
        v40 = v41;
        v42 = DCIM_NSStringFromCGSize();
        *buf = 134219266;
        v52 = v44;
        v53 = 2048;
        v54 = v40;
        v55 = 2112;
        v56 = v42;
        v57 = 2048;
        v58 = v43;
        v59 = 2112;
        v60 = v46;
        v61 = 2048;
        v62 = v35;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v33, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
      }

      v13 = v45;
    }
  }

  v38 = [(PHImageManager *)self runRequestWithContext:v30];

  return v38;
}

void __89__PHImageManager_requestNewCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CGImageRetain([v7 imageRef]);
  v11 = [a1[4] isNetworkAccessAllowed];
  v12 = v7;
  if ([v12 containsValidData])
  {

    if (v10)
    {
      v13 = PLImageManagerGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v8 identifierString];
        v15 = [v12 info];
        *buf = 138412802;
        v50 = v14;
        v51 = 2112;
        v52 = v10;
        v53 = 2112;
        v54 = v15;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "[RM]: %@ Image result received with UIImage: %@, info: %@", buf, 0x20u);
      }

      if (PHImageManagerRecordEnabled())
      {
        v16 = [v8 requestID];
        v17 = [v8 identifierString];
        v18 = [v12 info];
        [PHImageManagerRequestTracer traceMessageForRequestID:v16 message:@"[RM]: %@ Image result received with UIImage: %@, info: %@", v17, v10, v18];
LABEL_32:

        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v28 = [v12 adjustmentData];

    v29 = PLImageManagerGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (!v28)
    {
      if (v30)
      {
        v35 = [v8 identifierString];
        v36 = [v12 info];
        *buf = 138412546;
        v50 = v35;
        v51 = 2112;
        v52 = v36;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEBUG, "[RM]: %@ Image result received with info: %@", buf, 0x16u);
      }

      if (PHImageManagerRecordEnabled())
      {
        v42 = [v8 requestID];
        v17 = [v8 identifierString];
        v18 = [v12 info];
        [PHImageManagerRequestTracer traceMessageForRequestID:v42 message:@"[RM]: %@ Image result received with info: %@", v17, v18, v43];
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v30)
    {
      v31 = [v8 identifierString];
      *buf = 138412290;
      v50 = v31;
      _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEBUG, "[RM]: %@ Adjustment data received", buf, 0xCu);
    }

    if (!PHImageManagerRecordEnabled())
    {
      goto LABEL_30;
    }

    v32 = [v8 requestID];
    v17 = [v8 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v32 message:@"[RM]: %@ Adjustment data received", v17];
LABEL_33:

    goto LABEL_30;
  }

  if ([v12 isCancelled])
  {

    v19 = PLImageManagerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v8 identifierString];
      *buf = 138412290;
      v50 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "[RM]: %@ Image request was cancelled", buf, 0xCu);
    }

    if (!PHImageManagerRecordEnabled())
    {
      goto LABEL_30;
    }

    v21 = [v8 requestID];
    v17 = [v8 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v21 message:@"[RM]: %@ Image request was cancelled", v17];
    goto LABEL_33;
  }

  v22 = v11 | [v12 isInCloud] ^ 1;

  v23 = PLImageManagerGetLog();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = [v8 identifierString];
      v26 = [v12 error];
      *buf = 138412546;
      v50 = v25;
      v51 = 2112;
      v52 = v26;
      _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "[RM]: %@ Image request failed with error: %@", buf, 0x16u);
    }

    if (PHImageManagerRecordEnabled())
    {
      v27 = [v8 requestID];
      v17 = [v8 identifierString];
      v18 = [v12 error];
      [PHImageManagerRequestTracer traceMessageForRequestID:v27 message:@"[RM]: %@ Image request failed with error: %@", v17, v18, v43];
      goto LABEL_32;
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v8 identifierString];
      *buf = 138412290;
      v50 = v33;
      _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEBUG, "[RM]: %@ Image request found result in cloud, but network access not allowed", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      v34 = [v8 requestID];
      v17 = [v8 identifierString];
      [PHImageManagerRequestTracer traceMessageForRequestID:v34 message:@"[RM]: %@ Image request found result in cloud, but network access not allowed", v17];
      goto LABEL_33;
    }
  }

LABEL_30:
  v38 = a1[4];
  v37 = a1[5];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __89__PHImageManager_requestNewCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_716;
  v44[3] = &unk_1E75AAAF0;
  v39 = a1[6];
  v45 = v12;
  v46 = v8;
  v47 = v39;
  v48 = v10;
  v40 = v8;
  v41 = v12;
  [v37 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v40 options:v38 block:v44];
  [a1[5] additionalWorkForImageRequestCompletedWithResult:v41 request:v40 context:v9];
}

void __89__PHImageManager_requestNewCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_716(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) sanitizedInfoDictionary];
    v3 = [v2 objectForKeyedSubscript:@"PHImageResultClientShouldRetryKey"];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      v5 = PLImageManagerGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [*(a1 + 40) identifierString];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM]: %@ client should retry", &v8, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 56);

    CGImageRelease(v7);
  }
}

- (id)synchronousImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 copy];
  }

  else
  {
    v13 = objc_alloc_init(PHImageRequestOptions);
  }

  v14 = v13;
  [(PHImageRequestOptions *)v13 setSynchronous:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__51913;
  v23 = __Block_byref_object_dispose__51914;
  v24 = 0;
  v15 = +[PHImageManager defaultManager];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__PHImageManager_synchronousImageForAsset_targetSize_contentMode_options___block_invoke;
  v18[3] = &unk_1E75AAAC8;
  v18[4] = &v19;
  [v15 requestImageForAsset:v10 targetSize:a5 contentMode:v14 options:v18 resultHandler:{width, height}];

  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

- (int)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLAvailabilityRequestGetLog();
  v12 = os_signpost_id_make_with_pointer(v11, v8);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138412290;
    v52 = v8;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "com.apple.photos.backend.requestPlayerItemForVideo", "requestPlayerItemForVideo %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PHImageManager_requestStreamForVideo_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E75AAA28;
  v15 = v14;
  v48 = v15;
  v50 = v12;
  v16 = v10;
  v49 = v16;
  v17 = _Block_copy(aBlock);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __62__PHImageManager_requestStreamForVideo_options_resultHandler___block_invoke_694;
  v45[3] = &unk_1E75AAA50;
  v18 = v17;
  v46 = v18;
  v19 = _Block_copy(v45);
  if (v9)
  {
    v20 = [v9 copy];
  }

  else
  {
    v20 = objc_alloc_init(PHVideoRequestOptions);
  }

  v21 = v20;
  v44 = 0;
  v22 = [(PHVideoRequestOptions *)v20 isValidConfigurationWithError:&v44];
  v23 = v44;
  if (!v22)
  {
    v19[2](v19, v23);
LABEL_22:
    v28 = 0;
    goto LABEL_23;
  }

  if (!-[PHVideoRequestOptions restrictToStreamable](v21, "restrictToStreamable") || ![objc_opt_class() _allowVideoAccessForAsset:v8 options:v9] || !-[PHImageManager _canStreamVideoForAsset:](self, "_canStreamVideoForAsset:", v8))
  {
    v29 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3306 userInfo:0];
    v19[2](v19, v29);

    goto LABEL_22;
  }

  v24 = [(PHImageManager *)self nextID];
  spida = self->_managerID;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __62__PHImageManager_requestStreamForVideo_options_resultHandler___block_invoke_2;
  v41[3] = &unk_1E75AAAA0;
  v43 = v18;
  v41[4] = self;
  v42 = v21;
  v25 = [PHMediaRequestContext videoRequestContextWithRequestID:v24 managerID:spida asset:v8 videoRequestOptions:v42 intent:0 resultHandler:v41];
  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v40 = PLImageManagerGetLog();
    spid = os_signpost_id_generate(v40);
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v33 = [v25 managerID];
      v31 = [v25 requestID];
      v32 = [v25 type];
      NextLayoutID = _getNextLayoutID();
      [v25 asset];
      v26 = v37 = v25;
      v36 = [v26 uuid];

      v25 = v37;
      [v37 setSignpostID:spid];
      [v37 setSignpostLayoutID:NextLayoutID];
      v34 = v40;
      if (os_signpost_enabled(v34))
      {
        [v9 targetSize];
        v27 = DCIM_NSStringFromCGSize();
        *buf = 134219266;
        v52 = v33;
        v53 = 2048;
        v54 = v31;
        v55 = 2112;
        v56 = v27;
        v57 = 2048;
        v58 = v32;
        v59 = 2112;
        v60 = v36;
        v61 = 2048;
        v62 = NextLayoutID;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v34, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);

        v25 = v37;
      }
    }
  }

  v28 = [(PHImageManager *)self runRequestWithContext:v25];

LABEL_23:
  return v28;
}

void __62__PHImageManager_requestStreamForVideo_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v12;
  v14 = *(a1 + 48);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = 134349056;
    v16 = a5;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "com.apple.photos.backend.requestPlayerItemForVideo", " enableTelemetry=YES resultItemFormat=%{signpost.telemetry:number1,public}td", &v15, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __62__PHImageManager_requestStreamForVideo_options_resultHandler___block_invoke_694(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = @"PHImageErrorKey";
    v7[0] = a2;
    v3 = MEMORY[0x1E695DF20];
    v4 = a2;
    v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];
    (*(v2 + 16))(v2, 0, 0, v5, 1);
  }
}

void __62__PHImageManager_requestStreamForVideo_options_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48))
  {
    v7 = [v5 sanitizedInfoDictionary];
    v8 = [v7 mutableCopy];

    v9 = [v5 videoMediaItemMakerData];
    v10 = [v5 videoURL];
    v11 = [v5 uniformTypeIdentifier];
    if (v11)
    {
      [v8 setObject:v11 forKey:@"PHImageFileUTIKey"];
    }

    if (v9)
    {
      v12 = [v5 info];
      v13 = [v12 objectForKey:@"PHImageResultAVAssetOutOfBandPresentationHintsKey"];

      if (v13)
      {
        [v8 setObject:v13 forKey:@"PHImageResultAVAssetOutOfBandPresentationHintsKey"];
      }

      v14 = [v5 fingerPrint];
      if (v14)
      {
        [v8 setObject:v14 forKey:@"PHImageResultFingerPrintKey"];
      }

      v15 = 4;
    }

    else if (v10)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__PHImageManager_requestStreamForVideo_options_resultHandler___block_invoke_3;
    v22[3] = &unk_1E75AAA78;
    v18 = *(a1 + 48);
    v23 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v18;
    v27 = v15;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    [v16 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v6 options:v17 block:v22];
  }
}

- (PHImageRequestID)requestPlayerItemForVideo:(PHAsset *)asset options:(PHVideoRequestOptions *)options resultHandler:(void *)resultHandler
{
  v68[1] = *MEMORY[0x1E69E9840];
  v8 = asset;
  v9 = options;
  v10 = resultHandler;
  v11 = PLAvailabilityRequestGetLog();
  v12 = os_signpost_id_make_with_pointer(v11, v8);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138412290;
    v56 = v8;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "com.apple.photos.backend.requestPlayerItemForVideo", "requestPlayerItemForVideo %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E75AA960;
  v15 = v14;
  v52 = v15;
  v54 = v12;
  v16 = v10;
  v53 = v16;
  v17 = _Block_copy(aBlock);
  if ([objc_opt_class() _allowVideoAccessForAsset:v8 options:v9])
  {
    if (v9)
    {
      v18 = [(PHVideoRequestOptions *)v9 copy];
    }

    else
    {
      v18 = objc_alloc_init(PHVideoRequestOptions);
    }

    v22 = v18;
    if ([(PHVideoRequestOptions *)v18 isNetworkAccessAllowed]&& [(PHImageManager *)self _canStreamVideoForAsset:v8]&& ![(PHVideoRequestOptions *)v22 hasValidTimeRange]&& ![(PHVideoRequestOptions *)v22 downloadIntent])
    {
      [(PHVideoRequestOptions *)v22 setStreamingAllowed:1];
    }

    v43 = v16;
    v44 = v15;
    v19 = v22;
    if ([(PHAsset *)v8 deferredProcessingNeeded]== 2 && [(PHVideoRequestOptions *)v19 liveRenderVideoIfNeeded])
    {
      v23 = [(PHVideoRequestOptions *)v19 isCurrentVersion];

      if (v23)
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_683;
        v49[3] = &unk_1E75AA910;
        v24 = &v50;
        v50 = v17;
        v21 = [(PHImageManager *)self _requestLiveRenderAVAssetForAsset:v8 options:v19 resultHandler:v49];
LABEL_35:
        v20 = *v24;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v25 = [(PHImageManager *)self nextID];
    managerID = self->_managerID;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_2;
    v45[3] = &unk_1E75AAB90;
    v48 = v17;
    v45[4] = self;
    v46 = v8;
    v47 = v19;
    v27 = [PHMediaRequestContext videoRequestContextWithRequestID:v25 managerID:managerID asset:v46 videoRequestOptions:v47 intent:0 resultHandler:v45];
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    v24 = &v48;
    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v28 = PLImageManagerGetLog();
      v29 = os_signpost_id_generate(v28);
      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = v29;
        v39 = [v27 managerID];
        v36 = [v27 requestID];
        v38 = [v27 type];
        v42 = v28;
        if (_getNextLayoutID_onceToken != -1)
        {
          dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
        }

        os_unfair_lock_lock(&s_lock);
        v30 = [s_availableLayoutIDs firstIndex];
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = 101;
        }

        else
        {
          v31 = v30;
          [s_availableLayoutIDs removeIndex:v30];
        }

        os_unfair_lock_unlock(&s_lock);
        v32 = [v27 asset];
        v41 = [v32 uuid];

        [v27 setSignpostID:v40];
        [v27 setSignpostLayoutID:v31];
        v33 = v42;
        if (os_signpost_enabled(v33))
        {
          v34 = v36;
          [(PHVideoRequestOptions *)v9 targetSize];
          v37 = DCIM_NSStringFromCGSize();
          *buf = 134219266;
          v56 = v39;
          v57 = 2048;
          v58 = v34;
          v16 = v43;
          v59 = 2112;
          v60 = v37;
          v61 = 2048;
          v62 = v38;
          v63 = 2112;
          v64 = v41;
          v65 = 2048;
          v66 = v31;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v40, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
        }

        v15 = v44;
        v24 = &v48;
        v28 = v42;
      }
    }

    v21 = [(PHImageManager *)self runRequestWithContext:v27];

    goto LABEL_35;
  }

  if (v17)
  {
    v19 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3306 userInfo:0];
    v67 = @"PHImageErrorKey";
    v68[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    (*(v17 + 2))(v17, 0, v20, 1);
    v21 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v21 = 0;
LABEL_37:

  return v21;
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = 134349056;
    v13 = a4;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_INTERVAL_END, v11, "com.apple.photos.backend.requestPlayerItemForVideo", " enableTelemetry=YES resultItemFormat=%{signpost.telemetry:number1,public}td", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_683(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  if (v12)
  {
    if (v14)
    {
      v13 = [MEMORY[0x1E69880B0] playerItemWithAsset:?];
      [v13 setVideoComposition:v10];
      [v13 setAudioMix:v9];
      [v13 setSeekingWaitsForVideoCompositionRendering:1];
      v12 = *(a1 + 32);
    }

    else
    {
      v13 = 0;
    }

    (*(v12 + 16))(v12, v13, v11, 5);
  }
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56))
  {
    v7 = [v5 videoURL];
    v8 = [v5 videoMediaItemMakerData];
    if (v8)
    {
      v9 = [objc_opt_class() playerItemFromVideoMediaItemMakerDataInMediaResult:v5 forAsset:*(a1 + 40)];
      if (v9 && PFOSVariantHasInternalDiagnostics())
      {
        v10 = MEMORY[0x1E69C0718];
        v11 = [v9 asset];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_3;
        v36[3] = &unk_1E75AA988;
        v37 = v9;
        [v10 metadataForAsset:v11 completionHandler:v36];
      }

      v12 = *(a1 + 32);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_687;
      v32[3] = &unk_1E75AA870;
      v13 = *(a1 + 48);
      v35 = *(a1 + 56);
      v33 = v9;
      v34 = v5;
      v14 = v9;
      [v12 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v6 options:v13 block:v32];
    }

    else
    {
      v15 = *(a1 + 32);
      if (v7)
      {
        v16 = objc_opt_class();
        v17 = [v5 info];
        v18 = *(a1 + 48);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_688;
        v25[3] = &unk_1E75AAA00;
        v26 = v7;
        v27 = *(a1 + 48);
        v19 = v5;
        v20 = *(a1 + 32);
        v28 = v19;
        v29 = v20;
        v30 = v6;
        v31 = *(a1 + 56);
        [v16 buildAVPlayerItemFromVideoURL:v26 infoDictionary:v17 options:v18 completion:v25];

        v14 = v26;
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_692;
        v22[3] = &unk_1E75AA820;
        v21 = *(a1 + 48);
        v24 = *(a1 + 56);
        v23 = v5;
        [v15 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v6 options:v21 block:v22];

        v14 = v24;
      }
    }
  }
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLImageManagerGetLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) asset];
      v10 = [v5 firstVideoTrackFormatDebugDescription];
      v11 = 138412546;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Media item maker player item asset %@: %{public}@", &v11, 0x16u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) asset];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Error loading metadata for media item maker player item asset %@: %@", &v11, 0x16u);
    goto LABEL_6;
  }
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_687(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) sanitizedInfoDictionary];
  (*(v2 + 16))(v2, v1, v3, 4);
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_688(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && PFOSVariantHasInternalDiagnostics())
  {
    v10 = MEMORY[0x1E69C0718];
    v11 = [v7 asset];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_3_689;
    v21[3] = &unk_1E75AA9B0;
    v22 = *(a1 + 32);
    v23 = v7;
    [v10 metadataForAsset:v11 completionHandler:v21];
  }

  if ([*(a1 + 40) includeTimeRangeMapper])
  {
    [*(a1 + 48) setInfo:v8 forKey:@"PHImageResultTimeRangeMapperKey"];
  }

  [*(a1 + 48) setErrorIfNone:v9];
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_690;
  v16[3] = &unk_1E75AA9D8;
  v20 = *(a1 + 72);
  v17 = v7;
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v15 = v7;
  [v12 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v13 options:v14 block:v16];
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_692(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) sanitizedInfoDictionary];
  (*(v1 + 16))(v1, 0, v2, 1);
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_3_689(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLImageManagerGetLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = [v5 firstVideoTrackFormatDebugDescription];
      v14 = 138412546;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v11 = "Player item asset for URL %@: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_19C86F000, v12, v13, v11, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [*(a1 + 40) asset];
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    v11 = "Error loading metadata for player item asset %@: %@";
    v12 = v8;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void __66__PHImageManager_requestPlayerItemForVideo_options_resultHandler___block_invoke_690(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) sanitizedInfoDictionary];
  if ([*(a1 + 48) isFileURL])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  (*(v2 + 16))(v2, v3, v5, v4);
}

- (PHImageRequestID)requestExportSessionForVideo:(PHAsset *)asset options:(PHVideoRequestOptions *)options exportPreset:(NSString *)exportPreset resultHandler:(void *)resultHandler
{
  v53[1] = *MEMORY[0x1E69E9840];
  v10 = asset;
  v11 = options;
  v12 = exportPreset;
  v13 = resultHandler;
  if ([objc_opt_class() _allowVideoAccessForAsset:v10 options:v11])
  {
    if (v11)
    {
      v14 = [(PHVideoRequestOptions *)v11 copy];
    }

    else
    {
      v14 = objc_alloc_init(PHVideoRequestOptions);
    }

    v18 = v14;
    if ([(PHVideoRequestOptions *)v14 deliveryMode]!= PHVideoRequestOptionsDeliveryModeHighQualityFormat)
    {
      v19 = PLImageManagerGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v41 = [(PHVideoRequestOptions *)v18 deliveryMode];
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "Request for video export session with delivery mode of %ld is not allowed, request will require 'high quality' delivery mode", buf, 0xCu);
      }

      [(PHVideoRequestOptions *)v18 setDeliveryMode:1];
    }

    if (![(PHVideoRequestOptions *)v18 restrictToPlayableOnCurrentDevice])
    {
      v20 = PLImageManagerGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEBUG, "Request for video export session without restricting to playable not allowed, request will restrict to playable", buf, 2u);
      }

      [(PHVideoRequestOptions *)v18 setRestrictToPlayableOnCurrentDevice:1];
    }

    v21 = [(PHImageManager *)self nextID];
    managerID = self->_managerID;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke;
    v36[3] = &unk_1E75AAB90;
    v39 = v13;
    v36[4] = self;
    v15 = v18;
    v37 = v15;
    v23 = v12;
    v38 = v23;
    v24 = [PHMediaRequestContext videoRequestContextWithRequestID:v21 managerID:managerID asset:v10 videoRequestOptions:v15 intent:2 resultHandler:v36];
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v25 = PLImageManagerGetLog();
      v35 = os_signpost_id_generate(v25);
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = [v24 managerID];
        v30 = [v24 requestID];
        v31 = [v24 type];
        v33 = v12;
        if (_getNextLayoutID_onceToken != -1)
        {
          dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
        }

        os_unfair_lock_lock(&s_lock);
        v26 = [s_availableLayoutIDs firstIndex];
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = 101;
        }

        else
        {
          v27 = v26;
          [s_availableLayoutIDs removeIndex:v26];
        }

        os_unfair_lock_unlock(&s_lock);
        v28 = [v24 asset];
        v34 = [v28 uuid];

        [v24 setSignpostID:v35];
        [v24 setSignpostLayoutID:v27];
        if (os_signpost_enabled(v25))
        {
          *buf = 134219266;
          v41 = v32;
          v42 = 2048;
          v43 = v30;
          v44 = 2112;
          v45 = v23;
          v46 = 2048;
          v47 = v31;
          v48 = 2112;
          v49 = v34;
          v50 = 2048;
          v51 = v27;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v35, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
        }

        v12 = v33;
      }
    }

    v17 = [(PHImageManager *)self runRequestWithContext:v24];

    v16 = v39;
    goto LABEL_30;
  }

  if (v13)
  {
    v15 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3306 userInfo:0];
    v52 = @"PHImageErrorKey";
    v53[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    (*(v13 + 2))(v13, 0, v16);
    v17 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v17 = 0;
LABEL_31:

  return v17;
}

void __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 videoURL];
  v8 = v7;
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(a1 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke_4;
    v22[3] = &unk_1E75AA820;
    v18 = &v24;
    v23 = v5;
    v24 = v9;
    v13 = v5;
    [v10 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v6 options:v12 block:v22];
    v21 = v23;
  }

  else
  {
    v14 = objc_opt_class();
    v15 = [v5 info];
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke_2;
    v25[3] = &unk_1E75AA938;
    v18 = v26;
    v19 = *(a1 + 32);
    v26[0] = v5;
    v26[1] = v19;
    v27 = v6;
    v28 = *(a1 + 40);
    v29 = *(a1 + 56);
    v20 = v5;
    [v14 buildExportSessionFromVideoURL:v8 infoDictionary:v15 options:v16 exportPreset:v17 completion:v25];

    v21 = v27;
  }
}

void __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setErrorIfNone:a3];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke_3;
  v10[3] = &unk_1E75AA870;
  v8 = *(a1 + 56);
  v13 = *(a1 + 64);
  v11 = v5;
  v12 = *(a1 + 32);
  v9 = v5;
  [v6 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:v7 options:v8 block:v10];
}

void __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) sanitizedInfoDictionary];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __82__PHImageManager_requestExportSessionForVideo_options_exportPreset_resultHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) sanitizedInfoDictionary];
  (*(v2 + 16))(v2, v1, v3);
}

- (PHImageRequestID)requestAVAssetForVideo:(PHAsset *)asset options:(PHVideoRequestOptions *)options resultHandler:(void *)resultHandler
{
  v8 = resultHandler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PHImageManager_requestAVAssetForVideo_options_resultHandler___block_invoke;
  v11[3] = &unk_1E75AA910;
  v12 = v8;
  v9 = v8;
  LODWORD(options) = [(PHImageManager *)self requestAVAssetForAsset:asset options:options resultHandler:v11];

  return options;
}

- (PHImageRequestID)requestLivePhotoForAsset:(PHAsset *)asset targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHLivePhotoRequestOptions *)options resultHandler:(void *)resultHandler
{
  height = targetSize.height;
  width = targetSize.width;
  v84[1] = *MEMORY[0x1E69E9840];
  v13 = asset;
  v14 = options;
  v15 = resultHandler;
  if ([(PHAsset *)v13 canPlayPhotoIris])
  {
    v16 = v14;
    if ([(PHAsset *)v13 deferredProcessingNeeded]== 2 && [(PHLivePhotoRequestOptions *)v16 liveRenderVideoIfNeeded])
    {
      v17 = [(PHLivePhotoRequestOptions *)v16 isCurrentVersion];

      if (v17)
      {
        v18 = [(PHImageManager *)self nextID];
        managerID = self->_managerID;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
        v67[3] = &unk_1E75AA898;
        v70 = v15;
        v68 = v16;
        v69 = v13;
        v20 = [PHLiveRenderEditingInputRequestContext videoLiveRenderContextWithRequestID:v18 managerID:managerID asset:v69 options:v68 targetSize:contentMode contentMode:v67 renderedVideoHandler:width, height];
        v21 = PLImageManagerGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = self->_managerID;
          v23 = [v20 requestID];
          *buf = 134218240;
          v72 = v22;
          v73 = 2048;
          v74 = v23;
          _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "%ld-%ld - Making edit request in preparation for live rendering live photo's video complement", buf, 0x16u);
        }

        if (PHSignpostEventsEnabled_onceToken != -1)
        {
          dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
        }

        if (PHSignpostEventsEnabled_eventsEnabled == 1)
        {
          v24 = PLImageManagerGetLog();
          v25 = os_signpost_id_generate(v24);
          if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v26 = v25;
            v58 = v14;
            v27 = [v20 managerID];
            v28 = [v20 requestID];
            v56 = [v20 type];
            if (_getNextLayoutID_onceToken != -1)
            {
              dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
            }

            os_unfair_lock_lock(&s_lock);
            v29 = [s_availableLayoutIDs firstIndex];
            if (v29 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v30 = 101;
            }

            else
            {
              v30 = v29;
              [s_availableLayoutIDs removeIndex:v29];
            }

            os_unfair_lock_unlock(&s_lock);
            v48 = [v20 asset];
            v61 = [v48 uuid];

            [v20 setSignpostID:v26];
            [v20 setSignpostLayoutID:v30];
            v49 = v24;
            if (os_signpost_enabled(v49))
            {
              v50 = DCIM_NSStringFromCGSize();
              *buf = 134219266;
              v72 = v27;
              v73 = 2048;
              v74 = v28;
              v75 = 2112;
              v76 = v50;
              v51 = v50;
              v77 = 2048;
              v78 = v56;
              v79 = 2112;
              v80 = v61;
              v81 = 2048;
              v82 = v30;
              _os_signpost_emit_with_name_impl(&dword_19C86F000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v26, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
            }

            v14 = v58;
          }
        }

        v33 = [(PHImageManager *)self runRequestWithContext:v20];

        v31 = v70;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v31 = [[PHImageDisplaySpec alloc] initWithTargetSize:contentMode contentMode:width, height];
    if (v16)
    {
      v34 = v16;
    }

    else
    {
      v34 = objc_alloc_init(PHLivePhotoRequestOptions);
    }

    v35 = v34;
    v36 = [(PHImageManager *)self nextID];
    v37 = self->_managerID;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_663;
    v62[3] = &unk_1E75AAB90;
    v38 = v35;
    v63 = v38;
    v66 = v15;
    v64 = v13;
    v65 = self;
    v39 = [PHMediaRequestContext livePhotoRequestContextWithRequestID:v36 managerID:v37 asset:v64 livePhotoRequestOptions:v38 displaySpec:v31 resultHandler:v62];
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v40 = PLImageManagerGetLog();
      v41 = os_signpost_id_generate(v40);
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v42 = v41;
        v57 = [v39 managerID];
        v53 = [v39 requestID];
        v55 = [v39 type];
        v59 = v14;
        if (_getNextLayoutID_onceToken != -1)
        {
          dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
        }

        os_unfair_lock_lock(&s_lock);
        v43 = [s_availableLayoutIDs firstIndex];
        if (v43 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v44 = 101;
        }

        else
        {
          v44 = v43;
          [s_availableLayoutIDs removeIndex:v43];
        }

        os_unfair_lock_unlock(&s_lock);
        v45 = [v39 asset];
        v60 = [v45 uuid];

        [v39 setSignpostID:v42];
        [v39 setSignpostLayoutID:v44];
        v46 = v40;
        if (os_signpost_enabled(v46))
        {
          v52 = v53;
          v54 = DCIM_NSStringFromCGSize();
          *buf = 134219266;
          v72 = v57;
          v73 = 2048;
          v74 = v52;
          v75 = 2112;
          v76 = v54;
          v77 = 2048;
          v78 = v55;
          v79 = 2112;
          v80 = v60;
          v81 = 2048;
          v82 = v44;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v42, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
        }

        v14 = v59;
      }
    }

    v33 = [(PHImageManager *)self runRequestWithContext:v39];

    goto LABEL_36;
  }

  if (v15)
  {
    v31 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3306 localizedDescription:@"Not a playable live photo asset"];
    v83 = @"PHImageErrorKey";
    v84[0] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    (*(v15 + 2))(v15, 0, v32);

    v33 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v33 = 0;
LABEL_37:

  return v33;
}

void __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke(id *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a1[6])
  {
    [a1[4] isNetworkAccessAllowed];
    v15 = v11;
    if ([v15 containsValidData])
    {

      v16 = PLImageManagerGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v12 identifierString];
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "[RM]: %@ building live photo with live-rendered avasset", buf, 0xCu);
      }

      if (PHImageManagerRecordEnabled())
      {
        v26 = [v12 requestID];
        v27 = [v12 identifierString];
        [PHImageManagerRequestTracer traceMessageForRequestID:v26 message:@"[RM]: %@ building live photo with live-rendered avasset", v27];
      }

      [a1[5] fetchPropertySetsIfNeeded];
      memset(buf, 0, sizeof(buf));
      v35 = 0;
      v18 = [a1[5] photoIrisProperties];
      v19 = v18;
      if (v18)
      {
        [v18 photoIrisStillDisplayTime];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        v35 = 0;
      }

      v21 = [PHLivePhoto alloc];
      v22 = [v15 imageRef];
      v23 = [v15 uiOrientation];
      v24 = a1[5];
      v32 = *buf;
      v33 = v35;
      v20 = [(PHLivePhoto *)v21 initWithImage:v22 uiOrientation:v23 videoAsset:v13 photoTime:&v32 asset:v24];
    }

    else
    {
      if (([v15 isCancelled] & 1) == 0)
      {
        [v15 isInCloud];
      }

      v20 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_659;
    block[3] = &unk_1E75AA870;
    v31 = a1[6];
    v29 = v20;
    v30 = v14;
    v25 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_663(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) isNetworkAccessAllowed];
  v7 = v5;
  v8 = [v7 containsValidData];
  if ((v8 & 1) == 0 && ([v7 isCancelled] & 1) == 0)
  {
    [v7 isInCloud];
  }

  v9 = [v7 isDegraded];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
  aBlock[3] = &unk_1E75AA8C0;
  v35 = *(a1 + 56);
  v10 = _Block_copy(aBlock);
  if (v9)
  {
    if ([v7 imageRef])
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    if ((v11 & 1) == 0)
    {
      if ([*(a1 + 32) deliveryMode] != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

  else if (!v8)
  {
LABEL_14:
    v14 = [v7 sanitizedInfoDictionary];
    v10[2](v10, 0, v14);

    goto LABEL_22;
  }

  [*(a1 + 40) fetchPropertySetsIfNeeded];
  v32 = 0uLL;
  v33 = 0;
  v12 = [*(a1 + 40) photoIrisProperties];
  v13 = v12;
  if (v12)
  {
    [v12 photoIrisStillDisplayTime];
  }

  else
  {
    v32 = 0uLL;
    v33 = 0;
  }

  if ((v9 & 1) == 0)
  {
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v6 identifierString];
      v17 = [v7 videoURL];
      *buf = 138412546;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "[RM]: %@ building live photo with video URL: %@", buf, 0x16u);
    }

    if (PHImageManagerRecordEnabled())
    {
      v23 = [v6 requestID];
      v24 = [v6 identifierString];
      v25 = [v7 videoURL];
      [PHImageManagerRequestTracer traceMessageForRequestID:v23 message:@"[RM]: %@ building live photo with video URL: %@", v24, v25];
    }
  }

  v26 = *(a1 + 48);
  v18 = [v7 imageRef];
  v19 = [v7 uiOrientation];
  v20 = [v7 videoURL];
  v21 = [v7 info];
  v22 = *(a1 + 40);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_668;
  v27[3] = &unk_1E75AA8E8;
  v28 = v6;
  v31 = v9;
  v29 = v7;
  v30 = v10;
  *buf = v32;
  *&buf[16] = v33;
  [v26 _prepareLivePhotoResultWithImage:v18 uiOrientation:v19 shouldIncludeVideo:v9 ^ 1u videoURL:v20 info:v21 photoTime:buf asset:v22 completion:v27];

LABEL_22:
}

void __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E75AA870;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_668(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLImageManagerGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) identifierString];
    v9 = *(a1 + 56);
    *buf = 138413058;
    *&buf[4] = v8;
    if (v9)
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    *&buf[12] = 2112;
    *&buf[14] = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "[RM]: %@ live photo request finished with live photo: %@, error: %@, isDegraded: %@", buf, 0x2Au);
  }

  if (PHImageManagerRecordEnabled())
  {
    v13 = [*(a1 + 32) requestID];
    v14 = [*(a1 + 32) identifierString];
    v15 = v14;
    if (*(a1 + 56))
    {
      v16 = @"Y";
    }

    else
    {
      v16 = @"N";
    }

    [PHImageManagerRequestTracer traceMessageForRequestID:v13 message:@"[RM]: %@ live photo request finished with live photo: %@, error: %@, isDegraded: %@", v14, v5, v6, v16, *buf];
  }

  [*(a1 + 40) setErrorIfNone:v6];
  v11 = *(a1 + 48);
  v12 = [*(a1 + 40) sanitizedInfoDictionary];
  (*(v11 + 16))(v11, v5, v12);
}

uint64_t __88__PHImageManager_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_prepareLivePhotoResultWithImage:(CGImage *)a3 uiOrientation:(int64_t)a4 shouldIncludeVideo:(BOOL)a5 videoURL:(id)a6 info:(id)a7 photoTime:(id *)a8 asset:(id)a9 completion:(id)a10
{
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = a10;
  if (a5)
  {
    v19 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __125__PHImageManager__prepareLivePhotoResultWithImage_uiOrientation_shouldIncludeVideo_videoURL_info_photoTime_asset_completion___block_invoke;
    v22[3] = &unk_1E75AA848;
    v25 = a3;
    v26 = a4;
    v27 = *&a8->var0;
    var3 = a8->var3;
    v23 = v17;
    v24 = v18;
    [v19 buildAVAssetFromVideoURL:v15 infoDictionary:v16 options:0 completion:v22];

    v20 = v23;
  }

  else
  {
    v21 = [PHLivePhoto alloc];
    v29 = *&a8->var0;
    v30 = a8->var3;
    v20 = [(PHLivePhoto *)v21 initWithImage:a3 uiOrientation:a4 videoAsset:0 photoTime:&v29 asset:v17];
    (*(v18 + 2))(v18, v20, 0);
  }
}

void __125__PHImageManager__prepareLivePhotoResultWithImage_uiOrientation_shouldIncludeVideo_videoURL_info_photoTime_asset_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  if (v7)
  {
    v8 = a5;
    v9 = [PHLivePhoto alloc];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v16 = *(a1 + 64);
    v17 = *(a1 + 80);
    v13 = [(PHLivePhoto *)v9 initWithImage:v10 uiOrientation:v11 videoAsset:v7 photoTime:&v16 asset:v12];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = *(v14 + 16);
    v13 = a5;
    v15(v14, 0, v13);
  }
}

- (PHImageRequestID)requestImageDataAndOrientationForAsset:(PHAsset *)asset options:(PHImageRequestOptions *)options resultHandler:(void *)resultHandler
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = asset;
  v9 = resultHandler;
  v10 = [(PHImageRequestOptions *)options copy];
  if (v10)
  {
    v11 = v10;
    v12 = [(PHImageRequestOptions *)v10 loadingMode]| 1;
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(PHImageRequestOptions);
    v11 = v13;
    v12 = 1;
  }

  [(PHImageRequestOptions *)v13 setLoadingMode:v12];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(PHImageRequestOptions *)v11 setLoadingMode:[(PHImageRequestOptions *)v11 loadingMode]| 0x10000];
  }

  if ([(PHAsset *)v8 isAnimatedGIF])
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  [(PHImageRequestOptions *)v11 setDeliveryMode:v14];
  [(PHImageRequestOptions *)v11 setCannotReturnSmallerImage:1];
  [(PHImageRequestOptions *)v11 setIgnoreProcessWideRepairLimits:1];
  v15 = [(PHImageManager *)self nextID];
  managerID = self->_managerID;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __79__PHImageManager_requestImageDataAndOrientationForAsset_options_resultHandler___block_invoke;
  v32[3] = &unk_1E75AAAA0;
  v32[4] = self;
  v17 = v11;
  v33 = v17;
  v18 = v9;
  v34 = v18;
  v19 = [PHMediaRequestContext imageRequestContextWithRequestID:v15 managerID:managerID asset:v8 imageRequestOptions:v17 displaySpec:0 resultHandler:v32];
  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v20 = PLImageManagerGetLog();
    v21 = os_signpost_id_generate(v20);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v21;
      v31 = [v19 managerID];
      v29 = [v19 requestID];
      v30 = [v19 type];
      if (_getNextLayoutID_onceToken != -1)
      {
        dispatch_once(&_getNextLayoutID_onceToken, &__block_literal_global_807);
      }

      os_unfair_lock_lock(&s_lock);
      v23 = [s_availableLayoutIDs firstIndex];
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 101;
      }

      else
      {
        v24 = v23;
        [s_availableLayoutIDs removeIndex:v23];
      }

      os_unfair_lock_unlock(&s_lock);
      v25 = [v19 asset];
      v26 = [v25 uuid];

      [v19 setSignpostID:v22];
      [v19 setSignpostLayoutID:v24];
      if (os_signpost_enabled(v20))
      {
        *buf = 134219266;
        v36 = v31;
        v37 = 2048;
        v38 = v29;
        v39 = 2112;
        v40 = @"Data";
        v41 = 2048;
        v42 = v30;
        v43 = 2112;
        v44 = v26;
        v45 = 2048;
        v46 = v24;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "ContextEvent", "Context begin: [%lu-%lu], target: %@, api: %lu, uuid: %@, layout: %lu", buf, 0x3Eu);
      }
    }
  }

  v27 = [(PHImageManager *)self runRequestWithContext:v19];

  return v27;
}

void __79__PHImageManager_requestImageDataAndOrientationForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__PHImageManager_requestImageDataAndOrientationForAsset_options_resultHandler___block_invoke_2;
  v10[3] = &unk_1E75AA820;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 _runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:a3 options:v7 block:v10];
}

void __79__PHImageManager_requestImageDataAndOrientationForAsset_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v6 = [*(a1 + 32) imageData];
    v3 = [*(a1 + 32) uniformTypeIdentifier];
    v4 = [*(a1 + 32) cgOrientation];
    v5 = [*(a1 + 32) sanitizedInfoDictionary];
    (*(v1 + 16))(v1, v6, v3, v4, v5);
  }
}

- (PHImageRequestID)requestImageDataForAsset:(PHAsset *)asset options:(PHImageRequestOptions *)options resultHandler:(void *)resultHandler
{
  v8 = resultHandler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PHImageManager_requestImageDataForAsset_options_resultHandler___block_invoke;
  v11[3] = &unk_1E75AA7F8;
  v12 = v8;
  v13 = 1;
  v9 = v8;
  LODWORD(options) = [(PHImageManager *)self requestImageDataAndOrientationForAsset:asset options:options resultHandler:v11];

  return options;
}

void __65__PHImageManager_requestImageDataForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  if (v11)
  {
    if (*(a1 + 40) == 1)
    {
      v12 = PLImageOrientationFromExifOrientation();
      (*(v11 + 16))(v11, v14, v9, v12, v10);
    }

    else
    {
      v13 = _Block_copy(*(a1 + 32));
      v13[2](v13, v14, v9, a4, v10);
    }
  }
}

- (PHImageRequestID)requestImageForAsset:(PHAsset *)asset targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHImageRequestOptions *)options resultHandler:(void *)resultHandler
{
  height = targetSize.height;
  width = targetSize.width;
  v13 = resultHandler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PHImageManager_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v16[3] = &unk_1E75AA7D0;
  v17 = v13;
  v14 = v13;
  LODWORD(options) = [(PHImageManager *)self requestNewCGImageForAsset:asset targetSize:contentMode contentMode:options options:v16 resultHandler:width, height];

  return options;
}

void __84__PHImageManager_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, CGImage *a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    v6 = [v5 objectForKeyedSubscript:@"PHImageResultIsPlaceholderKey"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = DCIM_newResizablePLImageWithCGImage();
    }

    else
    {
      v8 = DCIM_newPLImageWithCGImage();
    }

    v9 = v8;
    CGImageRelease(a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v11);
  }
}

- (void)cancelImageRequest:(PHImageRequestID)requestID
{
  v3 = *&requestID;
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  requestContextsByID = self->_requestContextsByID;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [(NSMapTable *)requestContextsByID objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v8 = [v7 signpostID];
      if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        v10 = PLImageManagerGetLog();
        v11 = [v7 managerID];
        v12 = [v7 requestID];
        if (os_signpost_enabled(v10))
        {
          *buf = 134218752;
          v18 = v11;
          v19 = 2048;
          v20 = v12;
          v21 = 2048;
          v22 = 0;
          v23 = 2048;
          v24 = 2;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_EVENT, v9, "RequestEvent", "Change: [%lu-%lu-%lu], state: %lu", buf, 0x2Au);
        }
      }
    }

    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      managerID = self->_managerID;
      *buf = 134218240;
      v18 = managerID;
      v19 = 2048;
      v20 = v3;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "[RM]: %ld-%ld Cancelling image request", buf, 0x16u);
    }

    if (PHImageManagerRecordEnabled())
    {
      [PHImageManagerRequestTracer traceMessageForRequestID:v3 message:@"[RM]: %ld-%ld Cancelling image request", self->_managerID, v3];
    }

    [v7 cancel];
  }

  else if (v3)
  {
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = self->_managerID;
      *buf = 134218240;
      v18 = v16;
      v19 = 2048;
      v20 = v3;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "[RM]: Did not find image request with ID %ld-%ld to cancel", buf, 0x16u);
    }

    if (PHImageManagerRecordEnabled())
    {
      [PHImageManagerRequestTracer traceMessageForRequestID:v3 message:@"[RM]: Did not find image request with ID %ld-%ld to cancel", self->_managerID, v3];
    }
  }
}

- (int)runRequestWithContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 requestID];
  [v4 setDelegate:self];
  v6 = PLImageManagerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    managerID = self->_managerID;
    *buf = 134218498;
    v19 = managerID;
    v20 = 2048;
    v21 = [v4 requestID];
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "[RM]: %ld-%ld run image request for %@; store in map table", buf, 0x20u);
  }

  if (PHImageManagerRecordEnabled())
  {
    +[PHImageManagerRequestTracer traceMessageForRequestID:message:](PHImageManagerRequestTracer, "traceMessageForRequestID:message:", [v4 requestID], @"[RM]: %ld-%ld run image request for %@; store in map table", self->_managerID, objc_msgSend(v4, "requestID"), v4);
  }

  os_unfair_lock_lock(&self->_lock);
  requestContextsByID = self->_requestContextsByID;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [(NSMapTable *)requestContextsByID setObject:v4 forKey:v9];

  os_unfair_lock_unlock(&self->_lock);
  [v4 start];
  if (PHImageManagerRecordEnabled())
  {
    v11 = [v4 asset];
    v12 = [v11 uuid];
    [PHImageManagerRequestTracer registerRequestID:v5 withAssetUUID:v12];

    v13 = [v4 asset];
    v14 = [v13 uuid];

    if (!v14)
    {
      v15 = PLImageManagerGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v4 asset];
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "[RM]: request for image for asset with no UUID (asset: %@)", buf, 0xCu);
      }

      if (PHImageManagerRecordEnabled())
      {
        v17 = [v4 asset];
        [PHImageManagerRequestTracer traceMessageForRequestID:v5 message:@"[RM]: request for image for asset with no UUID (asset: %@)", v17];
      }
    }
  }

  return v5;
}

- (BOOL)_canStreamVideoForAsset:(id)a3
{
  v3 = a3;
  if ([v3 isStreamedVideo])
  {
    LOBYTE(v4) = 1;
  }

  else if ([v3 isVideo])
  {
    v4 = [v3 isLoopingVideo] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_runBlockOnAppropriateResultQueueOrSynchronouslyWithRequest:(id)a3 options:(id)a4 block:(id)a5
{
  v10 = a4;
  v7 = a5;
  if ([a3 isSynchronous])
  {
    v7[2](v7);
  }

  else
  {
    v8 = [v10 resultHandlerQueue];
    if (!v8)
    {
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
    }

    dispatch_async(v8, v7);
  }
}

+ (BOOL)_allowVideoAccessForAsset:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ([v5 isVideo] & 1) != 0 || objc_msgSend(v5, "playbackStyle") == 4 || objc_msgSend(v5, "playbackStyle") == 5 || objc_msgSend(v5, "isPhotoIris") && (objc_msgSend(v6, "isVideoComplementAllowed") & 1) != 0;

  return v7;
}

@end