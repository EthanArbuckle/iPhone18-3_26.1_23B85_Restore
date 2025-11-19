@interface PHTransientAssetCollectionOptions
- (PHTransientAssetCollectionOptions)init;
- (PHTransientAssetCollectionOptions)initWithAssetFetchResult:(id)a3;
- (PHTransientAssetCollectionOptions)initWithFetchOptions:(id)a3;
- (PHTransientAssetCollectionOptions)initWithPhotoLibrary:(id)a3;
- (id)_init;
@end

@implementation PHTransientAssetCollectionOptions

- (id)_init
{
  v7.receiver = self;
  v7.super_class = PHTransientAssetCollectionOptions;
  v2 = [(PHTransientAssetCollectionOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_19CB295D0;
    v4 = objc_opt_class();
    v5 = v3[10];
    v3[10] = v4;
  }

  return v3;
}

- (PHTransientAssetCollectionOptions)init
{
  v2 = self;
  v3 = PLMethodNotImplementedException();
  objc_exception_throw(v3);
}

- (PHTransientAssetCollectionOptions)initWithFetchOptions:(id)a3
{
  v4 = a3;
  v5 = [(PHTransientAssetCollectionOptions *)self _init];
  if (v5)
  {
    v6 = [PHQuery queryForAssetsWithOptions:v4];
    query = v5->_query;
    v5->_query = v6;
  }

  return v5;
}

- (PHTransientAssetCollectionOptions)initWithAssetFetchResult:(id)a3
{
  v5 = a3;
  v6 = [(PHTransientAssetCollectionOptions *)self _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 11, a3);
    v8 = [v5 photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = v8;
  }

  return v7;
}

- (PHTransientAssetCollectionOptions)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v6 = [(PHTransientAssetCollectionOptions *)self _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 13, a3);
  }

  return v7;
}

@end