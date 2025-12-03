@interface ServiceAppDelegate
- (BOOL)_handleSafariScriptDataUpdate:(id)update;
- (BOOL)_handleUniversalLinkInURLComponents:(id)components forApplication:(id)application;
- (BOOL)_handleUniversalLinkInUserActivity:(id)activity forApplication:(id)application;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
@end

@implementation ServiceAppDelegate

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  scheme = [lCopy scheme];
  if (![scheme isEqualToString:@"itms-ui"])
  {
    scheme2 = [lCopy scheme];
    v13 = [scheme2 isEqualToString:@"ams-ui"];

    if (v13)
    {
      goto LABEL_4;
    }

    scheme3 = [lCopy scheme];
    v31 = [scheme3 isEqualToString:@"itms-services"];

    if (v31)
    {
      v32 = [[SKUIURL alloc] initWithURL:lCopy];
      actionString = [v32 actionString];
      if ([actionString isEqualToString:SSScriptURLSafariDataUpdate])
      {
        v34 = +[SSLogConfig sharedConfig];
        shouldLog = [v34 shouldLog];
        if ([v34 shouldLogToDisk])
        {
          v36 = shouldLog | 2;
        }

        else
        {
          v36 = shouldLog;
        }

        oSLogObject = [v34 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v36 &= 2u;
        }

        if (v36)
        {
          *v102 = 138543618;
          *&v102[4] = objc_opt_class();
          *&v102[12] = 2112;
          *&v102[14] = lCopy;
          v38 = *&v102[4];
          LODWORD(v91) = 22;
          v39 = _os_log_send_and_compose_impl();

          if (v39)
          {
            v40 = [NSString stringWithCString:v39 encoding:4, v102, v91];
            free(v39);
            SSFileLog();
          }
        }

        else
        {
        }

        v28 = [(ServiceAppDelegate *)self _handleSafariScriptDataUpdate:v32];
        goto LABEL_91;
      }

      if ([actionString isEqualToString:@"purchaseIntent"])
      {
        v52 = +[SSLogConfig sharedDaemonConfig];
        if (!v52)
        {
          v52 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v52 shouldLog];
        if ([v52 shouldLogToDisk])
        {
          v54 = shouldLog2 | 2;
        }

        else
        {
          v54 = shouldLog2;
        }

        oSLogObject2 = [v52 OSLogObject];
        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v54 &= 2u;
        }

        if (v54)
        {
          *v102 = 138412546;
          *&v102[4] = objc_opt_class();
          *&v102[12] = 2112;
          *&v102[14] = lCopy;
          v56 = *&v102[4];
          LODWORD(v91) = 22;
          v90 = v102;
          v57 = _os_log_send_and_compose_impl();

          if (v57)
          {
            v58 = [NSString stringWithCString:v57 encoding:4, v102, v91];
            free(v57);
            v90 = v58;
            SSFileLog();
          }
        }

        else
        {
        }

        *v102 = 0;
        *&v102[8] = v102;
        *&v102[16] = 0x3032000000;
        v103 = sub_10000E828;
        v104 = sub_10000E838;
        v105 = 0;
        v94 = 0;
        v95 = &v94;
        v96 = 0x3032000000;
        v97 = sub_10000E828;
        v98 = sub_10000E838;
        v99 = 0;
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_10000E840;
        v93[3] = &unk_100051668;
        v93[4] = v102;
        v93[5] = &v94;
        [lCopy enumerateQueryWithBlock:v93];
        if (!*(*&v102[8] + 40) || !v95[5])
        {
          goto LABEL_89;
        }

        v74 = [optionsCopy objectForKeyedSubscript:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
        bundleIdentifier = [v74 bundleIdentifier];
        v92 = v74;
        if ([bundleIdentifier isEqualToString:@"com.apple.appstored"])
        {
          v76 = [v74 hasEntitlement:@"com.apple.itunesstored.private"];

          if (v76)
          {
            goto LABEL_85;
          }
        }

        else
        {
        }

        v77 = [LSApplicationProxy applicationProxyForIdentifier:*(*&v102[8] + 40), v90];
        appState = [v77 appState];
        isValid = [appState isValid];

        if (isValid)
        {
          profileValidated = [v77 profileValidated];

          if (!profileValidated)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v84 = [LSPlugInKitProxy pluginKitProxyForIdentifier:*(*&v102[8] + 40)];
          containingBundle = [v84 containingBundle];
          bundleType = [containingBundle bundleType];
          v87 = [bundleType isEqualToString:LSUserApplicationType];

          if ((v87 & 1) == 0)
          {

            goto LABEL_87;
          }

          profileValidated2 = [v84 profileValidated];

          if ((profileValidated2 & 1) == 0)
          {
LABEL_88:

LABEL_89:
            _Block_object_dispose(&v94, 8);

            _Block_object_dispose(v102, 8);
LABEL_90:
            v28 = 1;
LABEL_91:

            goto LABEL_14;
          }
        }

LABEL_85:
        v89 = [SKPurchaseIntent alloc];
        v77 = [v89 initWithBundleId:*(*&v102[8] + 40) productIdentifier:v95[5] appName:0 productName:0];
        [v77 send:&stru_100051688];
LABEL_87:

        goto LABEL_88;
      }

      if ([lCopy isStoreServicesURL])
      {
        v59 = +[SSLogConfig sharedConfig];
        shouldLog3 = [v59 shouldLog];
        if ([v59 shouldLogToDisk])
        {
          v61 = shouldLog3 | 2;
        }

        else
        {
          v61 = shouldLog3;
        }

        oSLogObject3 = [v59 OSLogObject];
        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v61 &= 2u;
        }

        if (v61)
        {
          *v102 = 138543618;
          *&v102[4] = objc_opt_class();
          *&v102[12] = 2112;
          *&v102[14] = lCopy;
          v63 = *&v102[4];
          LODWORD(v91) = 22;
          v64 = _os_log_send_and_compose_impl();

          if (v64)
          {
            v65 = [NSString stringWithCString:v64 encoding:4, v102, v91];
            free(v64);
            SSFileLog();
          }
        }

        else
        {
        }

        v81 = [SSURLConnectionRequest alloc];
        v82 = [NSURLRequest requestWithURL:lCopy];
        v83 = [v81 initWithURLRequest:v82];

        [v83 start];
        [NSThread sleepForTimeInterval:5.0];

        goto LABEL_90;
      }

LABEL_70:
      v28 = 0;
      goto LABEL_14;
    }

    scheme4 = [lCopy scheme];
    v42 = [scheme4 isEqualToString:@"appstore-ui"];

    if (!v42)
    {
      goto LABEL_70;
    }

    v43 = [optionsCopy objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
    v44 = &MKBGetDeviceLockState_ptr;
    v45 = +[SSLogConfig sharedConfig];
    shouldLog4 = [v45 shouldLog];
    if ([v45 shouldLogToDisk])
    {
      v47 = shouldLog4 | 2;
    }

    else
    {
      v47 = shouldLog4;
    }

    oSLogObject4 = [v45 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v47 &= 2u;
    }

    if (v47)
    {
      *v102 = 138543874;
      *&v102[4] = objc_opt_class();
      *&v102[12] = 2112;
      *&v102[14] = lCopy;
      *&v102[22] = 2112;
      v103 = v43;
      v49 = *&v102[4];
      LODWORD(v91) = 32;
      v90 = v102;
      v50 = _os_log_send_and_compose_impl();

      v44 = &MKBGetDeviceLockState_ptr;
      if (v50)
      {
        v51 = [NSString stringWithCString:v50 encoding:4, v102, v91];
        free(v50);
        v90 = v51;
        SSFileLog();
      }
    }

    else
    {
    }

    v28 = [&off_100055080 containsObject:v43];
    if (v28)
    {
      sharedConfig = objc_alloc_init(ASCAppLaunchTrampoline);
      v67 = [sharedConfig handleURL:lCopy];
LABEL_68:

      goto LABEL_14;
    }

    sharedConfig = [v44[355] sharedConfig];
    shouldLog5 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      v69 = shouldLog5 | 2;
    }

    else
    {
      v69 = shouldLog5;
    }

    oSLogObject5 = [sharedConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v69 &= 2u;
    }

    if (v69)
    {
      v71 = objc_opt_class();
      *v102 = 138543618;
      *&v102[4] = v71;
      *&v102[12] = 2112;
      *&v102[14] = v43;
      v72 = v71;
      LODWORD(v91) = 22;
      v73 = _os_log_send_and_compose_impl();

      if (!v73)
      {
        goto LABEL_68;
      }

      oSLogObject5 = [NSString stringWithCString:v73 encoding:4, v102, v91];
      free(v73);
      SSFileLog();
    }

    goto LABEL_68;
  }

