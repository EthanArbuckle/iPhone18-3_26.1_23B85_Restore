@interface ServiceReviewViewController
- (id)_iconForApplication:(id)application;
- (void)_buildReviewInAppConfigurationWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_loadDidFailWithError:(id)error;
- (void)finishImmediately:(id)immediately;
- (void)setupWithParameters:(id)parameters;
@end

@implementation ServiceReviewViewController

- (void)setupWithParameters:(id)parameters
{
  parametersCopy = parameters;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000086C8;
  v5[3] = &unk_100051498;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [(ServiceReviewViewController *)self _buildReviewInAppConfigurationWithParameters:parametersCopy completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)finishImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  presentedViewController = [(ServiceReviewViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100008C08;
    v6[3] = &unk_100051148;
    v6[4] = self;
    -[ServiceReviewViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [immediatelyCopy BOOLValue], v6);
  }
}

- (void)_buildReviewInAppConfigurationWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  _hostApplicationBundleIdentifier = [(ServiceReviewViewController *)self _hostApplicationBundleIdentifier];
  if (_hostApplicationBundleIdentifier)
  {
    goto LABEL_6;
  }

  v9 = [parametersCopy objectForKeyedSubscript:@"bundleID"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSNull null];
  }

  _hostApplicationBundleIdentifier = v11;

  v12 = +[NSNull null];

  if (_hostApplicationBundleIdentifier != v12)
  {
LABEL_6:
    v13 = [LSApplicationProxy applicationProxyForIdentifier:_hostApplicationBundleIdentifier];
    v49 = [(ServiceReviewViewController *)self _iconForApplication:v13];
    v50 = parametersCopy;
    v14 = [parametersCopy objectForKey:SKUIServiceReviewSandboxMode];
    bOOLValue = [v14 BOOLValue];

    v60 = 0;
    v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:_hostApplicationBundleIdentifier allowPlaceholder:0 error:&v60];
    v17 = v60;
    v48 = v16;
    if (v17)
    {
      v18 = +[SSLogConfig sharedConfig];
      shouldLog = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = shouldLog | 2;
      }

      else
      {
        v20 = shouldLog;
      }

      oSLogObject = [v18 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v22 = objc_opt_class();
        v61 = 138543618;
        v62 = v22;
        v63 = 2114;
        v64 = v17;
        v23 = v22;
        LODWORD(v45) = 22;
        v24 = _os_log_send_and_compose_impl();

        v25 = v49;
        if (!v24)
        {
LABEL_19:

          handlerCopy[2](handlerCopy, 0);
          v30 = 0;
LABEL_37:

          parametersCopy = v50;
          goto LABEL_38;
        }

        oSLogObject = [NSString stringWithCString:v24 encoding:4, &v61, v45];
        free(v24);
        SSFileLog();
      }

      else
      {
        v25 = v49;
      }

      goto LABEL_19;
    }

    iTunesMetadata = [v16 iTunesMetadata];
    versionIdentifier = [iTunesMetadata versionIdentifier];

    if (versionIdentifier)
    {
      iTunesMetadata2 = [v16 iTunesMetadata];
      installerVersionID = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [iTunesMetadata2 versionIdentifier]);
    }

    else
    {
      bundleURL = [v13 bundleURL];
      iTunesMetadata2 = [ASFReceipt receiptFromBundleAtURL:bundleURL];

      if (!iTunesMetadata2)
      {
        v30 = 0;
        goto LABEL_33;
      }

      installerVersionID = [iTunesMetadata2 installerVersionID];
    }

    v30 = installerVersionID;
LABEL_33:

    itemID = [v13 itemID];
    unsignedIntegerValue = [itemID unsignedIntegerValue];

    if (unsignedIntegerValue || (bOOLValue & 1) != 0)
    {
      itemID2 = [v13 itemID];
      localizedName = [v13 localizedName];
      v25 = v49;
      v44 = [(ServiceReviewViewController *)self _inAppConfigurationWithItemID:itemID2 bundleID:_hostApplicationBundleIdentifier title:localizedName icon:v49 sandboxed:bOOLValue storeExternalVersionID:v30];

      (handlerCopy)[2](handlerCopy, v44);
    }

    else
    {
      v47 = objc_opt_new();
      [v47 addObject:_hostApplicationBundleIdentifier];
      v40 = +[SKServiceBroker defaultBroker];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1000092F8;
      v58[3] = &unk_1000514C0;
      v58[4] = self;
      v41 = handlerCopy;
      v59 = v41;
      v46 = [v40 storeKitServiceWithErrorHandler:v58];

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10000948C;
      v51[3] = &unk_1000514E8;
      v51[4] = self;
      v56 = v41;
      v52 = _hostApplicationBundleIdentifier;
      v53 = v13;
      v25 = v49;
      v54 = v49;
      v57 = bOOLValue;
      v30 = v30;
      v55 = v30;
      [v46 lookUpItemIDsForDeletableSystemAppsWithBundleIDs:v47 reply:v51];
    }

    goto LABEL_37;
  }

  v31 = +[SSLogConfig sharedConfig];
  shouldLog2 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    v33 = shouldLog2 | 2;
  }

  else
  {
    v33 = shouldLog2;
  }

  oSLogObject2 = [v31 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v33 &= 2u;
  }

  if (!v33)
  {
    goto LABEL_28;
  }

  v61 = 138412290;
  v62 = objc_opt_class();
  v35 = v62;
  LODWORD(v45) = 12;
  v36 = _os_log_send_and_compose_impl();

  if (v36)
  {
    oSLogObject2 = [NSString stringWithCString:v36 encoding:4, &v61, v45];
    free(v36);
    SSFileLog();
LABEL_28:
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_38:
}

- (id)_iconForApplication:(id)application
{
  applicationCopy = application;
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (v6 == 3.0)
  {
    v9 = 32;
  }

  else if (v6 == 2.0)
  {
    if (userInterfaceIdiom == 1)
    {
      v9 = 24;
    }

    else
    {
      v9 = 15;
    }
  }

  else
  {
    v9 = userInterfaceIdiom == 1;
  }

  v10 = [applicationCopy iconDataForVariant:v9];

  v11 = LICreateIconFromCachedBitmap();
  if (v11)
  {
    v12 = [UIImage imageWithCGImage:v11 scale:0 orientation:v6];
  }

  else
  {
    v12 = 0;
  }

  CGImageRelease(v11);

  return v12;
}

- (void)_loadDidFailWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v24 = NSLocalizedDescriptionKey;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_100052318 table:0];
    v25 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    errorCopy = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:v7];
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
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = errorCopy;
    v12 = v21;
    LODWORD(v17) = 22;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v13 encoding:4, &v20, v17];
    free(v13);
    SSFileLog();
  }

LABEL_12:
  v14 = [SKUIErrorHelper errorWithSafeUserInfo:errorCopy];
  presentedViewController = [(ServiceReviewViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009CF8;
    v18[3] = &unk_100051510;
    v18[4] = self;
    v19 = v14;
    [(ServiceReviewViewController *)self dismissViewControllerAnimated:1 completion:v18];
  }

  else
  {
    _clientViewControllerProxy = [(ServiceReviewViewController *)self _clientViewControllerProxy];
    [_clientViewControllerProxy didFinishWithResult:&off_100054FB8 error:v14];
  }
}

@end