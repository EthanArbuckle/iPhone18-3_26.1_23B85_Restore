@interface AALoginOrCreateDelegatesRequest
- (AALoginOrCreateDelegatesRequest)initWithAccount:(id)account parameters:(id)parameters signingSession:(id)session;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AALoginOrCreateDelegatesRequest

- (AALoginOrCreateDelegatesRequest)initWithAccount:(id)account parameters:(id)parameters signingSession:(id)session
{
  accountCopy = account;
  parametersCopy = parameters;
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = AALoginOrCreateDelegatesRequest;
  v12 = [(AALoginOrCreateDelegatesRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    v14 = [parametersCopy copy];
    parameters = v13->_parameters;
    v13->_parameters = v14;

    objc_storeStrong(&v13->_signingSession, session);
  }

  return v13;
}

- (id)urlString
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"showSSOFlow", @"com.apple.purplebuddy", 0);
  v3 = +[AAURLConfiguration urlConfiguration];
  v4 = v3;
  if (AppBooleanValue)
  {
    [v3 loginOrCreateDelegatesURL];
  }

  else
  {
    [v3 createDelegatesURL];
  }
  v5 = ;

  return v5;
}

- (id)urlRequest
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AALoginOrCreateDelegatesRequest;
  urlRequest = [(AARequest *)&v18 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  parameters = self->_parameters;
  v17 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:parameters format:100 options:0 error:&v17];
  v7 = v17;
  if (v6)
  {
    [v4 setHTTPBody:v6];
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v7 localizedDescription];
      *buf = 138412290;
      v20 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(AARequest *)self redactedBodyStringWithPropertyList:self->_parameters];
    *buf = 138412290;
    v20 = v11;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "LoginOrCreateAccount request body: \n%@", buf, 0xCu);
  }

  aa_password = [(ACAccount *)self->_account aa_password];

  if (!aa_password)
  {
    [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:0];
  }

  [v4 aa_signBodyData:v6 withSigningSession:self->_signingSession];
  [v4 aa_addMultiUserDeviceHeaderIfEnabled];
  [v4 aa_addAltDSIDAndRepairStateWithAccount:self->_account];
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 description];
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

@end