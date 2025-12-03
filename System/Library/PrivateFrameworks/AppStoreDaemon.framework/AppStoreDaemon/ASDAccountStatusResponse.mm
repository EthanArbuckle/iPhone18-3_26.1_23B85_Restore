@interface ASDAccountStatusResponse
- (ASDAccountStatusResponse)initWithAccountID:(id)d;
- (ASDAccountStatusResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAccountStatusResponse

- (ASDAccountStatusResponse)initWithAccountID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDAccountStatusResponse;
  v5 = [(ASDAccountStatusResponse *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    accountID = v5->_accountID;
    v5->_accountID = v6;
  }

  return v5;
}

- (ASDAccountStatusResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDAccountStatusResponse *)self initWithAccountID:0];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v5->_accountStatus = [coderCopy decodeIntegerForKey:@"_accountStatus"];
    v5->_hasCachedFamilyInfo = [coderCopy decodeBoolForKey:@"_hasCachedFamilyInfo"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountID = self->_accountID;
  coderCopy = coder;
  [coderCopy encodeObject:accountID forKey:@"_accountID"];
  [coderCopy encodeInteger:self->_accountStatus forKey:@"_accountStatus"];
  [coderCopy encodeBool:self->_hasCachedFamilyInfo forKey:@"_hasCachedFamilyInfo"];
}

@end