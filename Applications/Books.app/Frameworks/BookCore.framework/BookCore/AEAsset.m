@interface AEAsset
- (AEAsset)initWithAssetType:(id)a3 assetID:(id)a4 url:(id)a5 displayTitle:(id)a6;
- (NSString)description;
@end

@implementation AEAsset

- (AEAsset)initWithAssetType:(id)a3 assetID:(id)a4 url:(id)a5 displayTitle:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = AEAsset;
  v15 = [(AEAsset *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetType, a3);
    objc_storeStrong(&v16->_assetID, a4);
    objc_storeStrong(&v16->_url, a5);
    v17 = [v14 copy];
    displayTitle = v16->_displayTitle;
    v16->_displayTitle = v17;
  }

  return v16;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = AEAsset;
  v3 = [(AEAsset *)&v10 description];
  v4 = [(AEAsset *)self assetType];
  v5 = [(AEAsset *)self assetID];
  v6 = [(AEAsset *)self url];
  v7 = [(AEAsset *)self displayTitle];
  v8 = [NSString stringWithFormat:@"%@, assetType=%@, assetID=%@, url=%@ displayTitle=%@", v3, v4, v5, v6, v7];

  return v8;
}

@end