@interface KerberosBaseViewController
- (BOOL)requestContainsNegotiateChallenge:(id)challenge;
- (BOOL)retrievePasswordFromKeychain:(id)keychain;
- (KerberosBaseViewController)initWithCoder:(id)coder;
- (KerberosBaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addViewControllerAsChildViewController:(id)controller;
- (void)beginAuthorizationWithRequest:(id)request;
- (void)cancelAuthorizationWithRequest:(id)request;
- (void)createLoginViewControllerWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)handleChangePasswordWithRequest:(id)request;
- (void)handleKerberosOperations:(id)operations;
- (void)handleResult:(unint64_t)result context:(id)context error:(id)error;
@end

@implementation KerberosBaseViewController

- (KerberosBaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = KerberosBaseViewController;
  v4 = [(KerberosBaseViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(SOKerberosExtensionProcess);
    process = v4->_process;
    v4->_process = v5;

    v7 = objc_alloc_init(NSOperationQueue);
    requestQueue = v4->_requestQueue;
    v4->_requestQueue = v7;

    [(NSOperationQueue *)v4->_requestQueue setMaxConcurrentOperationCount:1];
    v9 = objc_alloc_init(SOKeychainHelper);
    keychainHelper = v4->_keychainHelper;
    v4->_keychainHelper = v9;
  }

  return v4;
}

- (KerberosBaseViewController)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = KerberosBaseViewController;
  v3 = [(KerberosBaseViewController *)&v11 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_alloc_init(SOKerberosExtensionProcess);
    process = v3->_process;
    v3->_process = v4;

    v6 = objc_alloc_init(NSOperationQueue);
    requestQueue = v3->_requestQueue;
    v3->_requestQueue = v6;

    [(NSOperationQueue *)v3->_requestQueue setMaxConcurrentOperationCount:1];
    v8 = objc_alloc_init(SOKeychainHelper);
    keychainHelper = v3->_keychainHelper;
    v3->_keychainHelper = v8;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = KerberosBaseViewController;
  [(KerberosBaseViewController *)&v3 encodeWithCoder:coder];
}

- (void)beginAuthorizationWithRequest:(id)request
{
  requestCopy = request;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000976C;
  v7[3] = &unk_100014428;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(v5, v7);
}

- (void)cancelAuthorizationWithRequest:(id)request
{
  requestCopy = request;
  v5 = sub_1000099B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B978(requestCopy, v5);
  }

  process = [(KerberosBaseViewController *)self process];
  [process cancelAuthorizationWithRequest:requestCopy];
}

- (void)handleKerberosOperations:(id)operations
{
  operationsCopy = operations;
  v5 = sub_1000099B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B9F0(operationsCopy);
  }

  process = [(KerberosBaseViewController *)self process];
  [process handleKerberosOperations:operationsCopy andDelegate:self];
}

