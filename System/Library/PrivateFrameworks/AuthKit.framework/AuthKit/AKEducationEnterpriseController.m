@interface AKEducationEnterpriseController
- (AKEducationEnterpriseController)initWithContext:(id)a3 client:(id)a4;
- (void)_handleIdentityProviderResponsePayload:(id)a3 completion:(id)a4;
- (void)_showIdentityProviderUIFromResponse:(id)a3 completion:(id)a4;
- (void)beginFederatedAuthWithInitialResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation AKEducationEnterpriseController

- (AKEducationEnterpriseController)initWithContext:(id)a3 client:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKEducationEnterpriseController;
  v8 = [(AKEducationEnterpriseController *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_context, location[0]);
    objc_storeStrong(&v12->_client, v10);
  }

  v6 = _objc_retain(v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)beginFederatedAuthWithInitialResponse:(id)a3 completionHandler:(id)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v11 = [(AKAppleIDAuthenticationContext *)v32->_context username];
  _objc_release(v11);
  if (v11)
  {
    context = v32->_context;
    v5 = [(AKAppleIDAuthenticationContext *)context authKitAccount:?];
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.federatedAuthStart" account:context error:?];
    _objc_release(v5);
    v21 = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_1001A8438;
    v25 = &unk_100322258;
    v26 = _objc_retain(v32);
    v27 = _objc_retain(v30);
    v28 = objc_retainBlock(&v21);
    v20 = [(AKAppleIDAuthenticationContext *)v32->_context altDSID];
    v7 = [AKURLBag bagForAltDSID:v20];
    v6 = [location[0] secondaryActionURLKey];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1001A8574;
    v16 = &unk_100321B90;
    v17 = _objc_retain(v32);
    v18 = _objc_retain(location[0]);
    v19 = _objc_retain(v28);
    [v7 urlConfigurationForKey:v6 fromCache:0 completion:&v12];
    _objc_release(v6);
    _objc_release(v7);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    v29 = 0;
  }

  else
  {
    v8 = v30;
    v9 = [NSError ak_errorWithCode:-7022];
    v8[2](v8, 0);
    _objc_release(v9);
    v29 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_showIdentityProviderUIFromResponse:(id)a3 completion:(id)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = _AKLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [location[0] federatedAuthURL];
    sub_1000194D4(v33, v15);
    _os_log_impl(&_mh_execute_header, v29, v28, "Server says to show UI at IDP URL: %@", v33, 0xCu);
    _objc_release(v15);
  }

  objc_storeStrong(&v29, 0);
  v5 = [location[0] federatedAuthURL];
  v27 = [NSURL URLWithString:?];
  _objc_release(v5);
  v26 = [NSMutableURLRequest requestWithURL:v27];
  [(NSMutableURLRequest *)v26 setHTTPMethod:@"POST"];
  [(NSMutableURLRequest *)v26 setHTTPContentType:@"application/x-www-form-urlencoded"];
  v6 = v26;
  v7 = [location[0] federatedAuthRequestPayload];
  [(NSMutableURLRequest *)v6 setHTTPBody:?];
  _objc_release(v7);
  v25 = [AKDServerUIContext serverUIContextFromResponse:location[0] authContext:v32->_context urlRequest:v26 urlConfiguration:0];
  v8 = [v25 requestConfiguration];
  [v8 setRequestType:1];
  _objc_release(v8);
  v10 = [location[0] federatedAuthURLWhiteList];
  v9 = [v25 requestConfiguration];
  [v9 setWhitelistedPathURLs:v10];
  _objc_release(v9);
  _objc_release(v10);
  v11 = [AKDServerUIController alloc];
  v12 = +[AKAuthenticationUILiaison sharedInstance];
  client = v32->_client;
  v24 = [AKDServerUIController initWithLiaison:v11 client:"initWithLiaison:client:delegate:" delegate:?];
  _objc_release(v12);
  v14 = v24;
  v13 = v25;
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1001A901C;
  v21 = &unk_100325E98;
  v23 = _objc_retain(v30);
  v22 = _objc_retain(v32);
  [(AKDServerUIController *)v14 showServerUIWithContext:v13 completion:&v17];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleIdentityProviderResponsePayload:(id)a3 completion:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  if (location[0])
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v28, location[0]);
      _os_log_impl(&_mh_execute_header, v24, v23, "Handling IDP response: %@", v28, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v22 = [location[0] objectForKeyedSubscript:AKRequestURLKey];
    v21 = 0;
    if ((+[AKFeatureManager isYorktownEnabled]& 1) != 0)
    {
      v4 = [AKEducationEnterpriseRequestProvider alloc];
    }

    else
    {
      v4 = [AKGrandSlamRequestProvider alloc];
    }

    v5 = [(AKURLRequestProviderImpl *)v4 initWithContext:v27->_context url:v22];
    v6 = v21;
    v21 = v5;
    _objc_release(v6);
    v11 = [location[0] objectForKeyedSubscript:AKRequestBodyKey];
    v10 = [v11 dataUsingEncoding:4];
    [(AKURLRequestProviderImpl *)v21 setAuthKitBodyData:?];
    _objc_release(v10);
    _objc_release(v11);
    [(AKURLRequestProviderImpl *)v21 setClient:v27->_client];
    v7 = [AKServiceControllerImpl alloc];
    v20 = [(AKServiceControllerImpl *)v7 initWithRequestProvider:v21];
    v12 = v20;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1001A960C;
    v18 = &unk_10031FC28;
    v19 = _objc_retain(v25);
    [(AKServiceControllerImpl *)v12 executeRequestWithCompletion:&v14];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v8 = v25;
    v9 = [NSError ak_errorWithCode:-7019];
    v8[2](v8, 0);
    _objc_release(v9);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

@end