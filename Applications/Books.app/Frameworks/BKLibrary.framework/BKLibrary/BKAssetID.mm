@interface BKAssetID
+ (id)identifierWithAssetID:(id)d;
- (BKAssetID)initWithAssetID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)permanentAssetID;
- (NSString)permanentOrTemporaryAssetID;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BKAssetID

+ (id)identifierWithAssetID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithAssetID:dCopy];

  return v5;
}

- (BKAssetID)initWithAssetID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BKAssetID;
  v6 = [(BKAssetID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetID, d);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  assetID = self->_assetID;

  return [v4 initWithAssetID:assetID];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[1] isEqual:self->_assetID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end