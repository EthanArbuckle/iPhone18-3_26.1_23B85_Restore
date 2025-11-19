@interface AALoginDelegatesRequest
- (AALoginDelegatesRequest)initWithAccount:(id)a3 parameters:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AALoginDelegatesRequest

- (AALoginDelegatesRequest)initWithAccount:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AALoginDelegatesRequest;
  v9 = [(AALoginDelegatesRequest *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    loginParameters = v9->_loginParameters;
    v9->_loginParameters = v10;

    objc_storeStrong(&v9->_account, a3);
  }

  return v9;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 loginDelegatesURL];

  return v3;
}

- (id)urlRequest
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AALoginDelegatesRequest;
  v3 = [(AARequest *)&v17 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setValue:self->_loginParameters forKey:@"delegates"];
  v6 = [(ACAccount *)self->_account username];
  [v5 setValue:v6 forKey:@"apple-id"];

  v7 = [(ACAccount *)self->_account credential];
  v8 = [v7 password];
  [v5 setValue:v8 forKey:@"password"];

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