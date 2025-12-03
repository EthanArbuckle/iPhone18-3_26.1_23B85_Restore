@interface BKLibraryFileSizeManagerCacheItemRequest
- (BKLibraryFileSizeManagerCacheItemRequest)initWithCacheItemRequestWithAssetID:(id)d assetURL:(id)l;
@end

@implementation BKLibraryFileSizeManagerCacheItemRequest

- (BKLibraryFileSizeManagerCacheItemRequest)initWithCacheItemRequestWithAssetID:(id)d assetURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = BKLibraryFileSizeManagerCacheItemRequest;
  v8 = [(BKLibraryFileSizeManagerCacheItemRequest *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    assetID = v8->_assetID;
    v8->_assetID = v9;

    v11 = [lCopy copy];
    assetURL = v8->_assetURL;
    v8->_assetURL = v11;
  }

  return v8;
}

@end