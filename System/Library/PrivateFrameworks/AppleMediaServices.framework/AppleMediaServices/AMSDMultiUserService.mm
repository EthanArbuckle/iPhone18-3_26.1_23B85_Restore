@interface AMSDMultiUserService
+ (AMSDMultiUserService)sharedService;
+ (id)_sanitizeError:(id)error;
- (AMSDMultiUserService)initWithMultiUserController:(id)controller;
- (void)exportMultiUserTokenForHomeIdentifier:(id)identifier generateIfMissing:(BOOL)missing generateIfInvalid:(BOOL)invalid completion:(id)completion;
- (void)generateInfoWithCompletion:(id)completion;
- (void)iTunesAccountForHomeWithIdentifier:(id)identifier completion:(id)completion;
- (void)invalidateMultiUserTokenForHomeIdentifier:(id)identifier completion:(id)completion;
- (void)multiUserTokenForAccount:(id)account completion:(id)completion;
- (void)refreshAfterTimeInterval:(double)interval completion:(id)completion;
- (void)resetMultiUserDatabaseNotificationSubscriptionsCompletion:(id)completion;
- (void)setiTunesAccount:(id)account forHomeWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateMultiUserTokenForAccount:(id)account completion:(id)completion;
@end

@implementation AMSDMultiUserService

+ (AMSDMultiUserService)sharedService
{
  if (qword_1002E3298 != -1)
  {
    sub_10021B2B0();
  }

  v3 = qword_1002E32A0;

  return v3;
}

- (AMSDMultiUserService)initWithMultiUserController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AMSDMultiUserService;
  v6 = [(AMSDMultiUserService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multiUserController, controller);
  }

  return v7;
}

- (void)exportMultiUserTokenForHomeIdentifier:(id)identifier generateIfMissing:(BOOL)missing generateIfInvalid:(BOOL)invalid completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = AMSSetLogKey();
  v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  v11 = v10;
  if (!v10)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  v13 = os_signpost_enabled(oSLogObject);

  if (!v10)
  {
  }

  if (v13)
  {
    v14 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    v15 = v14;
    if (!v14)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v15 OSLogObject];
    v17 = os_signpost_id_generate(oSLogObject2);

    if (!v14)
    {
    }

    v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    v10 = v18;
    if (v18)
    {
      oSLogObject3 = [v18 OSLogObject];
    }

    else
    {
      v20 = +[AMSLogConfig sharedConfig];
      oSLogObject3 = [v20 OSLogObject];
    }

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(oSLogObject3))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543362;
      v50 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, oSLogObject3, OS_SIGNPOST_INTERVAL_BEGIN, v17, "exportMultiUserToken", "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
  {
    v23 = AMSLogKey();
    v24 = objc_opt_class();
    v25 = v24;
    if (v23)
    {
      v10 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v25, v10];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v24];
    }
    v26 = ;
    v27 = NSStringFromSelector(a2);
    *buf = 138543618;
    v50 = v26;
    v51 = 2114;
    v52 = v27;
    _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@", buf, 0x16u);
    if (v23)
    {

      v26 = v10;
    }
  }

  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDMultiUserService.exportMultiUserToken"];
  multiUserController = [(AMSDMultiUserService *)self multiUserController];
  homeManager = [multiUserController homeManager];
  v30 = [[NSUUID alloc] initWithUUIDString:identifierCopy];

  v31 = [homeManager homeWithHomeIdentifier:v30];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10006D9E4;
  v45[3] = &unk_1002B1468;
  v45[4] = self;
  v46 = multiUserController;
  missingCopy = missing;
  invalidCopy = invalid;
  v32 = multiUserController;
  v33 = [v31 continueWithBlock:v45];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10006EA24;
  v39[3] = &unk_1002B1490;
  v44 = v13;
  v42 = v17;
  v43 = a2;
  v40 = @"com.apple.amsaccountsd.AMSDMultiUserService.exportMultiUserToken";
  v41 = completionCopy;
  v34 = completionCopy;
  [v33 addFinishBlock:v39];
}

