@interface ATVHighSecurityAccountVerifyCode
- (ATVHighSecurityAccountVerifyCode)initWithAccount:(id)a3 device:(id)a4 hsaCode:(id)a5;
- (id)urlRequest;
- (id)urlString;
@end

@implementation ATVHighSecurityAccountVerifyCode

- (ATVHighSecurityAccountVerifyCode)initWithAccount:(id)a3 device:(id)a4 hsaCode:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ATVHighSecurityAccountVerifyCode;
  v10 = [(ATVHighSecurityAccountSendCode *)&v13 initWithAccount:a3 device:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_hsaCode, a5);
  }

  return v11;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 verifyCodeURL];

  return v3;
}

- (id)urlRequest
{
  v34 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = ATVHighSecurityAccountVerifyCode;
  v3 = [(ATVHighSecurityAccountSendCode *)&v31 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = [(NSDictionary *)self->super._device mutableCopy];
  [v5 setValue:self->_hsaCode forKey:@"hsaCode"];
  v30 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v30];
  v7 = v30;
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
      v33 = v9;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v29 = v7;
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v6 length:"bytes") encoding:{objc_msgSend(v6, "length"), 4}];
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v10;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v4 setHTTPMethod:@"POST"];
  v12 = [(ACAccount *)self->super.super._account aa_password];
  if (v12 && (v13 = v12, [(ACAccount *)self->super.super._account username], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [(ACAccount *)self->super.super._account username];
    v18 = [(ACAccount *)self->super.super._account aa_password];
    v19 = [v16 stringWithFormat:@"%@:%@", v17, v18, v7];

    v20 = 1;
  }

  else
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "ERROR: Missing account username or password", buf, 2u);
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
    v33 = v26;
    _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v4;
}

@end