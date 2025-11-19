@interface AASetupAssistantSetupDelegatesRequest
- (AASetupAssistantSetupDelegatesRequest)initWithAccount:(id)a3 withSetupParameters:(id)a4 signingSession:(id)a5;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AASetupAssistantSetupDelegatesRequest

- (AASetupAssistantSetupDelegatesRequest)initWithAccount:(id)a3 withSetupParameters:(id)a4 signingSession:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AASetupAssistantSetupDelegatesRequest;
  v12 = [(AASetupAssistantSetupDelegatesRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a3);
    v14 = [v10 copy];
    setupParameters = v13->setupParameters;
    v13->setupParameters = v14;

    objc_storeStrong(&v13->signingSession, a5);
  }

  return v13;
}

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  v3 = [v2 createDelegateAccountsURL];

  return v3;
}

- (id)urlRequest
{
  v32 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = AASetupAssistantSetupDelegatesRequest;
  v3 = [(AARequest *)&v29 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  setupParameters = self->setupParameters;
  v28 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:setupParameters format:100 options:0 error:&v28];
  v7 = v28;
  if (v6)
  {
    [v4 setHTTPBody:v6];
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 localizedDescription];
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(AARequest *)self redactedBodyStringWithPropertyList:self->setupParameters];
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "CreateDelegateAccounts request body: \n%@", buf, 0xCu);
  }

  v12 = +[AADeviceInfo udid];
  [v4 setValue:v12 forHTTPHeaderField:@"Device-UDID"];

  v13 = [(ACAccount *)self->_account aa_password];
  if (v13)
  {
    goto LABEL_9;
  }

  v18 = [(ACAccount *)self->_account aa_authToken];
  if (v18)
  {
    v19 = v18;
    v20 = [(ACAccount *)self->_account username];

    if (v20)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [(ACAccount *)self->_account aa_personID];
      v23 = [(ACAccount *)self->_account aa_authToken];
      v24 = [v21 stringWithFormat:@"%@:%@", v22, v23];

      v25 = [v24 dataUsingEncoding:4];
      v26 = [v25 base64EncodedStringWithOptions:0];

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-MobileMe-AuthToken %@", v26];
      [v4 addValue:v13 forHTTPHeaderField:@"Authorization"];
      v27 = _AALogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Using token auth", buf, 2u);
      }

LABEL_9:
    }
  }

  [v4 aa_signBodyData:v6 withSigningSession:self->signingSession];
  [v4 aa_addMultiUserDeviceHeaderIfEnabled];
  v14 = _AALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 description];
    *buf = 138412290;
    v31 = v15;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end