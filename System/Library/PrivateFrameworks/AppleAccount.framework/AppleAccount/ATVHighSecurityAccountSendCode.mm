@interface ATVHighSecurityAccountSendCode
- (ATVHighSecurityAccountSendCode)initWithAccount:(id)account device:(id)device;
- (id)urlRequest;
- (id)urlString;
@end

@implementation ATVHighSecurityAccountSendCode

- (ATVHighSecurityAccountSendCode)initWithAccount:(id)account device:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = ATVHighSecurityAccountSendCode;
  v8 = [(AAAppleTVRequest *)&v11 initWithAccount:account];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
  }

  return v9;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  sendCodeURL = [v2 sendCodeURL];

  return sendCodeURL;
}

- (id)urlRequest
{
  v33 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = ATVHighSecurityAccountSendCode;
  urlRequest = [(AARequest *)&v30 urlRequest];
  v4 = [urlRequest mutableCopy];

  device = self->_device;
  v29 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:device format:100 options:0 error:&v29];
  v7 = v29;
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
      v32 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v6 length:"bytes") encoding:{objc_msgSend(v6, "length"), 4}];
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v10;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v4 setHTTPMethod:@"POST"];
  aa_password = [(ACAccount *)self->super._account aa_password];
  if (aa_password && (v13 = aa_password, [(ACAccount *)self->super._account username], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
    }

    v16 = MEMORY[0x1E696AEC0];
    username = [(ACAccount *)self->super._account username];
    aa_password2 = [(ACAccount *)self->super._account aa_password];
    v19 = [v16 stringWithFormat:@"%@:%@", username, aa_password2];

    v20 = 1;
  }

  else
  {
    username = _AALogSystem();
    if (os_log_type_enabled(username, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, username, OS_LOG_TYPE_DEFAULT, "ERROR: Missing account username or password", buf, 2u);
    }

    v20 = 0;
    v19 = 0;
  }

  v21 = [v19 dataUsingEncoding:4];
  v22 = [v21 base64EncodedStringWithOptions:0];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v22];
  [v4 addValue:v23 forHTTPHeaderField:@"Authorization"];
  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v24 = _AALogSystem();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "Authorization: *redacted*", buf, 2u);
    }
  }

  else if (v25)
  {
    v26 = [v4 valueForHTTPHeaderField:@"Authorization"];
    *buf = 138412290;
    v32 = v26;
    _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v4;
}

@end