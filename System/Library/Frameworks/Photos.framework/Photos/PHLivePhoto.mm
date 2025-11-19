@interface PHLivePhoto
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_photoTimeForLivePhotoWithImageURL:(SEL)a3 videoURL:(id)a4;
+ (BOOL)_identifyResourceURLs:(id)a3 outImageURL:(id *)a4 outVideoURL:(id *)a5 error:(id *)a6;
+ (BOOL)_validateFileURLs:(id)a3 validationOptions:(unint64_t)a4 videoComplementMetadata:(id)a5 outError:(id *)a6;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (PHLivePhoto)livePhotoWithResourceFileURLs:(id)a3 pairingIdentifier:(id)a4 videoDuration:(id *)a5 photoTime:(id *)a6 error:(id *)a7;
+ (id)_livePhotoWithResourceFileURLs:(id)a3 pairingIdentifier:(id)a4 videoDuration:(id *)a5 photoTime:(id *)a6 targetSize:(CGSize)a7 contentMode:(int64_t)a8 skipValidation:(BOOL)a9 isLooping:(BOOL)a10 skipInstantiatingImageAndAVAsset:(BOOL)a11 prefersHDR:(BOOL)a12 error:(id *)a13;
+ (id)_livePhotoWithResourceFileURLs:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 skipValidation:(BOOL)a6 isLooping:(BOOL)a7 skipInstantiatingImageAndAVAsset:(BOOL)a8 prefersHDR:(BOOL)a9 error:(id *)a10;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (int)requestLivePhotoWithResourceFileURLs:(id)a3 placeholderImage:(id)a4 targetSize:(CGSize)a5 contentMode:(int64_t)a6 prefersHDR:(BOOL)a7 resultHandler:(id)a8;
+ (void)cancelLivePhotoRequestWithRequestID:(PHLivePhotoRequestID)requestID;
- (BOOL)_synchronouslyLoadImageURL:(id *)a3 videoURL:(id *)a4 error:(id *)a5;
- (CGSize)size;
- (CGSize)targetSize;
- (NSNumber)srlCompensationValue;
- (NSString)imageTypeIdentifier;
- (NSString)originalFilename;
- (NSString)uniqueIdentifier;
- (PHAsset)asset;
- (PHImageManager)imageManager;
- (PHLivePhoto)initWithBundleAtURL:(id)a3 prefersHDR:(BOOL)a4;
- (PHLivePhoto)initWithCoder:(id)a3;
- (id)_imageManager;
- (id)_initWithImage:(CGImage *)a3 uiOrientation:(int64_t)a4 videoAsset:(id)a5 photoTime:(id *)a6 asset:(id)a7 assetUUID:(id)a8 options:(unint64_t)a9 videoComposition:(id)a10;
- (id)_initWithImageURL:(id)a3 videoURL:(id)a4 videoComplementMetadata:(id)a5 targetSize:(CGSize)a6 contentMode:(int64_t)a7 prefersHDR:(BOOL)a8;
- (id)_initWithImageURL:(id)a3 videoURL:(id)a4 videoComplementMetadata:(id)a5 targetSize:(CGSize)a6 contentMode:(int64_t)a7 skipInstantiatingImageAndAVAsset:(BOOL)a8 prefersHDR:(BOOL)a9;
- (id)imageFileLoader;
- (id)videoComplement;
- (id)videoFileLoader;
- (void)_ensureConstituentData;
- (void)_loadConstituentURLsWithNetworkAccessAllowed:(BOOL)a3 completionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)saveToPhotoLibraryWithCompletionHandler:(id)a3;
@end

@implementation PHLivePhoto

- (PHImageManager)imageManager
{
  WeakRetained = objc_loadWeakRetained(&self->_imageManager);

  return WeakRetained;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSNumber)srlCompensationValue
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PHLivePhoto *)self asset];
  v4 = [(PHLivePhoto *)self imageURL];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [v3 livePhotoSRLCompensationAmount];
  v6 = PLLivePhotoPlaybackGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "Read SRL compensation amount %{public}@ from live photo asset.", &v14, 0xCu);
  }

  if (!v5)
  {
LABEL_7:
    if (!v4)
    {
      goto LABEL_15;
    }

    v7 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageURL:v4 contentType:0 timeZoneLookup:0];
    v8 = PLLivePhotoPlaybackGetLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = 0;
        v10 = "Read SRL compensation amount %{public}@ from live photo image URL.";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
        _os_log_impl(&dword_19C86F000, v11, v12, v10, &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      v10 = "Failed to read SRL compensation metadata from image URL %@.";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    v5 = [v7 srlCompensationValue];
  }

LABEL_15:

  return v5;
}

- (void)saveToPhotoLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PHLivePhoto_saveToPhotoLibraryWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E75A84A0;
  aBlock[4] = self;
  v11 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PHLivePhoto_saveToPhotoLibraryWithCompletionHandler___block_invoke_115;
  v8[3] = &unk_1E75A8090;
  v9 = v6;
  v7 = v6;
  [(PHLivePhoto *)self _loadConstituentURLsWithNetworkAccessAllowed:1 completionHandler:v8];
}

