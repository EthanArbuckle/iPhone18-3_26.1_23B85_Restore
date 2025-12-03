@interface AALoginAccountRequest
- (AALoginAccountRequest)initWithAccount:(id)account delegates:(id)delegates;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AALoginAccountRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  loginAccountURL = [v2 loginAccountURL];

  return loginAccountURL;
}

- (AALoginAccountRequest)initWithAccount:(id)account delegates:(id)delegates
{
  accountCopy = account;
  delegatesCopy = delegates;
  v12.receiver = self;
  v12.super_class = AALoginAccountRequest;
  v9 = [(AALoginAccountRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_delegatesInfo, delegates);
  }

  return v10;
}

- (id)urlRequest
{
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AALoginAccountRequest;
  urlRequest = [(AARequest *)&v21 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v20.receiver = self;
  v20.super_class = AALoginAccountRequest;
  bodyDictionary = [(AARequest *)&v20 bodyDictionary];
  v6 = [bodyDictionary mutableCopy];

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
  _aa_appProvidedContext = [(ACAccount *)self->_account _aa_appProvidedContext];

  if (_aa_appProvidedContext)
  {
    _aa_appProvidedContext2 = [(ACAccount *)self->_account _aa_appProvidedContext];
    [v4 ak_addAppProvidedContext:_aa_appProvidedContext2];

    [(ACAccount *)self->_account _aa_setAppProvidedContext:0];
  }

  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 description];
    v14 = objc_opt_class();
    allHTTPHeaderFields = [v4 allHTTPHeaderFields];
    v16 = [v14 redactedHeadersFromHTTPHeaders:allHTTPHeaderFields];
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