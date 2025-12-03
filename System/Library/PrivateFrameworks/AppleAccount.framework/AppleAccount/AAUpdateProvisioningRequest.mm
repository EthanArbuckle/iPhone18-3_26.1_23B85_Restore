@interface AAUpdateProvisioningRequest
- (AAUpdateProvisioningRequest)initWithAccount:(id)account;
- (AAUpdateProvisioningRequest)initWithAccount:(id)account token:(id)token;
- (AAUpdateProvisioningRequest)initWithURLString:(id)string account:(id)account;
- (id)urlCredential;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUpdateProvisioningRequest

- (AAUpdateProvisioningRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = AAUpdateProvisioningRequest;
  v5 = [(AAUpdateProvisioningRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AAUpdateProvisioningRequest *)v5 setAccount:accountCopy];
  }

  return v6;
}

- (AAUpdateProvisioningRequest)initWithAccount:(id)account token:(id)token
{
  accountCopy = account;
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = AAUpdateProvisioningRequest;
  v8 = [(AAUpdateProvisioningRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AAUpdateProvisioningRequest *)v8 setAccount:accountCopy];
    [(AAUpdateProvisioningRequest *)v9 setAuthToken:tokenCopy];
  }

  return v9;
}

- (AAUpdateProvisioningRequest)initWithURLString:(id)string account:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = AAUpdateProvisioningRequest;
  v7 = [(AARequest *)&v10 initWithURLString:string];
  v8 = v7;
  if (v7)
  {
    [(AAUpdateProvisioningRequest *)v7 setAccount:accountCopy];
  }

  return v8;
}

- (id)urlCredential
{
  v3 = MEMORY[0x1E695AC48];
  account = [(AAUpdateProvisioningRequest *)self account];
  username = [account username];
  account2 = [(AAUpdateProvisioningRequest *)self account];
  aa_authToken = [account2 aa_authToken];
  v8 = [v3 credentialWithUser:username password:aa_authToken persistence:0];

  return v8;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  fetchAccountSettingsURL = [v2 fetchAccountSettingsURL];

  return fetchAccountSettingsURL;
}

- (id)urlRequest
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AAUpdateProvisioningRequest;
  urlRequest = [(AARequest *)&v19 urlRequest];
  v4 = [urlRequest mutableCopy];

  bodyDictionary = [(AARequest *)self bodyDictionary];
  v6 = [bodyDictionary mutableCopy];

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
      localizedDescription = [v9 localizedDescription];
      *buf = 138412290;
      v21 = localizedDescription;
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
  account = [(AAUpdateProvisioningRequest *)self account];
  authToken = [(AAUpdateProvisioningRequest *)self authToken];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:account authToken:authToken];

  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addMultiUserDeviceHeaderIfEnabled];

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end