void __55__PHLivePhoto_saveToPhotoLibraryWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  else if ((a2 & 1) == 0)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "Failed to save Live Photo (%@) to Photo Library: %@", &v9, 0x16u);
    }
  }
}

void __55__PHLivePhoto_saveToPhotoLibraryWithCompletionHandler___block_invoke_115(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [PHPhotoLibrary alloc];
    v10 = +[PHPhotoLibrary systemPhotoLibraryURL];
    v11 = [(PHPhotoLibrary *)v9 initWithPhotoLibraryURL:v10];

    [(PHPhotoLibrary *)v11 openAndWaitWithUpgrade:0 error:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__PHLivePhoto_saveToPhotoLibraryWithCompletionHandler___block_invoke_2;
    v14[3] = &unk_1E75AAEB0;
    v15 = v7;
    v16 = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__PHLivePhoto_saveToPhotoLibraryWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_1E75AA5B8;
    v13 = *(a1 + 32);
    [(PHPhotoLibrary *)v11 performChanges:v14 completionHandler:v12];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __55__PHLivePhoto_saveToPhotoLibraryWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = +[PHAssetCreationRequest creationRequestForAsset];
  [v2 addResourceWithType:1 fileURL:*(a1 + 32) options:0];
  [v2 addResourceWithType:9 fileURL:*(a1 + 40) options:0];
}

- (id)videoComplement
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v3 = [(PHLivePhoto *)self _synchronouslyLoadImageURL:&v14 videoURL:&v13 error:&v12];
  v4 = v14;
  v5 = v13;
  v6 = v12;
  if (!v3)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Failed to load video complement for Live Photo %@: %@", buf, 0x16u);
    }
  }

  v8 = [v4 path];
  v9 = [v5 path];
  v10 = [objc_alloc(MEMORY[0x1E69C0918]) initWithPathToVideo:v9 pathToImage:v8];

  return v10;
}

- (void)_loadConstituentURLsWithNetworkAccessAllowed:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = dispatch_group_create();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__29951;
  v34[4] = __Block_byref_object_dispose__29952;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__29951;
  v32[4] = __Block_byref_object_dispose__29952;
  v33 = 0;
  dispatch_group_enter(v7);
  v8 = [(PHLivePhoto *)self imageFileLoader];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __78__PHLivePhoto__loadConstituentURLsWithNetworkAccessAllowed_completionHandler___block_invoke;
  v28[3] = &unk_1E75A8040;
  v30 = v34;
  v31 = v32;
  v9 = v7;
  v29 = v9;
  (v8)[2](v8, v4, 0, v28);

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__29951;
  v26[4] = __Block_byref_object_dispose__29952;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__29951;
  v24[4] = __Block_byref_object_dispose__29952;
  v25 = 0;
  dispatch_group_enter(v9);
  v10 = [(PHLivePhoto *)self videoFileLoader];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__PHLivePhoto__loadConstituentURLsWithNetworkAccessAllowed_completionHandler___block_invoke_2;
  v20[3] = &unk_1E75A8040;
  v22 = v26;
  v23 = v24;
  v11 = v9;
  v21 = v11;
  (v10)[2](v10, v4, 0, v20);

  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PHLivePhoto__loadConstituentURLsWithNetworkAccessAllowed_completionHandler___block_invoke_3;
  block[3] = &unk_1E75A8068;
  v17 = v26;
  v18 = v32;
  v19 = v24;
  v15 = v6;
  v16 = v34;
  v13 = v6;
  dispatch_group_notify(v11, v12, block);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
}

void __78__PHLivePhoto__loadConstituentURLsWithNetworkAccessAllowed_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __78__PHLivePhoto__loadConstituentURLsWithNetworkAccessAllowed_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void *__78__PHLivePhoto__loadConstituentURLsWithNetworkAccessAllowed_completionHandler___block_invoke_3(void *result)
{
  if (*(*(result[5] + 8) + 40))
  {
    v1 = *(*(result[6] + 8) + 40) != 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = result[4];
  if (v2)
  {
    return (*(v2 + 16))(result[4], v1);
  }

  return result;
}

- (id)_imageManager
{
  v2 = [(PHLivePhoto *)self imageManager];
  if (!v2)
  {
    v2 = +[PHImageManager defaultManager];
  }

  return v2;
}

- (PHAsset)asset
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = self->_asset;
  if (!v3)
  {
    v3 = [(PHLivePhoto *)self assetUUID];

    if (v3)
    {
      v4 = [(PHLivePhoto *)self assetUUID];
      v5 = [(PHObject *)PHAsset localIdentifierWithUUID:v4];

      if (v5)
      {
        v6 = +[PHPhotoLibrary sharedPhotoLibrary];
        v11[0] = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        v8 = [v6 librarySpecificFetchOptions];
        v9 = [PHAsset fetchAssetsWithLocalIdentifiers:v7 options:v8];
        v3 = [v9 firstObject];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (id)videoFileLoader
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__PHLivePhoto_videoFileLoader__block_invoke;
  aBlock[3] = &unk_1E75A8018;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

void __30__PHLivePhoto_videoFileLoader__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) videoURL];
  if (v9)
  {
    if (v8)
    {
      v8[2](v8, v9, 0);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _imageManager];
    v11 = [*(a1 + 32) asset];
    v12 = objc_alloc_init(PHVideoRequestOptions);
    [(PHVideoRequestOptions *)v12 setNetworkAccessAllowed:a2];
    if (v7)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __30__PHLivePhoto_videoFileLoader__block_invoke_2;
      v15[3] = &unk_1E75A9368;
      v16 = v7;
      [(PHVideoRequestOptions *)v12 setProgressHandler:v15];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __30__PHLivePhoto_videoFileLoader__block_invoke_3;
    v13[3] = &unk_1E75A9040;
    v14 = v8;
    [v10 requestURLForVideo:v11 options:v12 resultHandler:v13];
  }
}

void __30__PHLivePhoto_videoFileLoader__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = MEMORY[0x1E69BF2E8];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v14 objectForKeyedSubscript:@"PHImageFileSandboxExtensionTokenKey"];
  v9 = [v7 initWithURL:v6 sandboxExtensionToken:v8 consume:1];

  v10 = [v14 objectForKeyedSubscript:@"PHImageErrorKey"];
  if (!(v9 | v10))
  {
    v11 = [v14 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v10 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3164 localizedDescription:{@"resource not available locally, retry with network access allowed"}];
    }

    else
    {
      v10 = 0;
    }
  }

  if (!(v9 | v10))
  {
    v10 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"resource not available"];
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v9, v10);
  }
}

