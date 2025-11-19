@interface AEWrappedMediaProvider
- (AEWrappedMediaProvider)initWithMediaProvider:(id)a3;
- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int64_t)a3;
@end

@implementation AEWrappedMediaProvider

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  v17 = [v14 photoKitRequestOptions];

  LODWORD(v14) = [v16 requestImageForAsset:v15 targetSize:a5 contentMode:v17 options:v13 resultHandler:{width, height}];
  return v14;
}

- (void)cancelImageRequest:(int64_t)a3
{
  v4 = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  [v4 cancelImageRequest:a3];
}

- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  LODWORD(v9) = [v11 requestAnimatedImageForAsset:v10 options:v12 resultHandler:v8];
  return v9;
}

- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  v17 = [v14 photoKitRequestOptions];

  LODWORD(v14) = [v16 requestLivePhotoForAsset:v15 targetSize:a5 contentMode:v17 options:v13 resultHandler:{width, height}];
  return v14;
}

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  LODWORD(v9) = [v11 requestPlayerItemForVideo:v10 options:v12 resultHandler:v8];
  return v9;
}

- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  LODWORD(v9) = [v11 requestImageURLForAsset:v10 options:v12 resultHandler:v8];
  return v9;
}

- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__AEWrappedMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_278CC70F8;
  v16 = v8;
  v13 = v8;
  LODWORD(v8) = [v11 requestImageDataForAsset:v10 options:v12 resultHandler:v15];

  return v8;
}

uint64_t __73__AEWrappedMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (AEWrappedMediaProvider)initWithMediaProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AEWrappedMediaProvider;
  v6 = [(AEWrappedMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__internalMediaProvider, a3);
  }

  return v7;
}

@end