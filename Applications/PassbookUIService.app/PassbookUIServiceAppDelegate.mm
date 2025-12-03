@interface PassbookUIServiceAppDelegate
- (BOOL)_handleIssuerBindingRequestWithIssuerData:(id)data signature:(id)signature;
- (BOOL)_handleURLWithHost:(id)host components:(id)components userActivity:(id)activity;
- (BOOL)_handleUniversalLinkWithUserActivity:(id)activity;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (id)_componentsForURL:(id)l;
- (void)_openURLInSafari:(id)safari;
- (void)remoteNetworkPaymentCoordinator:(id)coordinator didPresentPaymentSheet:(BOOL)sheet;
@end

@implementation PassbookUIServiceAppDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  v4 = [PSListController appearance:application];
  v5 = +[UIColor labelColor];
  [v4 setTextColor:v5];

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [PKPassLibrary sharedInstance:application];
  passLibrary = self->_passLibrary;
  self->_passLibrary = v5;

  v7 = +[PKPaymentService paymentService];
  paymentService = self->_paymentService;
  self->_paymentService = v7;

  v9 = objc_alloc_init(PKRemoteNetworkPaymentCoordinator);
  remotePaymentCoordinator = self->_remotePaymentCoordinator;
  self->_remotePaymentCoordinator = v9;

  [(PKRemoteNetworkPaymentCoordinator *)self->_remotePaymentCoordinator setDelegate:self];
  v11 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000021BC;
  v14[3] = &unk_100010568;
  v15 = &stru_100010518;
  dispatch_async(v11, v14);

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Passbook UI Service Did Finish Launching", v14, 2u);
  }

  return 1;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqual:@"shoebox-service"])
  {
    host = [lCopy host];
    if ([host isEqualToString:@"daemon-launch"])
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Launch request received from daemon; notifying.", &v11, 2u);
      }

      [(PKPaymentService *)self->_paymentService passbookUIServiceDidLaunch];
      goto LABEL_9;
    }
  }

  host = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(host, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = lCopy;
    _os_log_impl(&_mh_execute_header, host, OS_LOG_TYPE_DEFAULT, "PassbookUIService did not understand URL %{public}@.", &v11, 0xCu);
  }

LABEL_9:

  return 1;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v8 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

  if (v8)
  {
    v9 = [(PassbookUIServiceAppDelegate *)self _handleUniversalLinkWithUserActivity:activityCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_componentsForURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v4 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_handleUniversalLinkWithUserActivity:(id)activity
{
  activityCopy = activity;
  webpageURL = [activityCopy webpageURL];
  v6 = [(PassbookUIServiceAppDelegate *)self _componentsForURL:webpageURL];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_22;
  }

  selfCopy = self;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = webpageURL;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Processing URL %{public}@", buf, 0xCu);
  }

  host = [v6 host];
  v8 = [v6 URL];
  pathComponents = [v8 pathComponents];

  v10 = [pathComponents count];
  if (!PKIsURLHttpScheme())
  {
    goto LABEL_20;
  }

  v11 = PKWalletUniversalLinkHostName;
  v12 = host;
  v13 = v12;
  if (v12 == v11)
  {

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (!v12 || !v11)
    {

      goto LABEL_20;
    }

    v14 = [v12 isEqualToString:v11];

    if (!v14 || !v10)
    {
      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = PKURLActionRouteAppleCardPaymentPass;
  while (1)
  {
    v18 = [pathComponents objectAtIndexedSubscript:{v16, selfCopy}];
    if (![v18 isEqualToString:@"/"])
    {
      break;
    }

LABEL_17:
    if (v10 == ++v16)
    {
      goto LABEL_20;
    }
  }

  v19 = [v18 isEqualToString:v17];

  if (v19)
  {
    goto LABEL_17;
  }

  if (v16 == -1 || ([pathComponents objectAtIndexedSubscript:v16], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[PassbookUIServiceAppDelegate _handleURLWithHost:components:userActivity:](selfCopy, "_handleURLWithHost:components:userActivity:", v21, v6, activityCopy), v21, (v22 & 1) == 0))
  {
LABEL_20:
    [(PassbookUIServiceAppDelegate *)selfCopy _openURLInSafari:webpageURL, selfCopy];
    v15 = 0;
    goto LABEL_21;
  }

  v15 = 1;
LABEL_21:

LABEL_22:
  return v15;
}

- (BOOL)_handleURLWithHost:(id)host components:(id)components userActivity:(id)activity
{
  hostCopy = host;
  componentsCopy = components;
  activityCopy = activity;
  if (!hostCopy)
  {
    goto LABEL_37;
  }

  v11 = PKURLActionSecurePassSession;
  v12 = hostCopy;
  v13 = v11;
  v14 = v13;
  if (v13 == v12)
  {

    goto LABEL_7;
  }

  if (!v13)
  {

    goto LABEL_12;
  }

  v15 = [v12 isEqualToString:v13];

  if (v15)
  {
LABEL_7:
    fragment = [componentsCopy fragment];
    pathComponents = [fragment componentsSeparatedByString:@"&"];

    if ([pathComponents count] == 2)
    {
      v18 = [NSData alloc];
      v19 = [pathComponents objectAtIndexedSubscript:0];
      v20 = [v18 initWithBase64EncodedString:v19 options:0];

      v21 = [NSData alloc];
      v22 = [pathComponents objectAtIndexedSubscript:1];
      v23 = [v21 initWithBase64EncodedString:v22 options:0];

      v24 = [(PassbookUIServiceAppDelegate *)self _handleIssuerBindingRequestWithIssuerData:v20 signature:v23];
LABEL_19:

LABEL_24:
      goto LABEL_38;
    }

    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v45) = 0;
      v26 = "Missing required parameter for securePassSession.";
      v27 = v25;
      v28 = 2;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, &v45, v28);
    }

LABEL_23:

    v24 = 0;
    goto LABEL_24;
  }

