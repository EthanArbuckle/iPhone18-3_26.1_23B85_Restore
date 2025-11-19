@interface FKFullyQualifiedAccountIdentifier
- (BOOL)isEqual:(id)a3;
- (FKFullyQualifiedAccountIdentifier)initWithAccountID:(id)a3 institutionID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKFullyQualifiedAccountIdentifier

- (FKFullyQualifiedAccountIdentifier)initWithAccountID:(id)a3 institutionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FKFullyQualifiedAccountIdentifier;
  v8 = [(FKFullyQualifiedAccountIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    accountID = v8->_accountID;
    v8->_accountID = v9;

    v11 = [v7 copy];
    institutionID = v8->_institutionID;
    v8->_institutionID = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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