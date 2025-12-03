@interface BKATAsset
- (BKATAsset)initWithATAsset:(id)asset dataSourceIdentifier:(id)identifier;
@end

@implementation BKATAsset

- (BKATAsset)initWithATAsset:(id)asset dataSourceIdentifier:(id)identifier
{
  assetCopy = asset;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = BKATAsset;
  v9 = [(BKATAsset *)&v22 init];
  if (v9)
  {
    storeInfo = [assetCopy storeInfo];
    v11 = storeInfo;
    if (storeInfo)
    {
      adamID = [storeInfo adamID];
      stringValue = [adamID stringValue];
      storeID = v9->_storeID;
      v9->_storeID = stringValue;

      objc_storeStrong(&v9->_assetID, v9->_storeID);
    }

    objc_storeStrong(&v9->_atAsset, asset);
    identifier = [assetCopy identifier];
    temporaryAssetID = v9->_temporaryAssetID;
    v9->_temporaryAssetID = identifier;

    prettyName = [assetCopy prettyName];
    title = v9->_title;
    v9->_title = prettyName;

    v9->_state = 2;
    v19 = +[NSDate date];
    dataSourceInsertionDate = v9->_dataSourceInsertionDate;
    v9->_dataSourceInsertionDate = v19;

    objc_storeStrong(&v9->_dataSourceIdentifier, identifier);
  }

  return v9;
}

@end