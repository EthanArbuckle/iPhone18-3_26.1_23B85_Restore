@interface BKTemporaryAssetID
+ (id)identifierWithTemporaryAssetID:(id)a3;
- (BKTemporaryAssetID)initWithTemporaryAssetID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)permanentOrTemporaryAssetID;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BKTemporaryAssetID

+ (id)identifierWithTemporaryAssetID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTemporaryAssetID:v4];

  return v5;
}

- (BKTemporaryAssetID)initWithTemporaryAssetID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKTemporaryAssetID;
  v6 = [(BKTemporaryAssetID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_temporaryAssetID, a3);
  }

  return v7;
}

- (NSString)permanentOrTemporaryAssetID
{
  v2 = [(NSString *)self->_temporaryAssetID copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  temporaryAssetID = self->_temporaryAssetID;

  return [v4 initWithTemporaryAssetID:temporaryAssetID];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4[1] isEqual:self->_temporaryAssetID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end