- (void)generateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AMSSetLogKey();
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = NSStringFromSelector(a2);
    *buf = 138543874;
    v38 = v8;
    v39 = 2114;
    v40 = v9;
    v41 = 2114;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDMultiUserService.generateInfo"];
  multiUserController = [(AMSDMultiUserService *)self multiUserController];
  cloudContainer = [multiUserController cloudContainer];
  privateDatabase = [cloudContainer privateDatabase];

  multiUserController2 = [(AMSDMultiUserService *)self multiUserController];
  cloudContainer2 = [multiUserController2 cloudContainer];
  sharedDatabase = [cloudContainer2 sharedDatabase];

  multiUserController3 = [(AMSDMultiUserService *)self multiUserController];
  homeManager = [multiUserController3 homeManager];
  allHomes = [homeManager allHomes];
  v36[0] = allHomes;
  fetchRecordZones = [privateDatabase fetchRecordZones];
  v36[1] = fetchRecordZones;
  fetchRecordZones2 = [sharedDatabase fetchRecordZones];
  v36[2] = fetchRecordZones2;
  v22 = [NSArray arrayWithObjects:v36 count:3];
  v23 = [AMSPromise promiseWithAll:v22 timeout:60.0];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10006EF54;
  v33[3] = &unk_1002B15A8;
  v34 = privateDatabase;
  v35 = sharedDatabase;
  v24 = sharedDatabase;
  v25 = privateDatabase;
  v26 = [v23 thenWithBlock:v33];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100070100;
  v30[3] = &unk_1002B15D0;
  v31 = @"com.apple.amsaccountsd.AMSDMultiUserService.generateInfo";
  v32 = v29;
  v27 = v29;
  [v26 addFinishBlock:v30];
}

- (void)iTunesAccountForHomeWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = AMSSetLogKey();
  v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    v43 = v12;
    v44 = 2114;
    v45 = v13;
    v46 = 2114;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDMultiUserService.iTunesAccountForHomeWithIdentifier"];
  v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = AMSLogKey();
    v19 = AMSHashIfNeeded();
    *buf = 138543874;
    v43 = v17;
    v44 = 2114;
    v45 = v18;
    v46 = 2114;
    v47 = v19;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching the iTunes account used by a home. homeIdentifier = %{public}@", buf, 0x20u);
  }

  multiUserController = [(AMSDMultiUserService *)self multiUserController];
  cloudContainer = [multiUserController cloudContainer];
  privateDatabase = [cloudContainer privateDatabase];

  v23 = objc_alloc_init(AMSDMultiUserMetrics);
  homeManager = [multiUserController homeManager];
  v25 = [homeManager homeWithHomeIdentifier:identifierCopy];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000705AC;
  v39[3] = &unk_1002B15F8;
  v26 = privateDatabase;
  v40 = v26;
  v27 = v23;
  v41 = v27;
  v28 = [v25 continueWithBlock:v39];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100070B5C;
  v36[3] = &unk_1002B1508;
  v37 = v26;
  v38 = v27;
  v29 = v27;
  v30 = v26;
  v31 = [v28 thenWithBlock:v36];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100070F4C;
  v33[3] = &unk_1002B1648;
  v34 = @"com.apple.amsaccountsd.AMSDMultiUserService.iTunesAccountForHomeWithIdentifier";
  v35 = completionCopy;
  v32 = completionCopy;
  [v31 addFinishBlock:v33];
}

- (void)invalidateMultiUserTokenForHomeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = AMSSetLogKey();
  v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    v32 = v12;
    v33 = 2114;
    v34 = v13;
    v35 = 2114;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDMultiUserService.invalidateMultiUserTokenForHomeIdentifier"];
  v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = AMSLogKey();
    v19 = AMSHashIfNeeded();
    *buf = 138543874;
    v32 = v17;
    v33 = 2114;
    v34 = v18;
    v35 = 2114;
    v36 = v19;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invalidating a multi-user token. homeIdentifier = %{public}@", buf, 0x20u);
  }

  multiUserController = [(AMSDMultiUserService *)self multiUserController];
  homeManager = [multiUserController homeManager];
  v22 = [homeManager homeWithHomeIdentifier:identifierCopy];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100071448;
  v29[3] = &unk_1002AFE00;
  v30 = multiUserController;
  v23 = multiUserController;
  v24 = [v22 thenWithBlock:v29];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100071738;
  v26[3] = &unk_1002B1698;
  v27 = @"com.apple.amsaccountsd.AMSDMultiUserService.invalidateMultiUserTokenForHomeIdentifier";
  v28 = completionCopy;
  v25 = completionCopy;
  [v24 addFinishBlock:v26];
}

