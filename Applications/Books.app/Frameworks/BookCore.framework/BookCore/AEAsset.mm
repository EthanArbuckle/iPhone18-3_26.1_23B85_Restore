@interface AEAsset
- (AEAsset)initWithAssetType:(id)type assetID:(id)d url:(id)url displayTitle:(id)title;
- (NSString)description;
@end

@implementation AEAsset

- (AEAsset)initWithAssetType:(id)type assetID:(id)d url:(id)url displayTitle:(id)title
{
  typeCopy = type;
  dCopy = d;
  urlCopy = url;
  titleCopy = title;
  v20.receiver = self;
  v20.super_class = AEAsset;
  v15 = [(AEAsset *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetType, type);
    objc_storeStrong(&v16->_assetID, d);
    objc_storeStrong(&v16->_url, url);
    v17 = [titleCopy copy];
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
  assetType = [(AEAsset *)self assetType];
  assetID = [(AEAsset *)self assetID];
  v6 = [(AEAsset *)self url];
  displayTitle = [(AEAsset *)self displayTitle];
  v8 = [NSString stringWithFormat:@"%@, assetType=%@, assetID=%@, url=%@ displayTitle=%@", v3, assetType, assetID, v6, displayTitle];

  return v8;
}

@end