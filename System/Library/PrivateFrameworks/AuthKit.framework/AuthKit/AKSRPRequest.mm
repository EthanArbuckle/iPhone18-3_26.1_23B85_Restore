@interface AKSRPRequest
+ (BOOL)_performRequestWithURL:(id)a3 context:(id)a4 error:(__CFError *)a5;
- (AKSRPRequest)initWithURL:(id)a3 contextHelper:(id)a4 completionHandler:(id)a5;
- (NSDictionary)dispatchingInfo;
- (id)_tokenGenerationInfoForContext:(id)a3;
- (id)_urlRequestFromAuthParameters:(id)a3;
- (void)_attachAdditionalHeaders:(id)a3 toContextHelper:(id)a4;
- (void)_performRequestWithContext:(id)a3 responseHandler:(id)a4;
- (void)executeWithResponseHandler:(id)a3;
- (void)handleResponseCode;
- (void)invalidateWithError:(id)a3;
@end

@implementation AKSRPRequest

- (AKSRPRequest)initWithURL:(id)a3 contextHelper:(id)a4 completionHandler:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v5 = v21;
  v21 = 0;
  v17.receiver = v5;
  v17.super_class = AKSRPRequest;
  v21 = [(AKSRPRequest *)&v17 init];
  objc_storeStrong(&v21, v21);
  if (v21)
  {
    objc_storeStrong(&v21->_url, location[0]);
    objc_storeStrong(&v21->_contextHelper, v19);
    v6 = objc_retainBlock(v18);
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v6;
    _objc_release(completionHandler);
    objc_storeStrong(&v21->_criticalTokenError, 0);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.akd.srp-request", v14);
    queue = v21->_queue;
    v21->_queue = v8;
    _objc_release(queue);
    _objc_release(v14);
    v10 = objc_alloc_init(AKServerBackoffHelper);
    serverBackoffHelper = v21->_serverBackoffHelper;
    v21->_serverBackoffHelper = v10;
    _objc_release(serverBackoffHelper);
  }

  v13 = _objc_retain(v21);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v13;
}

- (NSDictionary)dispatchingInfo
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [[NSMutableDictionary alloc] initWithCapacity:3];
  v4 = [(AKSRPContextHelper *)v11->_contextHelper client];
  v3 = [(AKClient *)v4 name];
  [v10[0] setObject:? forKeyedSubscript:?];
  _objc_release(v3);
  _objc_release(v4);
  v6 = [(AKSRPContextHelper *)v11->_contextHelper authContext];
  v5 = [(AKAuthenticationContext *)v6 _proxiedAppName];
  [v10[0] setObject:? forKeyedSubscript:?];
  _objc_release(v5);
  _objc_release(v6);
  v8 = [(AKSRPContextHelper *)v11->_contextHelper authContext];
  v7 = [NSNumber numberWithInteger:[(AKAuthenticationContext *)v8 serviceType]];
  [v10[0] setObject:? forKeyedSubscript:?];
  _objc_release(v7);
  _objc_release(v8);
  v9 = [v10[0] copy];
  objc_storeStrong(v10, 0);

  return v9;
}

- (void)executeWithResponseHandler:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v15;
  v5 = [(AKSRPRequest *)v15 additionalHeaders];
  contextHelper = v15->_contextHelper;
  [AKSRPRequest _attachAdditionalHeaders:v4 toContextHelper:"_attachAdditionalHeaders:toContextHelper:"];
  _objc_release(v5);
  v6 = v15->_contextHelper;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100188DC8;
  v11 = &unk_100320A58;
  v12 = _objc_retain(v15);
  v13 = _objc_retain(location[0]);
  [(AKSRPContextHelper *)v6 authenticationParametersWithCompletion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)handleResponseCode
{
  v2 = [(AKSRPRequest *)self responseCode];
  v4 = [(AKSRPRequest *)self contextHelper];
  v3 = [(AKSRPContextHelper *)v4 altDSID];
  [AKCommonResponseCodeHandler handleResponseCode:v2 altDSID:?];
  _objc_release(v3);
  _objc_release(v4);
}

- (void)invalidateWithError:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(v4->_completionHandler + 2))();
  objc_storeStrong(location, 0);
}

