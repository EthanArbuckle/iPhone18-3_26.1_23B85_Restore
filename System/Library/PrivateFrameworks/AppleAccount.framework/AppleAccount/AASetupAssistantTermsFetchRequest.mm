@interface AASetupAssistantTermsFetchRequest
- (AASetupAssistantTermsFetchRequest)initWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AASetupAssistantTermsFetchRequest

- (AASetupAssistantTermsFetchRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AASetupAssistantTermsFetchRequest;
  v6 = [(AASetupAssistantTermsFetchRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  upgradeIOSTermsUI = [v2 upgradeIOSTermsUI];

  return upgradeIOSTermsUI;
}

- (id)urlRequest
{
  v33 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AASetupAssistantTermsFetchRequest;
  urlRequest = [(AARequest *)&v30 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  username = [(ACAccount *)self->_account username];
  v6 = username;
  if (username)
  {
    username2 = username;
  }

  else
  {
    username2 = [(ACAccount *)self->_account username];
  }

  v8 = username2;
  aa_password = [(ACAccount *)self->_account aa_password];

  v10 = MEMORY[0x1E696AEC0];
  account = self->_account;
  if (aa_password)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    aa_personID = [(ACAccount *)account aa_personID];
    aa_authToken = [(ACAccount *)self->_account aa_authToken];
    v20 = [v10 stringWithFormat:@"%@:%@", aa_personID, aa_authToken];

    v15 = [v20 dataUsingEncoding:4];
    v22 = [v15 base64EncodedStringWithOptions:0];

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-MobileMe-AuthToken %@", v22];
    [v4 addValue:v23 forHTTPHeaderField:@"Authorization"];
    v24 = _AALogSystem();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Using token auth";
    v17 = v24;
    v18 = 2;
    goto LABEL_13;
  }

  aa_password2 = [(ACAccount *)account aa_password];
  v20 = [v10 stringWithFormat:@"%@:%@", v8, aa_password2];

  v21 = [v20 dataUsingEncoding:4];
  v22 = [v21 base64EncodedStringWithOptions:0];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v22];
  [v4 addValue:v23 forHTTPHeaderField:@"Authorization"];
  v24 = _AALogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v8;
    v16 = "Using password auth - username: %@";
    v17 = v24;
    v18 = 12;
LABEL_13:
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
  }

LABEL_14:

  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v26 = _AALogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v4 description];
    *buf = 138412290;
    v32 = v27;
    _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v4;
}

@end