- (id)imageFileLoader
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__PHLivePhoto_imageFileLoader__block_invoke;
  aBlock[3] = &unk_1E75A8018;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

void __30__PHLivePhoto_imageFileLoader__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) imageURL];
  if (v9)
  {
    if (v8)
    {
      v8[2](v8, v9, 0);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _imageManager];
    v11 = [*(a1 + 32) asset];
    v12 = objc_alloc_init(PHImageRequestOptions);
    [(PHImageRequestOptions *)v12 setNetworkAccessAllowed:a2];
    [(PHImageRequestOptions *)v12 setSynchronous:1];
    if (v7)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __30__PHLivePhoto_imageFileLoader__block_invoke_2;
      v15[3] = &unk_1E75A9368;
      v16 = v7;
      [(PHImageRequestOptions *)v12 setProgressHandler:v15];
    }

    [(PHImageRequestOptions *)v12 setLoadingMode:0x10000];
    [(PHImageRequestOptions *)v12 setDeliveryMode:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __30__PHLivePhoto_imageFileLoader__block_invoke_3;
    v13[3] = &unk_1E75A7FF0;
    v14 = v8;
    [v10 requestImageForAsset:v11 targetSize:0 contentMode:v12 options:v13 resultHandler:{-1.0, -1.0}];
  }
}

void __30__PHLivePhoto_imageFileLoader__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = objc_alloc(MEMORY[0x1E69BF2E8]);
  v5 = [v12 objectForKeyedSubscript:@"PHImageFileURLKey"];
  v6 = [v12 objectForKeyedSubscript:@"PHImageFileSandboxExtensionTokenKey"];
  v7 = [v4 initWithURL:v5 sandboxExtensionToken:v6 consume:1];

  v8 = [v12 objectForKeyedSubscript:@"PHImageErrorKey"];
  if (!(v7 | v8))
  {
    v9 = [v12 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v8 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3164 localizedDescription:{@"resource not available locally, retry with network access allowed"}];
    }

    else
    {
      v8 = 0;
    }
  }

  if (!(v7 | v8))
  {
    v8 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"resource not available"];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8);
  }
}

- (NSString)imageTypeIdentifier
{
  v3 = [(PHLivePhoto *)self imageURL];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E6982C40];
    v6 = [v3 pathExtension];
    v7 = [v5 typeWithFilenameExtension:v6 conformingToType:*MEMORY[0x1E6982E30]];
    v8 = [v7 identifier];
  }

  else
  {
    v6 = [(PHLivePhoto *)self asset];
    v8 = [v6 uniformTypeIdentifier];
  }

  return v8;
}

- (NSString)originalFilename
{
  v3 = [(PHLivePhoto *)self imageURL];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lastPathComponent];
    [v5 stringByDeletingPathExtension];
  }

  else
  {
    v5 = [(PHLivePhoto *)self asset];
    [v5 filename];
  }
  v6 = ;

  return v6;
}

- (NSString)uniqueIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  uniqueIdentifier = v2->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [objc_opt_class() description];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringByAppendingFormat:@"-%@", v6];
    v8 = v2->_uniqueIdentifier;
    v2->_uniqueIdentifier = v7;

    uniqueIdentifier = v2->_uniqueIdentifier;
  }

  v9 = uniqueIdentifier;
  objc_sync_exit(v2);

  return v9;
}

