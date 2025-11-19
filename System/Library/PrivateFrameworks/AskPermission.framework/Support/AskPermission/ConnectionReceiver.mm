@interface ConnectionReceiver
+ (ConnectionReceiver)sharedReceiver;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_getMatchingRequestsViaUserDefaultsCheckWithIdentifier:(id)a3;
- (id)_getRequestRequestViaUserDefaultsCheckWithIdentifier:(id)a3;
- (void)addExceptionRequestWithUUID:(id)a3 type:(int64_t)a4 title:(id)a5 message:(id)a6 bundleIdentifier:(id)a7 adamID:(id)a8 distributorID:(id)a9 ageRatingValue:(id)a10 preApprove:(id)a11 postApprove:(id)a12 preDecline:(id)a13 postDecline:(id)a14 responseBundleIdentifier:(id)a15 metadata:(id)a16 withCompletion:(id)a17;
- (void)addRequestWithURL:(id)a3 account:(id)a4 completion:(id)a5;
- (void)checkDownloadQueueWithContentType:(int64_t)a3 completion:(id)a4;
- (void)clearExceptionRequestsWithCompletion:(id)a3;
- (void)didReceiveStorePushNotificationWithPayload:(id)a3;
- (void)getCachedRequestsWithCompletion:(id)a3;
- (void)getExceptionRequestWithDistributorIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getExceptionRequestWithUniqueIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getExceptionRequestsWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getExceptionRequestsWithCompletion:(id)a3;
- (void)getMatchingRequestsWithIdentifier:(id)a3 completion:(id)a4;
- (void)getRequestWithIdentifier:(id)a3 completion:(id)a4;
- (void)getRequestWithItemIdentifier:(id)a3 completion:(id)a4;
- (void)localApproveExceptionWithUniqueIdentifier:(id)a3 completionHandler:(id)a4;
- (void)localApproveRequestWithItemIdentifier:(id)a3 completion:(id)a4;
- (void)presentApprovalSheetWithRequestIdentifier:(id)a3 completion:(id)a4;
- (void)presentProductPageWithTitle:(id)a3 body:(id)a4 approve:(id)a5 decline:(id)a6 itemIdentifier:(id)a7 previewURL:(id)a8 offerName:(id)a9 requestString:(id)a10 requestSummary:(id)a11 priceSummary:(id)a12 isException:(BOOL)a13;
- (void)resetAccountWithType:(int64_t)a3;
- (void)restartAPNSConnection;
- (void)start;
- (void)updateExceptionRequestWithUniqueIdentifier:(id)a3 action:(int64_t)a4 completionHandler:(id)a5;
- (void)updateRequestWithIdentifier:(id)a3 action:(int64_t)a4 completion:(id)a5;
@end

@implementation ConnectionReceiver

+ (ConnectionReceiver)sharedReceiver
{
  if (qword_100063CC0 != -1)
  {
    sub_100011F18();
  }

  v3 = qword_100063CC8;

  return v3;
}

- (void)start
{
  v3 = [(ConnectionReceiver *)self connectionListener];

  if (!v3)
  {
    v4 = +[APLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting connection listener", &v10, 0xCu);
    }

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.askpermissiond"];
    [(ConnectionReceiver *)self setConnectionListener:v7];

    v8 = [(ConnectionReceiver *)self connectionListener];
    [v8 setDelegate:self];

    v9 = [(ConnectionReceiver *)self connectionListener];
    [v9 resume];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v7;
    v10 = v21;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting new connection. Connection: %{public}@", buf, 0x16u);
  }

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ConnectionProtocol];
  [v7 setExportedInterface:v11];
  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BCB0;
  v18[3] = &unk_100054F28;
  objc_copyWeak(&v19, buf);
  [v7 setInvalidationHandler:v18];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000BDAC;
  v16 = &unk_100054F28;
  objc_copyWeak(&v17, buf);
  [v7 setInterruptionHandler:&v13];
  [v7 setExportedObject:{self, v13, v14, v15, v16}];
  [v7 resume];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return 1;
}

