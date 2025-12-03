@interface AASetupAssistantCreateRequest
- (AASetupAssistantCreateRequest)initWithAccount:(id)account withAppleIDParameters:(id)parameters signingSession:(id)session;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AASetupAssistantCreateRequest

- (AASetupAssistantCreateRequest)initWithAccount:(id)account withAppleIDParameters:(id)parameters signingSession:(id)session
{
  accountCopy = account;
  parametersCopy = parameters;
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = AASetupAssistantCreateRequest;
  v12 = [(AASetupAssistantCreateRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    v14 = [parametersCopy copy];
    appleIDParameters = v13->appleIDParameters;
    v13->appleIDParameters = v14;

    objc_storeStrong(&v13->signingSession, session);
  }

  return v13;
}

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  createAppleIDURL = [v2 createAppleIDURL];

  return createAppleIDURL;
}

- (id)urlRequest
{
  v36 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = AASetupAssistantCreateRequest;
  urlRequest = [(AARequest *)&v33 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = MEMORY[0x1E696AE40];
  bodyDictionary = [(AASetupAssistantCreateRequest *)self bodyDictionary];
  v32 = 0;
  v7 = [v5 dataWithPropertyList:bodyDictionary format:100 options:0 error:&v32];
  v8 = v32;

  if (v7)
  {
    [v4 setHTTPBody:v7];
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v8 localizedDescription];
      *buf = 138412290;
      v35 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    bodyDictionary2 = [(AASetupAssistantCreateRequest *)self bodyDictionary];
    v13 = [(AARequest *)self redactedBodyStringWithPropertyList:bodyDictionary2];
    *buf = 138412290;
    v35 = v13;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "CreateAppleID request body: \n%@", buf, 0xCu);
  }

  v14 = +[AADeviceInfo udid];
  [v4 setValue:v14 forHTTPHeaderField:@"Device-UDID"];

  aa_authToken = [(ACAccount *)self->_account aa_authToken];
  if (aa_authToken)
  {
    v16 = aa_authToken;
    username = [(ACAccount *)self->_account username];

    if (username)
    {
      v18 = MEMORY[0x1E696AEC0];
      aa_personID = [(ACAccount *)self->_account aa_personID];
      aa_authToken2 = [(ACAccount *)self->_account aa_authToken];
      v21 = [v18 stringWithFormat:@"%@:%@", aa_personID, aa_authToken2];

      v22 = [v21 dataUsingEncoding:4];
      v23 = [v22 base64EncodedStringWithOptions:0];

      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v23];
      [v4 addValue:v24 forHTTPHeaderField:@"Authorization"];
      v25 = _AALogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Using token auth", buf, 2u);
      }
    }
  }

  [v4 aa_signBodyData:v7 withSigningSession:self->signingSession];
  v26 = _AALogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v4 description];
    *buf = 138412290;
    v35 = v27;
    _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v28 = _AALogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v4 description];
    *buf = 138412290;
    v35 = v29;
    _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v4;
}

@end