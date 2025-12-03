@interface PHTransientAssetCollectionOptions
- (PHTransientAssetCollectionOptions)init;
- (PHTransientAssetCollectionOptions)initWithAssetFetchResult:(id)result;
- (PHTransientAssetCollectionOptions)initWithFetchOptions:(id)options;
- (PHTransientAssetCollectionOptions)initWithPhotoLibrary:(id)library;
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
  selfCopy = self;
  v3 = PLMethodNotImplementedException();
  objc_exception_throw(v3);
}

- (PHTransientAssetCollectionOptions)initWithFetchOptions:(id)options
{
  optionsCopy = options;
  _init = [(PHTransientAssetCollectionOptions *)self _init];
  if (_init)
  {
    v6 = [PHQuery queryForAssetsWithOptions:optionsCopy];
    query = _init->_query;
    _init->_query = v6;
  }

  return _init;
}

- (PHTransientAssetCollectionOptions)initWithAssetFetchResult:(id)result
{
  resultCopy = result;
  _init = [(PHTransientAssetCollectionOptions *)self _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 11, result);
    photoLibrary = [resultCopy photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;
  }

  return v7;
}

- (PHTransientAssetCollectionOptions)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  _init = [(PHTransientAssetCollectionOptions *)self _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 13, library);
  }

  return v7;
}

@end