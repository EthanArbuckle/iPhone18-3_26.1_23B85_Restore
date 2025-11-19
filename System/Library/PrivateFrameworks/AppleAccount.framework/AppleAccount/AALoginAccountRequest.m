@interface AALoginAccountRequest
- (AALoginAccountRequest)initWithAccount:(id)a3 delegates:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AALoginAccountRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 loginAccountURL];

  return v3;
}

- (AALoginAccountRequest)initWithAccount:(id)a3 delegates:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AALoginAccountRequest;
  v9 = [(AALoginAccountRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_delegatesInfo, a4);
  }

  return v10;
}

- (id)urlRequest
{
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AALoginAccountRequest;
  v3 = [(AARequest *)&v21 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v20.receiver = self;
  v20.super_class = AALoginAccountRequest;
  v5 = [(AARequest *)&v20 bodyDictionary];
  v6 = [v5 mutableCopy];

  [v6 setValue:self->_delegatesInfo forKey:@"delegates"];
  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    [v6 setObject:serverInfo forKeyedSubscript:@"serverInfo"];
  }

  v8 = [v4 aa_setXMLBodyWithParameters:v6];
  [v4 aa_addDeviceIDHeader];
  v9 = +[AADeviceInfo udid];
  [v4 setValue:v9 forHTTPHeaderField:@"Device-UDID"];

  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:1];
  [v4 aa_addDeviceProvisioningInfoHeadersWithAccount:self->_account];
  [v4 aa_addMultiUserDeviceHeaderIfEnabled];
  [v4 ak_addDeviceConfigurationModeHeader];
  v10 = [(ACAccount *)self->_account _aa_appProvidedContext];

  if (v10)
  {
    v11 = [(ACAccount *)self->_account _aa_appProvidedContext];
    [v4 ak_addAppProvidedContext:v11];

    [(ACAccount *)self->_account _aa_setAppProvidedContext:0];
  }

  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 description];
    v14 = objc_opt_class();
    v15 = [v4 allHTTPHeaderFields];
    v16 = [v14 redactedHeadersFromHTTPHeaders:v15];
    v17 = [(AARequest *)self redactedBodyStringWithPropertyList:v6];
    *buf = 138412802;
    v23 = v13;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginAccountRequest %@\nHTTP Headers: %@\nBody: \n%@", buf, 0x20u);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

@end