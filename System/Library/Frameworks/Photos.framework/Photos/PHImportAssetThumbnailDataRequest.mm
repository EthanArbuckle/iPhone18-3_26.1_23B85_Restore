@interface PHImportAssetThumbnailDataRequest
- (PHImportAssetThumbnailDataRequest)initWithAsset:(id)asset longestSide:(unint64_t)side priority:(unsigned __int8)priority;
- (id)requestAsset;
@end

@implementation PHImportAssetThumbnailDataRequest

- (id)requestAsset
{
  asset = [(PHImportAssetDataRequest *)self asset];
  largeRender = [asset largeRender];
  v5 = largeRender;
  if (largeRender)
  {
    v6 = largeRender;
  }

  else
  {
    asset2 = [(PHImportAssetDataRequest *)self asset];
    largeMovieRender = [asset2 largeMovieRender];
    v9 = largeMovieRender;
    if (largeMovieRender)
    {
      asset3 = largeMovieRender;
    }

    else
    {
      asset3 = [(PHImportAssetDataRequest *)self asset];
    }

    v6 = asset3;
  }

  return v6;
}

- (PHImportAssetThumbnailDataRequest)initWithAsset:(id)asset longestSide:(unint64_t)side priority:(unsigned __int8)priority
{
  result = [(PHImportAssetDataRequest *)self initWithAsset:asset];
  if (result)
  {
    result->_longestSide = side;
    result->_priority = priority;
  }

  return result;
}

@end