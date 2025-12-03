@interface ConnectionReceiver
+ (ConnectionReceiver)sharedReceiver;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_getMatchingRequestsViaUserDefaultsCheckWithIdentifier:(id)identifier;
- (id)_getRequestRequestViaUserDefaultsCheckWithIdentifier:(id)identifier;
- (void)addExceptionRequestWithUUID:(id)d type:(int64_t)type title:(id)title message:(id)message bundleIdentifier:(id)identifier adamID:(id)iD distributorID:(id)distributorID ageRatingValue:(id)self0 preApprove:(id)self1 postApprove:(id)self2 preDecline:(id)self3 postDecline:(id)self4 responseBundleIdentifier:(id)self5 metadata:(id)self6 withCompletion:(id)self7;
- (void)addRequestWithURL:(id)l account:(id)account completion:(id)completion;
- (void)checkDownloadQueueWithContentType:(int64_t)type completion:(id)completion;
- (void)clearExceptionRequestsWithCompletion:(id)completion;
- (void)didReceiveStorePushNotificationWithPayload:(id)payload;
- (void)getCachedRequestsWithCompletion:(id)completion;
- (void)getExceptionRequestWithDistributorIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getExceptionRequestWithUniqueIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getExceptionRequestsWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getExceptionRequestsWithCompletion:(id)completion;
- (void)getMatchingRequestsWithIdentifier:(id)identifier completion:(id)completion;
- (void)getRequestWithIdentifier:(id)identifier completion:(id)completion;
- (void)getRequestWithItemIdentifier:(id)identifier completion:(id)completion;
- (void)localApproveExceptionWithUniqueIdentifier:(id)identifier completionHandler:(id)handler;
- (void)localApproveRequestWithItemIdentifier:(id)identifier completion:(id)completion;
- (void)presentApprovalSheetWithRequestIdentifier:(id)identifier completion:(id)completion;
- (void)presentProductPageWithTitle:(id)title body:(id)body approve:(id)approve decline:(id)decline itemIdentifier:(id)identifier previewURL:(id)l offerName:(id)name requestString:(id)self0 requestSummary:(id)self1 priceSummary:(id)self2 isException:(BOOL)self3;
- (void)resetAccountWithType:(int64_t)type;
- (void)restartAPNSConnection;
- (void)start;
- (void)updateExceptionRequestWithUniqueIdentifier:(id)identifier action:(int64_t)action completionHandler:(id)handler;
- (void)updateRequestWithIdentifier:(id)identifier action:(int64_t)action completion:(id)completion;
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
  connectionListener = [(ConnectionReceiver *)self connectionListener];

  if (!connectionListener)
  {
    v4 = +[APLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting connection listener", &v10, 0xCu);
    }

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.askpermissiond"];
    [(ConnectionReceiver *)self setConnectionListener:v7];

    connectionListener2 = [(ConnectionReceiver *)self connectionListener];
    [connectionListener2 setDelegate:self];

    connectionListener3 = [(ConnectionReceiver *)self connectionListener];
    [connectionListener3 resume];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = connectionCopy;
    v10 = v21;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting new connection. Connection: %{public}@", buf, 0x16u);
  }

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ConnectionProtocol];
  [connectionCopy setExportedInterface:v11];
  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BCB0;
  v18[3] = &unk_100054F28;
  objc_copyWeak(&v19, buf);
  [connectionCopy setInvalidationHandler:v18];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000BDAC;
  v16 = &unk_100054F28;
  objc_copyWeak(&v17, buf);
  [connectionCopy setInterruptionHandler:&v13];
  [connectionCopy setExportedObject:{self, v13, v14, v15, v16}];
  [connectionCopy resume];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return 1;
}

