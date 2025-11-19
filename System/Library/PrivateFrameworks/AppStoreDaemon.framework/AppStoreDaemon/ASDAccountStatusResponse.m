@interface ASDAccountStatusResponse
- (ASDAccountStatusResponse)initWithAccountID:(id)a3;
- (ASDAccountStatusResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAccountStatusResponse

- (ASDAccountStatusResponse)initWithAccountID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDAccountStatusResponse;
  v5 = [(ASDAccountStatusResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    accountID = v5->_accountID;
    v5->_accountID = v6;
  }

  return v5;
}

- (ASDAccountStatusResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDAccountStatusResponse *)self initWithAccountID:0];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v5->_accountStatus = [v4 decodeIntegerForKey:@"_accountStatus"];
    v5->_hasCachedFamilyInfo = [v4 decodeBoolForKey:@"_hasCachedFamilyInfo"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountID = self->_accountID;
  v5 = a3;
  [v5 encodeObject:accountID forKey:@"_accountID"];
  [v5 encodeInteger:self->_accountStatus forKey:@"_accountStatus"];
  [v5 encodeBool:self->_hasCachedFamilyInfo forKey:@"_hasCachedFamilyInfo"];
}

@end