@interface AuthRemoteAlertViewController
- (BOOL)_loadAuthUrl;
- (BOOL)_loadPlanTermsUrl;
- (BOOL)_validateRedirectURL:(id)l withExpectedURL:(id)rL;
- (id)_base64EncodedDictionary:(id)dictionary;
- (id)_decodeBase64Dictionary:(id)dictionary;
- (id)_generateStateDict;
- (id)_getNSURLSessionConfiguration;
- (id)_getURLFromContextForKey:(id)key;
- (id)_itemWithName:(id)name items:(id)items;
- (void)_addOptionalParametersForAuthCodeRequest:(id)request;
- (void)_configure;
- (void)_deactivate;
- (void)_evaluateBiometry:(id)biometry;
- (void)_exchangeAuthCode:(id)code;
- (void)_handleTokenResponse:(id)response;
- (void)_loadRemoteUIController;
- (void)_loadURL:(id)l;
- (void)_presentAlertController:(int64_t)controller;
- (void)_sendAuthFailure:(int64_t)failure completion:(id)completion;
- (void)handleAppURL:(id)l;
- (void)handleButtonActions:(id)actions;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)viewDidLoad;
@end

@implementation AuthRemoteAlertViewController

- (void)_loadURL:(id)l
{
  lCopy = l;
  v5 = sub_100002CBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading URL: %@", buf, 0xCu);
  }

  remoteUIController = self->_remoteUIController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000031C0;
  v7[3] = &unk_100010428;
  v7[4] = self;
  [(RemoteUIController *)remoteUIController loadURL:lCopy postBody:0 completion:v7];
}