- (void)addRequestWithURL:(id)l account:(id)account completion:(id)completion
{
  lCopy = l;
  accountCopy = account;
  completionCopy = completion;
  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = lCopy;
    v23 = 2114;
    v24 = accountCopy;
    v13 = v20;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Add request. URL: %{public}@, account: %{public}@", buf, 0x20u);
  }

  v14 = [[PostRequestTask alloc] initWithRequestURL:lCopy account:accountCopy];
  perform = [(PostRequestTask *)v14 perform];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C07C;
  v17[3] = &unk_100054F50;
  v17[4] = self;
  v18 = completionCopy;
  v16 = completionCopy;
  [perform addFinishBlock:v17];
}

- (void)resetAccountWithType:(int64_t)type
{
  v5 = +[APLogConfig sharedFrameworkConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2050;
    *&buf[14] = type;
    v7 = *&buf[4];
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Reset account with type: %{public}ld", buf, 0x16u);
  }

  if (type == 1)
  {
    v8 = objc_alloc_init(ResetRequesterAccountTask);
    perform = [(ResetRequesterAccountTask *)v8 perform];
    v10 = perform;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000C5B4;
    v15 = &unk_100054F78;
    selfCopy = self;
    v11 = &v12;
  }

  else
  {
    if (type)
    {
      return;
    }

    v8 = objc_alloc_init(ResetApproverAccountTask);
    perform = [(ResetRequesterAccountTask *)v8 perform];
    v10 = perform;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10000C428;
    v20 = &unk_100054F78;
    selfCopy2 = self;
    v11 = &v17;
  }

  [perform addFinishBlock:{v11, v12, v13, v14, v15, selfCopy, v17, v18, v19, v20, selfCopy2, *buf, *&buf[16]}];
}

- (void)checkDownloadQueueWithContentType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = objc_opt_class();
    v8 = v25;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking download queue.", buf, 0xCu);
  }

  v9 = +[ExtensionManager sharedExtensionManager];
  v23 = 0;
  v10 = [v9 checkDownloadQueueWithContentType:type error:&v23];
  v11 = v23;

  v12 = +[APLogConfig sharedDaemonConfig];
  v13 = v12;
  if (v10)
  {
    if (!v12)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v25 = v15;
      v16 = v15;
      v17 = "%{public}@: Checked download queue succesfully.";
      v18 = oSLogObject2;
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

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v25 = v21;
      v26 = 2114;
      v27 = v11;
      v16 = v21;
      v17 = "%{public}@: Fail to check download queue with error: %{public}@.";
      v18 = oSLogObject2;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
      goto LABEL_14;
    }
  }

  ams_sanitizedForSecureCoding = [v11 ams_sanitizedForSecureCoding];
  completionCopy[2](completionCopy, ams_sanitizedForSecureCoding);
}

- (void)getCachedRequestsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting all cached requests via XPC", buf, 0xCu);
  }

  v7 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiCloudAccount = [v7 ams_activeiCloudAccount];
  ams_DSID = [ams_activeiCloudAccount ams_DSID];

  v10 = [[FamilyRequestTask alloc] initWithDSID:ams_DSID];
  perform = [(FamilyRequestTask *)v10 perform];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000CB90;
  v13[3] = &unk_100055020;
  v14 = completionCopy;
  v12 = completionCopy;
  [perform resultWithCompletion:v13];
}

- (void)getRequestWithItemIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = identifierCopy;
    v9 = v18;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting request via XPC for itemIdentifer/adamID: %@", buf, 0x16u);
  }

  v10 = objc_alloc_init(FamilyRequestTask);
  perform = [(FamilyRequestTask *)v10 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CF00;
  v14[3] = &unk_100055048;
  v15 = identifierCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  [perform resultWithCompletion:v14];
}

- (void)localApproveRequestWithItemIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = identifierCopy;
    v10 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Local approve request. Item identifier: %{public}@", buf, 0x16u);
  }

  v11 = [[LocalApproveRequestTask alloc] initWithItemIdentifier:identifierCopy];
  perform = [(LocalApproveRequestTask *)v11 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D1D8;
  v14[3] = &unk_100054F50;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [perform addFinishBlock:v14];
}

- (void)presentApprovalSheetWithRequestIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = objc_opt_class();
    v31 = 2114;
    v32 = identifierCopy;
    v10 = v30;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Present approval sheet. Request identifier: %{public}@", buf, 0x16u);
  }

  v11 = +[ApproverStore sharedStore];
  v12 = [v11 approvalRequestWithRequestIdentifier:identifierCopy];

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

      oSLogObject2 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        *buf = 138543618;
        v30 = v16;
        v31 = 2114;
        v32 = v13;
        v17 = v16;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error presenting approval sheet. Error: %{public}@", buf, 0x16u);
      }

      ams_sanitizedForSecureCoding = [(FetchRequestTask *)v13 ams_sanitizedForSecureCoding];
      completionCopy[2](completionCopy, ams_sanitizedForSecureCoding);
    }
  }

  else
  {
    v19 = +[APLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[APLogConfig sharedConfig];
    }

    oSLogObject3 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = identifierCopy;
      v22 = v21;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to find cached request. Attempting to fetch from server. Identifier: %@", buf, 0x16u);
    }

    v13 = [[FetchRequestTask alloc] initWithIdentifier:identifierCopy];
    objc_initWeak(buf, v13);
    perform = [(FetchRequestTask *)v13 perform];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000D76C;
    v24[3] = &unk_100055070;
    objc_copyWeak(&v27, buf);
    v24[4] = self;
    v26 = completionCopy;
    v25 = identifierCopy;
    [perform addFinishBlock:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }
}

- (void)restartAPNSConnection
{
  v2 = +[RemoteNotificationHandler sharedHandler];
  [v2 start];
}

- (void)updateRequestWithIdentifier:(id)identifier action:(int64_t)action completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = identifierCopy;
    v22 = 2050;
    actionCopy = action;
    v12 = v19;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Update request. Identifier: %{public}@, action: %{public}ld", buf, 0x20u);
  }

  v13 = [[UpdateRequestTask alloc] initWithRequestIdentifier:identifierCopy action:action];
  perform = [(UpdateRequestTask *)v13 perform];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000DC60;
  v16[3] = &unk_100054F50;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [perform addFinishBlock:v16];
}

- (void)addExceptionRequestWithUUID:(id)d type:(int64_t)type title:(id)title message:(id)message bundleIdentifier:(id)identifier adamID:(id)iD distributorID:(id)distributorID ageRatingValue:(id)self0 preApprove:(id)self1 postApprove:(id)self2 preDecline:(id)self3 postDecline:(id)self4 responseBundleIdentifier:(id)self5 metadata:(id)self6 withCompletion:(id)self7
{
  completionCopy = completion;
  metadataCopy = metadata;
  bundleIdentifierCopy = bundleIdentifier;
  postDeclineCopy = postDecline;
  declineCopy = decline;
  postApproveCopy = postApprove;
  approveCopy = approve;
  valueCopy = value;
  distributorIDCopy = distributorID;
  iDCopy = iD;
  identifierCopy = identifier;
  messageCopy = message;
  titleCopy = title;
  dCopy = d;
  v19 = +[APLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = objc_opt_class();
    v21 = v46;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating AddExceptionTask...", buf, 0xCu);
  }

  v37 = [[AddExceptionTask alloc] initWithUUID:dCopy type:type title:titleCopy message:messageCopy bundleIdentifier:identifierCopy adamID:iDCopy distributorID:distributorIDCopy ageRatingValue:valueCopy preApprove:approveCopy postApprove:postApproveCopy preDecline:declineCopy postDecline:postDeclineCopy metadata:metadataCopy responseBundleIdentifier:bundleIdentifierCopy];
  perform = [(AddExceptionTask *)v37 perform];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10000E0EC;
  v43[3] = &unk_100055098;
  v44 = completionCopy;
  v23 = completionCopy;
  [perform addFinishBlock:v43];
}

- (void)getExceptionRequestsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating GetExceptionsTask...", buf, 0xCu);
  }

  v8 = objc_alloc_init(GetExceptionsTask);
  perform = [(GetExceptionsTask *)v8 perform];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E290;
  v11[3] = &unk_100055100;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [perform addFinishBlock:v11];
}

- (void)getExceptionRequestWithUniqueIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v6 = +[ExceptionRequestStore sharedStore];
  v7 = [v6 getExceptionRequestWithUniqueIdentifier:identifierCopy];

  if (handlerCopy)
  {
    compile = [v7 compile];
    handlerCopy[2](handlerCopy, compile);
  }
}

- (void)getExceptionRequestsWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = identifierCopy;
    v10 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating GetExceptionsTask with BundleIdentifier: %@", buf, 0x16u);
  }

  v11 = [[GetExceptionsTask alloc] initWithBundleIdentifier:identifierCopy];
  perform = [(GetExceptionsTask *)v11 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E714;
  v14[3] = &unk_100055100;
  v14[4] = self;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [perform addFinishBlock:v14];
}

- (void)getExceptionRequestWithDistributorIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = identifierCopy;
    v10 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating GetExceptionsTask with DistributorID: %@", buf, 0x16u);
  }

  v11 = [[GetExceptionsTask alloc] initWithDistributorID:identifierCopy];
  perform = [(GetExceptionsTask *)v11 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000EAE0;
  v14[3] = &unk_100055100;
  v14[4] = self;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [perform addFinishBlock:v14];
}

- (void)localApproveExceptionWithUniqueIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = objc_opt_class();
    v32 = 2112;
    v33 = identifierCopy;
    v10 = v31;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Local Approval for Exception Request: %@", buf, 0x16u);
  }

  v11 = +[ExceptionRequestStore sharedStore];
  v12 = [v11 getExceptionRequestWithUniqueIdentifier:identifierCopy];

  if (v12)
  {
    uniqueIdentifier = [v12 uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v14 = +[_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager shared];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000F054;
      v23[3] = &unk_1000551B8;
      v24 = identifierCopy;
      selfCopy = self;
      v26 = v12;
      v27 = handlerCopy;
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

  oSLogObject2 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    *buf = 138543362;
    v31 = v18;
    v19 = v18;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find Exception Request", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v20 = APErrorDomain;
    v28[0] = @"uniqueIdentifier";
    v28[1] = NSLocalizedFailureReasonErrorKey;
    v29[0] = identifierCopy;
    identifierCopy = [NSString stringWithFormat:@"Unable to find Exception Request with Unique ID: %@", identifierCopy];
    v29[1] = identifierCopy;
    v22 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v15 = [NSError errorWithDomain:v20 code:4 userInfo:v22];

    (*(handlerCopy + 2))(handlerCopy, 0, v15);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)updateExceptionRequestWithUniqueIdentifier:(id)identifier action:(int64_t)action completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = @"Decline";
    *buf = 138543874;
    v79 = v12;
    v80 = 2112;
    if (!action)
    {
      v13 = @"Approve";
    }

    v81 = identifierCopy;
    v82 = 2112;
    v83 = v13;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating Exception Request: %@, action: %@", buf, 0x20u);
  }

  v15 = +[ExceptionRequestStore sharedStore];
  v16 = [v15 getExceptionRequestWithUniqueIdentifier:identifierCopy];

  v17 = +[APLogConfig sharedDaemonConfig];
  v18 = v17;
  if (v16)
  {
    if (!v17)
    {
      v18 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = identifierCopy;
      v21 = handlerCopy;
      v22 = objc_opt_class();
      selfCopy = self;
      v24 = v22;
      AMSHashIfNeeded();
      v26 = v25 = v16;
      *buf = 138543618;
      v79 = v22;
      handlerCopy = v21;
      identifierCopy = v20;
      v80 = 2114;
      v81 = v26;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Found request: %{public}@", buf, 0x16u);

      v16 = v25;
      self = selfCopy;
    }

    if (action)
    {
      if (action == 1)
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

        oSLogObject3 = [v43 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_opt_class();
          *buf = 138543362;
          v79 = v45;
          v46 = v45;
          _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: Request state does not match, updating store", buf, 0xCu);
        }

        [v16 setApprovalStatus:v28];
        v47 = +[ExceptionRequestStore sharedStore];
        [v47 storeRequest:v16];

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
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

        v69 = handlerCopy;
        oSLogObject4 = [v48 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v50 = objc_opt_class();
          *buf = 138543362;
          v79 = v50;
          v51 = v50;
          _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: Request state does not match, creating exception to track approval", buf, 0xCu);
        }

        selfCopy2 = self;

        v68 = [STExceptionApp alloc];
        requesterDSID = [v16 requesterDSID];
        bundleIdentifier = [v16 bundleIdentifier];
        adamID = [v16 adamID];
        unsignedLongLongValue = [adamID unsignedLongLongValue];
        distributorID = [v16 distributorID];
        v58 = v16;
        v59 = distributorID;
        v60 = v58;
        ageRatingValue = [v58 ageRatingValue];
        v62 = [v68 initWithRequesterDSID:requesterDSID bundleIdentifier:bundleIdentifier adamID:unsignedLongLongValue distributorID:v59 ratingValue:{objc_msgSend(ageRatingValue, "unsignedLongLongValue")}];

        v63 = +[APLogConfig sharedDaemonConfig];
        if (!v63)
        {
          v63 = +[APLogConfig sharedConfig];
        }

        oSLogObject5 = [v63 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v65 = objc_opt_class();
          v66 = v65;
          v67 = AMSHashIfNeeded();
          *buf = 138543618;
          v79 = v65;
          v80 = 2114;
          v81 = v67;
          _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: Created exception: %{public}@", buf, 0x16u);
        }

        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_100010058;
        v70[3] = &unk_1000551E0;
        v70[4] = selfCopy2;
        v16 = v60;
        v71 = v60;
        v73 = 1;
        handlerCopy = v69;
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

    oSLogObject6 = [v37 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      *buf = 138543618;
      v79 = v39;
      v80 = 2112;
      v81 = v27;
      v40 = v39;
      _os_log_impl(&_mh_execute_header, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@: Attempting to update status, but already set to %@", buf, 0x16u);
    }

    if (handlerCopy)
    {
      v41 = APErrorDomain;
      v74[0] = @"uniqueIdentifier";
      v74[1] = NSLocalizedFailureReasonErrorKey;
      v75[0] = identifierCopy;
      identifierCopy = [NSString stringWithFormat:@"Exception Request status is already set to %@", v27];
      v75[1] = identifierCopy;
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

    oSLogObject7 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      *buf = 138543362;
      v79 = v30;
      v31 = v30;
      _os_log_impl(&_mh_execute_header, oSLogObject7, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find Exception Request", buf, 0xCu);
    }

    if (handlerCopy)
    {
      v32 = APErrorDomain;
      v76[0] = @"uniqueIdentifier";
      v76[1] = NSLocalizedFailureReasonErrorKey;
      v77[0] = identifierCopy;
      identifierCopy = [NSString stringWithFormat:@"Unable to find Exception Request with Unique ID: %@", identifierCopy];
      v77[1] = identifierCopy;
      v34 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
      v35 = v32;
      v36 = 4;
LABEL_31:
      v42 = [NSError errorWithDomain:v35 code:v36 userInfo:v34];

      (handlerCopy)[2](handlerCopy, v42);
    }
  }

LABEL_47:
}

- (void)clearExceptionRequestsWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v5 = v24;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing Exception Request Cache", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[ExceptionRequestStore sharedStore];
  getExceptionRequests = [v6 getExceptionRequests];

  v8 = [getExceptionRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(getExceptionRequests);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 approvalStatus] == 1)
        {
          screenTimeException = [v12 screenTimeException];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100010684;
          v17[3] = &unk_100055208;
          v17[4] = self;
          v17[5] = v12;
          [STExceptionApp deleteException:screenTimeException completionHandler:v17];
        }
      }

      v9 = [getExceptionRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = +[ExceptionRequestStore sharedStore];
  [v14 clearRequests];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)presentProductPageWithTitle:(id)title body:(id)body approve:(id)approve decline:(id)decline itemIdentifier:(id)identifier previewURL:(id)l offerName:(id)name requestString:(id)self0 requestSummary:(id)self1 priceSummary:(id)self2 isException:(BOOL)self3
{
  titleCopy = title;
  bodyCopy = body;
  approveCopy = approve;
  declineCopy = decline;
  identifierCopy = identifier;
  lCopy = l;
  nameCopy = name;
  stringCopy = string;
  summaryCopy = summary;
  priceSummaryCopy = priceSummary;
  v20 = +[APLogConfig sharedFrameworkConfig];
  if (!v20)
  {
    v20 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v20 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138545154;
    v50 = objc_opt_class();
    v51 = 2114;
    v52 = titleCopy;
    v53 = 2114;
    v54 = bodyCopy;
    v55 = 2114;
    v56 = approveCopy;
    v57 = 2114;
    v58 = declineCopy;
    v59 = 2114;
    v60 = identifierCopy;
    v61 = 2114;
    v62 = lCopy;
    v63 = 2114;
    v64 = nameCopy;
    v22 = v50;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Present product page. Title: %{public}@, body: %{public}@, approve: %{public}@, decline: %{public}@, itemIdentifier: %{public}@, previewURL: %{public}@, offerName:%{public}@", buf, 0x52u);
  }

  v23 = [ApprovalRequest alloc];
  v24 = +[NSDate date];
  v25 = +[NSUUID UUID];
  uUIDString = [v25 UUIDString];
  v27 = +[NSUUID UUID];
  uUIDString2 = [v27 UUIDString];
  v29 = [[RequestLocalizations alloc] initWithApprove:approveCopy body:bodyCopy decline:declineCopy title:titleCopy];
  v30 = lCopy;
  if ([lCopy length])
  {
    v31 = [NSURL URLWithString:lCopy];
    LOBYTE(v39) = 1;
    LOBYTE(v38) = exception;
    v32 = [(ApprovalRequest *)v23 initWithApproverDSID:0 createdDate:v24 modifiedDate:0 requestIdentifier:uUIDString uniqueIdentifier:uUIDString2 canSendViaMessages:0 isException:v38 itemBundleID:@"com.apple.Bundle" itemDescription:bodyCopy itemIdentifier:identifierCopy itemTitle:titleCopy localizations:v29 offerName:nameCopy mocked:v39 previewURL:v31 productType:0 productTypeName:0 productURL:0 requesterName:@"Child" requesterDSID:@"1234" requestInfo:0 requestString:stringCopy requestSummary:summaryCopy priceSummary:priceSummaryCopy status:-1];

    v30 = lCopy;
  }

  else
  {
    LOBYTE(v39) = 1;
    LOBYTE(v38) = exception;
    v32 = [(ApprovalRequest *)v23 initWithApproverDSID:0 createdDate:v24 modifiedDate:0 requestIdentifier:uUIDString uniqueIdentifier:uUIDString2 canSendViaMessages:0 isException:v38 itemBundleID:@"com.apple.Bundle" itemDescription:bodyCopy itemIdentifier:identifierCopy itemTitle:titleCopy localizations:v29 offerName:nameCopy mocked:v39 previewURL:0 productType:0 productTypeName:0 productURL:0 requesterName:@"Child" requesterDSID:@"1234" requestInfo:0 requestString:stringCopy requestSummary:summaryCopy priceSummary:priceSummaryCopy status:-1];
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

    oSLogObject2 = [v34 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      *buf = 138543618;
      v50 = v36;
      v51 = 2114;
      v52 = v33;
      v37 = v36;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error presenting product page. Error: %{public}@", buf, 0x16u);

      v30 = lCopy;
    }
  }
}

