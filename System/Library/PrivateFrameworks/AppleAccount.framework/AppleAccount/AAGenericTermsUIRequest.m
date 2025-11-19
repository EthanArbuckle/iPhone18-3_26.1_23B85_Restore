@interface AAGenericTermsUIRequest
- (AAGenericTermsUIRequest)initWithAccount:(id)a3 parameters:(id)a4 preferPassword:(BOOL)a5;
- (AAGenericTermsUIRequest)initWithAccount:(id)a3 termsEntries:(id)a4;
- (id)_requestParamsForTermsEntries:(id)a3 additionalInfo:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAGenericTermsUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 genericTermsURL];

  return v3;
}

- (AAGenericTermsUIRequest)initWithAccount:(id)a3 parameters:(id)a4 preferPassword:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = AAGenericTermsUIRequest;
  v11 = [(AAGenericTermsUIRequest *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    requestDictionary = v11->_requestDictionary;
    v11->_requestDictionary = v12;

    objc_storeStrong(&v11->_account, a3);
    v11->_preferPassword = a5;
  }

  return v11;
}

- (AAGenericTermsUIRequest)initWithAccount:(id)a3 termsEntries:(id)a4
{
  v6 = a3;
  v7 = [(AAGenericTermsUIRequest *)self _requestParamsForTermsEntries:a4];
  v8 = [(AAGenericTermsUIRequest *)self initWithAccount:v6 parameters:v7];

  return v8;
}

- (id)_requestParamsForTermsEntries:(id)a3 additionalInfo:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v20 = v5;
    v7 = [v5 mutableCopy];
    [v7 addObject:@"iCloud"];
    if ([v7 containsObject:@"iOSWarranty"] && (objc_msgSend(v7, "containsObject:", @"HomePodSLA") & 1) == 0)
    {
      [v7 addObject:@"iOS"];
    }

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_opt_new();
          [v15 setObject:v14 forKeyedSubscript:@"name"];
          v16 = [v6 objectForKeyedSubscript:v14];
          if (v16)
          {
            [v15 addEntriesFromDictionary:v16];
          }

          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v25[0] = @"terms";
    v25[1] = @"format";
    v26[0] = v8;
    v26[1] = @"plist/buddyml";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

    v5 = v20;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)urlRequest
{
  v42 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = AAGenericTermsUIRequest;
  v3 = [(AARequest *)&v39 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(NSDictionary *)self->_requestDictionary mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    [v8 setObject:serverInfo forKeyedSubscript:@"serverInfo"];
  }

  v38 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:100 options:0 error:&v38];
  v11 = v38;
  if (!v10)
  {
    v12 = _AALogSystem();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v13 = [v11 localizedDescription];
    *buf = 138412290;
    v41 = v13;
    v14 = "No data body to set on HTTP request: %@";
    v15 = v12;
    goto LABEL_11;
  }

  [v4 setHTTPBody:v10];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v10 length:"bytes") encoding:{objc_msgSend(v10, "length"), 4}];
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v12;
    v14 = "Request body:%@";
    v15 = v13;
LABEL_11:
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
  }

LABEL_13:
  account = self->_account;
  if (account)
  {
    if (![v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:account preferUsingPassword:self->_preferPassword])
    {
      v30 = 0;
      goto LABEL_26;
    }

    v17 = [(ACAccount *)self->_account _aa_appProvidedContext];

    if (v17)
    {
      v18 = _AALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(ACAccount *)self->_account _aa_appProvidedContext];
        *buf = 138412290;
        v41 = v19;
        _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Apple account contains an app provided context to add to the request: %@", buf, 0xCu);
      }

      v20 = [(ACAccount *)self->_account _aa_appProvidedContext];
      [v4 ak_addAppProvidedContext:v20];

      [(ACAccount *)self->_account _aa_setAppProvidedContext:0];
    }

    v21 = [MEMORY[0x1E6959A48] defaultStore];
    v22 = [(ACAccount *)self->_account aa_altDSID];
    v23 = [v21 aida_accountForAltDSID:v22];

    if (v23)
    {
      v24 = [MEMORY[0x1E6959A48] defaultStore];
      v25 = [v24 credentialForAccount:v23 serviceID:@"com.apple.gs.icloud.family.auth"];

      v26 = [v25 token];
      v27 = [v23 aida_alternateDSID];
      [v4 aa_addGrandslamAuthorizationHeaderWithAltDSID:v27 grandslamToken:v26];
    }
  }

  v28 = [(AAGenericTermsUIRequest *)self additionalHeaders];

  if (v28)
  {
    v29 = [(AAGenericTermsUIRequest *)self additionalHeaders];
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __37__AAGenericTermsUIRequest_urlRequest__block_invoke;
    v36 = &unk_1E7C9C428;
    v37 = v4;
    [v29 enumerateKeysAndObjectsUsingBlock:&v33];
  }

  [v4 setValue:@"text/plist" forHTTPHeaderField:{@"Content-Type", v33, v34, v35, v36}];
  v30 = v4;
LABEL_26:

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

@end