- (BOOL)_loadPlanTermsUrl
{
  v3 = [(AuthRemoteAlertViewController *)self _getURLFromContextForKey:@"kCTCarrierSpacePlanTermsURL"];
  if (v3)
  {
    objc_initWeak(&location, self);
    remoteUIController = self->_remoteUIController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000336C;
    v9[3] = &unk_100010478;
    objc_copyWeak(&v10, &location);
    [(RemoteUIController *)remoteUIController setHandlerForElementName:@"agree" handler:v9];
    v5 = self->_remoteUIController;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003494;
    v7[3] = &unk_100010478;
    objc_copyWeak(&v8, &location);
    [(RemoteUIController *)v5 setHandlerForElementName:@"disagree" handler:v7];
    [(AuthRemoteAlertViewController *)self _loadURL:v3];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v3 != 0;
}

- (void)_addOptionalParametersForAuthCodeRequest:(id)request
{
  requestCopy = request;
  v4 = [(AuthRemoteAlertViewController *)self _getValueFromContextForKey:@"kCTCarrierSpaceAuthICCID"];
  if (v4)
  {
    [requestCopy setIccid:v4];
  }

  v5 = [(AuthRemoteAlertViewController *)self _getValueFromContextForKey:@"kCTCarrierSpaceAuthScope"];
  if (v5)
  {
    [requestCopy setScope:v5];
  }
}

- (id)_generateStateDict
{
  v2 = [NSMutableData dataWithLength:32];
  if (SecRandomCopyBytes(kSecRandomDefault, [v2 length], objc_msgSend(v2, "mutableBytes")))
  {
    v3 = 0;
  }

  else
  {
    v7[0] = @"timestamp";
    v4 = +[NSDate date];
    v7[1] = @"nonce";
    v8[0] = v4;
    v5 = [v2 base64EncodedStringWithOptions:0];
    v8[1] = v5;
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  return v3;
}

- (id)_base64EncodedDictionary:(id)dictionary
{
  v6 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:&v6];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

- (id)_decodeBase64Dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[NSData alloc] initWithBase64EncodedString:dictionaryCopy options:0];

  if (v4)
  {
    v7 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_loadAuthUrl
{
  v3 = [(AuthRemoteAlertViewController *)self _getURLFromContextForKey:@"kCTCarrierSpaceAuthorizationURL"];
  if (v3 && ([(AuthRemoteAlertViewController *)self _getValueFromContextForKey:@"kCTCarrierSpaceClientID"], v4 = objc_claimAutoreleasedReturnValue(), clientID = self->_clientID, self->_clientID = v4, clientID, self->_clientID))
  {
    v6 = [[AuthCodeHttpRequest alloc] initWithBaseURL:v3 clientID:self->_clientID];
    [(AuthRemoteAlertViewController *)self _addOptionalParametersForAuthCodeRequest:v6];
    v7 = [(AuthRemoteAlertViewController *)self _getValueFromContextForKey:@"kCTCarrierSpaceAuthSupportsStateParameter"];
    if ([v7 BOOLValue])
    {
      _generateStateDict = [(AuthRemoteAlertViewController *)self _generateStateDict];
      authState = self->_authState;
      self->_authState = _generateStateDict;

      v10 = [(AuthRemoteAlertViewController *)self _base64EncodedDictionary:self->_authState];
      [(AuthCodeHttpRequest *)v6 setState:v10];
    }

    authCodeRequest = self->_authCodeRequest;
    self->_authCodeRequest = v6;
    v12 = v6;

    v13 = [(AuthCodeHttpRequest *)v12 url];

    [(AuthRemoteAlertViewController *)self _loadURL:v13];
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_getNSURLSessionConfiguration
{
  v2 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v5 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 setProtocolClasses:v3];

  [v2 set_sourceApplicationSecondaryIdentifier:kCTCarrierSpaceConnectionAccountIdentifier];

  return v2;
}

- (void)_loadRemoteUIController
{
  v3 = [LoadingIndicatorViewController alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LOADING" value:&stru_1000109B8 table:@"Localizable"];
  v6 = [(LoadingIndicatorViewController *)v3 initWithTitle:v5 message:0];

  [(AuthViewController *)self->_authViewController pushViewController:v6 animated:0];
  v7 = objc_alloc_init(RemoteUIController);
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = v7;

  [(RemoteUIController *)self->_remoteUIController setDelegate:self];
  if (sub_100002D44())
  {
    loader = [(RemoteUIController *)self->_remoteUIController loader];
    [loader setAllowNonSecureHTTP:1];
  }

  [(RemoteUIController *)self->_remoteUIController setNavigationController:self->_authViewController];
  _getNSURLSessionConfiguration = [(AuthRemoteAlertViewController *)self _getNSURLSessionConfiguration];
  [(RemoteUIController *)self->_remoteUIController setSessionConfiguration:_getNSURLSessionConfiguration];

  if (![(AuthRemoteAlertViewController *)self _loadPlanTermsUrl]&& ![(AuthRemoteAlertViewController *)self _loadAuthUrl])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003C14;
    v11[3] = &unk_100010450;
    v11[4] = self;
    [(AuthRemoteAlertViewController *)self _sendAuthFailure:8 completion:v11];
  }
}

- (void)_configure
{
  _remoteViewControllerProxy = [(AuthRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];

  _remoteViewControllerProxy2 = [(AuthRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setDesiredAutoLockDuration:150.0];

  _remoteViewControllerProxy3 = [(AuthRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy3 setStatusBarHidden:1 withDuration:0.0];

  v6 = [[CTCarrierSpaceClient alloc] initWithQueue:&_dispatch_main_q];
  client = self->_client;
  self->_client = v6;

  v8 = self->_client;

  [(CTCarrierSpaceClient *)v8 setUserInAuthFlow:1 completion:&stru_1000104B8];
}

- (void)_deactivate
{
  objc_initWeak(&location, self);
  client = self->_client;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003DB0;
  v4[3] = &unk_100010508;
  objc_copyWeak(&v5, &location);
  [(CTCarrierSpaceClient *)client setUserInAuthFlow:0 completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)_getURLFromContextForKey:(id)key
{
  v3 = [(AuthRemoteAlertViewController *)self _getValueFromContextForKey:key];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = AuthRemoteAlertViewController;
  [(AuthRemoteAlertViewController *)&v11 viewDidLoad];
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];

  launchContext = [delegate launchContext];
  launchContext = self->_launchContext;
  self->_launchContext = launchContext;

  [delegate setAlertViewController:self];
  v7 = [[AuthViewController alloc] initWithNibName:0 bundle:0];
  authViewController = self->_authViewController;
  self->_authViewController = v7;

  [(AuthViewController *)self->_authViewController loadView];
  [(AuthViewController *)self->_authViewController setDelegate:self];
  v9 = self->_authViewController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000040DC;
  v10[3] = &unk_1000104E0;
  v10[4] = self;
  [(AuthRemoteAlertViewController *)self presentViewController:v9 animated:1 completion:v10];
  [(AuthRemoteAlertViewController *)self _loadRemoteUIController];
}

- (void)_sendAuthFailure:(int64_t)failure completion:(id)completion
{
  completionCopy = completion;
  v7 = [CTCarrierSpaceError errorForCode:failure];
  [(CTCarrierSpaceClient *)self->_client authenticationDidFail:v7 completion:completionCopy];
}

- (void)_presentAlertController:(int64_t)controller
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000042C0;
  v7[3] = &unk_1000104E0;
  v7[4] = self;
  [AlertControllerFactory alertControllerWithError:controller completion:v7];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000433C;
  block[3] = &unk_100010530;
  v6 = block[4] = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_itemWithName:(id)name items:(id)items
{
  nameCopy = name;
  itemsCopy = items;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000448C;
  v11[3] = &unk_100010558;
  v7 = nameCopy;
  v12 = v7;
  v8 = [itemsCopy indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [itemsCopy objectAtIndex:v8];
  }

  return v9;
}

- (void)_evaluateBiometry:(id)biometry
{
  biometryCopy = biometry;
  v5 = objc_alloc_init(LAContext);
  v12 = 0;
  v6 = [v5 canEvaluatePolicy:1 error:&v12];
  v7 = v12;
  if ((v6 & 1) != 0 && (v8 = [v5 biometryType]) != 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000045F8;
    v9[3] = &unk_100010580;
    v9[4] = self;
    v11 = v8;
    v10 = biometryCopy;
    dispatch_async(&_dispatch_main_q, v9);
  }

  else
  {
    (*(biometryCopy + 2))(biometryCopy, 0);
  }
}

- (void)_handleTokenResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    v6 = sub_100002CBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005764(responseCopy);
    }

    selfCopy2 = self;
    v8 = 1;
    goto LABEL_11;
  }

  token = [responseCopy token];
  if (!token || (v10 = token, v11 = [responseCopy statusCode], v10, v11 != 200))
  {
    sub_1000022DC(responseCopy);
    selfCopy2 = self;
    v8 = 2;
LABEL_11:
    [(AuthRemoteAlertViewController *)selfCopy2 _presentAlertController:v8];
    goto LABEL_12;
  }

  sub_1000021D8(2, 0);
  v12 = sub_100002CBC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    token2 = [responseCopy token];
    *buf = 138412290;
    v25 = token2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully received acess token %@", buf, 0xCu);
  }

  v14 = objc_alloc_init(CTCarrierSpaceAuthInfo);
  token3 = [responseCopy token];
  v16 = [token3 dataUsingEncoding:4];
  [v14 setAccessToken:v16];

  refreshToken = [responseCopy refreshToken];
  v18 = [refreshToken dataUsingEncoding:4];
  [v14 setRefreshToken:v18];

  expiryDate = [responseCopy expiryDate];
  [v14 setExpiresAt:expiryDate];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004910;
  v21[3] = &unk_1000105A8;
  v22 = v14;
  selfCopy3 = self;
  v20 = v14;
  [(AuthRemoteAlertViewController *)self _evaluateBiometry:v21];

LABEL_12:
}

- (void)_exchangeAuthCode:(id)code
{
  codeCopy = code;
  v5 = [(AuthRemoteAlertViewController *)self _getURLFromContextForKey:@"kCTCarrierSpaceAuthTokenURL"];
  v6 = [AuthTokenHttpRequest urlRequestForBaseURL:v5 clientID:self->_clientID authCode:codeCopy];
  v7 = sub_100002CBC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending request for auth code exchange: %@", buf, 0xCu);
  }

  _getNSURLSessionConfiguration = [(AuthRemoteAlertViewController *)self _getNSURLSessionConfiguration];
  v9 = [NSURLSession sessionWithConfiguration:_getNSURLSessionConfiguration];
  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004B98;
  v11[3] = &unk_1000105D0;
  objc_copyWeak(&v12, buf);
  v10 = [v9 dataTaskWithRequest:v6 completionHandler:v11];
  [v10 resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (BOOL)_validateRedirectURL:(id)l withExpectedURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  scheme = [lCopy scheme];
  scheme2 = [rLCopy scheme];
  if ((scheme != 0) == (scheme2 != 0))
  {
    host = [lCopy host];
    host2 = [rLCopy host];
    if ((host != 0) != (host2 != 0))
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }

    path = [lCopy path];
    path2 = [rLCopy path];
    v15 = (path != 0) ^ (path2 != 0);

    if (v15)
    {
LABEL_10:
      v9 = 0;
      goto LABEL_8;
    }

    scheme3 = [lCopy scheme];
    if (scheme3)
    {
      v17 = scheme3;
      scheme4 = [rLCopy scheme];
      if (scheme4)
      {
        v19 = scheme4;
        scheme5 = [lCopy scheme];
        scheme6 = [rLCopy scheme];
        v22 = [scheme5 isEqualToString:scheme6];

        if (!v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    host3 = [lCopy host];
    if (host3)
    {
      v24 = host3;
      host4 = [rLCopy host];
      if (host4)
      {
        v26 = host4;
        host5 = [lCopy host];
        host6 = [rLCopy host];
        v29 = [host5 isEqualToString:host6];

        if (!v29)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    path3 = [lCopy path];
    if (!path3)
    {
      v9 = 1;
      goto LABEL_8;
    }

    scheme = path3;
    path4 = [rLCopy path];
    if (!path4)
    {
      v9 = 1;
      goto LABEL_7;
    }

    scheme2 = path4;
    host = [lCopy path];
    host2 = [rLCopy path];
    v9 = [host isEqualToString:host2];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

LABEL_7:
LABEL_8:

  return v9 & 1;
}

- (void)handleAppURL:(id)l
{
  lCopy = l;
  authCodeRequest = self->_authCodeRequest;
  if (authCodeRequest)
  {
    redirectURI = [(AuthCodeHttpRequest *)authCodeRequest redirectURI];
    v7 = [NSURL URLWithString:redirectURI];

    if ([(AuthRemoteAlertViewController *)self _validateRedirectURL:lCopy withExpectedURL:v7])
    {
      v8 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:0];
      queryItems = [v8 queryItems];
      if (!self->_authState)
      {
        goto LABEL_8;
      }

      v10 = [(AuthRemoteAlertViewController *)self _itemWithName:@"state" items:queryItems];
      if (!v10)
      {
        v11 = sub_100002CBC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000058E4();
        }

        goto LABEL_25;
      }

      v11 = v10;
      value = [v10 value];
      v13 = [(AuthRemoteAlertViewController *)self _decodeBase64Dictionary:value];

      if (v13)
      {
        if ([v13 isEqualToDictionary:self->_authState])
        {

LABEL_8:
          v14 = [(AuthRemoteAlertViewController *)self _itemWithName:@"code" items:queryItems];
          v11 = v14;
          if (v14)
          {
            value2 = [v14 value];
            [(AuthRemoteAlertViewController *)self _exchangeAuthCode:value2];

            v16 = self->_authCodeRequest;
            self->_authCodeRequest = 0;

            authState = self->_authState;
            self->_authState = 0;
          }

          else
          {
            sub_1000021D8(2, 1);
            v19 = sub_100002CBC();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_100005920();
            }

            [(AuthRemoteAlertViewController *)self _presentAlertController:2];
          }

          goto LABEL_25;
        }

        sub_1000021D8(2, 5);
        v20 = sub_100002CBC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10000586C();
        }
      }

      else
      {
        v20 = sub_100002CBC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000058A8();
        }
      }

      [(AuthRemoteAlertViewController *)self _presentAlertController:2];
LABEL_25:

      goto LABEL_26;
    }

    sub_1000021D8(2, 4);
    v18 = sub_100002CBC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000057E8();
    }

    [(AuthRemoteAlertViewController *)self _presentAlertController:2];
  }

  else
  {
    v7 = sub_100002CBC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005990();
    }
  }

LABEL_26:
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v10 = [domain isEqualToString:NSURLErrorDomain];

    if (v10)
    {
      if ([v8 code] != -999)
      {
        v11 = sub_100002CBC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000059CC();
        }

        [(AuthRemoteAlertViewController *)self _presentAlertController:1];
      }
    }
  }
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy statusCode] != 200 && objc_msgSend(responseCopy, "statusCode") != 302)
  {
    v6 = sub_100002CBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005A3C(responseCopy);
    }

    sub_1000021D8(3, [responseCopy statusCode]);
    [(AuthRemoteAlertViewController *)self _presentAlertController:1];
  }
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  if (*signal == 1)
  {
    v7[5] = v5;
    v7[6] = v6;
    *signal = 2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000549C;
    v7[3] = &unk_100010450;
    v7[4] = self;
    [(AuthRemoteAlertViewController *)self _sendAuthFailure:10 completion:v7];
  }
}

- (void)handleButtonActions:(id)actions
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionsCopy = actions;
  v5 = [actionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v12 + 1) + 8 * i) events] & 0x11) != 0)
        {
          v9 = sub_100002CBC();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "User pressed lock or home button, dismissing ourselves", buf, 2u);
          }

          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_10000564C;
          v10[3] = &unk_100010450;
          v10[4] = self;
          [(AuthRemoteAlertViewController *)self _sendAuthFailure:10 completion:v10];
          goto LABEL_13;
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

@end