- (void)getRequestWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_alloc_init(FamilyRequestTask);
  perform = [(FamilyRequestTask *)v8 perform];
  v45 = 0;
  v10 = [perform resultWithError:&v45];
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

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
LABEL_34:
      v37 = objc_opt_class();
      *buf = 138543618;
      v49 = v37;
      v50 = 2114;
      v51 = v11;
      v38 = v37;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Falling back to UserDefaults. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    type = [v10 type];
    if (type == 1)
    {
      v14 = +[RequesterStore sharedStore];
      v15 = [v14 requestWithIdentifier:identifierCopy];
LABEL_13:
      v18 = v15;

      if (!v18)
      {
        goto LABEL_14;
      }

LABEL_36:
      compile = [v18 compile];
      if (!completionCopy)
      {
        goto LABEL_38;
      }

LABEL_37:
      ams_sanitizedForSecureCoding = [v11 ams_sanitizedForSecureCoding];
      completionCopy[2](completionCopy, compile, ams_sanitizedForSecureCoding);

      goto LABEL_38;
    }

    if (!type)
    {
      v14 = +[ApproverStore sharedStore];
      v15 = [v14 approvalRequestWithRequestIdentifier:identifierCopy];
      goto LABEL_13;
    }

    v16 = +[APLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }
  }

  v18 = [(ConnectionReceiver *)self _getRequestRequestViaUserDefaultsCheckWithIdentifier:identifierCopy];
  if (v18)
  {
    goto LABEL_36;
  }