- (void)handleChangePasswordWithRequest:(id)request
{
  requestCopy = request;
  v5 = sub_1000099B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BA78(requestCopy);
  }

  process = [(KerberosBaseViewController *)self process];
  v7 = [process createContextForRequest:requestCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009BE8;
  v9[3] = &unk_100014428;
  v10 = v7;
  selfCopy = self;
  v8 = v7;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)addViewControllerAsChildViewController:(id)controller
{
  controllerCopy = controller;
  [(KerberosBaseViewController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];

  v6 = +[UIColor clearColor];
  view2 = [(KerberosBaseViewController *)self view];
  [view2 setBackgroundColor:v6];

  view3 = [(KerberosBaseViewController *)self view];
  [view3 addSubview:view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [view topAnchor];
  view4 = [(KerberosBaseViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[0] = v26;
  bottomAnchor = [view bottomAnchor];
  view5 = [(KerberosBaseViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[1] = v22;
  leadingAnchor = [view leadingAnchor];
  view6 = [(KerberosBaseViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[2] = v11;
  trailingAnchor = [view trailingAnchor];
  view7 = [(KerberosBaseViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[3] = v15;
  v16 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  view8 = [(KerberosBaseViewController *)self view];
  window = [view8 window];
  [window layoutIfNeeded];

  view9 = [(KerberosBaseViewController *)self view];
  window2 = [view9 window];
  [window2 center];
}

- (BOOL)requestContainsNegotiateChallenge:(id)challenge
{
  challengeCopy = challenge;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  httpHeaders = [challengeCopy httpHeaders];
  v5 = [httpHeaders countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(httpHeaders);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      lowercaseString = [v9 lowercaseString];
      v11 = [lowercaseString isEqualToString:@"www-authenticate"];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [httpHeaders countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (v12)
    {
      httpHeaders2 = [challengeCopy httpHeaders];
      v14 = [httpHeaders2 objectForKeyedSubscript:v12];

      v15 = 1;
      v16 = [v14 rangeOfString:@"Negotiate" options:1];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_9:

    v12 = 0;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)createLoginViewControllerWithContext:(id)context
{
  contextCopy = context;
  v5 = [KerberosLoginViewController alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [(KerberosLoginViewController *)v5 initWithNibName:@"KerberosLoginViewController" bundle:v6];
  [(KerberosBaseViewController *)self setLoginViewController:v7];

  process = [(KerberosBaseViewController *)self process];
  loginViewController = [(KerberosBaseViewController *)self loginViewController];
  [loginViewController setProcess:process];

  keychainHelper = [(KerberosBaseViewController *)self keychainHelper];
  loginViewController2 = [(KerberosBaseViewController *)self loginViewController];
  [loginViewController2 setKeychainHelper:keychainHelper];

  loginViewController3 = [(KerberosBaseViewController *)self loginViewController];
  [loginViewController3 setCurrentUIContext:contextCopy];

  loginViewController4 = [(KerberosBaseViewController *)self loginViewController];
  [(KerberosBaseViewController *)self addViewControllerAsChildViewController:loginViewController4];
}

- (void)handleResult:(unint64_t)result context:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  v10 = sub_1000099B0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    resultCopy = result;
    v44 = 2112;
    v45 = contextCopy;
    v46 = 2112;
    v47 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "handleResult: %lu, %@, %@", buf, 0x20u);
  }

  if (result == 18)
  {
    extensionData = [contextCopy extensionData];
    if ([extensionData requireUserPresence])
    {
      extensionData2 = [contextCopy extensionData];
      certificateUUID = [extensionData2 certificateUUID];

      if (!certificateUUID)
      {
        extensionData3 = [contextCopy extensionData];
        customUsernameLabel = [extensionData3 customUsernameLabel];

        if (![customUsernameLabel length])
        {
          v22 = +[NSBundle mainBundle];
          v23 = [v22 localizedStringForKey:@"ACTIVE_DIRECTORY_PRODUCTNAME" value:&stru_100014860 table:0];

          customUsernameLabel = v23;
        }

        v24 = +[NSBundle mainBundle];
        v25 = [v24 localizedStringForKey:@"LAPOLICY_REASON" value:&stru_100014860 table:0];
        v26 = [NSString stringWithFormat:v25, customUsernameLabel];

        v27 = objc_alloc_init(LAContext);
        [contextCopy setKeychainLAContext:v27];

        keychainLAContext = [contextCopy keychainLAContext];
        [keychainLAContext setOptionCallerName:@"Kerberos"];

        keychainLAContext2 = [contextCopy keychainLAContext];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10000A864;
        v40[3] = &unk_100014450;
        v40[4] = self;
        v41 = contextCopy;
        [keychainLAContext2 evaluatePolicy:4 localizedReason:v26 reply:v40];

        goto LABEL_32;
      }
    }

    else
    {
    }

    goto LABEL_22;
  }

  if (result != 1)
  {
    goto LABEL_22;
  }

  if (([contextCopy attemptedToGetCredsFromKeychain] & 1) == 0 && (objc_msgSend(contextCopy, "credsCameFromKeychain") & 1) == 0)
  {
    extensionUserData = [contextCopy extensionUserData];
    if (![extensionUserData useKeychain])
    {
LABEL_10:

      goto LABEL_11;
    }

    extensionData4 = [contextCopy extensionData];
    if ([extensionData4 requireUserPresence])
    {

      goto LABEL_10;
    }

    v35 = [(KerberosBaseViewController *)self retrievePasswordFromKeychain:contextCopy];

    if (v35)
    {
      goto LABEL_31;
    }
  }

LABEL_11:
  if (([contextCopy attemptedToGetCredsFromKeychain] & 1) == 0 && (objc_msgSend(contextCopy, "credsCameFromKeychain") & 1) == 0)
  {
    if (+[SOUtils isInternalBuild])
    {
      extensionData5 = [contextCopy extensionData];
      password = [extensionData5 password];

      if (password)
      {
        extensionData6 = [contextCopy extensionData];
        password2 = [extensionData6 password];
        [contextCopy setPassword:password2];

LABEL_31:
        [contextCopy setAttemptedToGetCredsFromKeychain:1];
        customUsernameLabel = [(KerberosBaseViewController *)self process];
        [customUsernameLabel attemptKerberosWithContext:contextCopy andDelegate:self];
LABEL_32:

        goto LABEL_33;
      }
    }
  }

LABEL_22:
  extensionData7 = [contextCopy extensionData];
  usePlatformSSOTGT = [extensionData7 usePlatformSSOTGT];

  if (!usePlatformSSOTGT)
  {
LABEL_25:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A8FC;
    block[3] = &unk_100014738;
    block[4] = self;
    v37 = contextCopy;
    resultCopy2 = result;
    v38 = errorCopy;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_33;
  }

  extensionData8 = [contextCopy extensionData];
  if ([extensionData8 allowPlatformSSOAuthFallback])
  {
    returnCredentialOnly = [contextCopy returnCredentialOnly];

    if (returnCredentialOnly)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v34 = sub_1000099B0();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "allowPlatformSSOAuthFallback not enabled", buf, 2u);
  }

  [contextCopy completeRequestWithDoNotHandle];
LABEL_33:
}

- (BOOL)retrievePasswordFromKeychain:(id)keychain
{
  keychainCopy = keychain;
  serviceName = [keychainCopy serviceName];
  v6 = sub_1000099B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting credentials from the keychain", buf, 2u);
  }

  keychainHelper = [(KerberosBaseViewController *)self keychainHelper];
  keychainLAContext = [keychainCopy keychainLAContext];
  v14 = 0;
  v15 = 0;
  v9 = [keychainHelper retrieveCredentialsFromKeychainWithContext:keychainLAContext service:serviceName returnedUsername:&v15 returnedPassword:&v14];
  v10 = v15;
  v11 = v14;

  v12 = sub_1000099B0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "keychainErr returned %d", buf, 8u);
  }

  if (!v9)
  {
    [keychainCopy setPassword:v11];
    [keychainCopy setUserName:v10];
    [keychainCopy setCredsCameFromKeychain:1];
  }

  return v9 == 0;
}

@end