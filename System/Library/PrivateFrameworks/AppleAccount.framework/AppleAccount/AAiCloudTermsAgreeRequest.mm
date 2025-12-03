@interface AAiCloudTermsAgreeRequest
- (AAiCloudTermsAgreeRequest)initWithURLString:(id)string account:(id)account;
- (id)urlRequest;
- (void)performRequestWithHandler:(id)handler;
- (void)urlRequest;
@end

@implementation AAiCloudTermsAgreeRequest

- (AAiCloudTermsAgreeRequest)initWithURLString:(id)string account:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = AAiCloudTermsAgreeRequest;
  v8 = [(AARequest *)&v11 initWithURLString:string];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, account);
    v9->_preferPassword = 1;
  }

  return v9;
}

- (id)urlRequest
{
  v26 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AAiCloudTermsAgreeRequest;
  urlRequest = [(AARequest *)&v23 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:self->_preferPassword];
  if (self->_account)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
    v7 = [defaultStore aida_accountForAltDSID:aa_altDSID];

    defaultStore2 = [MEMORY[0x1E6959A48] defaultStore];
    v9 = [defaultStore2 credentialForAccount:v7 serviceID:@"com.apple.gs.icloud.family.auth"];

    token = [v9 token];
    aida_alternateDSID = [v7 aida_alternateDSID];
    [v4 aa_addGrandslamAuthorizationHeaderWithAltDSID:aida_alternateDSID grandslamToken:token];
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAiCloudTermsAgreeRequest urlRequest];
    }
  }

  additionalHeaders = [(AAiCloudTermsAgreeRequest *)self additionalHeaders];

  if (additionalHeaders)
  {
    additionalHeaders2 = [(AAiCloudTermsAgreeRequest *)self additionalHeaders];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__AAiCloudTermsAgreeRequest_urlRequest__block_invoke;
    v21[3] = &unk_1E7C9C428;
    v22 = v4;
    [additionalHeaders2 enumerateKeysAndObjectsUsingBlock:v21];
  }

  v14 = objc_opt_new();
  v15 = v14;
  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    [v14 setObject:serverInfo forKeyedSubscript:@"serverInfo"];
  }

  if ([v15 count])
  {
    [v4 aa_setBodyWithParameters:v15];
  }

  v17 = _AALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v4 description];
    *buf = 138412290;
    v25 = v18;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Terms Agree Request is: %@", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)performRequestWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AAiCloudTermsAgreeRequest_performRequestWithHandler___block_invoke;
  v7[3] = &unk_1E7C9C450;
  objc_copyWeak(&v9, &location);
  v5 = handlerCopy;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = AAiCloudTermsAgreeRequest;
  [(AARequest *)&v6 performRequestWithHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__AAiCloudTermsAgreeRequest_performRequestWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 acceptedTermsInfo];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained slaVersion];

  if (v12)
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __55__AAiCloudTermsAgreeRequest_performRequestWithHandler___block_invoke_cold_1(v13);
    }

    v14 = [v10 mutableCopy];
    v15 = [WeakRetained slaVersion];
    [v14 setObject:v15 forKeyedSubscript:@"SLAVersion"];

    v16 = [v14 copy];
    v10 = v16;
  }

  if ([v8 statusCode] >= 200 && objc_msgSend(v8, "statusCode") <= 299 && v10)
  {
    v17 = objc_opt_new();
    [v17 saveTermsAcceptance:v10 forAccount:WeakRetained[8]];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)urlRequest
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);

  v8 = *MEMORY[0x1E69E9840];
}

@end