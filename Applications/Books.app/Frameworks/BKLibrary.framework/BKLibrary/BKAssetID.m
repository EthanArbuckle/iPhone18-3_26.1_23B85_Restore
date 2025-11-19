@interface BKAssetID
+ (id)identifierWithAssetID:(id)a3;
- (BKAssetID)initWithAssetID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)permanentAssetID;
- (NSString)permanentOrTemporaryAssetID;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BKAssetID

+ (id)identifierWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAssetID:v4];

  return v5;
}

- (BKAssetID)initWithAssetID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKAssetID;
  v6 = [(BKAssetID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetID, a3);
  }

  return v7;
}

- (NSString)permanentOrTemporaryAssetID
{
  v2 = [(NSString *)self->_assetID copy];

  return v2;
}

- (NSString)permanentAssetID
{
  v2 = [(NSString *)self->_assetID copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  assetID = self->_assetID;

  return [v4 initWithAssetID:assetID];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4[1] isEqual:self->_assetID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end