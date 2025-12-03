@interface AASetupAssistantUpgradeStatusRequest
- (AASetupAssistantUpgradeStatusRequest)initWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AASetupAssistantUpgradeStatusRequest

- (AASetupAssistantUpgradeStatusRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AASetupAssistantUpgradeStatusRequest;
  v6 = [(AASetupAssistantUpgradeStatusRequest *)&v9 init];
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
  upgradeStatusURL = [v2 upgradeStatusURL];

  return upgradeStatusURL;
}

- (id)urlRequest
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AASetupAssistantUpgradeStatusRequest;
  urlRequest = [(AARequest *)&v17 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = MEMORY[0x1E696AEC0];
  aa_personID = [(ACAccount *)self->_account aa_personID];
  aa_authToken = [(ACAccount *)self->_account aa_authToken];
  v8 = [v5 stringWithFormat:@"%@:%@", aa_personID, aa_authToken];

  v9 = [v8 dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-MobileMe-AuthToken %@", v10];
  [v4 addValue:v11 forHTTPHeaderField:@"Authorization"];
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Using token auth", buf, 2u);
  }

  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
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