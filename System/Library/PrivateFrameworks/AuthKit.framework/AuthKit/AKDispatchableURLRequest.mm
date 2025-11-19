@interface AKDispatchableURLRequest
- (AKDispatchableURLRequest)initWithURLRequestProvider:(id)a3 authenticationHandler:(id)a4 completionHandler:(id)a5;
- (NSDictionary)dispatchingInfo;
- (id)_addingAdditionalHeaders:(id)a3 forURLRequest:(id)a4;
- (id)_urlSession;
- (void)_executeAllowingReauthentication:(BOOL)a3 completion:(id)a4;
- (void)_executeURLRequest:(id)a3 withSession:(id)a4 completion:(id)a5;
- (void)_reauthenticateAndExecuteWithCompletion:(id)a3;
- (void)_reauthenticateWithCompletion:(id)a3;
- (void)executeWithResponseHandler:(id)a3;
- (void)handleResponseCode;
- (void)invalidateWithError:(id)a3;
@end

@implementation AKDispatchableURLRequest

- (NSDictionary)dispatchingInfo
{
  v17 = self;
  v16[1] = a2;
  v16[0] = [[NSMutableDictionary alloc] initWithCapacity:3];
  v13 = [(AKDispatchableURLRequest *)v17 urlRequestProvider];
  v12 = [(AKURLRequestProvider *)v13 client];
  v11 = [v12 name];
  [v16[0] setObject:? forKeyedSubscript:?];
  _objc_release(v11);
  _objc_release(v12);
  _objc_release(v13);
  v14 = [(AKDispatchableURLRequest *)v17 urlRequestProvider];
  v15 = [(AKURLRequestProvider *)v14 concreteAuthenticationContext];
  _objc_release(v15);
  _objc_release(v14);
  if (v15)
  {
    v7 = [(AKDispatchableURLRequest *)v17 urlRequestProvider];
    v6 = [(AKURLRequestProvider *)v7 concreteAuthenticationContext];
    v5 = [v6 _proxiedAppName];
    [v16[0] setObject:? forKeyedSubscript:?];
    _objc_release(v5);
    _objc_release(v6);
    _objc_release(v7);
    v10 = [(AKDispatchableURLRequest *)v17 urlRequestProvider];
    v9 = [(AKURLRequestProvider *)v10 concreteAuthenticationContext];
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 serviceType]);
    [v16[0] setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    _objc_release(v9);
    _objc_release(v10);
  }

  v4 = [v16[0] copy];
  objc_storeStrong(location, 0);

  return v4;
}

- (AKDispatchableURLRequest)initWithURLRequestProvider:(id)a3 authenticationHandler:(id)a4 completionHandler:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v5 = v18;
  v18 = 0;
  v14.receiver = v5;
  v14.super_class = AKDispatchableURLRequest;
  v18 = [(AKDispatchableURLRequest *)&v14 init];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    objc_storeStrong(&v18->_urlRequestProvider, location[0]);
    objc_storeStrong(&v18->_authenticationHandler, v16);
    v6 = objc_retainBlock(v15);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v6;
    _objc_release(completionHandler);
    v8 = objc_alloc_init(AKServerBackoffHelper);
    serverBackoffHelper = v18->_serverBackoffHelper;
    v18->_serverBackoffHelper = v8;
    _objc_release(serverBackoffHelper);
  }

  v11 = _objc_retain(v18);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
}

