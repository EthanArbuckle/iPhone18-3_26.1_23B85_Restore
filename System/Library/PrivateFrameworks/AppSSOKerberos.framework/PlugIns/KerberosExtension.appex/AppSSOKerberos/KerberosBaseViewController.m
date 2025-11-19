@interface KerberosBaseViewController
- (BOOL)requestContainsNegotiateChallenge:(id)a3;
- (BOOL)retrievePasswordFromKeychain:(id)a3;
- (KerberosBaseViewController)initWithCoder:(id)a3;
- (KerberosBaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addViewControllerAsChildViewController:(id)a3;
- (void)beginAuthorizationWithRequest:(id)a3;
- (void)cancelAuthorizationWithRequest:(id)a3;
- (void)createLoginViewControllerWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleChangePasswordWithRequest:(id)a3;
- (void)handleKerberosOperations:(id)a3;
- (void)handleResult:(unint64_t)a3 context:(id)a4 error:(id)a5;
@end

@implementation KerberosBaseViewController

- (KerberosBaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = KerberosBaseViewController;
  v4 = [(KerberosBaseViewController *)&v12 initWithNibName:a3 bundle:a4];
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

- (KerberosBaseViewController)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = KerberosBaseViewController;
  v3 = [(KerberosBaseViewController *)&v11 initWithCoder:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = KerberosBaseViewController;
  [(KerberosBaseViewController *)&v3 encodeWithCoder:a3];
}

- (void)beginAuthorizationWithRequest:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000976C;
  v7[3] = &unk_100014428;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)cancelAuthorizationWithRequest:(id)a3
{
  v4 = a3;
  v5 = sub_1000099B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B978(v4, v5);
  }

  v6 = [(KerberosBaseViewController *)self process];
  [v6 cancelAuthorizationWithRequest:v4];
}

- (void)handleKerberosOperations:(id)a3
{
  v4 = a3;
  v5 = sub_1000099B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B9F0(v4);
  }

  v6 = [(KerberosBaseViewController *)self process];
  [v6 handleKerberosOperations:v4 andDelegate:self];
}

