@interface TokenChallenger
- (TokenChallenger)initWithToken:(id)a3 components:(id)a4 fdrTypes:(id)a5 endpoint:(id)a6 signer:(id)a7;
- (id)baseURL:(id)a3;
- (id)description;
- (id)localizedComponents;
- (id)localizedComponentsMap;
- (int64_t)_sanityCheckBuddyMLResponse:(id)a3 data:(id)a4;
- (int64_t)constructChallengeRequestDataWithToken:(id)a3 data:(id *)a4;
- (void)_requestBuddyML:(id)a3 session:(id)a4 completion:(id)a5;
- (void)fetchPasswordWithCompletion:(id)a3;
@end

@implementation TokenChallenger

- (TokenChallenger)initWithToken:(id)a3 components:(id)a4 fdrTypes:(id)a5 endpoint:(id)a6 signer:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = TokenChallenger;
  v17 = [(TokenChallenger *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_token, a3);
    objc_storeStrong(&v18->_signer, a7);
    objc_storeStrong(&v18->_endpoint, a6);
    objc_storeStrong(&v18->_components, a4);
    objc_storeStrong(&v18->_fdrTypes, a5);
    v19 = [(TokenChallenger *)v18 baseURL:v15];
    endpointBaseURL = v18->_endpointBaseURL;
    v18->_endpointBaseURL = v19;

    v18->_isTokenUnlocked = 0;
  }

  return v18;
}

- (void)fetchPasswordWithCompletion:(id)a3
{
  v4 = a3;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TokenChallenger *)self token];
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching password UI with token: %@", buf, 0xCu);
  }

  v7 = [(TokenChallenger *)self token];
  v18 = 0;
  v8 = [(TokenChallenger *)self constructChallengeRequestDataWithToken:v7 data:&v18];
  v9 = v18;

  if (v8)
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE8C();
    }

    v4[2](v4, 0, v8);
  }

  else
  {
    v11 = [(TokenChallenger *)self endpoint];
    v12 = [NSMutableURLRequest requestWithURL:v11];

    [v12 setHTTPMethod:@"POST"];
    [v12 setHTTPBody:v9];
    [v12 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    v13 = +[NSLocale preferredLanguages];
    v14 = [v13 firstObject];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"en";
    }

    [v12 setValue:v16 forHTTPHeaderField:@"Accept-Language"];

    v17 = +[NSURLSession sharedSession];
    [(TokenChallenger *)self _requestBuddyML:v12 session:v17 completion:v4];
  }
}

- (int64_t)constructChallengeRequestDataWithToken:(id)a3 data:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v29 = @"Token";
    v30 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v26 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:100 options:0 error:&v26];
    v10 = v26;
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 == 0;
    }

    if (v11)
    {
      v12 = v10;
      v13 = handleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000CEFC();
      }

      v14 = -108;
    }

    else
    {
      v15 = [(TokenChallenger *)self signer];
      v16 = [v15 baaCert];

      if (v16)
      {
        v17 = [(TokenChallenger *)self signer];
        v13 = [v17 signData:v9];

        if (v13)
        {
          v28[0] = v9;
          v27[0] = @"Payload";
          v27[1] = @"RKCertification";
          v18 = [(TokenChallenger *)self signer];
          v19 = [v18 baaCert];
          v27[2] = @"RKSignature";
          v28[1] = v19;
          v28[2] = v13;
          v20 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

          v25 = 0;
          v21 = [NSPropertyListSerialization dataWithPropertyList:v20 format:100 options:0 error:&v25];
          v12 = v25;
          if (v12)
          {
            v22 = handleForCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_10000CF6C();
            }

            v14 = -108;
          }

          else if (a4)
          {
            v23 = v21;
            v14 = 0;
            *a4 = v21;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v13 = handleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10000CFDC();
          }

          v12 = 0;
          v14 = -110;
        }
      }

      else
      {
        v13 = handleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10000D018();
        }

        v12 = 0;
        v14 = -109;
      }
    }
  }

  else
  {
    v14 = -309;
  }

  return v14;
}

- (id)localizedComponents
{
  v3 = +[NSMutableArray array];
  v4 = [(TokenChallenger *)self components];

  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(TokenChallenger *)self components];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [CRDeviceMap getComponentNameWithSPC:*(*(&v12 + 1) + 8 * i)];
          [v3 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v3;
}

- (id)localizedComponentsMap
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(TokenChallenger *)self components];
  v5 = [v4 count];
  v6 = [(TokenChallenger *)self fdrTypes];
  v7 = [v6 count];

  if (v5 == v7)
  {
    v8 = [(TokenChallenger *)self fdrTypes];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [(TokenChallenger *)self fdrTypes];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [(TokenChallenger *)self components];
        v14 = [v13 objectAtIndexedSubscript:v10];

        v15 = [CRDeviceMap getComponentNameWithSPC:v14];
        [v3 setObject:v15 forKeyedSubscript:v12];

        ++v10;
        v16 = [(TokenChallenger *)self fdrTypes];
        v17 = [v16 count];
      }

      while (v10 < v17);
    }
  }

  else
  {
    v18 = handleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000D054(self, v18);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [(TokenChallenger *)self fdrTypes];
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v3 setObject:*(*(&v25 + 1) + 8 * i) forKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v21);
    }
  }

  return v3;
}

- (void)_requestBuddyML:(id)a3 session:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 URL];
    *buf = 138543362;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request URL: %{public}@", buf, 0xCu);
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v8 allHTTPHeaderFields];
    *buf = 138543362;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Request Headers: %{public}@", buf, 0xCu);
  }

  v15 = [v8 HTTPBody];

  if (v15)
  {
    v16 = handleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [NSString alloc];
      v18 = [v8 HTTPBody];
      v19 = [v17 initWithData:v18 encoding:4];
      *buf = 138477827;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request Body: %{private}@", buf, 0xCu);
    }
  }

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100005500;
  v25 = &unk_100018920;
  v26 = self;
  v27 = v10;
  v20 = v10;
  v21 = [v9 dataTaskWithRequest:v8 completionHandler:&v22];
  [v21 resume];
}

- (int64_t)_sanityCheckBuddyMLResponse:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D2A8();
    }

    goto LABEL_10;
  }

  if (!v6)
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D26C();
    }

LABEL_10:
    v12 = -306;
LABEL_17:

    goto LABEL_18;
  }

  v8 = [v5 MIMEType];
  v9 = [v8 isEqualToString:@"application/x-buddyml"];

  if ((v9 & 1) == 0)
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D19C(v5, v13);
    }

    v12 = -307;
    goto LABEL_17;
  }

  v10 = [[NSString alloc] initWithData:v7 encoding:4];
  v11 = [v10 containsString:@"<xmlui"];

  if ((v11 & 1) == 0)
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D230();
    }

    v12 = -308;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)baseURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 scheme];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 host];

  if (v6)
  {
    v7 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:0];
    [v7 setPath:&stru_100018C40];
    [v7 setQuery:0];
    [v7 setFragment:0];
    v5 = [v7 URL];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TokenChallenger *)self token];
  v6 = [(TokenChallenger *)self localizedComponentsMap];
  v7 = [v6 allKeys];
  v8 = [NSString stringWithFormat:@"<%@: token = %@, components = %@>", v4, v5, v7];

  return v8;
}

@end