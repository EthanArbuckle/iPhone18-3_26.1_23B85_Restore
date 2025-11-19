@interface AAiCloudTermsDisagreeRequest
- (AAiCloudTermsDisagreeRequest)initWithURLString:(id)a3 account:(id)a4;
- (id)urlRequest;
@end

@implementation AAiCloudTermsDisagreeRequest

- (AAiCloudTermsDisagreeRequest)initWithURLString:(id)a3 account:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AAiCloudTermsDisagreeRequest;
  v8 = [(AARequest *)&v11 initWithURLString:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, a4);
    v9->_preferPassword = 1;
  }

  return v9;
}

- (id)urlRequest
{
  v26 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AAiCloudTermsDisagreeRequest;
  v3 = [(AARequest *)&v23 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:self->_preferPassword];
  if (self->_account)
  {
    v5 = [MEMORY[0x1E6959A48] defaultStore];
    v6 = [(ACAccount *)self->_account aa_altDSID];
    v7 = [v5 aida_accountForAltDSID:v6];

    v8 = [MEMORY[0x1E6959A48] defaultStore];
    v9 = [v8 credentialForAccount:v7 serviceID:@"com.apple.gs.icloud.family.auth"];

    v10 = [v9 token];
    v11 = [v7 aida_alternateDSID];
    [v4 aa_addGrandslamAuthorizationHeaderWithAltDSID:v11 grandslamToken:v10];
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAiCloudTermsAgreeRequest urlRequest];
    }
  }

  v12 = [(AAiCloudTermsDisagreeRequest *)self additionalHeaders];

  if (v12)
  {
    v13 = [(AAiCloudTermsDisagreeRequest *)self additionalHeaders];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42__AAiCloudTermsDisagreeRequest_urlRequest__block_invoke;
    v21[3] = &unk_1E7C9C428;
    v22 = v4;
    [v13 enumerateKeysAndObjectsUsingBlock:v21];
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
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Terms Disagree Request is: %@", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

@end