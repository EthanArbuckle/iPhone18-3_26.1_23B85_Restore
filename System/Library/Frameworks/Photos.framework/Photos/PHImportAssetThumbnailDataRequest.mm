@interface PHImportAssetThumbnailDataRequest
- (PHImportAssetThumbnailDataRequest)initWithAsset:(id)a3 longestSide:(unint64_t)a4 priority:(unsigned __int8)a5;
- (id)requestAsset;
@end

@implementation PHImportAssetThumbnailDataRequest

- (id)requestAsset
{
  v3 = [(PHImportAssetDataRequest *)self asset];
  v4 = [v3 largeRender];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PHImportAssetDataRequest *)self asset];
    v8 = [v7 largeMovieRender];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(PHImportAssetDataRequest *)self asset];
    }

    v6 = v10;
  }

  return v6;
}

- (PHImportAssetThumbnailDataRequest)initWithAsset:(id)a3 longestSide:(unint64_t)a4 priority:(unsigned __int8)a5
{
  result = [(PHImportAssetDataRequest *)self initWithAsset:a3];
  if (result)
  {
    result->_longestSide = a4;
    result->_priority = a5;
  }

  return result;
}

@end