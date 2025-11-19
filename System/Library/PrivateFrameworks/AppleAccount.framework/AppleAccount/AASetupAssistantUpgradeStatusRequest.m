@interface AASetupAssistantUpgradeStatusRequest
- (AASetupAssistantUpgradeStatusRequest)initWithAccount:(id)a3;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AASetupAssistantUpgradeStatusRequest

- (AASetupAssistantUpgradeStatusRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AASetupAssistantUpgradeStatusRequest;
  v6 = [(AASetupAssistantUpgradeStatusRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  v3 = [v2 upgradeStatusURL];

  return v3;
}

- (id)urlRequest
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AASetupAssistantUpgradeStatusRequest;
  v3 = [(AARequest *)&v17 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(ACAccount *)self->_account aa_personID];
  v7 = [(ACAccount *)self->_account aa_authToken];
  v8 = [v5 stringWithFormat:@"%@:%@", v6, v7];

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