- (void)_performRequestWithContext:(id)a3 responseHandler:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001895B0;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_tokenGenerationInfoForContext:(id)a3
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = objc_opt_class();
  v13 = [location[0] configurationParameters];
  v12 = [v13 objectForKeyedSubscript:kAppleIDAuthSupportClientProvidedData];
  v33 = sub_100189E44(v11, v12);
  _objc_release(v12);
  _objc_release(v13);
  v32 = +[AKAccountManager sharedInstance];
  v14 = [(AKSRPContextHelper *)v35->_contextHelper altDSID];
  v31 = [v32 authKitAccountWithAltDSID:? error:?];
  _objc_release(v14);
  v15 = objc_opt_class();
  v17 = [v33 objectForKeyedSubscript:AKContinutationKeyGenKey];
  v16 = sub_100189E44(v15, v17);
  v18 = [v16 BOOLValue];
  _objc_release(v16);
  _objc_release(v17);
  v30 = v18;
  v19 = objc_opt_class();
  v21 = [v33 objectForKeyedSubscript:AKGeneratePasswordResetKey];
  v20 = sub_100189E44(v19, v21);
  v22 = [v20 BOOLValue];
  _objc_release(v20);
  _objc_release(v21);
  v29 = v22;
  v28 = [v32 passwordResetTokenForAccount:v31];
  v27 = objc_alloc_init(NSMutableDictionary);
  v23 = [NSNumber numberWithBool:v18 & 1];
  [v27 setObject:? forKeyedSubscript:?];
  _objc_release(v23);
  v25 = 0;
  v24 = 0;
  if (v22)
  {
    v26 = [(AKSRPContextHelper *)v35->_contextHelper password];
    v25 = 1;
    v24 = 0;
    if (v26)
    {
      v24 = v28 == 0;
    }
  }

  v10 = [NSNumber numberWithInt:v24];
  [v27 setObject:? forKeyedSubscript:?];
  _objc_release(v10);
  if (v25)
  {
    _objc_release(v26);
  }

  v9 = [v33 objectForKeyedSubscript:AKAppProvidedContextKey];
  _objc_release(v9);
  if (v9)
  {
    v5 = [v33 objectForKeyedSubscript:AKAppProvidedContextKey];
    [v27 setObject:? forKeyedSubscript:?];
    _objc_release(v5);
    v7 = [v33 objectForKeyedSubscript:AKEphemeralAuthKey];
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 BOOLValue]);
    [v27 setObject:? forKeyedSubscript:?];
    _objc_release(v6);
    _objc_release(v7);
    v8 = [v33 objectForKeyedSubscript:AKShortLivedTokenKey];
    [v27 setObject:? forKeyedSubscript:?];
    _objc_release(v8);
  }

  v4 = _objc_retain(v27);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (BOOL)_performRequestWithURL:(id)a3 context:(id)a4 error:(__CFError *)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [v8 underlyingContext];
  v7 = AppleIDAuthSupportAuthenticate();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (void)_attachAdditionalHeaders:(id)a3 toContextHelper:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  if ([location[0] count])
  {
    v9 = [NSMutableDictionary dictionaryWithDictionary:location[0]];
    v4 = v9;
    v5 = [v11 additionalHeaders];
    [(NSMutableDictionary *)v4 addEntriesFromDictionary:?];
    _objc_release(v5);
    v6 = v11;
    v7 = [(NSMutableDictionary *)v9 copy];
    [v6 setAdditionalHeaders:?];
    _objc_release(v7);
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)_urlRequestFromAuthParameters:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_opt_class();
  v5 = [location[0] objectForKeyedSubscript:kAppleIDAuthSupportAdditionalHeaders];
  v16 = sub_100189E44(v4, v5);
  _objc_release(v5);
  v15 = [NSMutableURLRequest requestWithURL:v18->_url];
  v7 = v15;
  v6 = objc_opt_class();
  v9 = [v16 objectForKeyedSubscript:AKClientBundleIDHeader];
  v8 = sub_100189E44(v6, v9);
  [NSMutableURLRequest setValue:v7 forHTTPHeaderField:"setValue:forHTTPHeaderField:"];
  _objc_release(v8);
  _objc_release(v9);
  v11 = v15;
  v10 = objc_opt_class();
  v13 = [v16 objectForKeyedSubscript:AKProxiedBundleIDHeader];
  v12 = sub_100189E44(v10, v13);
  [NSMutableURLRequest setValue:v11 forHTTPHeaderField:"setValue:forHTTPHeaderField:"];
  _objc_release(v12);
  _objc_release(v13);
  v14 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v14;
}

@end