@interface AKDispatchableURLRequest
- (AKDispatchableURLRequest)initWithURLRequestProvider:(id)provider authenticationHandler:(id)handler completionHandler:(id)completionHandler;
- (NSDictionary)dispatchingInfo;
- (id)_addingAdditionalHeaders:(id)headers forURLRequest:(id)request;
- (id)_urlSession;
- (void)_executeAllowingReauthentication:(BOOL)reauthentication completion:(id)completion;
- (void)_executeURLRequest:(id)request withSession:(id)session completion:(id)completion;
- (void)_reauthenticateAndExecuteWithCompletion:(id)completion;
- (void)_reauthenticateWithCompletion:(id)completion;
- (void)executeWithResponseHandler:(id)handler;
- (void)handleResponseCode;
- (void)invalidateWithError:(id)error;
@end

@implementation AKDispatchableURLRequest

- (NSDictionary)dispatchingInfo
{
  selfCopy = self;
  v16[1] = a2;
  v16[0] = [[NSMutableDictionary alloc] initWithCapacity:3];
  urlRequestProvider = [(AKDispatchableURLRequest *)selfCopy urlRequestProvider];
  client = [(AKURLRequestProvider *)urlRequestProvider client];
  name = [client name];
  [v16[0] setObject:? forKeyedSubscript:?];
  _objc_release(name);
  _objc_release(client);
  _objc_release(urlRequestProvider);
  urlRequestProvider2 = [(AKDispatchableURLRequest *)selfCopy urlRequestProvider];
  concreteAuthenticationContext = [(AKURLRequestProvider *)urlRequestProvider2 concreteAuthenticationContext];
  _objc_release(concreteAuthenticationContext);
  _objc_release(urlRequestProvider2);
  if (concreteAuthenticationContext)
  {
    urlRequestProvider3 = [(AKDispatchableURLRequest *)selfCopy urlRequestProvider];
    concreteAuthenticationContext2 = [(AKURLRequestProvider *)urlRequestProvider3 concreteAuthenticationContext];
    _proxiedAppName = [concreteAuthenticationContext2 _proxiedAppName];
    [v16[0] setObject:? forKeyedSubscript:?];
    _objc_release(_proxiedAppName);
    _objc_release(concreteAuthenticationContext2);
    _objc_release(urlRequestProvider3);
    urlRequestProvider4 = [(AKDispatchableURLRequest *)selfCopy urlRequestProvider];
    concreteAuthenticationContext3 = [(AKURLRequestProvider *)urlRequestProvider4 concreteAuthenticationContext];
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [concreteAuthenticationContext3 serviceType]);
    [v16[0] setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    _objc_release(concreteAuthenticationContext3);
    _objc_release(urlRequestProvider4);
  }

  v4 = [v16[0] copy];
  objc_storeStrong(location, 0);

  return v4;
}