- (void)addRequestWithURL:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    v13 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Add request. URL: %{public}@, account: %{public}@", buf, 0x20u);
  }

  v14 = [[PostRequestTask alloc] initWithRequestURL:v8 account:v9];
  v15 = [(PostRequestTask *)v14 perform];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C07C;
  v17[3] = &unk_100054F50;
  v17[4] = self;
  v18 = v10;
  v16 = v10;
  [v15 addFinishBlock:v17];
}

- (void)resetAccountWithType:(int64_t)a3
{
  v5 = +[APLogConfig sharedFrameworkConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2050;
    *&buf[14] = a3;
    v7 = *&buf[4];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Reset account with type: %{public}ld", buf, 0x16u);
  }

  if (a3 == 1)
  {
    v8 = objc_alloc_init(ResetRequesterAccountTask);
    v9 = [(ResetRequesterAccountTask *)v8 perform];
    v10 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000C5B4;
    v15 = &unk_100054F78;
    v16 = self;
    v11 = &v12;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v8 = objc_alloc_init(ResetApproverAccountTask);
    v9 = [(ResetRequesterAccountTask *)v8 perform];
    v10 = v9;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10000C428;
    v20 = &unk_100054F78;
    v21 = self;
    v11 = &v17;
  }

  [v9 addFinishBlock:{v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, *buf, *&buf[16]}];
}

- (void)checkDownloadQueueWithContentType:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = objc_opt_class();
    v8 = v25;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking download queue.", buf, 0xCu);
  }

  v9 = +[ExtensionManager sharedExtensionManager];
  v23 = 0;
  v10 = [v9 checkDownloadQueueWithContentType:a3 error:&v23];
  v11 = v23;

  v12 = +[APLogConfig sharedDaemonConfig];
  v13 = v12;
  if (v10)
  {
    if (!v12)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v25 = v15;
      v16 = v15;
      v17 = "%{public}@: Checked download queue succesfully.";
      v18 = v14;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    }
  }

  else
  {
    if (!v12)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v25 = v21;
      v26 = 2114;
      v27 = v11;
      v16 = v21;
      v17 = "%{public}@: Fail to check download queue with error: %{public}@.";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
      goto LABEL_14;
    }
  }

  v22 = [v11 ams_sanitizedForSecureCoding];
  v5[2](v5, v22);
}

- (void)getCachedRequestsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting all cached requests via XPC", buf, 0xCu);
  }

  v7 = +[ACAccountStore ams_sharedAccountStore];
  v8 = [v7 ams_activeiCloudAccount];
  v9 = [v8 ams_DSID];

  v10 = [[FamilyRequestTask alloc] initWithDSID:v9];
  v11 = [(FamilyRequestTask *)v10 perform];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000CB90;
  v13[3] = &unk_100055020;
  v14 = v3;
  v12 = v3;
  [v11 resultWithCompletion:v13];
}

- (void)getRequestWithItemIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = v5;
    v9 = v18;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting request via XPC for itemIdentifer/adamID: %@", buf, 0x16u);
  }

  v10 = objc_alloc_init(FamilyRequestTask);
  v11 = [(FamilyRequestTask *)v10 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CF00;
  v14[3] = &unk_100055048;
  v15 = v5;
  v16 = v6;
  v12 = v6;
  v13 = v5;
  [v11 resultWithCompletion:v14];
}

- (void)localApproveRequestWithItemIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v6;
    v10 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Local approve request. Item identifier: %{public}@", buf, 0x16u);
  }

  v11 = [[LocalApproveRequestTask alloc] initWithItemIdentifier:v6];
  v12 = [(LocalApproveRequestTask *)v11 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D1D8;
  v14[3] = &unk_100054F50;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v12 addFinishBlock:v14];
}

- (void)presentApprovalSheetWithRequestIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = objc_opt_class();
    v31 = 2114;
    v32 = v6;
    v10 = v30;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Present approval sheet. Request identifier: %{public}@", buf, 0x16u);
  }

  v11 = +[ApproverStore sharedStore];
  v12 = [v11 approvalRequestWithRequestIdentifier:v6];

  if (v12)
  {
    v28 = 0;
    [ProductPagePresenter presentRequest:v12 withError:&v28];
    v13 = v28;
    if (v13)
    {
      v14 = +[APLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[APLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        *buf = 138543618;
        v30 = v16;
        v31 = 2114;
        v32 = v13;
        v17 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error presenting approval sheet. Error: %{public}@", buf, 0x16u);
      }

      v18 = [(FetchRequestTask *)v13 ams_sanitizedForSecureCoding];
      v7[2](v7, v18);
    }
  }

  else
  {
    v19 = +[APLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[APLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v6;
      v22 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to find cached request. Attempting to fetch from server. Identifier: %@", buf, 0x16u);
    }

    v13 = [[FetchRequestTask alloc] initWithIdentifier:v6];
    objc_initWeak(buf, v13);
    v23 = [(FetchRequestTask *)v13 perform];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000D76C;
    v24[3] = &unk_100055070;
    objc_copyWeak(&v27, buf);
    v24[4] = self;
    v26 = v7;
    v25 = v6;
    [v23 addFinishBlock:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }
}

- (void)restartAPNSConnection
{
  v2 = +[RemoteNotificationHandler sharedHandler];
  [v2 start];
}

- (void)updateRequestWithIdentifier:(id)a3 action:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    v23 = a4;
    v12 = v19;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Update request. Identifier: %{public}@, action: %{public}ld", buf, 0x20u);
  }

  v13 = [[UpdateRequestTask alloc] initWithRequestIdentifier:v8 action:a4];
  v14 = [(UpdateRequestTask *)v13 perform];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000DC60;
  v16[3] = &unk_100054F50;
  v16[4] = self;
  v17 = v9;
  v15 = v9;
  [v14 addFinishBlock:v16];
}

- (void)addExceptionRequestWithUUID:(id)a3 type:(int64_t)a4 title:(id)a5 message:(id)a6 bundleIdentifier:(id)a7 adamID:(id)a8 distributorID:(id)a9 ageRatingValue:(id)a10 preApprove:(id)a11 postApprove:(id)a12 preDecline:(id)a13 postDecline:(id)a14 responseBundleIdentifier:(id)a15 metadata:(id)a16 withCompletion:(id)a17
{
  v38 = a17;
  v35 = a16;
  v34 = a15;
  v33 = a14;
  v32 = a13;
  v31 = a12;
  v30 = a11;
  v29 = a10;
  v28 = a9;
  v27 = a8;
  v18 = a7;
  v26 = a6;
  v42 = a5;
  v40 = a3;
  v19 = +[APLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[APLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = objc_opt_class();
    v21 = v46;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating AddExceptionTask...", buf, 0xCu);
  }

  v37 = [[AddExceptionTask alloc] initWithUUID:v40 type:a4 title:v42 message:v26 bundleIdentifier:v18 adamID:v27 distributorID:v28 ageRatingValue:v29 preApprove:v30 postApprove:v31 preDecline:v32 postDecline:v33 metadata:v35 responseBundleIdentifier:v34];
  v22 = [(AddExceptionTask *)v37 perform];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10000E0EC;
  v43[3] = &unk_100055098;
  v44 = v38;
  v23 = v38;
  [v22 addFinishBlock:v43];
}

- (void)getExceptionRequestsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating GetExceptionsTask...", buf, 0xCu);
  }

  v8 = objc_alloc_init(GetExceptionsTask);
  v9 = [(GetExceptionsTask *)v8 perform];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E290;
  v11[3] = &unk_100055100;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 addFinishBlock:v11];
}

- (void)getExceptionRequestWithUniqueIdentifier:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v5 = a3;
  v6 = +[ExceptionRequestStore sharedStore];
  v7 = [v6 getExceptionRequestWithUniqueIdentifier:v5];

  if (v9)
  {
    v8 = [v7 compile];
    v9[2](v9, v8);
  }
}

- (void)getExceptionRequestsWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = v6;
    v10 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating GetExceptionsTask with BundleIdentifier: %@", buf, 0x16u);
  }

  v11 = [[GetExceptionsTask alloc] initWithBundleIdentifier:v6];
  v12 = [(GetExceptionsTask *)v11 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E714;
  v14[3] = &unk_100055100;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v12 addFinishBlock:v14];
}

- (void)getExceptionRequestWithDistributorIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = v6;
    v10 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating GetExceptionsTask with DistributorID: %@", buf, 0x16u);
  }

  v11 = [[GetExceptionsTask alloc] initWithDistributorID:v6];
  v12 = [(GetExceptionsTask *)v11 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000EAE0;
  v14[3] = &unk_100055100;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v12 addFinishBlock:v14];
}

- (void)localApproveExceptionWithUniqueIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = objc_opt_class();
    v32 = 2112;
    v33 = v6;
    v10 = v31;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Local Approval for Exception Request: %@", buf, 0x16u);
  }

  v11 = +[ExceptionRequestStore sharedStore];
  v12 = [v11 getExceptionRequestWithUniqueIdentifier:v6];

  if (v12)
  {
    v13 = [v12 uniqueIdentifier];

    if (v13)
    {
      v14 = +[_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager shared];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000F054;
      v23[3] = &unk_1000551B8;
      v24 = v6;
      v25 = self;
      v26 = v12;
      v27 = v7;
      [v14 presentLocalApprovalWithUniqueIdentifier:v24 completion:v23];

      v15 = v24;
LABEL_14:

      goto LABEL_15;
    }
  }

  v16 = +[APLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[APLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    *buf = 138543362;
    v31 = v18;
    v19 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find Exception Request", buf, 0xCu);
  }

  if (v7)
  {
    v20 = APErrorDomain;
    v28[0] = @"uniqueIdentifier";
    v28[1] = NSLocalizedFailureReasonErrorKey;
    v29[0] = v6;
    v21 = [NSString stringWithFormat:@"Unable to find Exception Request with Unique ID: %@", v6];
    v29[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v15 = [NSError errorWithDomain:v20 code:4 userInfo:v22];

    (*(v7 + 2))(v7, 0, v15);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)updateExceptionRequestWithUniqueIdentifier:(id)a3 action:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = @"Decline";
    *buf = 138543874;
    v79 = v12;
    v80 = 2112;
    if (!a4)
    {
      v13 = @"Approve";
    }

    v81 = v8;
    v82 = 2112;
    v83 = v13;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating Exception Request: %@, action: %@", buf, 0x20u);
  }

  v15 = +[ExceptionRequestStore sharedStore];
  v16 = [v15 getExceptionRequestWithUniqueIdentifier:v8];

  v17 = +[APLogConfig sharedDaemonConfig];
  v18 = v17;
  if (v16)
  {
    if (!v17)
    {
      v18 = +[APLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v8;
      v21 = v9;
      v22 = objc_opt_class();
      v23 = self;
      v24 = v22;
      AMSHashIfNeeded();
      v26 = v25 = v16;
      *buf = 138543618;
      v79 = v22;
      v9 = v21;
      v8 = v20;
      v80 = 2114;
      v81 = v26;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Found request: %{public}@", buf, 0x16u);

      v16 = v25;
      self = v23;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        v27 = @"declined";
        v28 = 2;
      }

      else
      {
        v28 = 0;
        v27 = @"pending";
      }

      if ([v16 approvalStatus] != v28)
      {
        v43 = +[APLogConfig sharedDaemonConfig];
        if (!v43)
        {
          v43 = +[APLogConfig sharedConfig];
        }

        v44 = [v43 OSLogObject];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_opt_class();
          *buf = 138543362;
          v79 = v45;
          v46 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: Request state does not match, updating store", buf, 0xCu);
        }

        [v16 setApprovalStatus:v28];
        v47 = +[ExceptionRequestStore sharedStore];
        [v47 storeRequest:v16];

        if (v9)
        {
          v9[2](v9, 0);
        }

        goto LABEL_47;
      }
    }

    else
    {
      if ([v16 approvalStatus] != 1)
      {
        v48 = +[APLogConfig sharedDaemonConfig];
        if (!v48)
        {
          v48 = +[APLogConfig sharedConfig];
        }

        v69 = v9;
        v49 = [v48 OSLogObject];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = objc_opt_class();
          *buf = 138543362;
          v79 = v50;
          v51 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: Request state does not match, creating exception to track approval", buf, 0xCu);
        }

        v52 = self;

        v68 = [STExceptionApp alloc];
        v53 = [v16 requesterDSID];
        v54 = [v16 bundleIdentifier];
        v55 = [v16 adamID];
        v56 = [v55 unsignedLongLongValue];
        v57 = [v16 distributorID];
        v58 = v16;
        v59 = v57;
        v60 = v58;
        v61 = [v58 ageRatingValue];
        v62 = [v68 initWithRequesterDSID:v53 bundleIdentifier:v54 adamID:v56 distributorID:v59 ratingValue:{objc_msgSend(v61, "unsignedLongLongValue")}];

        v63 = +[APLogConfig sharedDaemonConfig];
        if (!v63)
        {
          v63 = +[APLogConfig sharedConfig];
        }

        v64 = [v63 OSLogObject];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = objc_opt_class();
          v66 = v65;
          v67 = AMSHashIfNeeded();
          *buf = 138543618;
          v79 = v65;
          v80 = 2114;
          v81 = v67;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}@: Created exception: %{public}@", buf, 0x16u);
        }

        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_100010058;
        v70[3] = &unk_1000551E0;
        v70[4] = v52;
        v16 = v60;
        v71 = v60;
        v73 = 1;
        v9 = v69;
        v72 = v69;
        [v62 addExceptionWithCompletionHandler:v70];

        goto LABEL_47;
      }

      v27 = @"approved";
    }

    v37 = +[APLogConfig sharedDaemonConfig];
    if (!v37)
    {
      v37 = +[APLogConfig sharedConfig];
    }

    v38 = [v37 OSLogObject];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      *buf = 138543618;
      v79 = v39;
      v80 = 2112;
      v81 = v27;
      v40 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@: Attempting to update status, but already set to %@", buf, 0x16u);
    }

    if (v9)
    {
      v41 = APErrorDomain;
      v74[0] = @"uniqueIdentifier";
      v74[1] = NSLocalizedFailureReasonErrorKey;
      v75[0] = v8;
      v33 = [NSString stringWithFormat:@"Exception Request status is already set to %@", v27];
      v75[1] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
      v35 = v41;
      v36 = 7;
      goto LABEL_31;
    }
  }

  else
  {
    if (!v17)
    {
      v18 = +[APLogConfig sharedConfig];
    }

    v29 = [v18 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      *buf = 138543362;
      v79 = v30;
      v31 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find Exception Request", buf, 0xCu);
    }

    if (v9)
    {
      v32 = APErrorDomain;
      v76[0] = @"uniqueIdentifier";
      v76[1] = NSLocalizedFailureReasonErrorKey;
      v77[0] = v8;
      v33 = [NSString stringWithFormat:@"Unable to find Exception Request with Unique ID: %@", v8];
      v77[1] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
      v35 = v32;
      v36 = 4;
LABEL_31:
      v42 = [NSError errorWithDomain:v35 code:v36 userInfo:v34];

      (v9)[2](v9, v42);
    }
  }

