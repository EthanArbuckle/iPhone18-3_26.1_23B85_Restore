@interface LPApplePhotosMetadataProviderSpecialization
+ (id)specializedMetadataProviderForURLWithContext:(id)a3;
- (void)cancel;
- (void)completeWithMetadata:(id)a3;
- (void)dealloc;
- (void)didFetchAsset:(id)a3;
- (void)fail;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)start;
@end

@implementation LPApplePhotosMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 postRedirectURL];
  v5 = [LPPresentationSpecializations isiCloudPhotoShareURL:v4];

  if (v5)
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPApplePhotosMetadataProviderSpecialization alloc] initWithContext:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = LPApplePhotosMetadataProviderSpecialization;
  [(LPApplePhotosMetadataProviderSpecialization *)&v3 dealloc];
}

- (void)start
{
  v25 = *MEMORY[0x1E69E9840];
  if (TCCAccessPreflight())
  {

    [(LPApplePhotosMetadataProviderSpecialization *)self fail];
    return;
  }

  v16 = 0;
  if (!PhotosUICoreLibraryCore(char **)::frameworkLibrary)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = ___ZL23PhotosUICoreLibraryCorePPc_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = &v16;
    v22 = xmmword_1E7A367C0;
    v23 = 0;
    PhotosUICoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosUICoreLibraryCore(char **)::frameworkLibrary)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUICoreLibrary()"];
    [v13 handleFailureInFunction:v14 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:29 description:{@"%s", v16}];

    __break(1u);
    goto LABEL_15;
  }

  v3 = v16;
  if (v16)
  {
LABEL_15:
    free(v3);
  }

  *&v22 = 0;
  *(&v22 + 1) = &v22;
  v23 = 0x2050000000;
  v4 = getPHPhotoLibraryClass(void)::softClass;
  v24 = getPHPhotoLibraryClass(void)::softClass;
  if (!getPHPhotoLibraryClass(void)::softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = ___ZL22getPHPhotoLibraryClassv_block_invoke;
    v20 = &unk_1E7A35518;
    v21 = &v22;
    ___ZL22getPHPhotoLibraryClassv_block_invoke(&v17);
    v4 = *(*(&v22 + 1) + 24);
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  v6 = [v4 sharedMomentSharePhotoLibrary];
  photoLibrary = self->_photoLibrary;
  self->_photoLibrary = v6;

  [(PHPhotoLibrary *)self->_photoLibrary px_registerChangeObserver:self];
  v8 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  *&v22 = 0;
  *(&v22 + 1) = &v22;
  v23 = 0x2050000000;
  v9 = getPHMomentShareClass(void)::softClass;
  v24 = getPHMomentShareClass(void)::softClass;
  if (!getPHMomentShareClass(void)::softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = ___ZL21getPHMomentShareClassv_block_invoke;
    v20 = &unk_1E7A35518;
    v21 = &v22;
    ___ZL21getPHMomentShareClassv_block_invoke(&v17);
    v9 = *(*(&v22 + 1) + 24);
  }

  v10 = v9;
  _Block_object_dispose(&v22, 8);
  v11 = [(LPMetadataProviderSpecialization *)self context];
  v12 = [v11 postRedirectURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__LPApplePhotosMetadataProviderSpecialization_start__block_invoke;
  v15[3] = &unk_1E7A36778;
  v15[4] = self;
  [v9 fetchMomentShareFromShareURL:v12 options:v8 completionHandler:v15];
}

void __52__LPApplePhotosMetadataProviderSpecialization_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if ((v7[24] & 1) == 0)
  {
    if (!v5 || v6)
    {
      [v7 fail];
    }

    else
    {
      v8 = objc_alloc_init(LPApplePhotosMomentMetadata);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;

      v11 = [v5 localizedTitle];
      [*(*(a1 + 32) + 56) setTitle:v11];

      v12 = [v5 expiryDate];
      [*(*(a1 + 32) + 56) setExpirationDate:v12];

      v13 = [v5 startDate];
      [*(*(a1 + 32) + 56) setEarliestAssetDate:v13];

      v14 = [v5 endDate];
      [*(*(a1 + 32) + 56) setLatestAssetDate:v14];

      [*(*(a1 + 32) + 56) setPhotoCount:{objc_msgSend(v5, "photosCount")}];
      [*(*(a1 + 32) + 56) setVideoCount:{objc_msgSend(v5, "videosCount")}];
      [*(*(a1 + 32) + 56) setOtherItemCount:{objc_msgSend(v5, "assetCount") - (objc_msgSend(v5, "photosCount") + objc_msgSend(v5, "videosCount"))}];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __52__LPApplePhotosMetadataProviderSpecialization_start__block_invoke_2;
      v15[3] = &unk_1E7A35478;
      v15[4] = *(a1 + 32);
      v16 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }
}

void __52__LPApplePhotosMetadataProviderSpecialization_start__block_invoke_2(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getPHFetchOptionsClass(void)::softClass;
  v20 = getPHFetchOptionsClass(void)::softClass;
  if (!getPHFetchOptionsClass(void)::softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL22getPHFetchOptionsClassv_block_invoke;
    v16[3] = &unk_1E7A35518;
    v16[4] = &v17;
    ___ZL22getPHFetchOptionsClassv_block_invoke(v16);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = [[v2 alloc] init];
  [v4 setFetchLimit:1];
  [v4 setPhotoLibrary:*(*(a1 + 32) + 32)];
  v5 = [getPHAssetClass() fetchKeyAssetsInAssetCollection:*(a1 + 40) options:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(a1 + 32) + 40) firstObject];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v9[5] firstObject];
    [v9 didFetchAsset:v10];
LABEL_7:

    goto LABEL_8;
  }

  v11 = [getPHAssetClass() fetchAssetsInAssetCollection:*(a1 + 40) options:v4];
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  v14 = [*(*(a1 + 32) + 48) firstObject];

  if (v14)
  {
    v15 = *(a1 + 32);
    v10 = [v15[6] firstObject];
    [v15 didFetchAsset:v10];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)cancel
{
  self->_cancelled = 1;
  if (self->_pendingImageRequest)
  {
    v3 = [getPHImageManagerClass() defaultManager];
    [v3 cancelImageRequest:self->_pendingImageRequest];
  }
}

