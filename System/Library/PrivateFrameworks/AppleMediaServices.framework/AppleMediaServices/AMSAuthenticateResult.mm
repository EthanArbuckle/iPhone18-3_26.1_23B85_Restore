@interface AMSAuthenticateResult
- (AMSAuthenticateResult)initWithAccount:(id)account;
- (AMSAuthenticateResult)initWithCoder:(id)coder;
- (NSDictionary)authenticationResults;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSAuthenticateResult

- (AMSAuthenticateResult)initWithAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = AMSAuthenticateResult;
  v6 = [(AMSAuthenticateResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    ams_lastAuthenticationServerResponse = [accountCopy ams_lastAuthenticationServerResponse];
    serverResponse = v7->_serverResponse;
    v7->_serverResponse = ams_lastAuthenticationServerResponse;
  }

  return v7;
}

- (NSDictionary)authenticationResults
{
  authKitUpdateResult = [(AMSAuthenticateResult *)self authKitUpdateResult];
  authenticationResults = [authKitUpdateResult authenticationResults];

  return authenticationResults;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(AMSAuthenticateResult *)self account];

  if (account)
  {
    account2 = [(AMSAuthenticateResult *)self account];
    [coderCopy encodeObject:account2 forKey:@"kCodingKeyAccount"];
  }

  authKitUpdateResult = [(AMSAuthenticateResult *)self authKitUpdateResult];

  if (authKitUpdateResult)
  {
    authKitUpdateResult2 = [(AMSAuthenticateResult *)self authKitUpdateResult];
    [coderCopy encodeObject:authKitUpdateResult2 forKey:@"kCodingKeyAuthKitUpdateResult"];
  }

  serverResponse = [(AMSAuthenticateResult *)self serverResponse];

  v9 = coderCopy;
  if (serverResponse)
  {
    serverResponse2 = [(AMSAuthenticateResult *)self serverResponse];
    [coderCopy encodeObject:serverResponse2 forKey:@"kCodingKeyServerResponse"];

    v9 = coderCopy;
  }
}

- (AMSAuthenticateResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AMSAuthenticateResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAuthKitUpdateResult"];
    authKitUpdateResult = v5->_authKitUpdateResult;
    v5->_authKitUpdateResult = v8;

    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v11 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"kCodingKeyServerResponse"];
    serverResponse = v5->_serverResponse;
    v5->_serverResponse = v11;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  account = [(AMSAuthenticateResult *)self account];
  [v3 ams_setNullableObject:account forKey:@"account"];

  authKitUpdateResult = [(AMSAuthenticateResult *)self authKitUpdateResult];
  [v3 ams_setNullableObject:authKitUpdateResult forKey:@"authKitUpdateResult"];

  serverResponse = [(AMSAuthenticateResult *)self serverResponse];
  [v3 ams_setNullableObject:serverResponse forKey:@"serverResponse"];

  v7 = [self ams_generateDescriptionWithSubObjects:v3];

  return v7;
}

@end