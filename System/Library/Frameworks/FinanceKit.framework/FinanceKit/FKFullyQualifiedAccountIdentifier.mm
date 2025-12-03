@interface FKFullyQualifiedAccountIdentifier
- (BOOL)isEqual:(id)equal;
- (FKFullyQualifiedAccountIdentifier)initWithAccountID:(id)d institutionID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKFullyQualifiedAccountIdentifier

- (FKFullyQualifiedAccountIdentifier)initWithAccountID:(id)d institutionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = FKFullyQualifiedAccountIdentifier;
  v8 = [(FKFullyQualifiedAccountIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    accountID = v8->_accountID;
    v8->_accountID = v9;

    v11 = [iDCopy copy];
    institutionID = v8->_institutionID;
    v8->_institutionID = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FKFullyQualifiedAccountIdentifier alloc];
  accountID = self->_accountID;
  institutionID = self->_institutionID;

  return [(FKFullyQualifiedAccountIdentifier *)v4 initWithAccountID:accountID institutionID:institutionID];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_accountID];
  [v3 safelyAddObject:self->_institutionID];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_accountID, v6[1]))
    {
      v7 = FKEqualObjects(self->_institutionID, v6[2]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end