- (void)fail
{
  [(LPApplePhotosMetadataProviderSpecialization *)self cancel];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LPApplePhotosMetadataProviderSpecialization_fail__block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__LPApplePhotosMetadataProviderSpecialization_fail__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecializationDidFail:*(a1 + 32)];
}

- (void)completeWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__LPApplePhotosMetadataProviderSpecialization_completeWithMetadata___block_invoke;
  v7[3] = &unk_1E7A35478;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __68__LPApplePhotosMetadataProviderSpecialization_completeWithMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecialization:*(a1 + 32) didCompleteWithMetadata:*(a1 + 40)];
}

- (void)didFetchAsset:(id)a3
{
  v4 = a3;
  keyAssetFetch = self->_keyAssetFetch;
  if (*&self->_keyAssetFetch != 0)
  {
    self->_keyAssetFetch = 0;

    anyAssetFetch = self->_anyAssetFetch;
    self->_anyAssetFetch = 0;

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v7 = getPHImageRequestOptionsClass(void)::softClass;
    v16 = getPHImageRequestOptionsClass(void)::softClass;
    if (!getPHImageRequestOptionsClass(void)::softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___ZL29getPHImageRequestOptionsClassv_block_invoke;
      v12[3] = &unk_1E7A35518;
      v12[4] = &v13;
      ___ZL29getPHImageRequestOptionsClassv_block_invoke(v12);
      v7 = v14[3];
    }

    v8 = v7;
    _Block_object_dispose(&v13, 8);
    v9 = [[v7 alloc] init];
    [v9 setNetworkAccessAllowed:1];
    v10 = [getPHImageManagerClass() defaultManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__LPApplePhotosMetadataProviderSpecialization_didFetchAsset___block_invoke;
    v11[3] = &unk_1E7A367A0;
    v11[4] = self;
    self->_pendingImageRequest = [v10 requestImageDataAndOrientationForAsset:v4 options:v9 resultHandler:v11];
  }
}

void __61__LPApplePhotosMetadataProviderSpecialization_didFetchAsset___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  if ((*(v11 + 24) & 1) == 0)
  {
    *(v11 + 28) = 0;
    if (v8)
    {
      v12 = [LPMIMETypeRegistry MIMETypeForUTI:v9];
      if (v12)
      {
        v13 = [[LPImage alloc] initWithData:v8 MIMEType:v12];
        [*(*(a1 + 32) + 56) setKeyPhoto:v13];
      }

      else
      {
        v14 = LPLogChannelFetching();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = v9;
          _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "Failed to determine MIME type for image with type %@", &v15, 0xCu);
        }
      }
    }

    [*(a1 + 32) completeWithMetadata:*(*(a1 + 32) + 56)];
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (self->_keyAssetFetch)
  {
    v5 = [v4 changeDetailsForFetchResult:?];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 fetchResultAfterChanges];
      keyAssetFetch = self->_keyAssetFetch;
      self->_keyAssetFetch = v7;

      v9 = [(PHFetchResult *)self->_keyAssetFetch firstObject];
      if (v9)
      {
        [(LPApplePhotosMetadataProviderSpecialization *)self didFetchAsset:v9];
      }
    }

    v4 = v15;
  }

  if (self->_anyAssetFetch)
  {
    v10 = [v4 changeDetailsForFetchResult:?];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 fetchResultAfterChanges];
      anyAssetFetch = self->_anyAssetFetch;
      self->_anyAssetFetch = v12;

      v14 = [(PHFetchResult *)self->_anyAssetFetch firstObject];
      if (v14)
      {
        [(LPApplePhotosMetadataProviderSpecialization *)self didFetchAsset:v14];
      }
    }

    v4 = v15;
  }
}

@end