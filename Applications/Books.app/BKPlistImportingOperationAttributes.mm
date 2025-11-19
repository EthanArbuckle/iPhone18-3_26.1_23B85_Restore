@interface BKPlistImportingOperationAttributes
- (BKPlistImportingOperationAttributes)initWithAssetID:(id)a3 contentType:(signed __int16)a4;
- (BKPlistImportingOperationAttributes)initWithTemporaryAssetID:(id)a3 contentType:(signed __int16)a4;
@end

@implementation BKPlistImportingOperationAttributes

- (BKPlistImportingOperationAttributes)initWithAssetID:(id)a3 contentType:(signed __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BKPlistImportingOperationAttributes;
  v8 = [(BKPlistImportingOperationAttributes *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetID, a3);
    v9->_contentType = a4;
  }

  return v9;
}

- (BKPlistImportingOperationAttributes)initWithTemporaryAssetID:(id)a3 contentType:(signed __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BKPlistImportingOperationAttributes;
  v8 = [(BKPlistImportingOperationAttributes *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_temporaryAssetID, a3);
    v9->_contentType = a4;
  }

  return v9;
}

@end