LABEL_47:
}

- (void)clearExceptionRequestsWithCompletion:(id)a3
{
  v15 = a3;
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v5 = v24;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing Exception Request Cache", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[ExceptionRequestStore sharedStore];
  v7 = [v6 getExceptionRequests];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 approvalStatus] == 1)
        {
          v13 = [v12 screenTimeException];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100010684;
          v17[3] = &unk_100055208;
          v17[4] = self;
          v17[5] = v12;
          [STExceptionApp deleteException:v13 completionHandler:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = +[ExceptionRequestStore sharedStore];
  [v14 clearRequests];

  if (v15)
  {
    v15[2](v15, 0);
  }
}

- (void)presentProductPageWithTitle:(id)a3 body:(id)a4 approve:(id)a5 decline:(id)a6 itemIdentifier:(id)a7 previewURL:(id)a8 offerName:(id)a9 requestString:(id)a10 requestSummary:(id)a11 priceSummary:(id)a12 isException:(BOOL)a13
{
  v43 = a3;
  v18 = a4;
  v19 = a5;
  v47 = a6;
  v46 = a7;
  v44 = a8;
  v45 = a9;
  v42 = a10;
  v41 = a11;
  v40 = a12;
  v20 = +[APLogConfig sharedFrameworkConfig];
  if (!v20)
  {
    v20 = +[APLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138545154;
    v50 = objc_opt_class();
    v51 = 2114;
    v52 = v43;
    v53 = 2114;
    v54 = v18;
    v55 = 2114;
    v56 = v19;
    v57 = 2114;
    v58 = v47;
    v59 = 2114;
    v60 = v46;
    v61 = 2114;
    v62 = v44;
    v63 = 2114;
    v64 = v45;
    v22 = v50;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Present product page. Title: %{public}@, body: %{public}@, approve: %{public}@, decline: %{public}@, itemIdentifier: %{public}@, previewURL: %{public}@, offerName:%{public}@", buf, 0x52u);
  }

  v23 = [ApprovalRequest alloc];
  v24 = +[NSDate date];
  v25 = +[NSUUID UUID];
  v26 = [v25 UUIDString];
  v27 = +[NSUUID UUID];
  v28 = [v27 UUIDString];
  v29 = [[RequestLocalizations alloc] initWithApprove:v19 body:v18 decline:v47 title:v43];
  v30 = v44;
  if ([v44 length])
  {
    v31 = [NSURL URLWithString:v44];
    LOBYTE(v39) = 1;
    LOBYTE(v38) = a13;
    v32 = [(ApprovalRequest *)v23 initWithApproverDSID:0 createdDate:v24 modifiedDate:0 requestIdentifier:v26 uniqueIdentifier:v28 canSendViaMessages:0 isException:v38 itemBundleID:@"com.apple.Bundle" itemDescription:v18 itemIdentifier:v46 itemTitle:v43 localizations:v29 offerName:v45 mocked:v39 previewURL:v31 productType:0 productTypeName:0 productURL:0 requesterName:@"Child" requesterDSID:@"1234" requestInfo:0 requestString:v42 requestSummary:v41 priceSummary:v40 status:-1];

    v30 = v44;
  }

  else
  {
    LOBYTE(v39) = 1;
    LOBYTE(v38) = a13;
    v32 = [(ApprovalRequest *)v23 initWithApproverDSID:0 createdDate:v24 modifiedDate:0 requestIdentifier:v26 uniqueIdentifier:v28 canSendViaMessages:0 isException:v38 itemBundleID:@"com.apple.Bundle" itemDescription:v18 itemIdentifier:v46 itemTitle:v43 localizations:v29 offerName:v45 mocked:v39 previewURL:0 productType:0 productTypeName:0 productURL:0 requesterName:@"Child" requesterDSID:@"1234" requestInfo:0 requestString:v42 requestSummary:v41 priceSummary:v40 status:-1];
  }

  v48 = 0;
  [ProductPagePresenter presentRequest:v32 withError:&v48];
  v33 = v48;
  if (v33)
  {
    v34 = +[APLogConfig sharedDaemonConfig];
    if (!v34)
    {
      v34 = +[APLogConfig sharedConfig];
    }

    v35 = [v34 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      *buf = 138543618;
      v50 = v36;
      v51 = 2114;
      v52 = v33;
      v37 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@: Error presenting product page. Error: %{public}@", buf, 0x16u);

      v30 = v44;
    }
  }
}

- (void)getRequestWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(FamilyRequestTask);
  v9 = [(FamilyRequestTask *)v8 perform];
  v45 = 0;
  v10 = [v9 resultWithError:&v45];
  v11 = v45;
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v16 = +[APLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[APLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_34:
      v37 = objc_opt_class();
      *buf = 138543618;
      v49 = v37;
      v50 = 2114;
      v51 = v11;
      v38 = v37;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Falling back to UserDefaults. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v13 = [v10 type];
    if (v13 == 1)
    {
      v14 = +[RequesterStore sharedStore];
      v15 = [v14 requestWithIdentifier:v6];
LABEL_13:
      v18 = v15;

      if (!v18)
      {
        goto LABEL_14;
      }

LABEL_36:
      v32 = [v18 compile];
      if (!v7)
      {
        goto LABEL_38;
      }

LABEL_37:
      v39 = [v11 ams_sanitizedForSecureCoding];
      v7[2](v7, v32, v39);

      goto LABEL_38;
    }

    if (!v13)
    {
      v14 = +[ApproverStore sharedStore];
      v15 = [v14 approvalRequestWithRequestIdentifier:v6];
      goto LABEL_13;
    }

    v16 = +[APLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[APLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }
  }

  v18 = [(ConnectionReceiver *)self _getRequestRequestViaUserDefaultsCheckWithIdentifier:v6];
  if (v18)
  {
    goto LABEL_36;
  }

LABEL_14:
  v41 = v9;
  v42 = v8;
  v19 = +[APLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[APLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    *buf = 138543618;
    v49 = v21;
    v50 = 2112;
    v51 = v6;
    v22 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to find cached request. Attempting to fetch from server. Identifier: %@", buf, 0x16u);
  }

  v23 = [[FetchRequestTask alloc] initWithIdentifier:v6];
  v24 = [(FetchRequestTask *)v23 perform];
  v44 = 0;
  v25 = [v24 resultWithError:&v44];
  v43 = v44;

  v26 = +[APLogConfig sharedDaemonConfig];
  v27 = v26;
  if (v25)
  {
    if (!v26)
    {
      v27 = +[APLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v40 = v29;
      v30 = [(FetchRequestTask *)v23 request];
      *buf = 138543618;
      v49 = v29;
      v50 = 2114;
      v51 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched request successfully. Request: %{public}@", buf, 0x16u);
    }

    v31 = [(FetchRequestTask *)v23 request];
    v32 = [v31 compile];
    v9 = v41;
    v33 = v43;
  }

  else
  {
    if (!v26)
    {
      v27 = +[APLogConfig sharedConfig];
    }

    v34 = [v27 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      *buf = 138543618;
      v49 = v35;
      v50 = 2114;
      v51 = v43;
      v36 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetch request failed. Error: %{public}@", buf, 0x16u);
    }

    v46 = @"requestIdentifier";
    v47 = v6;
    v31 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v33 = APCustomError();

    v32 = 0;
  }

  v8 = v42;
  if (v7)
  {
    goto LABEL_37;
  }

LABEL_38:
}

- (id)_getRequestRequestViaUserDefaultsCheckWithIdentifier:(id)a3
{
  v3 = a3;
  if (!+[APDefaults isApprover])
  {
    v9 = +[APDefaults isRequester];
    v10 = +[APLogConfig sharedDaemonConfig];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v11 = +[APLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138543362;
        *&v25[4] = objc_opt_class();
        v13 = *&v25[4];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Requester", v25, 0xCu);
      }

      v7 = +[RequesterStore sharedStore];
      v8 = [v7 requestWithIdentifier:v3];
      goto LABEL_13;
    }

    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v15 = [v11 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543362;
      *&v25[4] = objc_opt_class();
      v16 = *&v25[4];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults NOT SET - checking both stores", v25, 0xCu);
    }

    v17 = +[ApproverStore sharedStore];
    v14 = [v17 approvalRequestWithRequestIdentifier:v3];

    if (v14)
    {
      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      v18 = [v7 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v19 = objc_opt_class();
      *v25 = 138543362;
      *&v25[4] = v19;
      v20 = v19;
      v21 = "%{public}@: Found request in Approver Storage";
    }

    else
    {
      v22 = +[RequesterStore sharedStore];
      v14 = [v22 requestWithIdentifier:v3];

      if (!v14)
      {
        goto LABEL_31;
      }

      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      v18 = [v7 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v23 = objc_opt_class();
      *v25 = 138543362;
      *&v25[4] = v23;
      v20 = v23;
      v21 = "%{public}@: Found request in Requester Storage";
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, v25, 0xCu);

LABEL_29:
    goto LABEL_30;
  }

  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138543362;
    *&v25[4] = objc_opt_class();
    v6 = *&v25[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Approver", v25, 0xCu);
  }

  v7 = +[ApproverStore sharedStore];
  v8 = [v7 approvalRequestWithRequestIdentifier:v3];
LABEL_13:
  v14 = v8;
LABEL_30:

LABEL_31:

  return v14;
}

- (void)getMatchingRequestsWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(FamilyRequestTask);
  v9 = [(FamilyRequestTask *)v8 perform];
  v37 = 0;
  v10 = [v9 resultWithError:&v37];
  v11 = v37;
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v17 = [APLogConfig sharedDaemonConfig:v9];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = [v10 type];
  if (v13 == 1)
  {
    v14 = +[RequesterStore sharedStore];
    v15 = v6;
    v16 = [v14 requestsMatchingUniqueIdentifier:v6];
    goto LABEL_13;
  }

  if (!v13)
  {
    v14 = +[ApproverStore sharedStore];
    v15 = v6;
    v16 = [v14 approvalRequestsMatchingUniqueIdentifier:v6];
LABEL_13:
    v19 = v16;

    goto LABEL_19;
  }

  v17 = +[APLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[APLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
LABEL_17:
    v20 = objc_opt_class();
    *buf = 138543618;
    v40 = v20;
    v41 = 2114;
    v42 = v11;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Falling back to UserDefaults. Error: %{public}@", buf, 0x16u);
  }

LABEL_18:

  v15 = v6;
  v19 = [(ConnectionReceiver *)self _getMatchingRequestsViaUserDefaultsCheckWithIdentifier:v6];
LABEL_19:
  v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v19;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v33 + 1) + 8 * i) compile];
        [v22 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  if (v7)
  {
    v29 = [NSArray arrayWithArray:v22];
    v30 = [v11 ams_sanitizedForSecureCoding];
    v7[2](v7, v29, v30);
  }
}

- (id)_getMatchingRequestsViaUserDefaultsCheckWithIdentifier:(id)a3
{
  v3 = a3;
  if (!+[APDefaults isApprover])
  {
    v9 = +[APDefaults isRequester];
    v10 = +[APLogConfig sharedDaemonConfig];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v11 = +[APLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138543362;
        *&v25[4] = objc_opt_class();
        v13 = *&v25[4];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Requester", v25, 0xCu);
      }

      v7 = +[RequesterStore sharedStore];
      v8 = [v7 requestsMatchingUniqueIdentifier:v3];
      goto LABEL_13;
    }

    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v15 = [v11 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543362;
      *&v25[4] = objc_opt_class();
      v16 = *&v25[4];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults NOT SET - checking both stores", v25, 0xCu);
    }

    v17 = +[ApproverStore sharedStore];
    v14 = [v17 approvalRequestsMatchingUniqueIdentifier:v3];

    if (v14)
    {
      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      v18 = [v7 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v19 = objc_opt_class();
      *v25 = 138543362;
      *&v25[4] = v19;
      v20 = v19;
      v21 = "%{public}@: Found request in Approver Storage";
    }

    else
    {
      v22 = +[RequesterStore sharedStore];
      v14 = [v22 requestsMatchingUniqueIdentifier:v3];

      if (!v14)
      {
        goto LABEL_31;
      }

      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      v18 = [v7 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v23 = objc_opt_class();
      *v25 = 138543362;
      *&v25[4] = v23;
      v20 = v23;
      v21 = "%{public}@: Found request in Requester Storage";
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, v25, 0xCu);

LABEL_29:
    goto LABEL_30;
  }

  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138543362;
    *&v25[4] = objc_opt_class();
    v6 = *&v25[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Approver", v25, 0xCu);
  }

  v7 = +[ApproverStore sharedStore];
  v8 = [v7 approvalRequestsMatchingUniqueIdentifier:v3];
LABEL_13:
  v14 = v8;
LABEL_30:

LABEL_31:

  return v14;
}

- (void)didReceiveStorePushNotificationWithPayload:(id)a3
{
  v3 = a3;
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received store push notification. Payload: %{public}@", &v8, 0x16u);
  }

  v7 = +[RemoteNotificationHandler sharedHandler];
  [v7 handleLegacyStoreNotificationPayload:v3];
}

@end