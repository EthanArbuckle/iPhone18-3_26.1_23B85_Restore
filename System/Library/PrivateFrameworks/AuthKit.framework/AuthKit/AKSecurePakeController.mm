@interface AKSecurePakeController
- (AKSecurePakeController)initWithEngine:(id)a3 completionHandler:(id)a4;
- (void)_callCompletionHandlerWithDerivedKey:(id)a3 error:(id)a4;
- (void)_sendMessage:(id)a3 completionHandler:(id)a4;
- (void)processMessage:(id)a3 completionHandler:(id)a4;
- (void)securePakeEngine:(id)a3 didDeriveKey:(id)a4;
- (void)securePakeEngine:(id)a3 didFailToDeriveKeyWithError:(id)a4;
- (void)securePakeEngineDidActivate:(id)a3;
- (void)securePakeEngineDidInvalidate:(id)a3;
@end

@implementation AKSecurePakeController

- (AKSecurePakeController)initWithEngine:(id)a3 completionHandler:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v4 = v16;
  v16 = 0;
  v13.receiver = v4;
  v13.super_class = AKSecurePakeController;
  v16 = [(AKSecurePakeController *)&v13 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    objc_storeStrong(&v16->_engine, location[0]);
    v5 = objc_retainBlock(v14);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v5;
    _objc_release(completionHandler);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.akd.secure-pake-engine", v11);
    engineQueue = v16->_engineQueue;
    v16->_engineQueue = v7;
    _objc_release(engineQueue);
    _objc_release(v11);
    [location[0] prepareWithController:v16 queue:v16->_engineQueue];
  }

  v10 = _objc_retain(v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v10;
}

- (void)processMessage:(id)a3 completionHandler:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&from, v18);
  v5 = [(AKSecurePakeController *)v18 engine];
  v4 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000F9690;
  v11 = &unk_1003233F0;
  objc_copyWeak(v14, &from);
  v13 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  [(AKSecurePakeEngine *)v5 processMessage:v4 completionHandler:&v7];
  _objc_release(v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(&from);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendMessage:(id)a3 completionHandler:(id)a4
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = _AKLogSystem();
  v36 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v14 = [location[0] debugDescription];
    sub_1000194D4(v43, v14);
    _os_log_debug_impl(&_mh_execute_header, v37, v36, "Sending secure pake message to IdMS: %@", v43, 0xCu);
    _objc_release(v14);
  }

  objc_storeStrong(&v37, 0);
  v35 = 0;
  v33 = 0;
  v13 = [location[0] payloadWithError:&v33];
  objc_storeStrong(&v35, v33);
  v34 = v13;
  if (v13)
  {
    v27 = objc_alloc_init(AKAppleIDAuthenticationContext);
    v7 = [location[0] altDSID];
    [v27 setAltDSID:?];
    _objc_release(v7);
    v4 = [AKGrandSlamRequestProvider alloc];
    v26 = [(AKURLRequestProviderImpl *)v4 initWithContext:v27 urlBagKey:AKURLBagKeySecurePakeStep];
    v10 = [(AKSecurePakeController *)v40 engine];
    v9 = [(AKSecurePakeEngine *)v10 context];
    v8 = [v9 client];
    [(AKURLRequestProviderImpl *)v26 setClient:?];
    _objc_release(v8);
    _objc_release(v9);
    _objc_release(v10);
    [(AKGrandSlamRequestProvider *)v26 setAuthenticatedRequest:1];
    [(AKGrandSlamRequestProvider *)v26 setShouldSendIdentityToken:1];
    [(AKGrandSlamRequestProvider *)v26 setRequestBodyType:1];
    [(AKURLRequestProviderImpl *)v26 setAuthKitBody:v34];
    v25 = objc_alloc_init(AKAuthHandlerImpl);
    [v25 setForceSilentAuth:1];
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v41, v26);
      _os_log_impl(&_mh_execute_header, v24, v23, "Sending SPAKE2+ message with request provider: %@", v41, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v5 = [AKServiceControllerImpl alloc];
    v22 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v26];
    [(AKServiceControllerImpl *)v22 setAuthenticationDelegate:v25];
    v6 = v22;
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1000F9E34;
    v20 = &unk_10031FC28;
    v21 = _objc_retain(v38);
    [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v16];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    v28 = 0;
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v42, location[0], v35);
      _os_log_error_impl(&_mh_execute_header, v32, v31, "Failed to generate payload for outMessage: %@ with error: %@", v42, 0x16u);
    }

    objc_storeStrong(&v32, 0);
    if (v38)
    {
      v12 = v38;
      v29 = 0;
      if (v35)
      {
        v11 = v35;
      }

      else
      {
        v30 = [NSError ak_errorWithCode:-7001];
        v29 = 1;
        v11 = v30;
      }

      v12[2](v12, 0, v11);
      if (v29)
      {
        _objc_release(v30);
      }
    }

    v28 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)securePakeEngineDidActivate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)securePakeEngineDidInvalidate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)securePakeEngine:(id)a3 didDeriveKey:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKSecurePakeController *)v7 _callCompletionHandlerWithDerivedKey:v5 error:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)securePakeEngine:(id)a3 didFailToDeriveKeyWithError:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKSecurePakeController *)v7 _callCompletionHandlerWithDerivedKey:0 error:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_callCompletionHandlerWithDerivedKey:(id)a3 error:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = objc_retainBlock(v11->_completionHandler);
  v4 = objc_retainBlock(&stru_100323430);
  completionHandler = v11->_completionHandler;
  v11->_completionHandler = v4;
  _objc_release(completionHandler);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v12, location[0], v9);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Calling completion handler with derived key: %@ and error: %@", v12, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v8)
  {
    (*(v8 + 2))(v8, location[0], v9);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end