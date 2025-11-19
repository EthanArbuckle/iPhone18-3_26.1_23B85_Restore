@interface PHLivePhotoCreationOperation
- (CGSize)targetSize;
- (PHLivePhotoCreationOperation)initWithResourceURLs:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 prefersHDR:(BOOL)a6 resultHandler:(id)a7;
- (id)_createImageOnlyLivePhotoWithImageURL:(id)a3;
- (void)main;
@end

@implementation PHLivePhotoCreationOperation

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_createImageOnlyLivePhotoWithImageURL:(id)a3
{
  v4 = a3;
  v5 = [(PHLivePhotoCreationOperation *)self contentMode];
  [(PHLivePhotoCreationOperation *)self targetSize];
  v7 = v6;
  v9 = v8;
  [(PHLivePhotoCreationOperation *)self prefersHDR];
  v10 = DCIM_newPLImageWithContentsOfFileURL();
  DCIM_sizeFromPLImage();
  if ((v7 != *MEMORY[0x1E695F060] || v9 != *(MEMORY[0x1E695F060] + 8)) && (v11 > v7 || v12 > v9))
  {
    if (v5 == 1)
    {
      DCIM_sizeScaleToFillSize();
    }

    else
    {
      DCIM_sizeScaleToFitSize();
    }

    DCIM_sizeScale();
    MEMORY[0x19EAF16A0](v10);
    v15 = DCIM_scaleImageFromURL();

    v10 = v15;
  }

  v16 = [PHLivePhoto alloc];
  v17 = DCIM_CGImageRefFromPLImage();
  v18 = MEMORY[0x19EAF16A0](v10);
  v21 = *MEMORY[0x1E6960C70];
  v22 = *(MEMORY[0x1E6960C70] + 16);
  v19 = [(PHLivePhoto *)v16 initWithImage:v17 uiOrientation:v18 videoAsset:0 photoTime:&v21 asset:0];

  return v19;
}

- (void)main
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = [(PHLivePhotoCreationOperation *)self resourceURLs];
  v4 = [(PHLivePhotoCreationOperation *)self resultHandler];
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v5 = [PHLivePhoto _identifyResourceURLs:v3 outImageURL:&v30 outVideoURL:&v29 error:&v28];
  v6 = v30;
  v7 = v29;
  v8 = v28;
  if (v5 && ([(PHLivePhotoCreationOperation *)self isCancelled]& 1) == 0)
  {
    v10 = [(PHLivePhotoCreationOperation *)self _createImageOnlyLivePhotoWithImageURL:v6];
    v35 = @"PHLivePhotoInfoIsDegradedKey";
    v36[0] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    (v4)[2](v4, v10, v11, 0);

    if (([(PHLivePhotoCreationOperation *)self isCancelled]& 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      v26 = v10;
      v12 = [v7 path];
      v27[1] = 0;
      v13 = PFVideoComplementMetadataForVideoAtPath();
      v14 = 0;

      v27[0] = v14;
      LODWORD(v12) = [PHLivePhoto _canCreateLivePhotoWithURLs:v3 videoComplementMetadata:v13 outError:v27];
      v25 = v27[0];

      if (v12 && ([(PHLivePhotoCreationOperation *)self isCancelled]& 1) == 0)
      {
        v16 = [PHLivePhoto alloc];
        [(PHLivePhotoCreationOperation *)self targetSize];
        v15 = v13;
        v9 = [(PHLivePhoto *)v16 _initWithImageURL:v6 videoURL:v7 videoComplementMetadata:v13 targetSize:[(PHLivePhotoCreationOperation *)self contentMode] contentMode:[(PHLivePhotoCreationOperation *)self prefersHDR] prefersHDR:v17, v18];
      }

      else
      {
        v9 = 0;
        v15 = v13;
      }

      v10 = v26;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v33[0] = @"PHLivePhotoInfoCancelledKey";
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHLivePhotoCreationOperation isCancelled](self, "isCancelled")}];
    v33[1] = @"PHLivePhotoInfoErrorKey";
    v34[0] = v19;
    v34[1] = v8;
    v20 = MEMORY[0x1E695DF20];
    v21 = v34;
    v22 = v33;
    v23 = 2;
  }

  else
  {
    v31 = @"PHLivePhotoInfoCancelledKey";
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHLivePhotoCreationOperation isCancelled](self, "isCancelled")}];
    v32 = v19;
    v20 = MEMORY[0x1E695DF20];
    v21 = &v32;
    v22 = &v31;
    v23 = 1;
  }

  v24 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:{v23, v25}];

  (v4)[2](v4, v9, v24, 1);
}

- (PHLivePhotoCreationOperation)initWithResourceURLs:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 prefersHDR:(BOOL)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
  v21.receiver = self;
  v21.super_class = PHLivePhotoCreationOperation;
  v15 = [(PHLivePhotoCreationOperation *)&v21 init];
  if (v15)
  {
    v16 = [v13 copy];
    resourceURLs = v15->_resourceURLs;
    v15->_resourceURLs = v16;

    v15->_contentMode = a5;
    v18 = [v14 copy];
    resultHandler = v15->_resultHandler;
    v15->_resultHandler = v18;

    v15->_targetSize.width = width;
    v15->_targetSize.height = height;
    v15->_prefersHDR = a6;
  }

  return v15;
}

@end