LABEL_14:
  v41 = perform;
  v42 = v8;
  v19 = +[APLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    *buf = 138543618;
    v49 = v21;
    v50 = 2112;
    v51 = identifierCopy;
    v22 = v21;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to find cached request. Attempting to fetch from server. Identifier: %@", buf, 0x16u);
  }

  v23 = [[FetchRequestTask alloc] initWithIdentifier:identifierCopy];
  perform2 = [(FetchRequestTask *)v23 perform];
  v44 = 0;
  v25 = [perform2 resultWithError:&v44];
  v43 = v44;

  v26 = +[APLogConfig sharedDaemonConfig];
  v27 = v26;
  if (v25)
  {
    if (!v26)
    {
      v27 = +[APLogConfig sharedConfig];
    }

    oSLogObject3 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v40 = v29;
      request = [(FetchRequestTask *)v23 request];
      *buf = 138543618;
      v49 = v29;
      v50 = 2114;
      v51 = request;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched request successfully. Request: %{public}@", buf, 0x16u);
    }

    request2 = [(FetchRequestTask *)v23 request];
    compile = [request2 compile];
    perform = v41;
    v33 = v43;
  }

  else
  {
    if (!v26)
    {
      v27 = +[APLogConfig sharedConfig];
    }

    oSLogObject4 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      *buf = 138543618;
      v49 = v35;
      v50 = 2114;
      v51 = v43;
      v36 = v35;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetch request failed. Error: %{public}@", buf, 0x16u);
    }

    v46 = @"requestIdentifier";
    v47 = identifierCopy;
    request2 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v33 = APCustomError();

    compile = 0;
  }

  v8 = v42;
  if (completionCopy)
  {
    goto LABEL_37;
  }