- (void)_ensureConstituentData
{
  if (!self->_skipInstantiatingImageAndAVAsset)
  {
    if (!self->_plImage)
    {
      v3 = [(PHLivePhoto *)self imageURL];

      if (v3)
      {
        v4 = [(PHLivePhoto *)self imageURL];
        [(PHLivePhoto *)self prefersHDR];
        v5 = DCIM_newPLImageWithContentsOfFileURL();
        plImage = self->_plImage;
        self->_plImage = v5;
      }
    }

    if (!self->_videoAsset)
    {
      v7 = [(PHLivePhoto *)self videoURL];
      if (v7)
      {
        v8 = [MEMORY[0x1E6987E28] assetWithURL:v7];
        videoAsset = self->_videoAsset;
        self->_videoAsset = v8;
      }
    }
  }

  if ((self->_photoTime.flags & 0x1D) != 1)
  {
    [PHLivePhoto _photoTimeForLivePhotoWithImageURL:self->_imageURL videoURL:self->_videoURL];
    *&self->_photoTime.value = v10;
    self->_photoTime.epoch = v11;
  }
}

- (BOOL)_synchronouslyLoadImageURL:(id *)a3 videoURL:(id *)a4 error:(id *)a5
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__29951;
  v35 = __Block_byref_object_dispose__29952;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__29951;
  v29 = __Block_byref_object_dispose__29952;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__29951;
  v23 = __Block_byref_object_dispose__29952;
  v24 = 0;
  v9 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PHLivePhoto__synchronouslyLoadImageURL_videoURL_error___block_invoke;
  v13[3] = &unk_1E75A7FC8;
  v15 = &v37;
  v16 = &v19;
  v17 = &v31;
  v18 = &v25;
  v10 = v9;
  v14 = v10;
  [(PHLivePhoto *)self _loadConstituentURLsWithNetworkAccessAllowed:1 completionHandler:v13];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v32[5];
  }

  if (a4)
  {
    *a4 = v26[5];
  }

  if (a5)
  {
    *a5 = v20[5];
  }

  v11 = *(v38 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
  return v11;
}

void __57__PHLivePhoto__synchronouslyLoadImageURL_videoURL_error___block_invoke(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v13 = 64;
    v14 = v10;
  }

  else
  {
    v13 = 48;
    v14 = v11;
  }

  objc_storeStrong((*(*(a1 + v13) + 8) + 40), v14);
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)encodeWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v4 = a3;
  v5 = [(PHLivePhoto *)self _synchronouslyLoadImageURL:&v13 videoURL:&v12 error:&v11];
  v6 = v13;
  v7 = v12;
  v8 = v11;
  if (!v5)
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to encode Live Photo %@: %@", buf, 0x16u);
    }
  }

  [v4 ph_encodeSandboxedURL:v6 forKey:@"imageURL"];
  [v4 ph_encodeSandboxedURL:v7 forKey:@"videoURL"];
  [v4 encodeCGSize:@"targetSize" forKey:{self->_targetSize.width, self->_targetSize.height}];
  [v4 encodeInteger:self->_contentMode forKey:@"contentMode"];
  [v4 encodeInt64:self->_photoTime.value forKey:@"photoTime.value"];
  [v4 encodeInt64:self->_photoTime.timescale forKey:@"photoTime.timescale"];
  [v4 encodeInteger:self->_options forKey:@"options"];
  [v4 encodeCGSize:@"size" forKey:{self->_size.width, self->_size.height}];
  *&v10 = self->_audioVolume;
  [v4 encodeFloat:@"audioVolume" forKey:v10];
}

- (PHLivePhoto)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PHLivePhoto;
  v5 = [(PHLivePhoto *)&v24 init];
  if (v5)
  {
    v23 = 0;
    v6 = [v4 ph_decodeSandboxedURLForKey:@"imageURL" sandboxExtensionWrapper:&v23];
    v7 = v23;
    v8 = *(v5 + 10);
    *(v5 + 10) = v6;

    v9 = *(v5 + 11);
    *(v5 + 11) = v7;
    v10 = v7;

    v22 = 0;
    v11 = [v4 ph_decodeSandboxedURLForKey:@"videoURL" sandboxExtensionWrapper:&v22];
    v12 = v22;
    v13 = *(v5 + 12);
    *(v5 + 12) = v11;

    v14 = *(v5 + 13);
    *(v5 + 13) = v12;

    CMTimeMake(&v21, [v4 decodeInt64ForKey:@"photoTime.value"], objc_msgSend(v4, "decodeInt32ForKey:", @"photoTime.timescale"));
    *(v5 + 160) = v21;
    [v4 decodeCGSizeForKey:@"targetSize"];
    *(v5 + 18) = v15;
    *(v5 + 19) = v16;
    *(v5 + 14) = [v4 decodeIntegerForKey:@"contentMode"];
    *(v5 + 7) = [v4 decodeIntegerForKey:@"options"];
    [v4 decodeCGSizeForKey:@"size"];
    *(v5 + 16) = v17;
    *(v5 + 17) = v18;
    [v4 decodeFloatForKey:@"audioVolume"];
    *(v5 + 7) = v19;
    [v5 _ensureConstituentData];
  }

  return v5;
}

