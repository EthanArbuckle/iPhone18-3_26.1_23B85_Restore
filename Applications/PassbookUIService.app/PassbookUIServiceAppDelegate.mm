@interface PassbookUIServiceAppDelegate
- (BOOL)_handleIssuerBindingRequestWithIssuerData:(id)a3 signature:(id)a4;
- (BOOL)_handleURLWithHost:(id)a3 components:(id)a4 userActivity:(id)a5;
- (BOOL)_handleUniversalLinkWithUserActivity:(id)a3;
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (id)_componentsForURL:(id)a3;
- (void)_openURLInSafari:(id)a3;
- (void)remoteNetworkPaymentCoordinator:(id)a3 didPresentPaymentSheet:(BOOL)a4;
@end

@implementation PassbookUIServiceAppDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = [PSListController appearance:a3];
  v5 = +[UIColor labelColor];
  [v4 setTextColor:v5];

  return 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [PKPassLibrary sharedInstance:a3];
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

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v6 = a4;
  v7 = [v6 scheme];
  if ([v7 isEqual:@"shoebox-service"])
  {
    v8 = [v6 host];
    if ([v8 isEqualToString:@"daemon-launch"])
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

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PassbookUIService did not understand URL %{public}@.", &v11, 0xCu);
  }

LABEL_9:

  return 1;
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v6 = a4;
  v7 = [v6 activityType];
  v8 = [v7 isEqual:NSUserActivityTypeBrowsingWeb];

  if (v8)
  {
    v9 = [(PassbookUIServiceAppDelegate *)self _handleUniversalLinkWithUserActivity:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_componentsForURL:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[NSURLComponents alloc] initWithURL:v3 resolvingAgainstBaseURL:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_handleUniversalLinkWithUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 webpageURL];
  v6 = [(PassbookUIServiceAppDelegate *)self _componentsForURL:v5];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v23 = self;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Processing URL %{public}@", buf, 0xCu);
  }

  v24 = [v6 host];
  v8 = [v6 URL];
  v9 = [v8 pathComponents];

  v10 = [v9 count];
  if (!PKIsURLHttpScheme())
  {
    goto LABEL_20;
  }

  v11 = PKWalletUniversalLinkHostName;
  v12 = v24;
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
    v18 = [v9 objectAtIndexedSubscript:{v16, v23}];
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

  if (v16 == -1 || ([v9 objectAtIndexedSubscript:v16], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[PassbookUIServiceAppDelegate _handleURLWithHost:components:userActivity:](v23, "_handleURLWithHost:components:userActivity:", v21, v6, v4), v21, (v22 & 1) == 0))
  {
LABEL_20:
    [(PassbookUIServiceAppDelegate *)v23 _openURLInSafari:v5, v23];
    v15 = 0;
    goto LABEL_21;
  }

  v15 = 1;
LABEL_21:

LABEL_22:
  return v15;
}

- (BOOL)_handleURLWithHost:(id)a3 components:(id)a4 userActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    goto LABEL_37;
  }

  v11 = PKURLActionSecurePassSession;
  v12 = v8;
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
    v16 = [v9 fragment];
    v17 = [v16 componentsSeparatedByString:@"&"];

    if ([v17 count] == 2)
    {
      v18 = [NSData alloc];
      v19 = [v17 objectAtIndexedSubscript:0];
      v20 = [v18 initWithBase64EncodedString:v19 options:0];

      v21 = [NSData alloc];
      v22 = [v17 objectAtIndexedSubscript:1];
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
    v34 = [v9 path];
    v17 = [v34 pathComponents];

    v35 = [v17 indexOfObject:v32] + 1;
    if (v35 < [v17 count])
    {
      v20 = [v17 objectAtIndexedSubscript:v35];
      v24 = [(PassbookUIServiceAppDelegate *)self _handleProvisioningContinuityNotification:v20];
      goto LABEL_19;
    }

    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = v17;
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
  v42 = [v10 _originatingProcess];
  [(PKRemoteNetworkPaymentCoordinator *)remotePaymentCoordinator handlePaymentUserActivity:v10 originProcess:v42];

  v24 = 1;
LABEL_38:

  return v24;
}

- (BOOL)_handleIssuerBindingRequestWithIssuerData:(id)a3 signature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKValidateIssuerBindingData();
  if (v8)
  {
    [(PKPassLibrary *)self->_passLibrary presentIssuerBindingFlowForIssuerData:v6 signature:v7 orientation:&off_100010D50];
  }

  return v8;
}

- (void)_openURLInSafari:(id)a3
{
  v3 = a3;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
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
  v10 = v3;
  v8 = v3;
  [v7 openURL:v8 configuration:v5 completionHandler:v9];
}

- (void)remoteNetworkPaymentCoordinator:(id)a3 didPresentPaymentSheet:(BOOL)a4
{
  v4 = a4;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "App Delegate: Received didPresentPaymentSheet: %@", &v7, 0xCu);
  }
}

@end