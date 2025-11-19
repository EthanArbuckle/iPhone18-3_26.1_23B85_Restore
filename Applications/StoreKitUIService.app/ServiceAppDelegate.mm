@interface ServiceAppDelegate
- (BOOL)_handleSafariScriptDataUpdate:(id)a3;
- (BOOL)_handleUniversalLinkInURLComponents:(id)a3 forApplication:(id)a4;
- (BOOL)_handleUniversalLinkInUserActivity:(id)a3 forApplication:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
@end

@implementation ServiceAppDelegate

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 scheme];
  if (![v11 isEqualToString:@"itms-ui"])
  {
    v12 = [v9 scheme];
    v13 = [v12 isEqualToString:@"ams-ui"];

    if (v13)
    {
      goto LABEL_4;
    }

    v30 = [v9 scheme];
    v31 = [v30 isEqualToString:@"itms-services"];

    if (v31)
    {
      v32 = [[SKUIURL alloc] initWithURL:v9];
      v33 = [v32 actionString];
      if ([v33 isEqualToString:SSScriptURLSafariDataUpdate])
      {
        v34 = +[SSLogConfig sharedConfig];
        v35 = [v34 shouldLog];
        if ([v34 shouldLogToDisk])
        {
          v36 = v35 | 2;
        }

        else
        {
          v36 = v35;
        }

        v37 = [v34 OSLogObject];
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v36 &= 2u;
        }

        if (v36)
        {
          *v102 = 138543618;
          *&v102[4] = objc_opt_class();
          *&v102[12] = 2112;
          *&v102[14] = v9;
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

      if ([v33 isEqualToString:@"purchaseIntent"])
      {
        v52 = +[SSLogConfig sharedDaemonConfig];
        if (!v52)
        {
          v52 = +[SSLogConfig sharedConfig];
        }

        v53 = [v52 shouldLog];
        if ([v52 shouldLogToDisk])
        {
          v54 = v53 | 2;
        }

        else
        {
          v54 = v53;
        }

        v55 = [v52 OSLogObject];
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v54 &= 2u;
        }

        if (v54)
        {
          *v102 = 138412546;
          *&v102[4] = objc_opt_class();
          *&v102[12] = 2112;
          *&v102[14] = v9;
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
        [v9 enumerateQueryWithBlock:v93];
        if (!*(*&v102[8] + 40) || !v95[5])
        {
          goto LABEL_89;
        }

        v74 = [v10 objectForKeyedSubscript:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
        v75 = [v74 bundleIdentifier];
        v92 = v74;
        if ([v75 isEqualToString:@"com.apple.appstored"])
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
        v78 = [v77 appState];
        v79 = [v78 isValid];

        if (v79)
        {
          v80 = [v77 profileValidated];

          if (!v80)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v84 = [LSPlugInKitProxy pluginKitProxyForIdentifier:*(*&v102[8] + 40)];
          v85 = [v84 containingBundle];
          v86 = [v85 bundleType];
          v87 = [v86 isEqualToString:LSUserApplicationType];

          if ((v87 & 1) == 0)
          {

            goto LABEL_87;
          }

          v88 = [v84 profileValidated];

          if ((v88 & 1) == 0)
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

      if ([v9 isStoreServicesURL])
      {
        v59 = +[SSLogConfig sharedConfig];
        v60 = [v59 shouldLog];
        if ([v59 shouldLogToDisk])
        {
          v61 = v60 | 2;
        }

        else
        {
          v61 = v60;
        }

        v62 = [v59 OSLogObject];
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v61 &= 2u;
        }

        if (v61)
        {
          *v102 = 138543618;
          *&v102[4] = objc_opt_class();
          *&v102[12] = 2112;
          *&v102[14] = v9;
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
        v82 = [NSURLRequest requestWithURL:v9];
        v83 = [v81 initWithURLRequest:v82];

        [v83 start];
        [NSThread sleepForTimeInterval:5.0];

        goto LABEL_90;
      }

LABEL_70:
      v28 = 0;
      goto LABEL_14;
    }

    v41 = [v9 scheme];
    v42 = [v41 isEqualToString:@"appstore-ui"];

    if (!v42)
    {
      goto LABEL_70;
    }

    v43 = [v10 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
    v44 = &MKBGetDeviceLockState_ptr;
    v45 = +[SSLogConfig sharedConfig];
    v46 = [v45 shouldLog];
    if ([v45 shouldLogToDisk])
    {
      v47 = v46 | 2;
    }

    else
    {
      v47 = v46;
    }

    v48 = [v45 OSLogObject];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v47 &= 2u;
    }

    if (v47)
    {
      *v102 = 138543874;
      *&v102[4] = objc_opt_class();
      *&v102[12] = 2112;
      *&v102[14] = v9;
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
      v66 = objc_alloc_init(ASCAppLaunchTrampoline);
      v67 = [v66 handleURL:v9];
LABEL_68:

      goto LABEL_14;
    }

    v66 = [v44[355] sharedConfig];
    v68 = [v66 shouldLog];
    if ([v66 shouldLogToDisk])
    {
      v69 = v68 | 2;
    }

    else
    {
      v69 = v68;
    }

    v70 = [v66 OSLogObject];
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
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

      v70 = [NSString stringWithCString:v73 encoding:4, v102, v91];
      free(v73);
      SSFileLog();
    }

    goto LABEL_68;
  }

LABEL_4:
  v14 = [v10 objectForKeyedSubscript:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
  v15 = [v14 bundleIdentifier];
  v16 = +[SSLogConfig sharedConfig];
  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    *v102 = 138543874;
    *&v102[4] = objc_opt_class();
    *&v102[12] = 2112;
    *&v102[14] = v9;
    *&v102[22] = 2114;
    v103 = v15;
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
  [v24 setReferrer:v15];
  v25 = [v9 absoluteString];
  [v24 setURLString:v25];

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

- (BOOL)_handleUniversalLinkInUserActivity:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 activityType];
  v9 = [v8 isEqual:NSUserActivityTypeBrowsingWeb];

  if (v9)
  {
    v10 = [v6 webpageURL];
    if (v10)
    {
      v11 = [[NSURLComponents alloc] initWithURL:v10 resolvingAgainstBaseURL:1];
      if (v11)
      {
        v12 = [(ServiceAppDelegate *)self _handleUniversalLinkInURLComponents:v11 forApplication:v7];
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

- (BOOL)_handleUniversalLinkInURLComponents:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 host];
  v9 = [v8 isEqualToString:@"one.apple.com"];

  if (v9)
  {
    [v6 setScheme:@"ams-ui"];
    v10 = [v6 URL];
    v11 = [(ServiceAppDelegate *)self application:v7 openURL:v10 options:&__NSDictionary0__struct];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_handleSafariScriptDataUpdate:(id)a3
{
  v3 = [a3 underlyingURL];
  v4 = [SSScriptURLHandler shouldHandleSafariScriptURL:v3];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:SSScriptSafariViewControllerDataUpdateNotification object:v3];

    v6 = +[ServiceHostRegistry sharedInstance];
    v7 = [v6 registeredHostBundleId];

    if (!v7)
    {
LABEL_13:

      goto LABEL_14;
    }

    v8 = +[SSLogConfig sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v17 = 138543618;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2114;
      *&v17[14] = v7;
      v12 = *&v17[4];
      LODWORD(v16) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_12:

        v14 = +[FBSSystemService sharedService];
        [v14 openApplication:v7 options:0 withResult:0];

        goto LABEL_13;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, v17, v16, *v17, *&v17[16]];
      free(v13);
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_14:

  return v4;
}

@end