LABEL_4:
  v14 = [optionsCopy objectForKeyedSubscript:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
  bundleIdentifier2 = [v14 bundleIdentifier];
  v16 = +[SSLogConfig sharedConfig];
  shouldLog6 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = shouldLog6 | 2;
  }

  else
  {
    v18 = shouldLog6;
  }

  oSLogObject6 = [v16 OSLogObject];
  if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    *v102 = 138543874;
    *&v102[4] = objc_opt_class();
    *&v102[12] = 2112;
    *&v102[14] = lCopy;
    *&v102[22] = 2114;
    v103 = bundleIdentifier2;
    v20 = *&v102[4];
    LODWORD(v91) = 32;
    v21 = _os_log_send_and_compose_impl();

    if (v21)
    {
      v22 = [NSString stringWithCString:v21 encoding:4, v102, v91];
      free(v21);
      SSFileLog();
    }
  }

  else
  {
  }

  v23 = dispatch_semaphore_create(0);
  v24 = objc_alloc_init(SSRemoteWebViewRequest);
  [v24 setReferrer:bundleIdentifier2];
  absoluteString = [lCopy absoluteString];
  [v24 setURLString:absoluteString];

  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_10000E820;
  v100[3] = &unk_100050FC8;
  v101 = v23;
  v26 = v23;
  [v24 startWithCompletionBlock:v100];
  v27 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v26, v27);

  v28 = 1;