- (void)executeWithResponseHandler:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000D44E8;
  v8 = &unk_100322C28;
  v9 = _objc_retain(v12);
  v10 = _objc_retain(location[0]);
  [(AKDispatchableURLRequest *)v3 _executeAllowingReauthentication:1 completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)handleResponseCode
{
  v2 = [(AKDispatchableURLRequest *)self responseCode];
  v5 = [(AKDispatchableURLRequest *)self urlRequestProvider];
  v4 = [(AKURLRequestProvider *)v5 context];
  v3 = [v4 altDSID];
  [AKCommonResponseCodeHandler handleResponseCode:v2 altDSID:?];
  _objc_release(v3);
  _objc_release(v4);
  _objc_release(v5);
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

- (id)_urlSession
{
  v5 = [(AKDispatchableURLRequest *)self urlRequestProvider];
  v6 = [(AKURLRequestProvider *)v5 _denyVirtualInterfaces];
  _objc_release(v5);
  if (v6)
  {
    v8 = +[AKURLSession sharedURLSessionWithDenyVirtualInterfaces];
  }

  else
  {
    v3 = [(AKDispatchableURLRequest *)self urlRequestProvider];
    v4 = [(AKURLRequestProvider *)v3 shouldCacheResource];
    _objc_release(v3);
    if (v4)
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

- (void)_executeAllowingReauthentication:(BOOL)a3 completion:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = [(AKDispatchableURLRequest *)v16 urlRequestProvider];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000D49A0;
  v9 = &unk_100322C78;
  v10 = _objc_retain(v16);
  v11 = _objc_retain(location);
  v12 = v14;
  [(AKURLRequestProvider *)v4 buildRequestWithCompletion:?];
  _objc_release(v4);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)_executeURLRequest:(id)a3 withSession:(id)a4 completion:(id)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v12 = v30;
    v13 = [(AKDispatchableURLRequest *)v30 additionalHeaders];
    sub_10004DCC8(v32, v12, v13, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v26, v25, "%@: Adding additional headers (%@) to URL request (%@)", v32, 0x20u);
    _objc_release(v13);
  }

  objc_storeStrong(&v26, 0);
  v10 = v30;
  v11 = [(AKDispatchableURLRequest *)v30 additionalHeaders];
  v5 = [AKDispatchableURLRequest _addingAdditionalHeaders:v10 forURLRequest:"_addingAdditionalHeaders:forURLRequest:"];
  v6 = location[0];
  location[0] = v5;
  _objc_release(v6);
  _objc_release(v11);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v31, v30, location[0]);
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
  v21 = _objc_retain(v30);
  v22 = _objc_retain(v27);
  v7 = [v9 beginAuthenticationDataTaskWithRequest:v8 completionHandler:&v16];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_reauthenticateAndExecuteWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000D5A78;
  v8 = &unk_10031F838;
  v9 = _objc_retain(v12);
  v10 = _objc_retain(location[0]);
  [(AKDispatchableURLRequest *)v3 _reauthenticateWithCompletion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_reauthenticateWithCompletion:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(AKDispatchableURLRequest *)v16 authenticationHandler];
  _objc_release(v8);
  if (v8)
  {
    v11 = 0;
    v7 = [(AKDispatchableURLRequest *)v16 authenticationHandler];
    v6 = [(AKDispatchableURLRequest *)v16 urlRequestProvider];
    v5 = [(AKURLRequestProvider *)v6 concreteAuthenticationContext];
    v9 = v11;
    v4 = [AKAuthHandler buildReauthenticationContextFromContext:v7 error:"buildReauthenticationContextFromContext:error:"];
    objc_storeStrong(&v11, v9);
    v10 = v4;
    _objc_release(v5);
    _objc_release(v6);
    _objc_release(v7);
    if (v11)
    {
      (*(location[0] + 2))(location[0], 0, v11);
    }

    else
    {
      v3 = [(AKDispatchableURLRequest *)v16 authenticationHandler];
      [(AKAuthHandler *)v3 reauthenticateWithContext:v10 completion:location[0]];
      _objc_release(v3);
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
      sub_1000194D4(v17, v16);
      _os_log_error_impl(&_mh_execute_header, v14, v13, "%@: Unable to reauthenticate with nil authenticationHandler", v17, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    (*(location[0] + 2))(location[0], 0, 0);
    v12 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_addingAdditionalHeaders:(id)a3 forURLRequest:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
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