- (id)_initWithImage:(CGImage *)a3 uiOrientation:(int64_t)a4 videoAsset:(id)a5 photoTime:(id *)a6 asset:(id)a7 assetUUID:(id)a8 options:(unint64_t)a9 videoComposition:(id)a10
{
  v30 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a10;
  v19 = [(PHLivePhoto *)self init];
  if (v19)
  {
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    if (a3)
    {
      v22 = DCIM_newPLImageWithCGImage();
    }

    else
    {
      v22 = 0;
    }

    plImage = v19->_plImage;
    v19->_plImage = v22;

    v19->_size.width = Width;
    v19->_size.height = Height;
    objc_storeStrong(&v19->_videoAsset, a5);
    v24 = *&a6->var0;
    v19->_photoTime.epoch = a6->var3;
    *&v19->_photoTime.value = v24;
    objc_storeStrong(&v19->_asset, a7);
    v25 = [v17 copy];
    assetUUID = v19->_assetUUID;
    v19->_assetUUID = v25;

    v19->_options = a9;
    v27 = [v18 copy];
    videoComposition = v19->_videoComposition;
    v19->_videoComposition = v27;

    v19->_audioVolume = 1.0;
  }

  return v19;
}

- (id)_initWithImageURL:(id)a3 videoURL:(id)a4 videoComplementMetadata:(id)a5 targetSize:(CGSize)a6 contentMode:(int64_t)a7 skipInstantiatingImageAndAVAsset:(BOOL)a8 prefersHDR:(BOOL)a9
{
  height = a6.height;
  width = a6.width;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = [(PHLivePhoto *)self init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_imageURL, a3);
    objc_storeStrong(&v22->_videoURL, a4);
    v22->_targetSize.width = width;
    v22->_targetSize.height = height;
    v22->_contentMode = a7;
    v22->_audioVolume = 1.0;
    v22->_skipInstantiatingImageAndAVAsset = a8;
    v22->_prefersHDR = a9;
    if (v20)
    {
      [v20 imageDisplayTime];
      *&v22->_photoTime.value = v26;
      v22->_photoTime.epoch = v27;
    }

    [(PHLivePhoto *)v22 _ensureConstituentData];
    DCIM_sizeFromPLImage();
    v22->_size.width = v23;
    v22->_size.height = v24;
  }

  return v22;
}

- (id)_initWithImageURL:(id)a3 videoURL:(id)a4 videoComplementMetadata:(id)a5 targetSize:(CGSize)a6 contentMode:(int64_t)a7 prefersHDR:(BOOL)a8
{
  height = a6.height;
  width = a6.width;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [(PHLivePhoto *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imageURL, a3);
    objc_storeStrong(&v20->_videoURL, a4);
    v20->_targetSize.width = width;
    v20->_targetSize.height = height;
    v20->_contentMode = a7;
    v20->_audioVolume = 1.0;
    v20->_prefersHDR = a8;
    if (v18)
    {
      [v18 imageDisplayTime];
      *&v20->_photoTime.value = v24;
      v20->_photoTime.epoch = v25;
    }

    [(PHLivePhoto *)v20 _ensureConstituentData];
    DCIM_sizeFromPLImage();
    v20->_size.width = v21;
    v20->_size.height = v22;
  }

  return v20;
}

- (PHLivePhoto)initWithBundleAtURL:(id)a3 prefersHDR:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69C0918];
  v7 = a3;
  v8 = [[v6 alloc] initWithBundleAtURL:v7];

  v9 = [v8 imagePath];
  v10 = [v8 videoPath];
  if ([v9 length] && objc_msgSend(v10, "length"))
  {
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
    self = [(PHLivePhoto *)self _initWithImageURL:v11 videoURL:v12 videoComplementMetadata:0 targetSize:0 contentMode:v4 prefersHDR:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_photoTimeForLivePhotoWithImageURL:(SEL)a3 videoURL:(id)a4
{
  v7 = a5;
  v8 = [a4 path];
  v9 = [v7 path];

  *retstr = **&MEMORY[0x1E6960C70];
  if (v8 && v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69C0918]) initWithPathToVideo:v9 pathToImage:v8];
    v11 = v10;
    if (v10)
    {
      [v10 imageDisplayTime];
    }

    else
    {
      v13 = 0uLL;
      v14 = 0;
    }

    *&retstr->var0 = v13;
    retstr->var3 = v14;
  }

  return result;
}

+ (BOOL)_validateFileURLs:(id)a3 validationOptions:(unint64_t)a4 videoComplementMetadata:(id)a5 outError:(id *)a6
{
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(PHValidator);
  v17 = 0;
  v12 = [(PHValidator *)v11 validateURLs:v10 withOptions:a4 videoComplementMetadata:v9 error:&v17];

  v13 = v17;
  v14 = v13;
  if (a6 && !v12)
  {
    v15 = v13;
    *a6 = v14;
  }

  return v12;
}

