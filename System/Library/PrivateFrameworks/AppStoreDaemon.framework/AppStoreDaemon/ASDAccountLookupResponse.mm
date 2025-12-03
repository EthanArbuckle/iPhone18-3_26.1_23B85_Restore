@interface ASDAccountLookupResponse
- (ASDAccountLookupResponse)initWithAccountID:(id)d askToBuyEnabled:(BOOL)enabled;
- (ASDAccountLookupResponse)initWithCoder:(id)coder;
- (ASDAccountLookupResponse)initWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAccountLookupResponse

- (ASDAccountLookupResponse)initWithAccountID:(id)d askToBuyEnabled:(BOOL)enabled
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ASDAccountLookupResponse;
  v7 = [(ASDRequestResponse *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    accountID = v7->_accountID;
    v7->_accountID = v8;

    v7->_askToBuyEnabled = enabled;
  }

  return v7;
}

- (ASDAccountLookupResponse)initWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = ASDAccountLookupResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:error];
  v4 = v3;
  if (v3)
  {
    accountID = v3->_accountID;
    v3->_accountID = 0;

    v4->_askToBuyEnabled = 0;
  }

  return v4;
}

- (ASDAccountLookupResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDAccountLookupResponse;
  v5 = [(ASDRequestResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v5->_askToBuyEnabled = [coderCopy decodeBoolForKey:@"askToBuyEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ASDAccountLookupResponse;
  coderCopy = coder;
  [(ASDRequestResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ASDAccountLookupResponse *)self accountID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"accountID"];

  [coderCopy encodeBool:-[ASDAccountLookupResponse askToBuyEnabled](self forKey:{"askToBuyEnabled"), @"askToBuyEnabled"}];
}

@end