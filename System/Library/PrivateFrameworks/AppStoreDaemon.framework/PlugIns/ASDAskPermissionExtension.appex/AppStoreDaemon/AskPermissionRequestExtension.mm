@interface AskPermissionRequestExtension
- (void)checkDownloadQueue;
- (void)requestUpdatedWithResult:(id)result completion:(id)completion;
@end

@implementation AskPermissionRequestExtension

- (void)checkDownloadQueue
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed];

  v5 = +[MCProfileConnection sharedConnection];
  isAutomaticAppDownloadsAllowed = [v5 isAutomaticAppDownloadsAllowed];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v14 = objc_opt_class();
    v15 = 1024;
    v16 = v4 != 2;
    v17 = 1024;
    v18 = isAutomaticAppDownloadsAllowed;
    v7 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request to check download queue received. appInstallsAllowed: %{BOOL}d autoDownloadsAllowed: %{BOOL}d", buf, 0x18u);
  }

  if (((v4 != 2) & isAutomaticAppDownloadsAllowed) != 0)
  {
    v8 = [[ASDCheckQueueRequestOptions alloc] initWithReason:1];
    v9 = [[ASDCheckQueueRequest alloc] initWithOptions:v8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100000F10;
    v12[3] = &unk_1000041D0;
    v12[4] = self;
    [v9 sendRequestCompletionBlock:v12];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    *buf = 138543362;
    v14 = v10;
    v11 = v10;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Failing family purchase request due to permission setting(s).", buf, 0xCu);
  }
}

- (void)requestUpdatedWithResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v8 = +[MCProfileConnection sharedConnection];
  v9 = [v8 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed];

  v10 = +[MCProfileConnection sharedConnection];
  isAutomaticAppDownloadsAllowed = [v10 isAutomaticAppDownloadsAllowed];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 1024;
    *&buf[14] = v9 != 2;
    *&buf[18] = 1024;
    *&buf[20] = isAutomaticAppDownloadsAllowed;
    LOWORD(v61) = 2114;
    *(&v61 + 2) = resultCopy;
    v12 = *&buf[4];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request updated. appInstallsAllowed: %{BOOL}d autoDownloadsAllowed: %{BOOL}d result: %{public}@", buf, 0x22u);
  }

  if (((v9 != 2) & isAutomaticAppDownloadsAllowed) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      *buf = 138543362;
      *&buf[4] = v39;
      v40 = v39;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Failing family purchase request due to permission setting(s).", buf, 0xCu);
    }

    goto LABEL_15;
  }

  productType = [resultCopy productType];
  v14 = [productType isEqualToString:@"C"];

  if (!v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      v41 = objc_opt_class();
      v42 = v41;
      productType2 = [resultCopy productType];
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2114;
      *&buf[14] = productType2;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%{public}@] AskPermission updated request for unhandled product type '%{public}@'", buf, 0x16u);
    }

LABEL_15:
    completionCopy[2](completionCopy);
    goto LABEL_28;
  }

  if (self)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_1000019FC;
    v54 = sub_100001A0C;
    v55 = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v16 ams_activeiTunesAccount];

    v18 = [AMSBag bagForProfile:@"appstored" profileVersion:@"1"];
    v19 = [AMSMetricsIdentifierStore identifierStoreWithAccount:ams_activeiTunesAccount bagNamespace:@"APPSTORE_PAYMENTS_ENGAGEMENT" bag:v18];
    v20 = [AMSMetricsIdentifierStore identifierForAccount:ams_activeiTunesAccount bag:v18 bagNamespace:@"APPSTORE_PAYMENTS_ENGAGEMENT_CLIENT" keyName:@"clientId"];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100001B20;
    *&v61 = &unk_100004270;
    *(&v61 + 1) = v19;
    v21 = v19;
    v22 = [v20 thenWithBlock:buf];

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100001A14;
    *&v61 = &unk_100004220;
    *(&v61 + 1) = self;
    v63 = &v50;
    v23 = v15;
    v62 = v23;
    [v22 resultWithCompletion:buf];
    v24 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v23, v24))
    {
      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        *v56 = 138543362;
        v57 = v44;
        v45 = v44;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}@] Timed out attempting to initialize AMSMetricsIdentifierStore", v56, 0xCu);
      }
    }

    if (v51[5])
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = objc_opt_class();
        v28 = v51[5];
        *v56 = 138543618;
        v57 = v27;
        v58 = 2112;
        v59 = v28;
        v29 = v27;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[%{public}@] Got the following fields from the AMSMetricsIdentifierStore. Fields: %@", v56, 0x16u);
      }
    }

    else
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v46 = objc_opt_class();
        *v56 = 138543362;
        v57 = v46;
        v47 = v46;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to load AMSMetricsIdentifierStore", v56, 0xCu);
      }
    }

    v30 = v51[5];
    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_alloc_init(ASDPurchase);
  bundleIdentifier = [resultCopy bundleIdentifier];
  [v31 setBundleID:bundleIdentifier];

  buyParams = [resultCopy buyParams];
  [v31 setBuyParameters:buyParams];

  itemIdentifier = [resultCopy itemIdentifier];
  v35 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemIdentifier longLongValue]);
  [v31 setItemID:v35];

  [v31 setIsRedownload:1];
  if (v30 && [v30 count])
  {
    [v31 setMetricsOverlay:v30];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v36;
    *&buf[12] = 2114;
    *&buf[14] = v31;
    v37 = v36;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing purchase. Purchase: %{public}@", buf, 0x16u);
  }

  v38 = +[ASDPurchaseManager sharedManager];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100001874;
  v48[3] = &unk_1000041F8;
  v48[4] = self;
  v49 = completionCopy;
  [v38 processPurchase:v31 withResponseHandler:v48];

LABEL_28:
}

@end