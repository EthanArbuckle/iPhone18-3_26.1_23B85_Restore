@interface AMSAuthenticateResult
- (AMSAuthenticateResult)initWithAccount:(id)a3;
- (AMSAuthenticateResult)initWithCoder:(id)a3;
- (NSDictionary)authenticationResults;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSAuthenticateResult

- (AMSAuthenticateResult)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AMSAuthenticateResult;
  v6 = [(AMSAuthenticateResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [v5 ams_lastAuthenticationServerResponse];
    serverResponse = v7->_serverResponse;
    v7->_serverResponse = v8;
  }

  return v7;
}

- (NSDictionary)authenticationResults
{
  v2 = [(AMSAuthenticateResult *)self authKitUpdateResult];
  v3 = [v2 authenticationResults];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(AMSAuthenticateResult *)self account];

  if (v4)
  {
    v5 = [(AMSAuthenticateResult *)self account];
    [v11 encodeObject:v5 forKey:@"kCodingKeyAccount"];
  }

  v6 = [(AMSAuthenticateResult *)self authKitUpdateResult];

  if (v6)
  {
    v7 = [(AMSAuthenticateResult *)self authKitUpdateResult];
    [v11 encodeObject:v7 forKey:@"kCodingKeyAuthKitUpdateResult"];
  }

  v8 = [(AMSAuthenticateResult *)self serverResponse];

  v9 = v11;
  if (v8)
  {
    v10 = [(AMSAuthenticateResult *)self serverResponse];
    [v11 encodeObject:v10 forKey:@"kCodingKeyServerResponse"];

    v9 = v11;
  }
}

- (AMSAuthenticateResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSAuthenticateResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAuthKitUpdateResult"];
    authKitUpdateResult = v5->_authKitUpdateResult;
    v5->_authKitUpdateResult = v8;

    v10 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kCodingKeyServerResponse"];
    serverResponse = v5->_serverResponse;
    v5->_serverResponse = v11;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSAuthenticateResult *)self account];
  [v3 ams_setNullableObject:v4 forKey:@"account"];

  v5 = [(AMSAuthenticateResult *)self authKitUpdateResult];
  [v3 ams_setNullableObject:v5 forKey:@"authKitUpdateResult"];

  v6 = [(AMSAuthenticateResult *)self serverResponse];
  [v3 ams_setNullableObject:v6 forKey:@"serverResponse"];

  v7 = [self ams_generateDescriptionWithSubObjects:v3];

  return v7;
}

@end