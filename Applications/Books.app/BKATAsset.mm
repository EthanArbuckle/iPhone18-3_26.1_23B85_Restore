@interface BKATAsset
- (BKATAsset)initWithATAsset:(id)a3 dataSourceIdentifier:(id)a4;
@end

@implementation BKATAsset

- (BKATAsset)initWithATAsset:(id)a3 dataSourceIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = BKATAsset;
  v9 = [(BKATAsset *)&v22 init];
  if (v9)
  {
    v10 = [v7 storeInfo];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 adamID];
      v13 = [v12 stringValue];
      storeID = v9->_storeID;
      v9->_storeID = v13;

      objc_storeStrong(&v9->_assetID, v9->_storeID);
    }

    objc_storeStrong(&v9->_atAsset, a3);
    v15 = [v7 identifier];
    temporaryAssetID = v9->_temporaryAssetID;
    v9->_temporaryAssetID = v15;

    v17 = [v7 prettyName];
    title = v9->_title;
    v9->_title = v17;

    v9->_state = 2;
    v19 = +[NSDate date];
    dataSourceInsertionDate = v9->_dataSourceInsertionDate;
    v9->_dataSourceInsertionDate = v19;

    objc_storeStrong(&v9->_dataSourceIdentifier, a4);
  }

  return v9;
}

@end