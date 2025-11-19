@interface BKLibraryAssetObject
- (BKLibraryAssetObject)initWithLibraryAsset:(id)a3;
@end

@implementation BKLibraryAssetObject

- (BKLibraryAssetObject)initWithLibraryAsset:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKLibraryAssetObject;
  v5 = [(BKLibraryAssetObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 assetID];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v5->_contentType = [v4 contentType];
    v5->_pageCount = [v4 pageCount];
  }

  return v5;
}

@end