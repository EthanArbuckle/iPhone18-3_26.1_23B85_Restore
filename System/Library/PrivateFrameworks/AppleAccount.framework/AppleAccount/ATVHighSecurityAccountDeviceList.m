@interface ATVHighSecurityAccountDeviceList
- (id)urlRequest;
- (id)urlString;
@end

@implementation ATVHighSecurityAccountDeviceList

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 deviceListURL];

  return v3;
}

- (id)urlRequest
{
  v25 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = ATVHighSecurityAccountDeviceList;
  v3 = [(AARequest *)&v22 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(ACAccount *)self->super._account aa_password];
  if (v5 && (v6 = v5, [(ACAccount *)self->super._account username], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [(ACAccount *)self->super._account username];
    v11 = [(ACAccount *)self->super._account aa_password];
    v12 = [v9 stringWithFormat:@"%@:%@", v10, v11];

    v13 = 1;
  }

  else
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "ERROR: Missing account username or password", buf, 2u);
    }

    v13 = 0;
    v12 = 0;
  }

  v14 = [v12 dataUsingEncoding:4];
  v15 = [v14 base64EncodedStringWithOptions:0];

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v15];
  [v4 addValue:v16 forHTTPHeaderField:@"Authorization"];
  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v17 = _AALogSystem();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v18)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Authorization: *redacted*", buf, 2u);
    }
  }

  else if (v18)
  {
    v19 = [v4 valueForHTTPHeaderField:@"Authorization"];
    *buf = 138412290;
    v24 = v19;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

@end