+ (BOOL)_identifyResourceURLs:(id)a3 outImageURL:(id *)a4 outVideoURL:(id *)a5 error:(id *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__29951;
  v41 = __Block_byref_object_dispose__29952;
  v42 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PHLivePhoto__identifyResourceURLs_outImageURL_outVideoURL_error___block_invoke;
  aBlock[3] = &unk_1E75AACF8;
  aBlock[4] = &v37;
  v7 = _Block_copy(aBlock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (!v8)
  {

    v28 = 0;
LABEL_21:
    v19 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3303 localizedDescription:@"Missing image fileURL"];
    v7[2](v7, v19);

    v30 = 0;
    goto LABEL_22;
  }

  v28 = 0;
  v30 = 0;
  v9 = *v33;
  v10 = *MEMORY[0x1E6982E30];
  v29 = *MEMORY[0x1E6982EE8];
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v32 + 1) + 8 * i);
      v13 = MEMORY[0x1E6982C40];
      v14 = [v12 pathExtension];
      v15 = [v13 typeWithFilenameExtension:v14];

      if (v15)
      {
        if ([v15 conformsToType:v10])
        {
          if (v30)
          {
            v16 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Multiple image fileURLs"];
            v7[2](v7, v16);
          }

          else
          {
            v30 = v12;
          }
        }

        else if ([v15 conformsToType:v29])
        {
          if (v28)
          {
            v17 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Multiple video fileURLs"];
            v7[2](v7, v17);
          }

          else
          {
            v28 = v12;
          }
        }

        else
        {
          v18 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:{@"Unknown type for fileURL %@", v12}];
          v7[2](v7, v18);
        }
      }
    }

    v8 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  }

  while (v8);

  if (!v30)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (!v28)
  {
    v20 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3303 localizedDescription:@"Missing video fileURL"];
    v7[2](v7, v20);
  }

  v21 = v38[5];
  if (v21)
  {
    v22 = v38[5];
    a5 = a6;
    if (!a6)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a4)
  {
    v23 = v30;
    *a4 = v30;
  }

  v22 = v28;
  if (a5)
  {
LABEL_30:
    *a5 = v22;
  }

LABEL_31:

  _Block_object_dispose(&v37, 8);
  return v21 == 0;
}

void __67__PHLivePhoto__identifyResourceURLs_outImageURL_outVideoURL_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Failed to create live photo: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  if (!*(v5 + 40))
  {
    if (v3)
    {
      v6 = v3;
      v7 = *(v5 + 40);
      *(v5 + 40) = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
      v9 = *(*(a1 + 32) + 8);
      v7 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

+ (id)_livePhotoWithResourceFileURLs:(id)a3 pairingIdentifier:(id)a4 videoDuration:(id *)a5 photoTime:(id *)a6 targetSize:(CGSize)a7 contentMode:(int64_t)a8 skipValidation:(BOOL)a9 isLooping:(BOOL)a10 skipInstantiatingImageAndAVAsset:(BOOL)a11 prefersHDR:(BOOL)a12 error:(id *)a13
{
  v48 = a9;
  height = a7.height;
  width = a7.width;
  v19 = a13;
  v20 = a3;
  v21 = a4;
  v22 = PLPhotoKitGetLog();
  v23 = os_signpost_id_make_with_pointer(v22, v20);

  v24 = PLPhotoKitGetLog();
  v25 = v24;
  v51 = v23 - 1;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "com.apple.photos.photokit.phlivephoto", byte_19CB567AE, buf, 2u);
  }

  v60 = 0;
  v61[0] = 0;
  v59 = 0;
  v49 = a1;
  v26 = [a1 _identifyResourceURLs:v20 outImageURL:v61 outVideoURL:&v60 error:&v59];
  v50 = v61[0];
  v27 = v60;
  v28 = v59;
  if (v26)
  {
    v47 = v23;
    v29 = MEMORY[0x1E6987E28];
    v30 = MEMORY[0x1E695DFF8];
    v46 = v27;
    [v27 path];
    v32 = v31 = v21;
    v33 = [v30 fileURLWithPath:v32];
    v34 = [v29 assetWithURL:v33];

    v21 = v31;
    *buf = *&a5->var0;
    var3 = a5->var3;
    v58 = v28;
    v54 = *&a6->var0;
    v55 = a6->var3;
    v35 = PFVideoComplementMetadataForVideoAVAssetWithKnownValues();
    v36 = v58;

    if (v35)
    {
      if (a10)
      {
        v53 = v36;
        v37 = &v53;
        v38 = [(objc_class *)v49 _canCreateLoopingLivePhotoWithURLs:v20 videoComplementMetadata:v35 outError:&v53];
      }

      else
      {
        v52 = v36;
        v37 = &v52;
        v38 = [(objc_class *)v49 _canCreateLivePhotoWithURLs:v20 videoComplementMetadata:v35 outError:&v52];
      }

      v41 = v38;
      v23 = v47;
      v28 = *v37;

      if ((v41 & 1) != 0 || v48)
      {
        v40 = v50;
        v27 = v46;
        v39 = [[v49 alloc] _initWithImageURL:v50 videoURL:v46 videoComplementMetadata:v35 targetSize:1 contentMode:a11 skipInstantiatingImageAndAVAsset:a12 prefersHDR:{width, height}];
        v19 = a13;
        goto LABEL_16;
      }

      v39 = 0;
      v19 = a13;
    }

    else
    {
      v39 = 0;
      v28 = v36;
      v23 = v47;
      v19 = a13;
    }

    v40 = v50;
    v27 = v46;
LABEL_16:

    goto LABEL_17;
  }

  v39 = 0;
  v40 = v50;
LABEL_17:
  v42 = PLPhotoKitGetLog();
  v43 = v42;
  if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v43, OS_SIGNPOST_INTERVAL_END, v23, "com.apple.photos.photokit.phlivephoto", byte_19CB567AE, buf, 2u);
  }

  if (v19)
  {
    v44 = v28;
    *v19 = v28;
  }

  return v39;
}