LABEL_14:

  return v28;
}

- (BOOL)_handleUniversalLinkInUserActivity:(id)activity forApplication:(id)application
{
  activityCopy = activity;
  applicationCopy = application;
  activityType = [activityCopy activityType];
  v9 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

  if (v9)
  {
    webpageURL = [activityCopy webpageURL];
    if (webpageURL)
    {
      v11 = [[NSURLComponents alloc] initWithURL:webpageURL resolvingAgainstBaseURL:1];
      if (v11)
      {
        v12 = [(ServiceAppDelegate *)self _handleUniversalLinkInURLComponents:v11 forApplication:applicationCopy];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_handleUniversalLinkInURLComponents:(id)components forApplication:(id)application
{
  componentsCopy = components;
  applicationCopy = application;
  host = [componentsCopy host];
  v9 = [host isEqualToString:@"one.apple.com"];

  if (v9)
  {
    [componentsCopy setScheme:@"ams-ui"];
    v10 = [componentsCopy URL];
    v11 = [(ServiceAppDelegate *)self application:applicationCopy openURL:v10 options:&__NSDictionary0__struct];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_handleSafariScriptDataUpdate:(id)update
{
  underlyingURL = [update underlyingURL];
  v4 = [SSScriptURLHandler shouldHandleSafariScriptURL:underlyingURL];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:SSScriptSafariViewControllerDataUpdateNotification object:underlyingURL];

    v6 = +[ServiceHostRegistry sharedInstance];
    registeredHostBundleId = [v6 registeredHostBundleId];

    if (!registeredHostBundleId)
    {
LABEL_13:

      goto LABEL_14;
    }

    v8 = +[SSLogConfig sharedConfig];
    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v17 = 138543618;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2114;
      *&v17[14] = registeredHostBundleId;
      v12 = *&v17[4];
      LODWORD(v16) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_12:

        v14 = +[FBSSystemService sharedService];
        [v14 openApplication:registeredHostBundleId options:0 withResult:0];

        goto LABEL_13;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4, v17, v16, *v17, *&v17[16]];
      free(v13);
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_14:

  return v4;
}

@end