LABEL_38:
}

- (id)_getRequestRequestViaUserDefaultsCheckWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138543362;
        *&v25[4] = objc_opt_class();
        v13 = *&v25[4];
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Requester", v25, 0xCu);
      }

      v7 = +[RequesterStore sharedStore];
      v8 = [v7 requestWithIdentifier:identifierCopy];
      goto LABEL_13;
    }

    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543362;
      *&v25[4] = objc_opt_class();
      v16 = *&v25[4];
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults NOT SET - checking both stores", v25, 0xCu);
    }

    v17 = +[ApproverStore sharedStore];
    v14 = [v17 approvalRequestWithRequestIdentifier:identifierCopy];

    if (v14)
    {
      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v7 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
      v14 = [v22 requestWithIdentifier:identifierCopy];

      if (!v14)
      {
        goto LABEL_31;
      }

      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v7 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v23 = objc_opt_class();
      *v25 = 138543362;
      *&v25[4] = v23;
      v20 = v23;
      v21 = "%{public}@: Found request in Requester Storage";
    }

    _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, v21, v25, 0xCu);

LABEL_29:
    goto LABEL_30;
  }

  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  oSLogObject4 = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138543362;
    *&v25[4] = objc_opt_class();
    v6 = *&v25[4];
    _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Approver", v25, 0xCu);
  }

  v7 = +[ApproverStore sharedStore];
  v8 = [v7 approvalRequestWithRequestIdentifier:identifierCopy];
