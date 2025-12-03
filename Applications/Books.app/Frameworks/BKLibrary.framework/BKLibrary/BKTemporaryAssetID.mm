@interface BKTemporaryAssetID
+ (id)identifierWithTemporaryAssetID:(id)d;
- (BKTemporaryAssetID)initWithTemporaryAssetID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)permanentOrTemporaryAssetID;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BKTemporaryAssetID

+ (id)identifierWithTemporaryAssetID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithTemporaryAssetID:dCopy];

  return v5;
}

- (BKTemporaryAssetID)initWithTemporaryAssetID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BKTemporaryAssetID;
  v6 = [(BKTemporaryAssetID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_temporaryAssetID, d);
  }

  return v7;
}

- (NSString)permanentOrTemporaryAssetID
{
  v2 = [(NSString *)self->_temporaryAssetID copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  temporaryAssetID = self->_temporaryAssetID;

  return [v4 initWithTemporaryAssetID:temporaryAssetID];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[1] isEqual:self->_temporaryAssetID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end