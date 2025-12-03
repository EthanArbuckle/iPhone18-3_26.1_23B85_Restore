@interface PHImportAssetDataRequest
- (BOOL)isCanceled;
- (PHImportAsset)requestAsset;
- (PHImportAssetDataRequest)initWithAsset:(id)asset;
- (void)cancel;
@end

@implementation PHImportAssetDataRequest

- (BOOL)isCanceled
{
  canceler = self->_canceler;
  if (canceler)
  {
    LOBYTE(canceler) = canceler->_isCanceled;
  }

  return canceler & 1;
}

- (void)cancel
{
  canceler = self->_canceler;
  if (canceler)
  {
    canceler->_isCanceled = 1;
  }

  cancelBlock = [(PHImportAssetDataRequest *)self cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [(PHImportAssetDataRequest *)self cancelBlock];
    cancelBlock2[2]();
  }
}

- (PHImportAsset)requestAsset
{
  largeRender = [(PHImportAsset *)self->_asset largeRender];
  v4 = largeRender;
  if (largeRender)
  {
    v5 = largeRender;
  }

  else
  {
    largeMovieRender = [(PHImportAsset *)self->_asset largeMovieRender];
    asset = largeMovieRender;
    if (!largeMovieRender)
    {
      asset = self->_asset;
    }

    v5 = asset;
  }

  return v5;
}

- (PHImportAssetDataRequest)initWithAsset:(id)asset
{
  assetCopy = asset;
  v6 = [(PHImportAssetDataRequest *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    v8 = objc_opt_new();
    canceler = v7->_canceler;
    v7->_canceler = v8;
  }

  return v7;
}

@end