@interface AAUpdateProvisioningRequest
- (AAUpdateProvisioningRequest)initWithAccount:(id)a3;
- (AAUpdateProvisioningRequest)initWithAccount:(id)a3 token:(id)a4;
- (AAUpdateProvisioningRequest)initWithURLString:(id)a3 account:(id)a4;
- (id)urlCredential;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUpdateProvisioningRequest

- (AAUpdateProvisioningRequest)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AAUpdateProvisioningRequest;
  v5 = [(AAUpdateProvisioningRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AAUpdateProvisioningRequest *)v5 setAccount:v4];
  }

  return v6;
}

- (AAUpdateProvisioningRequest)initWithAccount:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AAUpdateProvisioningRequest;
  v8 = [(AAUpdateProvisioningRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AAUpdateProvisioningRequest *)v8 setAccount:v6];
    [(AAUpdateProvisioningRequest *)v9 setAuthToken:v7];
  }

  return v9;
}

- (AAUpdateProvisioningRequest)initWithURLString:(id)a3 account:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AAUpdateProvisioningRequest;
  v7 = [(AARequest *)&v10 initWithURLString:a3];
  v8 = v7;
  if (v7)
  {
    [(AAUpdateProvisioningRequest *)v7 setAccount:v6];
  }

  return v8;
}

- (id)urlCredential
{
  v3 = MEMORY[0x1E695AC48];
  v4 = [(AAUpdateProvisioningRequest *)self account];
  v5 = [v4 username];
  v6 = [(AAUpdateProvisioningRequest *)self account];
  v7 = [v6 aa_authToken];
  v8 = [v3 credentialWithUser:v5 password:v7 persistence:0];

  return v8;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 fetchAccountSettingsURL];

  return v3;
}

- (id)urlRequest
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AAUpdateProvisioningRequest;
  v3 = [(AARequest *)&v19 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = [(AARequest *)self bodyDictionary];
  v6 = [v5 mutableCopy];

  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    [v6 setObject:serverInfo forKeyedSubscript:@"serverInfo"];
  }

  v18 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:100 options:0 error:&v18];
  v9 = v18;
  if (v8)
  {
    [v4 setHTTPBody:v8];
  }

  else
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 localizedDescription];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v8 length:"bytes") encoding:{objc_msgSend(v8, "length"), 4}];
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v4 setHTTPMethod:@"POST"];
  [v4 aa_addDeviceIDHeader];
  v14 = [(AAUpdateProvisioningRequest *)self account];
  v15 = [(AAUpdateProvisioningRequest *)self authToken];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:v14 authToken:v15];

  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addMultiUserDeviceHeaderIfEnabled];

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end