LABEL_12:
  v29 = PKURLActionProvisioningContinuityKey;
  v30 = v12;
  v31 = v29;
  v32 = v31;
  if (v31 == v30)
  {

    goto LABEL_17;
  }

  if (v31)
  {
    v33 = [v30 isEqualToString:v31];

    if (!v33)
    {
      goto LABEL_26;
    }

LABEL_17:
    path = [componentsCopy path];
    pathComponents = [path pathComponents];

    v35 = [pathComponents indexOfObject:v32] + 1;
    if (v35 < [pathComponents count])
    {
      v20 = [pathComponents objectAtIndexedSubscript:v35];
      v24 = [(PassbookUIServiceAppDelegate *)self _handleProvisioningContinuityNotification:v20];
      goto LABEL_19;
    }

    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = pathComponents;
      v26 = "Unable to handle provisioningContinuity url with path components: %@";
      v27 = v25;
      v28 = 12;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_26:
  v36 = PKURLActionRemoteNetworkPaymentInitiate;
  v37 = v30;
  v38 = v36;
  v39 = v38;
  if (v38 == v37)
  {
  }

  else
  {
    if (!v38)
    {

LABEL_37:
      v24 = 0;
      goto LABEL_38;
    }

    v40 = [v37 isEqualToString:v38];

    if (!v40)
    {
      goto LABEL_37;
    }
  }

  if ((PKRemoteNetworkPaymentEnabled() & 1) == 0)
  {
    v43 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v45) = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "App Delegate: URL not handled, feature not enabled", &v45, 2u);
    }

    goto LABEL_37;
  }

  remotePaymentCoordinator = self->_remotePaymentCoordinator;
  _originatingProcess = [activityCopy _originatingProcess];
  [(PKRemoteNetworkPaymentCoordinator *)remotePaymentCoordinator handlePaymentUserActivity:activityCopy originProcess:_originatingProcess];

  v24 = 1;
LABEL_38:

  return v24;
}

- (BOOL)_handleIssuerBindingRequestWithIssuerData:(id)data signature:(id)signature
{
  dataCopy = data;
  signatureCopy = signature;
  v8 = PKValidateIssuerBindingData();
  if (v8)
  {
    [(PKPassLibrary *)self->_passLibrary presentIssuerBindingFlowForIssuerData:dataCopy signature:signatureCopy orientation:&off_100010D50];
  }

  return v8;
}

- (void)_openURLInSafari:(id)safari
{
  safariCopy = safari;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = safariCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cannot handle universal link to URL: %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(_LSOpenConfiguration);
  v11 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v12 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 setFrontBoardOptions:v6];

  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001FA0;
  v9[3] = &unk_100010540;
  v10 = safariCopy;
  v8 = safariCopy;
  [v7 openURL:v8 configuration:v5 completionHandler:v9];
}

- (void)remoteNetworkPaymentCoordinator:(id)coordinator didPresentPaymentSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (sheetCopy)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "App Delegate: Received didPresentPaymentSheet: %@", &v7, 0xCu);
  }
}

@end