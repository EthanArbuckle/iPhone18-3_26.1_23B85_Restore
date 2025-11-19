@interface PHImportAssetDataRequest
- (BOOL)isCanceled;
- (PHImportAsset)requestAsset;
- (PHImportAssetDataRequest)initWithAsset:(id)a3;
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

  v4 = [(PHImportAssetDataRequest *)self cancelBlock];

  if (v4)
  {
    v5 = [(PHImportAssetDataRequest *)self cancelBlock];
    v5[2]();
  }
}

- (PHImportAsset)requestAsset
{
  v3 = [(PHImportAsset *)self->_asset largeRender];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PHImportAsset *)self->_asset largeMovieRender];
    asset = v6;
    if (!v6)
    {
      asset = self->_asset;
    }

    v5 = asset;
  }

  return v5;
}

- (PHImportAssetDataRequest)initWithAsset:(id)a3
{
  v5 = a3;
  v6 = [(PHImportAssetDataRequest *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    v8 = objc_opt_new();
    canceler = v7->_canceler;
    v7->_canceler = v8;
  }

  return v7;
}

@end