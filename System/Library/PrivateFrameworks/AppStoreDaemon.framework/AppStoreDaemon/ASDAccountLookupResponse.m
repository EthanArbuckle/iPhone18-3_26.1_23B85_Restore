@interface ASDAccountLookupResponse
- (ASDAccountLookupResponse)initWithAccountID:(id)a3 askToBuyEnabled:(BOOL)a4;
- (ASDAccountLookupResponse)initWithCoder:(id)a3;
- (ASDAccountLookupResponse)initWithError:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAccountLookupResponse

- (ASDAccountLookupResponse)initWithAccountID:(id)a3 askToBuyEnabled:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ASDAccountLookupResponse;
  v7 = [(ASDRequestResponse *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    accountID = v7->_accountID;
    v7->_accountID = v8;

    v7->_askToBuyEnabled = a4;
  }

  return v7;
}

- (ASDAccountLookupResponse)initWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASDAccountLookupResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:a3];
  v4 = v3;
  if (v3)
  {
    accountID = v3->_accountID;
    v3->_accountID = 0;

    v4->_askToBuyEnabled = 0;
  }

  return v4;
}

- (ASDAccountLookupResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDAccountLookupResponse;
  v5 = [(ASDRequestResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v5->_askToBuyEnabled = [v4 decodeBoolForKey:@"askToBuyEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASDAccountLookupResponse;
  v4 = a3;
  [(ASDRequestResponse *)&v6 encodeWithCoder:v4];
  v5 = [(ASDAccountLookupResponse *)self accountID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"accountID"];

  [v4 encodeBool:-[ASDAccountLookupResponse askToBuyEnabled](self forKey:{"askToBuyEnabled"), @"askToBuyEnabled"}];
}

@end