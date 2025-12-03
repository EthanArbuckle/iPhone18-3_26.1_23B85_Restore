@interface TokenChallenger
- (TokenChallenger)initWithToken:(id)token components:(id)components fdrTypes:(id)types endpoint:(id)endpoint signer:(id)signer;
- (id)baseURL:(id)l;
- (id)description;
- (id)localizedComponents;
- (id)localizedComponentsMap;
- (int64_t)_sanityCheckBuddyMLResponse:(id)response data:(id)data;
- (int64_t)constructChallengeRequestDataWithToken:(id)token data:(id *)data;
- (void)_requestBuddyML:(id)l session:(id)session completion:(id)completion;
- (void)fetchPasswordWithCompletion:(id)completion;
@end

@implementation TokenChallenger

- (TokenChallenger)initWithToken:(id)token components:(id)components fdrTypes:(id)types endpoint:(id)endpoint signer:(id)signer
{
  tokenCopy = token;
  componentsCopy = components;
  typesCopy = types;
  endpointCopy = endpoint;
  signerCopy = signer;
  v23.receiver = self;
  v23.super_class = TokenChallenger;
  v17 = [(TokenChallenger *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_token, token);
    objc_storeStrong(&v18->_signer, signer);
    objc_storeStrong(&v18->_endpoint, endpoint);
    objc_storeStrong(&v18->_components, components);
    objc_storeStrong(&v18->_fdrTypes, types);
    v19 = [(TokenChallenger *)v18 baseURL:endpointCopy];
    endpointBaseURL = v18->_endpointBaseURL;
    v18->_endpointBaseURL = v19;

    v18->_isTokenUnlocked = 0;
  }

  return v18;
}

- (void)fetchPasswordWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    token = [(TokenChallenger *)self token];
    *buf = 138412290;
    v20 = token;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching password UI with token: %@", buf, 0xCu);
  }

  token2 = [(TokenChallenger *)self token];
  v18 = 0;
  v8 = [(TokenChallenger *)self constructChallengeRequestDataWithToken:token2 data:&v18];
  v9 = v18;

  if (v8)
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE8C();
    }

    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    endpoint = [(TokenChallenger *)self endpoint];
    v12 = [NSMutableURLRequest requestWithURL:endpoint];

    [v12 setHTTPMethod:@"POST"];
    [v12 setHTTPBody:v9];
    [v12 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    v13 = +[NSLocale preferredLanguages];
    firstObject = [v13 firstObject];
    v15 = firstObject;
    if (firstObject)
    {
      v16 = firstObject;
    }

    else
    {
      v16 = @"en";
    }

    [v12 setValue:v16 forHTTPHeaderField:@"Accept-Language"];

    v17 = +[NSURLSession sharedSession];
    [(TokenChallenger *)self _requestBuddyML:v12 session:v17 completion:completionCopy];
  }
}

- (int64_t)constructChallengeRequestDataWithToken:(id)token data:(id *)data
{
  tokenCopy = token;
  v7 = tokenCopy;
  if (tokenCopy)
  {
    v29 = @"Token";
    v30 = tokenCopy;
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
      signer = [(TokenChallenger *)self signer];
      baaCert = [signer baaCert];

      if (baaCert)
      {
        signer2 = [(TokenChallenger *)self signer];
        v13 = [signer2 signData:v9];

        if (v13)
        {
          v28[0] = v9;
          v27[0] = @"Payload";
          v27[1] = @"RKCertification";
          signer3 = [(TokenChallenger *)self signer];
          baaCert2 = [signer3 baaCert];
          v27[2] = @"RKSignature";
          v28[1] = baaCert2;
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

          else if (data)
          {
            v23 = v21;
            v14 = 0;
            *data = v21;
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
  components = [(TokenChallenger *)self components];

  if (components)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    components2 = [(TokenChallenger *)self components];
    v6 = [components2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(components2);
          }

          v10 = [CRDeviceMap getComponentNameWithSPC:*(*(&v12 + 1) + 8 * i)];
          [v3 addObject:v10];
        }

        v7 = [components2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v3;
}

- (id)localizedComponentsMap
{
  v3 = +[NSMutableDictionary dictionary];
  components = [(TokenChallenger *)self components];
  v5 = [components count];
  fdrTypes = [(TokenChallenger *)self fdrTypes];
  v7 = [fdrTypes count];

  if (v5 == v7)
  {
    fdrTypes2 = [(TokenChallenger *)self fdrTypes];
    v9 = [fdrTypes2 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        fdrTypes3 = [(TokenChallenger *)self fdrTypes];
        v12 = [fdrTypes3 objectAtIndexedSubscript:v10];

        components2 = [(TokenChallenger *)self components];
        v14 = [components2 objectAtIndexedSubscript:v10];

        v15 = [CRDeviceMap getComponentNameWithSPC:v14];
        [v3 setObject:v15 forKeyedSubscript:v12];

        ++v10;
        fdrTypes4 = [(TokenChallenger *)self fdrTypes];
        v17 = [fdrTypes4 count];
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
    fdrTypes5 = [(TokenChallenger *)self fdrTypes];
    v20 = [fdrTypes5 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(fdrTypes5);
          }

          [v3 setObject:*(*(&v25 + 1) + 8 * i) forKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
        }

        v21 = [fdrTypes5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v21);
    }
  }

  return v3;
}

- (void)_requestBuddyML:(id)l session:(id)session completion:(id)completion
{
  lCopy = l;
  sessionCopy = session;
  completionCopy = completion;
  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [lCopy URL];
    *buf = 138543362;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request URL: %{public}@", buf, 0xCu);
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    allHTTPHeaderFields = [lCopy allHTTPHeaderFields];
    *buf = 138543362;
    v29 = allHTTPHeaderFields;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Request Headers: %{public}@", buf, 0xCu);
  }

  hTTPBody = [lCopy HTTPBody];

  if (hTTPBody)
  {
    v16 = handleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [NSString alloc];
      hTTPBody2 = [lCopy HTTPBody];
      v19 = [v17 initWithData:hTTPBody2 encoding:4];
      *buf = 138477827;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request Body: %{private}@", buf, 0xCu);
    }
  }

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100005500;
  v25 = &unk_100018920;
  selfCopy = self;
  v27 = completionCopy;
  v20 = completionCopy;
  v21 = [sessionCopy dataTaskWithRequest:lCopy completionHandler:&v22];
  [v21 resume];
}

- (int64_t)_sanityCheckBuddyMLResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v7 = dataCopy;
  if (!responseCopy)
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D2A8();
    }

    goto LABEL_10;
  }

  if (!dataCopy)
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

  mIMEType = [responseCopy MIMEType];
  v9 = [mIMEType isEqualToString:@"application/x-buddyml"];

  if ((v9 & 1) == 0)
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D19C(responseCopy, v13);
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

- (id)baseURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
    goto LABEL_5;
  }

  scheme = [lCopy scheme];
  if (!scheme)
  {
    goto LABEL_6;
  }

  host = [v4 host];

  if (host)
  {
    v7 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:0];
    [v7 setPath:&stru_100018C40];
    [v7 setQuery:0];
    [v7 setFragment:0];
    scheme = [v7 URL];
  }

  else
  {
LABEL_5:
    scheme = 0;
  }

LABEL_6:

  return scheme;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  token = [(TokenChallenger *)self token];
  localizedComponentsMap = [(TokenChallenger *)self localizedComponentsMap];
  allKeys = [localizedComponentsMap allKeys];
  v8 = [NSString stringWithFormat:@"<%@: token = %@, components = %@>", v4, token, allKeys];

  return v8;
}

@end