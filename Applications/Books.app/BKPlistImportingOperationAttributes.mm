@interface BKPlistImportingOperationAttributes
- (BKPlistImportingOperationAttributes)initWithAssetID:(id)d contentType:(signed __int16)type;
- (BKPlistImportingOperationAttributes)initWithTemporaryAssetID:(id)d contentType:(signed __int16)type;
@end

@implementation BKPlistImportingOperationAttributes

- (BKPlistImportingOperationAttributes)initWithAssetID:(id)d contentType:(signed __int16)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BKPlistImportingOperationAttributes;
  v8 = [(BKPlistImportingOperationAttributes *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetID, d);
    v9->_contentType = type;
  }

  return v9;
}

- (BKPlistImportingOperationAttributes)initWithTemporaryAssetID:(id)d contentType:(signed __int16)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BKPlistImportingOperationAttributes;
  v8 = [(BKPlistImportingOperationAttributes *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_temporaryAssetID, d);
    v9->_contentType = type;
  }

  return v9;
}

@end