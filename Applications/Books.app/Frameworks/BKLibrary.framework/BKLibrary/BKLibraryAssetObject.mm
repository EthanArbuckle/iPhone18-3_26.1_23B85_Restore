@interface BKLibraryAssetObject
- (BKLibraryAssetObject)initWithLibraryAsset:(id)asset;
@end

@implementation BKLibraryAssetObject

- (BKLibraryAssetObject)initWithLibraryAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = BKLibraryAssetObject;
  v5 = [(BKLibraryAssetObject *)&v9 init];
  if (v5)
  {
    assetID = [assetCopy assetID];
    assetID = v5->_assetID;
    v5->_assetID = assetID;

    v5->_contentType = [assetCopy contentType];
    v5->_pageCount = [assetCopy pageCount];
  }

  return v5;
}

@end