- (void)handleChangePasswordWithRequest:(id)a3
{
  v4 = a3;
  v5 = sub_1000099B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BA78(v4);
  }

  v6 = [(KerberosBaseViewController *)self process];
  v7 = [v6 createContextForRequest:v4];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009BE8;
  v9[3] = &unk_100014428;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)addViewControllerAsChildViewController:(id)a3
{
  v4 = a3;
  [(KerberosBaseViewController *)self addChildViewController:v4];
  v5 = [v4 view];

  v6 = +[UIColor clearColor];
  v7 = [(KerberosBaseViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [(KerberosBaseViewController *)self view];
  [v8 addSubview:v5];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [v5 topAnchor];
  v29 = [(KerberosBaseViewController *)self view];
  v27 = [v29 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v30[0] = v26;
  v24 = [v5 bottomAnchor];
  v25 = [(KerberosBaseViewController *)self view];
  v23 = [v25 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v30[1] = v22;
  v21 = [v5 leadingAnchor];
  v9 = [(KerberosBaseViewController *)self view];
  v10 = [v9 leadingAnchor];
  v11 = [v21 constraintEqualToAnchor:v10];
  v30[2] = v11;
  v12 = [v5 trailingAnchor];
  v13 = [(KerberosBaseViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v30[3] = v15;
  v16 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  v17 = [(KerberosBaseViewController *)self view];
  v18 = [v17 window];
  [v18 layoutIfNeeded];

  v19 = [(KerberosBaseViewController *)self view];
  v20 = [v19 window];
  [v20 center];
}

- (BOOL)requestContainsNegotiateChallenge:(id)a3
{
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 httpHeaders];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      v10 = [v9 lowercaseString];
      v11 = [v10 isEqualToString:@"www-authenticate"];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
      v13 = [v3 httpHeaders];
      v14 = [v13 objectForKeyedSubscript:v12];

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

- (void)createLoginViewControllerWithContext:(id)a3
{
  v4 = a3;
  v5 = [KerberosLoginViewController alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [(KerberosLoginViewController *)v5 initWithNibName:@"KerberosLoginViewController" bundle:v6];
  [(KerberosBaseViewController *)self setLoginViewController:v7];

  v8 = [(KerberosBaseViewController *)self process];
  v9 = [(KerberosBaseViewController *)self loginViewController];
  [v9 setProcess:v8];

  v10 = [(KerberosBaseViewController *)self keychainHelper];
  v11 = [(KerberosBaseViewController *)self loginViewController];
  [v11 setKeychainHelper:v10];

  v12 = [(KerberosBaseViewController *)self loginViewController];
  [v12 setCurrentUIContext:v4];

  v13 = [(KerberosBaseViewController *)self loginViewController];
  [(KerberosBaseViewController *)self addViewControllerAsChildViewController:v13];
}

- (void)handleResult:(unint64_t)a3 context:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_1000099B0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v43 = a3;
    v44 = 2112;
    v45 = v8;
    v46 = 2112;
    v47 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "handleResult: %lu, %@, %@", buf, 0x20u);
  }

  if (a3 == 18)
  {
    v17 = [v8 extensionData];
    if ([v17 requireUserPresence])
    {
      v18 = [v8 extensionData];
      v19 = [v18 certificateUUID];

      if (!v19)
      {
        v20 = [v8 extensionData];
        v21 = [v20 customUsernameLabel];

        if (![v21 length])
        {
          v22 = +[NSBundle mainBundle];
          v23 = [v22 localizedStringForKey:@"ACTIVE_DIRECTORY_PRODUCTNAME" value:&stru_100014860 table:0];

          v21 = v23;
        }

        v24 = +[NSBundle mainBundle];
        v25 = [v24 localizedStringForKey:@"LAPOLICY_REASON" value:&stru_100014860 table:0];
        v26 = [NSString stringWithFormat:v25, v21];

        v27 = objc_alloc_init(LAContext);
        [v8 setKeychainLAContext:v27];

        v28 = [v8 keychainLAContext];
        [v28 setOptionCallerName:@"Kerberos"];

        v29 = [v8 keychainLAContext];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10000A864;
        v40[3] = &unk_100014450;
        v40[4] = self;
        v41 = v8;
        [v29 evaluatePolicy:4 localizedReason:v26 reply:v40];

        goto LABEL_32;
      }
    }

    else
    {
    }

    goto LABEL_22;
  }

  if (a3 != 1)
  {
    goto LABEL_22;
  }

  if (([v8 attemptedToGetCredsFromKeychain] & 1) == 0 && (objc_msgSend(v8, "credsCameFromKeychain") & 1) == 0)
  {
    v11 = [v8 extensionUserData];
    if (![v11 useKeychain])
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = [v8 extensionData];
    if ([v12 requireUserPresence])
    {

      goto LABEL_10;
    }

    v35 = [(KerberosBaseViewController *)self retrievePasswordFromKeychain:v8];

    if (v35)
    {
      goto LABEL_31;
    }
  }

LABEL_11:
  if (([v8 attemptedToGetCredsFromKeychain] & 1) == 0 && (objc_msgSend(v8, "credsCameFromKeychain") & 1) == 0)
  {
    if (+[SOUtils isInternalBuild])
    {
      v13 = [v8 extensionData];
      v14 = [v13 password];

      if (v14)
      {
        v15 = [v8 extensionData];
        v16 = [v15 password];
        [v8 setPassword:v16];

LABEL_31:
        [v8 setAttemptedToGetCredsFromKeychain:1];
        v21 = [(KerberosBaseViewController *)self process];
        [v21 attemptKerberosWithContext:v8 andDelegate:self];
LABEL_32:

        goto LABEL_33;
      }
    }
  }

LABEL_22:
  v30 = [v8 extensionData];
  v31 = [v30 usePlatformSSOTGT];

  if (!v31)
  {
LABEL_25:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A8FC;
    block[3] = &unk_100014738;
    block[4] = self;
    v37 = v8;
    v39 = a3;
    v38 = v9;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_33;
  }

  v32 = [v8 extensionData];
  if ([v32 allowPlatformSSOAuthFallback])
  {
    v33 = [v8 returnCredentialOnly];

    if (v33)
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

  [v8 completeRequestWithDoNotHandle];
LABEL_33:
}

- (BOOL)retrievePasswordFromKeychain:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceName];
  v6 = sub_1000099B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting credentials from the keychain", buf, 2u);
  }

  v7 = [(KerberosBaseViewController *)self keychainHelper];
  v8 = [v4 keychainLAContext];
  v14 = 0;
  v15 = 0;
  v9 = [v7 retrieveCredentialsFromKeychainWithContext:v8 service:v5 returnedUsername:&v15 returnedPassword:&v14];
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
    [v4 setPassword:v11];
    [v4 setUserName:v10];
    [v4 setCredsCameFromKeychain:1];
  }

  return v9 == 0;
}

@end