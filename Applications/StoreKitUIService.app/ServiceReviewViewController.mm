@interface ServiceReviewViewController
- (id)_iconForApplication:(id)a3;
- (void)_buildReviewInAppConfigurationWithParameters:(id)a3 completionHandler:(id)a4;
- (void)_loadDidFailWithError:(id)a3;
- (void)finishImmediately:(id)a3;
- (void)setupWithParameters:(id)a3;
@end

@implementation ServiceReviewViewController

- (void)setupWithParameters:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000086C8;
  v5[3] = &unk_100051498;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [(ServiceReviewViewController *)self _buildReviewInAppConfigurationWithParameters:v4 completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)finishImmediately:(id)a3
{
  v4 = a3;
  v5 = [(ServiceReviewViewController *)self presentedViewController];

  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100008C08;
    v6[3] = &unk_100051148;
    v6[4] = self;
    -[ServiceReviewViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [v4 BOOLValue], v6);
  }
}

- (void)_buildReviewInAppConfigurationWithParameters:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ServiceReviewViewController *)self _hostApplicationBundleIdentifier];
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = [v6 objectForKeyedSubscript:@"bundleID"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v8 = v11;

  v12 = +[NSNull null];

  if (v8 != v12)
  {
LABEL_6:
    v13 = [LSApplicationProxy applicationProxyForIdentifier:v8];
    v49 = [(ServiceReviewViewController *)self _iconForApplication:v13];
    v50 = v6;
    v14 = [v6 objectForKey:SKUIServiceReviewSandboxMode];
    v15 = [v14 BOOLValue];

    v60 = 0;
    v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v60];
    v17 = v60;
    v48 = v16;
    if (v17)
    {
      v18 = +[SSLogConfig sharedConfig];
      v19 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v18 OSLogObject];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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

          v7[2](v7, 0);
          v30 = 0;
LABEL_37:

          v6 = v50;
          goto LABEL_38;
        }

        v21 = [NSString stringWithCString:v24 encoding:4, &v61, v45];
        free(v24);
        SSFileLog();
      }

      else
      {
        v25 = v49;
      }

      goto LABEL_19;
    }

    v26 = [v16 iTunesMetadata];
    v27 = [v26 versionIdentifier];

    if (v27)
    {
      v28 = [v16 iTunesMetadata];
      v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v28 versionIdentifier]);
    }

    else
    {
      v37 = [v13 bundleURL];
      v28 = [ASFReceipt receiptFromBundleAtURL:v37];

      if (!v28)
      {
        v30 = 0;
        goto LABEL_33;
      }

      v29 = [v28 installerVersionID];
    }

    v30 = v29;
LABEL_33:

    v38 = [v13 itemID];
    v39 = [v38 unsignedIntegerValue];

    if (v39 || (v15 & 1) != 0)
    {
      v42 = [v13 itemID];
      v43 = [v13 localizedName];
      v25 = v49;
      v44 = [(ServiceReviewViewController *)self _inAppConfigurationWithItemID:v42 bundleID:v8 title:v43 icon:v49 sandboxed:v15 storeExternalVersionID:v30];

      (v7)[2](v7, v44);
    }

    else
    {
      v47 = objc_opt_new();
      [v47 addObject:v8];
      v40 = +[SKServiceBroker defaultBroker];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1000092F8;
      v58[3] = &unk_1000514C0;
      v58[4] = self;
      v41 = v7;
      v59 = v41;
      v46 = [v40 storeKitServiceWithErrorHandler:v58];

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10000948C;
      v51[3] = &unk_1000514E8;
      v51[4] = self;
      v56 = v41;
      v52 = v8;
      v53 = v13;
      v25 = v49;
      v54 = v49;
      v57 = v15;
      v30 = v30;
      v55 = v30;
      [v46 lookUpItemIDsForDeletableSystemAppsWithBundleIDs:v47 reply:v51];
    }

    goto LABEL_37;
  }

  v31 = +[SSLogConfig sharedConfig];
  v32 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    v33 = v32 | 2;
  }

  else
  {
    v33 = v32;
  }

  v34 = [v31 OSLogObject];
  if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
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
    v34 = [NSString stringWithCString:v36 encoding:4, &v61, v45];
    free(v36);
    SSFileLog();
LABEL_28:
  }

  v7[2](v7, 0);
LABEL_38:
}

- (id)_iconForApplication:(id)a3
{
  v3 = a3;
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v6 == 3.0)
  {
    v9 = 32;
  }

  else if (v6 == 2.0)
  {
    if (v8 == 1)
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
    v9 = v8 == 1;
  }

  v10 = [v3 iconDataForVariant:v9];

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

- (void)_loadDidFailWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v24 = NSLocalizedDescriptionKey;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_100052318 table:0];
    v25 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v4 = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:v7];
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
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v4;
    v12 = v21;
    LODWORD(v17) = 22;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v11 = [NSString stringWithCString:v13 encoding:4, &v20, v17];
    free(v13);
    SSFileLog();
  }

LABEL_12:
  v14 = [SKUIErrorHelper errorWithSafeUserInfo:v4];
  v15 = [(ServiceReviewViewController *)self presentedViewController];

  if (v15)
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
    v16 = [(ServiceReviewViewController *)self _clientViewControllerProxy];
    [v16 didFinishWithResult:&off_100054FB8 error:v14];
  }
}

@end