LABEL_13:
  v14 = v8;
LABEL_30:

LABEL_31:

  return v14;
}

- (void)getMatchingRequestsWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_alloc_init(FamilyRequestTask);
  perform = [(FamilyRequestTask *)v8 perform];
  v37 = 0;
  v10 = [perform resultWithError:&v37];
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
    v17 = [APLogConfig sharedDaemonConfig:perform];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v17 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  type = [v10 type];
  if (type == 1)
  {
    v14 = +[RequesterStore sharedStore];
    v15 = identifierCopy;
    v16 = [v14 requestsMatchingUniqueIdentifier:identifierCopy];
    goto LABEL_13;
  }

  if (!type)
  {
    v14 = +[ApproverStore sharedStore];
    v15 = identifierCopy;
    v16 = [v14 approvalRequestsMatchingUniqueIdentifier:identifierCopy];
LABEL_13:
    v19 = v16;

    goto LABEL_19;
  }

  v17 = +[APLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
LABEL_17:
    v20 = objc_opt_class();
    *buf = 138543618;
    v40 = v20;
    v41 = 2114;
    v42 = v11;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Falling back to UserDefaults. Error: %{public}@", buf, 0x16u);
  }

LABEL_18:

  v15 = identifierCopy;
  v19 = [(ConnectionReceiver *)self _getMatchingRequestsViaUserDefaultsCheckWithIdentifier:identifierCopy];
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

        compile = [*(*(&v33 + 1) + 8 * i) compile];
        [v22 addObject:compile];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  if (completionCopy)
  {
    v29 = [NSArray arrayWithArray:v22];
    ams_sanitizedForSecureCoding = [v11 ams_sanitizedForSecureCoding];
    completionCopy[2](completionCopy, v29, ams_sanitizedForSecureCoding);
  }
}

- (id)_getMatchingRequestsViaUserDefaultsCheckWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138543362;
        *&v25[4] = objc_opt_class();
        v13 = *&v25[4];
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Requester", v25, 0xCu);
      }

      v7 = +[RequesterStore sharedStore];
      v8 = [v7 requestsMatchingUniqueIdentifier:identifierCopy];
      goto LABEL_13;
    }

    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543362;
      *&v25[4] = objc_opt_class();
      v16 = *&v25[4];
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults NOT SET - checking both stores", v25, 0xCu);
    }

    v17 = +[ApproverStore sharedStore];
    v14 = [v17 approvalRequestsMatchingUniqueIdentifier:identifierCopy];

    if (v14)
    {
      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v7 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
      v14 = [v22 requestsMatchingUniqueIdentifier:identifierCopy];

      if (!v14)
      {
        goto LABEL_31;
      }

      v7 = +[APLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v7 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v23 = objc_opt_class();
      *v25 = 138543362;
      *&v25[4] = v23;
      v20 = v23;
      v21 = "%{public}@: Found request in Requester Storage";
    }

    _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, v21, v25, 0xCu);

LABEL_29:
    goto LABEL_30;
  }

  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  oSLogObject4 = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138543362;
    *&v25[4] = objc_opt_class();
    v6 = *&v25[4];
    _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: User Defaults says I am Approver", v25, 0xCu);
  }

  v7 = +[ApproverStore sharedStore];
  v8 = [v7 approvalRequestsMatchingUniqueIdentifier:identifierCopy];
LABEL_13:
  v14 = v8;
LABEL_30:

LABEL_31:

  return v14;
}

- (void)didReceiveStorePushNotificationWithPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = payloadCopy;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Received store push notification. Payload: %{public}@", &v8, 0x16u);
  }

  v7 = +[RemoteNotificationHandler sharedHandler];
  [v7 handleLegacyStoreNotificationPayload:payloadCopy];
}

@end