+ (id)_livePhotoWithResourceFileURLs:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 skipValidation:(BOOL)a6 isLooping:(BOOL)a7 skipInstantiatingImageAndAVAsset:(BOOL)a8 prefersHDR:(BOOL)a9 error:(id *)a10
{
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v13 = v15;
  v14 = v16;
  BYTE2(v12) = a9;
  BYTE1(v12) = a8;
  LOBYTE(v12) = a7;
  v10 = [a1 _livePhotoWithResourceFileURLs:a3 pairingIdentifier:0 videoDuration:&v15 photoTime:&v13 targetSize:a5 contentMode:a6 skipValidation:a4.width isLooping:a4.height skipInstantiatingImageAndAVAsset:v12 prefersHDR:a10 error:?];

  return v10;
}

+ (PHLivePhoto)livePhotoWithResourceFileURLs:(id)a3 pairingIdentifier:(id)a4 videoDuration:(id *)a5 photoTime:(id *)a6 error:(id *)a7
{
  v11 = *a5;
  v10 = *a6;
  BYTE2(v9) = 0;
  LOWORD(v9) = 0;
  v7 = [a1 _livePhotoWithResourceFileURLs:a3 pairingIdentifier:a4 videoDuration:&v11 photoTime:&v10 targetSize:1 contentMode:0 skipValidation:*MEMORY[0x1E695F060] isLooping:*(MEMORY[0x1E695F060] + 8) skipInstantiatingImageAndAVAsset:v9 prefersHDR:a7 error:?];

  return v7;
}

+ (void)cancelLivePhotoRequestWithRequestID:(PHLivePhotoRequestID)requestID
{
  if (sOperationsByRequestQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PHLivePhoto_cancelLivePhotoRequestWithRequestID___block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v4 = requestID;
    dispatch_sync(sOperationsByRequestQueue, block);
  }
}

void __51__PHLivePhoto_cancelLivePhotoRequestWithRequestID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v1 = [sCreationOperationsByRequestID objectForKeyedSubscript:v2];
  [v1 cancel];
  [sCreationOperationsByRequestID removeObjectForKey:v2];
}

