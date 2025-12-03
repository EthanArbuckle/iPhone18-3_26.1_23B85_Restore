@interface AALoginDelegatesRequest
- (AALoginDelegatesRequest)initWithAccount:(id)account parameters:(id)parameters;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AALoginDelegatesRequest

- (AALoginDelegatesRequest)initWithAccount:(id)account parameters:(id)parameters
{
  accountCopy = account;
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = AALoginDelegatesRequest;
  v9 = [(AALoginDelegatesRequest *)&v13 init];
  if (v9)
  {
    v10 = [parametersCopy copy];
    loginParameters = v9->_loginParameters;
    v9->_loginParameters = v10;

    objc_storeStrong(&v9->_account, account);
  }

  return v9;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  loginDelegatesURL = [v2 loginDelegatesURL];

  return loginDelegatesURL;
}

- (id)urlRequest
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AALoginDelegatesRequest;
  urlRequest = [(AARequest *)&v17 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setValue:self->_loginParameters forKey:@"delegates"];
  username = [(ACAccount *)self->_account username];
  [v5 setValue:username forKey:@"apple-id"];

  credential = [(ACAccount *)self->_account credential];
  password = [credential password];
  [v5 setValue:password forKey:@"password"];

  v9 = +[AADeviceInfo appleIDClientIdentifier];
  [v5 setValue:v9 forKey:@"client-id"];

  v10 = +[AADeviceInfo udid];
  [v4 setValue:v10 forHTTPHeaderField:@"Device-UDID"];

  [v4 aa_setBodyWithParameters:v5];
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(AARequest *)self redactedBodyStringWithPropertyList:self->_loginParameters];
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "LoginDelegates request body: \n%@", buf, 0xCu);
  }

  [v4 addValue:@"text/plist" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:1];
  [v4 aa_addAltDSIDAndRepairStateWithAccount:self->_account];
  [v4 aa_addMultiUserDeviceHeaderIfEnabled];
  [v4 ak_addDeviceConfigurationModeHeader];
  if ([MEMORY[0x1E6985E20] isInternalBuild])
  {
    [v4 setValue:@"true" forHTTPHeaderField:@"x-internal"];
  }

  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 description];
    *buf = 138412290;
    v19 = v14;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

@end