- (AKDispatchableURLRequest)initWithURLRequestProvider:(id)provider authenticationHandler:(id)handler completionHandler:(id)completionHandler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v16 = 0;
  objc_storeStrong(&v16, handler);
  v15 = 0;
  objc_storeStrong(&v15, completionHandler);
  v5 = selfCopy;
  selfCopy = 0;
  v14.receiver = v5;
  v14.super_class = AKDispatchableURLRequest;
  selfCopy = [(AKDispatchableURLRequest *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_urlRequestProvider, location[0]);
    objc_storeStrong(&selfCopy->_authenticationHandler, v16);
    v6 = objc_retainBlock(v15);
    completionHandler = selfCopy->_completionHandler;
    selfCopy->_completionHandler = v6;
    _objc_release(completionHandler);
    v8 = objc_alloc_init(AKServerBackoffHelper);
    serverBackoffHelper = selfCopy->_serverBackoffHelper;
    selfCopy->_serverBackoffHelper = v8;
    _objc_release(serverBackoffHelper);
  }

  v11 = _objc_retain(selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)executeWithResponseHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000D44E8;
  v8 = &unk_100322C28;
  v9 = _objc_retain(selfCopy);
  v10 = _objc_retain(location[0]);
  [(AKDispatchableURLRequest *)v3 _executeAllowingReauthentication:1 completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)handleResponseCode
{
  responseCode = [(AKDispatchableURLRequest *)self responseCode];
  urlRequestProvider = [(AKDispatchableURLRequest *)self urlRequestProvider];
  context = [(AKURLRequestProvider *)urlRequestProvider context];
  altDSID = [context altDSID];
  [AKCommonResponseCodeHandler handleResponseCode:responseCode altDSID:?];
  _objc_release(altDSID);
  _objc_release(context);
  _objc_release(urlRequestProvider);
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

- (id)_urlSession
{
  urlRequestProvider = [(AKDispatchableURLRequest *)self urlRequestProvider];
  _denyVirtualInterfaces = [(AKURLRequestProvider *)urlRequestProvider _denyVirtualInterfaces];
  _objc_release(urlRequestProvider);
  if (_denyVirtualInterfaces)
  {
    v8 = +[AKURLSession sharedURLSessionWithDenyVirtualInterfaces];
  }

  else
  {
    urlRequestProvider2 = [(AKDispatchableURLRequest *)self urlRequestProvider];
    shouldCacheResource = [(AKURLRequestProvider *)urlRequestProvider2 shouldCacheResource];
    _objc_release(urlRequestProvider2);
    if (shouldCacheResource)
    {
      v8 = +[AKURLSession sharedCacheEnabledURLSession];
    }

    else
    {
      v8 = +[AKURLSession sharedURLSession];
    }
  }

  return v8;
}

- (void)_executeAllowingReauthentication:(BOOL)reauthentication completion:(id)completion
{
  selfCopy = self;
  v15 = a2;
  reauthenticationCopy = reauthentication;
  location = 0;
  objc_storeStrong(&location, completion);
  urlRequestProvider = [(AKDispatchableURLRequest *)selfCopy urlRequestProvider];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000D49A0;
  v9 = &unk_100322C78;
  v10 = _objc_retain(selfCopy);
  v11 = _objc_retain(location);
  v12 = reauthenticationCopy;
  [(AKURLRequestProvider *)urlRequestProvider buildRequestWithCompletion:?];
  _objc_release(urlRequestProvider);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)_executeURLRequest:(id)request withSession:(id)session completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v28 = 0;
  objc_storeStrong(&v28, session);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v12 = selfCopy;
    additionalHeaders = [(AKDispatchableURLRequest *)selfCopy additionalHeaders];
    sub_10004DCC8(v32, v12, additionalHeaders, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v26, v25, "%@: Adding additional headers (%@) to URL request (%@)", v32, 0x20u);
    _objc_release(additionalHeaders);
  }

  objc_storeStrong(&v26, 0);
  v10 = selfCopy;
  additionalHeaders2 = [(AKDispatchableURLRequest *)selfCopy additionalHeaders];
  v5 = [AKDispatchableURLRequest _addingAdditionalHeaders:v10 forURLRequest:"_addingAdditionalHeaders:forURLRequest:"];
  v6 = location[0];
  location[0] = v5;
  _objc_release(v6);
  _objc_release(additionalHeaders2);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v31, selfCopy, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v24, v23, "%@: Executing URL request (%@)", v31, 0x16u);
  }

  objc_storeStrong(&v24, 0);
  v9 = v28;
  v8 = location[0];
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_1000D55C4;
  v20 = &unk_100320A80;
  v21 = _objc_retain(selfCopy);
  v22 = _objc_retain(v27);
  v7 = [v9 beginAuthenticationDataTaskWithRequest:v8 completionHandler:&v16];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_reauthenticateAndExecuteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000D5A78;
  v8 = &unk_10031F838;
  v9 = _objc_retain(selfCopy);
  v10 = _objc_retain(location[0]);
  [(AKDispatchableURLRequest *)v3 _reauthenticateWithCompletion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_reauthenticateWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  authenticationHandler = [(AKDispatchableURLRequest *)selfCopy authenticationHandler];
  _objc_release(authenticationHandler);
  if (authenticationHandler)
  {
    v11 = 0;
    authenticationHandler2 = [(AKDispatchableURLRequest *)selfCopy authenticationHandler];
    urlRequestProvider = [(AKDispatchableURLRequest *)selfCopy urlRequestProvider];
    concreteAuthenticationContext = [(AKURLRequestProvider *)urlRequestProvider concreteAuthenticationContext];
    v9 = v11;
    v4 = [AKAuthHandler buildReauthenticationContextFromContext:authenticationHandler2 error:"buildReauthenticationContextFromContext:error:"];
    objc_storeStrong(&v11, v9);
    v10 = v4;
    _objc_release(concreteAuthenticationContext);
    _objc_release(urlRequestProvider);
    _objc_release(authenticationHandler2);
    if (v11)
    {
      (*(location[0] + 2))(location[0], 0, v11);
    }

    else
    {
      authenticationHandler3 = [(AKDispatchableURLRequest *)selfCopy authenticationHandler];
      [(AKAuthHandler *)authenticationHandler3 reauthenticateWithContext:v10 completion:location[0]];
      _objc_release(authenticationHandler3);
    }

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v17, selfCopy);
      _os_log_error_impl(&_mh_execute_header, v14, v13, "%@: Unable to reauthenticate with nil authenticationHandler", v17, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    (*(location[0] + 2))(location[0], 0, 0);
    v12 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_addingAdditionalHeaders:(id)headers forURLRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v16 = 0;
  objc_storeStrong(&v16, request);
  if ([location[0] count])
  {
    v14 = [v16 mutableCopy];
    v6 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000D6090;
    v12 = &unk_100320A30;
    v13 = _objc_retain(v14);
    [v6 enumerateKeysAndObjectsUsingBlock:&v8];
    v18 = [v14 copy];
    v15 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v18 = _objc_retain(v16);
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v4 = v18;

  return v4;
}

@end