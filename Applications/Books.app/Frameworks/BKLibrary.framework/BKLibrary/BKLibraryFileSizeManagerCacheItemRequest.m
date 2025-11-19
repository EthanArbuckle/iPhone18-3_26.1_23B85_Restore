@interface BKLibraryFileSizeManagerCacheItemRequest
- (BKLibraryFileSizeManagerCacheItemRequest)initWithCacheItemRequestWithAssetID:(id)a3 assetURL:(id)a4;
@end

@implementation BKLibraryFileSizeManagerCacheItemRequest

- (BKLibraryFileSizeManagerCacheItemRequest)initWithCacheItemRequestWithAssetID:(id)a3 assetURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BKLibraryFileSizeManagerCacheItemRequest;
  v8 = [(BKLibraryFileSizeManagerCacheItemRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    assetID = v8->_assetID;
    v8->_assetID = v9;

    v11 = [v7 copy];
    assetURL = v8->_assetURL;
    v8->_assetURL = v11;
  }

  return v8;
}

@end