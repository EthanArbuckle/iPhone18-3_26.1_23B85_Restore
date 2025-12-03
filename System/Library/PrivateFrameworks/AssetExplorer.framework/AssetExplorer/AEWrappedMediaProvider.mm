@interface AEWrappedMediaProvider
- (AEWrappedMediaProvider)initWithMediaProvider:(id)provider;
- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int64_t)request;
@end

@implementation AEWrappedMediaProvider

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  _internalMediaProvider = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  LODWORD(optionsCopy) = [_internalMediaProvider requestImageForAsset:assetCopy targetSize:mode contentMode:photoKitRequestOptions options:handlerCopy resultHandler:{width, height}];
  return optionsCopy;
}

- (void)cancelImageRequest:(int64_t)request
{
  _internalMediaProvider = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  [_internalMediaProvider cancelImageRequest:request];
}

- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  _internalMediaProvider = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  LODWORD(optionsCopy) = [_internalMediaProvider requestAnimatedImageForAsset:assetCopy options:photoKitRequestOptions resultHandler:handlerCopy];
  return optionsCopy;
}

- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  _internalMediaProvider = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  LODWORD(optionsCopy) = [_internalMediaProvider requestLivePhotoForAsset:assetCopy targetSize:mode contentMode:photoKitRequestOptions options:handlerCopy resultHandler:{width, height}];
  return optionsCopy;
}

- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  videoCopy = video;
  _internalMediaProvider = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  LODWORD(optionsCopy) = [_internalMediaProvider requestPlayerItemForVideo:videoCopy options:photoKitRequestOptions resultHandler:handlerCopy];
  return optionsCopy;
}

- (int64_t)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  _internalMediaProvider = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  LODWORD(optionsCopy) = [_internalMediaProvider requestImageURLForAsset:assetCopy options:photoKitRequestOptions resultHandler:handlerCopy];
  return optionsCopy;
}

- (int64_t)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  _internalMediaProvider = [(AEWrappedMediaProvider *)self _internalMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__AEWrappedMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_278CC70F8;
  v16 = handlerCopy;
  v13 = handlerCopy;
  LODWORD(handlerCopy) = [_internalMediaProvider requestImageDataForAsset:assetCopy options:photoKitRequestOptions resultHandler:v15];

  return handlerCopy;
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

- (AEWrappedMediaProvider)initWithMediaProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = AEWrappedMediaProvider;
  v6 = [(AEWrappedMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__internalMediaProvider, provider);
  }

  return v7;
}

@end