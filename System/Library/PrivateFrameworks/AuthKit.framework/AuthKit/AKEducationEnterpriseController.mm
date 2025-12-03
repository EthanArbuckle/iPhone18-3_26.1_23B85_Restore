@interface AKEducationEnterpriseController
- (AKEducationEnterpriseController)initWithContext:(id)context client:(id)client;
- (void)_handleIdentityProviderResponsePayload:(id)payload completion:(id)completion;
- (void)_showIdentityProviderUIFromResponse:(id)response completion:(id)completion;
- (void)beginFederatedAuthWithInitialResponse:(id)response completionHandler:(id)handler;
@end

@implementation AKEducationEnterpriseController

- (AKEducationEnterpriseController)initWithContext:(id)context client:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, client);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKEducationEnterpriseController;
  v8 = [(AKEducationEnterpriseController *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_context, location[0]);
    objc_storeStrong(&selfCopy->_client, v10);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)beginFederatedAuthWithInitialResponse:(id)response completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v30 = 0;
  objc_storeStrong(&v30, handler);
  username = [(AKAppleIDAuthenticationContext *)selfCopy->_context username];
  _objc_release(username);
  if (username)
  {
    context = selfCopy->_context;
    v5 = [(AKAppleIDAuthenticationContext *)context authKitAccount:?];
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.federatedAuthStart" account:context error:?];
    _objc_release(v5);
    v21 = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_1001A8438;
    v25 = &unk_100322258;
    v26 = _objc_retain(selfCopy);
    v27 = _objc_retain(v30);
    v28 = objc_retainBlock(&v21);
    altDSID = [(AKAppleIDAuthenticationContext *)selfCopy->_context altDSID];
    v7 = [AKURLBag bagForAltDSID:altDSID];
    secondaryActionURLKey = [location[0] secondaryActionURLKey];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1001A8574;
    v16 = &unk_100321B90;
    v17 = _objc_retain(selfCopy);
    v18 = _objc_retain(location[0]);
    v19 = _objc_retain(v28);
    [v7 urlConfigurationForKey:secondaryActionURLKey fromCache:0 completion:&v12];
    _objc_release(secondaryActionURLKey);
    _objc_release(v7);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&altDSID, 0);
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

- (void)_showIdentityProviderUIFromResponse:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  v29 = _AKLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    federatedAuthURL = [location[0] federatedAuthURL];
    sub_1000194D4(v33, federatedAuthURL);
    _os_log_impl(&_mh_execute_header, v29, v28, "Server says to show UI at IDP URL: %@", v33, 0xCu);
    _objc_release(federatedAuthURL);
  }

  objc_storeStrong(&v29, 0);
  federatedAuthURL2 = [location[0] federatedAuthURL];
  v27 = [NSURL URLWithString:?];
  _objc_release(federatedAuthURL2);
  v26 = [NSMutableURLRequest requestWithURL:v27];
  [(NSMutableURLRequest *)v26 setHTTPMethod:@"POST"];
  [(NSMutableURLRequest *)v26 setHTTPContentType:@"application/x-www-form-urlencoded"];
  v6 = v26;
  federatedAuthRequestPayload = [location[0] federatedAuthRequestPayload];
  [(NSMutableURLRequest *)v6 setHTTPBody:?];
  _objc_release(federatedAuthRequestPayload);
  v25 = [AKDServerUIContext serverUIContextFromResponse:location[0] authContext:selfCopy->_context urlRequest:v26 urlConfiguration:0];
  requestConfiguration = [v25 requestConfiguration];
  [requestConfiguration setRequestType:1];
  _objc_release(requestConfiguration);
  federatedAuthURLWhiteList = [location[0] federatedAuthURLWhiteList];
  requestConfiguration2 = [v25 requestConfiguration];
  [requestConfiguration2 setWhitelistedPathURLs:federatedAuthURLWhiteList];
  _objc_release(requestConfiguration2);
  _objc_release(federatedAuthURLWhiteList);
  v11 = [AKDServerUIController alloc];
  v12 = +[AKAuthenticationUILiaison sharedInstance];
  client = selfCopy->_client;
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
  v22 = _objc_retain(selfCopy);
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

- (void)_handleIdentityProviderResponsePayload:(id)payload completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v25 = 0;
  objc_storeStrong(&v25, completion);
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

    v5 = [(AKURLRequestProviderImpl *)v4 initWithContext:selfCopy->_context url:v22];
    v6 = v21;
    v21 = v5;
    _objc_release(v6);
    v11 = [location[0] objectForKeyedSubscript:AKRequestBodyKey];
    v10 = [v11 dataUsingEncoding:4];
    [(AKURLRequestProviderImpl *)v21 setAuthKitBodyData:?];
    _objc_release(v10);
    _objc_release(v11);
    [(AKURLRequestProviderImpl *)v21 setClient:selfCopy->_client];
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