- (void)refreshAfterTimeInterval:(double)interval completion:(id)completion
{
  completionCopy = completion;
  v8 = AMSSetLogKey();
  v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDMultiUserService.refresh"];
  v14 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:@"amstool"];
  [(AMSDRefreshMultiUserOptions *)v14 setSchedulingInterval:interval];
  [(AMSDRefreshMultiUserOptions *)v14 setThrottlingInterval:interval];
  [(AMSDRefreshMultiUserOptions *)v14 setShouldUseCloudData:0];
  multiUserController = [(AMSDMultiUserService *)self multiUserController];
  v16 = [multiUserController refreshWithOptions:v14];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100071BC4;
  v18[3] = &unk_1002B16C0;
  v19 = @"com.apple.amsaccountsd.AMSDMultiUserService.refresh";
  v20 = completionCopy;
  v17 = completionCopy;
  [v16 addFinishBlock:v18];
}

- (void)resetMultiUserDatabaseNotificationSubscriptionsCompletion:(id)completion
{
  completionCopy = completion;
  completionCopy[2](completionCopy, +[AMSDCloudDataSubscriptionTask resetLastAttemptDate], 0);
}

- (void)setiTunesAccount:(id)account forHomeWithIdentifier:(id)identifier completion:(id)completion
{
  accountCopy = account;
  identifierCopy = identifier;
  completionCopy = completion;
  v12 = AMSSetLogKey();
  v13 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    v17 = NSStringFromSelector(a2);
    *buf = 138543874;
    v38 = v15;
    v39 = 2114;
    v40 = v16;
    v41 = 2114;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDMultiUserService.setiTunesAccountForHomeWithIdentifier"];
  v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    v22 = AMSHashIfNeeded();
    v23 = AMSHashIfNeeded();
    *buf = 138544130;
    v38 = v20;
    v39 = 2114;
    v40 = v21;
    v41 = 2114;
    v42 = v22;
    v43 = 2114;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting the iTunes account used by a home. account = %{public}@ | homeIdentifier = %{public}@", buf, 0x2Au);
  }

  multiUserController = [(AMSDMultiUserService *)self multiUserController];
  homeManager = [multiUserController homeManager];
  v26 = [homeManager homeWithHomeIdentifier:identifierCopy];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100072134;
  v34[3] = &unk_1002B15F8;
  v35 = multiUserController;
  v36 = accountCopy;
  v27 = accountCopy;
  v28 = multiUserController;
  v29 = [v26 continueWithBlock:v34];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000722D4;
  v31[3] = &unk_1002B15D0;
  v32 = @"com.apple.amsaccountsd.AMSDMultiUserService.setiTunesAccountForHomeWithIdentifier";
  v33 = completionCopy;
  v30 = completionCopy;
  [v29 addFinishBlock:v31];
}

- (void)updateMultiUserTokenForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v9 = AMSSetLogKey();
  v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDMultiUserService.updateMultiUserTokenForAccount"];
  v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = AMSLogKey();
    v19 = AMSHashIfNeeded();
    *buf = 138543874;
    v37 = v17;
    v38 = 2114;
    v39 = v18;
    v40 = 2114;
    v41 = v19;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Generating new multi-user tokens. account = %{public}@", buf, 0x20u);
  }

  multiUserController = [(AMSDMultiUserService *)self multiUserController];
  cloudContainer = [multiUserController cloudContainer];
  privateDatabase = [cloudContainer privateDatabase];

  fetchRecordZones = [privateDatabase fetchRecordZones];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000726EC;
  v32[3] = &unk_1002B1808;
  v33 = privateDatabase;
  v34 = accountCopy;
  v35 = multiUserController;
  v24 = multiUserController;
  v25 = accountCopy;
  v26 = privateDatabase;
  v27 = [fetchRecordZones continueWithBlock:v32];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10007353C;
  v29[3] = &unk_1002B1830;
  v30 = @"com.apple.amsaccountsd.AMSDMultiUserService.updateMultiUserTokenForAccount";
  v31 = completionCopy;
  v28 = completionCopy;
  [v27 addFinishBlock:v29];
}

+ (id)_sanitizeError:(id)error
{
  errorCopy = error;
  ams_underlyingError = [errorCopy ams_underlyingError];
  if (ams_underlyingError)
  {
    ams_underlyingError2 = [errorCopy ams_underlyingError];
    v7 = [self _sanitizeError:ams_underlyingError2];
  }

  else
  {
    v7 = 0;
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    [errorCopy code];
    ams_title = [errorCopy ams_title];
    ams_message = [errorCopy ams_message];
    v11 = AMSCustomError();
  }

  else
  {
    v11 = AMSError();
  }

  return v11;
}

- (void)multiUserTokenForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v5 = AMSSetLogKey();
  v6 = AMSError();
  completionCopy[2](completionCopy, 0, v6);
}

@end