+ (int)requestLivePhotoWithResourceFileURLs:(id)a3 placeholderImage:(id)a4 targetSize:(CGSize)a5 contentMode:(int64_t)a6 prefersHDR:(BOOL)a7 resultHandler:(id)a8
{
  v9 = a7;
  height = a5.height;
  width = a5.width;
  v45[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler__onceToken != -1)
  {
    dispatch_once(&requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler__onceToken, &__block_literal_global_30067);
  }

  add = atomic_fetch_add(sCreationRequestCounter, 1u);
  if (v15)
  {
    v18 = v15;
    v19 = DCIM_CGImageRefFromPLImage();
    v20 = MEMORY[0x19EAF16A0](v18);

    v21 = [PHLivePhoto alloc];
    v42 = *MEMORY[0x1E6960C70];
    v43 = *(MEMORY[0x1E6960C70] + 16);
    v22 = [(PHLivePhoto *)v21 initWithImage:v19 uiOrientation:v20 videoAsset:0 photoTime:&v42 asset:0];
    v44 = @"PHLivePhotoInfoIsDegradedKey";
    v45[0] = MEMORY[0x1E695E118];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_2;
    block[3] = &unk_1E75AA870;
    v40 = v23;
    v41 = v16;
    v39 = v22;
    v24 = v23;
    v25 = v22;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v26 = [PHLivePhotoCreationOperation alloc];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_3;
  v35[3] = &unk_1E75A7FA0;
  v37 = add + 1;
  v36 = v16;
  v27 = v16;
  v28 = [(PHLivePhotoCreationOperation *)v26 initWithResourceURLs:v14 targetSize:a6 contentMode:v9 prefersHDR:v35 resultHandler:width, height];
  v29 = sOperationsByRequestQueue;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_6;
  v32[3] = &unk_1E75A8BE8;
  v34 = add + 1;
  v33 = v28;
  v30 = v28;
  dispatch_sync(v29, v32);
  [requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler__creationOperationQueue addOperation:v30];

  return add + 1;
}

void __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_4;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v17 = *(a1 + 40);
    dispatch_sync(sOperationsByRequestQueue, block);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_5;
  v12[3] = &unk_1E75AA870;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sCreationOperationsByRequestID;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

void __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke_4(uint64_t a1)
{
  v1 = sCreationOperationsByRequestID;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  [v1 removeObjectForKey:v2];
}

uint64_t __117__PHLivePhoto_requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler__creationOperationQueue;
  requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler__creationOperationQueue = v0;

  [requestLivePhotoWithResourceFileURLs_placeholderImage_targetSize_contentMode_prefersHDR_resultHandler__creationOperationQueue setQualityOfService:25];
  v2 = dispatch_queue_create("com.apple.livephoto.creationoperationsbyid", 0);
  v3 = sOperationsByRequestQueue;
  sOperationsByRequestQueue = v2;

  sCreationOperationsByRequestID = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:v8];
  v10 = PFIsLivePhotoBundleType();

  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = v7;
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];
  v14 = [v13 stringByAppendingPathExtension:*MEMORY[0x1E69C09D0]];

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [v15 temporaryDirectory];
  v17 = [v16 URLByAppendingPathComponent:@"live-photo-bundle"];
  v18 = [v17 URLByAppendingPathComponent:v14];

  v19 = v18;
  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v61[0] = 0;
  LODWORD(v16) = [v20 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v61];
  v21 = v61[0];

  if (!v16)
  {
    v25 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v63 = v18;
      v64 = 2112;
      v65 = v21;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Failed to create directory (%@) to unzip bundle: %@", buf, 0x16u);
    }

    v24 = 0;
    goto LABEL_30;
  }

  archive_read_new();
  archive_read_support_format_all();
  archive_read_support_filter_all();
  [v11 bytes];
  [v11 length];
  if (archive_read_open_memory())
  {
    v22 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = archive_error_string();
      *buf = 136315138;
      v63 = v23;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Failed to open zipped bundle: %s", buf, 0xCu);
    }

    v24 = 0;
    goto LABEL_29;
  }

  archive_write_disk_new();
  archive_write_disk_set_options();
  archive_write_disk_set_standard_lookup();
  v24 = v18;
  v61[1] = 0;
  v56 = a5;
  v57 = v7;
  v55 = v21;
  v58 = v8;
  while (2)
  {
    next_header = archive_read_next_header();
    if (!next_header)
    {
      v27 = v19;
      v28 = v21;
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:archive_entry_pathname()];
      v30 = [v29 pathComponents];
      if ([v30 count] < 2)
      {
        v52 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v63 = v30;
          _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_ERROR, "Failed to read zipped bundle (invalid path components): %@", buf, 0xCu);
        }

        v45 = -25;
        v60 = v29;
        v38 = v30;
        v21 = v28;
        v19 = v27;
        v8 = v58;
      }

      else
      {
        v31 = v27;
        v32 = MEMORY[0x1E696AEC0];
        v59 = v30;
        v33 = [v30 subarrayWithRange:{1, objc_msgSend(v30, "count") - 1}];
        v34 = [v32 pathWithComponents:v33];

        v60 = v34;
        v35 = [v24 URLByAppendingPathComponent:v34];
        v36 = [v35 path];
        [v36 fileSystemRepresentation];
        archive_entry_set_pathname();

        v37 = archive_write_header();
        if (v37)
        {
          v45 = v37;
          v53 = PLPhotoKitGetLog();
          v8 = v58;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = archive_error_string();
            *buf = 136315138;
            v63 = v54;
            _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_ERROR, "Failed to unzip bundle (unable to write header): %s", buf, 0xCu);
          }

          v19 = v31;
          v21 = v55;
          a5 = v56;
          v7 = v57;
          v38 = v59;
        }

        else
        {
          v19 = v31;
          v21 = v55;
          a5 = v56;
          v7 = v57;
          v8 = v58;
          v38 = v59;
          while (1)
          {
            memset(&v61[2], 0, 24);
            data_block = archive_read_data_block();
            if (data_block)
            {
              break;
            }

            if (archive_write_data_block() == -1)
            {
              v42 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v44 = archive_error_string();
                *buf = 136315138;
                v63 = v44;
                v41 = "Failed to unzip bundle (unable to write data): %s";
                goto LABEL_24;
              }

              goto LABEL_25;
            }
          }

          if (data_block == 1)
          {

            continue;
          }

          v42 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v40 = archive_error_string();
            *buf = 136315138;
            v63 = v40;
            v41 = "Failed to read zipped bundle (unable to read data): %s";
LABEL_24:
            _os_log_impl(&dword_19C86F000, v42, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
          }

LABEL_25:

          v45 = -25;
        }
      }

      v46 = v60;
      goto LABEL_27;
    }

    break;
  }

  v45 = next_header;
  if (next_header != 1)
  {
    v46 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v51 = archive_error_string();
      *buf = 136315138;
      v63 = v51;
      _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_ERROR, "Failed to read zipped bundle (unable to read header): %s", buf, 0xCu);
    }

LABEL_27:

    archive_write_free();
    if (v45 != 1)
    {
      v24 = 0;
    }

    goto LABEL_29;
  }

  archive_write_free();
LABEL_29:
  archive_read_free();
LABEL_30:
  v47 = v24;

  if (v47)
  {
    v48 = [[PHLivePhoto alloc] initWithBundleAtURL:v47];
    if (v48)
    {
      v49 = v48;

      goto LABEL_37;
    }
  }

LABEL_34:
  if (a5)
  {
    [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
    *a5 = v49 = 0;
  }

  else
  {
    v49 = 0;
  }

LABEL_37:

  return v49;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = PFCurrentPlatformLivePhotoBundleType();
  v3 = [v2 identifier];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

@end