@interface AKSRPRequest
+ (BOOL)_performRequestWithURL:(id)l context:(id)context error:(__CFError *)error;
- (AKSRPRequest)initWithURL:(id)l contextHelper:(id)helper completionHandler:(id)handler;
- (NSDictionary)dispatchingInfo;
- (id)_tokenGenerationInfoForContext:(id)context;
- (id)_urlRequestFromAuthParameters:(id)parameters;
- (void)_attachAdditionalHeaders:(id)headers toContextHelper:(id)helper;
- (void)_performRequestWithContext:(id)context responseHandler:(id)handler;
- (void)executeWithResponseHandler:(id)handler;
- (void)handleResponseCode;
- (void)invalidateWithError:(id)error;
@end

@implementation AKSRPRequest

- (AKSRPRequest)initWithURL:(id)l contextHelper:(id)helper completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v19 = 0;
  objc_storeStrong(&v19, helper);
  v18 = 0;
  objc_storeStrong(&v18, handler);
  v5 = selfCopy;
  selfCopy = 0;
  v17.receiver = v5;
  v17.super_class = AKSRPRequest;
  selfCopy = [(AKSRPRequest *)&v17 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_url, location[0]);
    objc_storeStrong(&selfCopy->_contextHelper, v19);
    v6 = objc_retainBlock(v18);
    completionHandler = selfCopy->_completionHandler;
    selfCopy->_completionHandler = v6;
    _objc_release(completionHandler);
    objc_storeStrong(&selfCopy->_criticalTokenError, 0);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.akd.srp-request", v14);
    queue = selfCopy->_queue;
    selfCopy->_queue = v8;
    _objc_release(queue);
    _objc_release(v14);
    v10 = objc_alloc_init(AKServerBackoffHelper);
    serverBackoffHelper = selfCopy->_serverBackoffHelper;
    selfCopy->_serverBackoffHelper = v10;
    _objc_release(serverBackoffHelper);
  }

  v13 = _objc_retain(selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (NSDictionary)dispatchingInfo
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = [[NSMutableDictionary alloc] initWithCapacity:3];
  client = [(AKSRPContextHelper *)selfCopy->_contextHelper client];
  name = [(AKClient *)client name];
  [v10[0] setObject:? forKeyedSubscript:?];
  _objc_release(name);
  _objc_release(client);
  authContext = [(AKSRPContextHelper *)selfCopy->_contextHelper authContext];
  _proxiedAppName = [(AKAuthenticationContext *)authContext _proxiedAppName];
  [v10[0] setObject:? forKeyedSubscript:?];
  _objc_release(_proxiedAppName);
  _objc_release(authContext);
  authContext2 = [(AKSRPContextHelper *)selfCopy->_contextHelper authContext];
  v7 = [NSNumber numberWithInteger:[(AKAuthenticationContext *)authContext2 serviceType]];
  [v10[0] setObject:? forKeyedSubscript:?];
  _objc_release(v7);
  _objc_release(authContext2);
  v9 = [v10[0] copy];
  objc_storeStrong(v10, 0);

  return v9;
}

- (void)executeWithResponseHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v4 = selfCopy;
  additionalHeaders = [(AKSRPRequest *)selfCopy additionalHeaders];
  contextHelper = selfCopy->_contextHelper;
  [AKSRPRequest _attachAdditionalHeaders:v4 toContextHelper:"_attachAdditionalHeaders:toContextHelper:"];
  _objc_release(additionalHeaders);
  v6 = selfCopy->_contextHelper;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100188DC8;
  v11 = &unk_100320A58;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  [(AKSRPContextHelper *)v6 authenticationParametersWithCompletion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)handleResponseCode
{
  responseCode = [(AKSRPRequest *)self responseCode];
  contextHelper = [(AKSRPRequest *)self contextHelper];
  altDSID = [(AKSRPContextHelper *)contextHelper altDSID];
  [AKCommonResponseCodeHandler handleResponseCode:responseCode altDSID:?];
  _objc_release(altDSID);
  _objc_release(contextHelper);
}

- (void)invalidateWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  (*(selfCopy->_completionHandler + 2))();
  objc_storeStrong(location, 0);
}

- (void)_performRequestWithContext:(id)context responseHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, handler);
  queue = selfCopy->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001895B0;
  v10 = &unk_100320558;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_tokenGenerationInfoForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = objc_opt_class();
  configurationParameters = [location[0] configurationParameters];
  v12 = [configurationParameters objectForKeyedSubscript:kAppleIDAuthSupportClientProvidedData];
  v33 = sub_100189E44(v11, v12);
  _objc_release(v12);
  _objc_release(configurationParameters);
  v32 = +[AKAccountManager sharedInstance];
  altDSID = [(AKSRPContextHelper *)selfCopy->_contextHelper altDSID];
  v31 = [v32 authKitAccountWithAltDSID:? error:?];
  _objc_release(altDSID);
  v15 = objc_opt_class();
  v17 = [v33 objectForKeyedSubscript:AKContinutationKeyGenKey];
  v16 = sub_100189E44(v15, v17);
  bOOLValue = [v16 BOOLValue];
  _objc_release(v16);
  _objc_release(v17);
  v30 = bOOLValue;
  v19 = objc_opt_class();
  v21 = [v33 objectForKeyedSubscript:AKGeneratePasswordResetKey];
  v20 = sub_100189E44(v19, v21);
  bOOLValue2 = [v20 BOOLValue];
  _objc_release(v20);
  _objc_release(v21);
  v29 = bOOLValue2;
  v28 = [v32 passwordResetTokenForAccount:v31];
  v27 = objc_alloc_init(NSMutableDictionary);
  v23 = [NSNumber numberWithBool:bOOLValue & 1];
  [v27 setObject:? forKeyedSubscript:?];
  _objc_release(v23);
  v25 = 0;
  v24 = 0;
  if (bOOLValue2)
  {
    password = [(AKSRPContextHelper *)selfCopy->_contextHelper password];
    v25 = 1;
    v24 = 0;
    if (password)
    {
      v24 = v28 == 0;
    }
  }

  v10 = [NSNumber numberWithInt:v24];
  [v27 setObject:? forKeyedSubscript:?];
  _objc_release(v10);
  if (v25)
  {
    _objc_release(password);
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

+ (BOOL)_performRequestWithURL:(id)l context:(id)context error:(__CFError *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v8 = 0;
  objc_storeStrong(&v8, context);
  [v8 underlyingContext];
  v7 = AppleIDAuthSupportAuthenticate();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (void)_attachAdditionalHeaders:(id)headers toContextHelper:(id)helper
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v11 = 0;
  objc_storeStrong(&v11, helper);
  if ([location[0] count])
  {
    v9 = [NSMutableDictionary dictionaryWithDictionary:location[0]];
    v4 = v9;
    additionalHeaders = [v11 additionalHeaders];
    [(NSMutableDictionary *)v4 addEntriesFromDictionary:?];
    _objc_release(additionalHeaders);
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

- (id)_urlRequestFromAuthParameters:(id)parameters
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameters);
  v4 = objc_opt_class();
  v5 = [location[0] objectForKeyedSubscript:kAppleIDAuthSupportAdditionalHeaders];
  v16 = sub_100189E44(v4, v5);
  _objc_release(v5);
  v15 = [NSMutableURLRequest requestWithURL:selfCopy->_url];
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