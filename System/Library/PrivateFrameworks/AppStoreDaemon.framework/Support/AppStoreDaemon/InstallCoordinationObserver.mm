@interface InstallCoordinationObserver
+ (id)sharedInstance;
- (InstallCoordinationObserver)init;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4;
- (void)coordinatorShouldPause:(id)a3;
- (void)coordinatorShouldPrioritize:(id)a3;
- (void)coordinatorShouldResume:(id)a3;
- (void)mayUninstallAppWithIdentity:(id)a3;
- (void)shouldPrioritizeAppWithIdentity:(id)a3;
@end

@implementation InstallCoordinationObserver

+ (id)sharedInstance
{
  if (qword_1005AAFC8 != -1)
  {
    dispatch_once(&qword_1005AAFC8, &stru_100527CF0);
  }

  v3 = qword_1005AAFC0;

  return v3;
}

- (InstallCoordinationObserver)init
{
  v18.receiver = self;
  v18.super_class = InstallCoordinationObserver;
  v2 = [(InstallCoordinationObserver *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AppInstallObserver", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(TaskQueue);
    policyQueue = v2->_policyQueue;
    v2->_policyQueue = v6;

    v8 = v2->_policyQueue;
    if (v8)
    {
      [(NSOperationQueue *)v8->_operationQueue setName:@"com.apple.appstored.AppInstallObserver.policyQueue"];
    }

    v9 = sub_1003C27BC();
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v9;

    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Observing installation notifications", v17, 2u);
    }

    v12 = [IXAppInstallObserver alloc];
    v13 = [NSSet setWithObject:&off_100548628];
    v14 = [v12 initWithMachServiceName:@"com.apple.appstored.installcoordination" forClients:v13 delegate:v2];
    installObserver = v2->_installObserver;
    v2->_installObserver = v14;
  }

  return v2;
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  databaseStore = self->_databaseStore;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1003DDD48;
  v19 = &unk_10051CA38;
  v20 = v7;
  v21 = v8;
  v10 = v8;
  v11 = v7;
  [(AppInstallsDatabaseStore *)databaseStore modifyUsingTransaction:&v16];
  v12 = sub_1003F281C();
  v13 = [v11 identity];
  v14 = [v13 bundleID];
  v15 = [v11 uniqueIdentifier];
  sub_1003F3770(v12, v14, v15);
}

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  v6 = a3;
  v7 = [a4 URL];
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identity];
    v10 = [v9 bundleID];
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "coordinatorDidCompleteSuccessfully for bundleID: %{public}@ at URL: %{public}@", buf, 0x16u);
  }

  databaseStore = self->_databaseStore;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1003DE584;
  v20[3] = &unk_10051CA38;
  v12 = v6;
  v21 = v12;
  v13 = v7;
  v22 = v13;
  [(AppInstallsDatabaseStore *)databaseStore modifyUsingTransaction:v20];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = sub_1003F281C();
    v15 = [v12 identity];
    v16 = [v15 bundleID];
    v17 = [v12 uniqueIdentifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003DE970;
    v18[3] = &unk_10051AF98;
    v19 = v12;
    sub_1003F5DB0(v14, v16, v17, v18);
  }
}

- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4
{
  v6 = a3;
  v7 = [a4 URL];
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identity];
    v10 = [v9 bundleID];
    *buf = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "coordinatorDidInstallPlaceholder for bundleID: %{public}@ at URL: %{public}@", buf, 0x16u);
  }

  if (v7)
  {
    databaseStore = self->_databaseStore;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003DEB74;
    v12[3] = &unk_10051FD88;
    v13 = v6;
    v14 = v7;
    [(AppInstallsDatabaseStore *)databaseStore readUsingSession:v12];
  }
}

- (void)coordinatorShouldPrioritize:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Prioritization requested via coordinator %{public}@", buf, 0xCu);
  }

  databaseStore = self->_databaseStore;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003DF1EC;
  v17[3] = &unk_100527D18;
  v7 = v4;
  v19 = self;
  v20 = &v21;
  v18 = v7;
  [(AppInstallsDatabaseStore *)databaseStore modifyUsingTransaction:v17];
  if (*(v22 + 24) == 1)
  {
    v8 = sub_1001DFF60();
    v9 = [v7 identity];
    v10 = [v9 bundleID];
    v11 = sub_1001E03BC(v8, v10);
    *(v22 + 24) = v11 ^ 1;

    if (v22[3])
    {
      goto LABEL_8;
    }

    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 identity];
      v14 = [v13 bundleID];
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found in-flight purchase for '%{public}@', ignoring prioritization request", buf, 0xCu);
    }

    if (v22[3])
    {
LABEL_8:
      v15 = [v7 identity];
      v16 = [v15 bundleID];
      sub_1003DFC20(self, v16, v7);
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (void)coordinatorShouldPause:(id)a3
{
  v4 = a3;
  databaseStore = self->_databaseStore;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003E0A10;
  v11[3] = &unk_10051D6C8;
  v12 = v4;
  v6 = v4;
  [(AppInstallsDatabaseStore *)databaseStore modifyUsingTransaction:v11];
  v7 = sub_1003F281C();
  v8 = [v6 identity];
  v9 = [v8 bundleID];
  v10 = [v6 uniqueIdentifier];
  sub_1003F40F4(v7, v9, v10);
}

- (void)coordinatorShouldResume:(id)a3
{
  v4 = a3;
  databaseStore = self->_databaseStore;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1003E0C6C;
  v14 = &unk_10051CA38;
  v15 = v4;
  v16 = self;
  v6 = v4;
  [(AppInstallsDatabaseStore *)databaseStore modifyUsingTransaction:&v11];
  v7 = sub_1003F281C();
  v8 = [v6 identity];
  v9 = [v8 bundleID];
  v10 = [v6 uniqueIdentifier];
  sub_1003F4628(v7, v9, v10);
}

- (void)mayUninstallAppWithIdentity:(id)a3
{
  v7 = [a3 bundleID];
  if (self)
  {
    v4 = sub_1003BBF50();
    v5 = [v4 isHRNMode];

    if ((v5 & 1) == 0)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E1B28;
      block[3] = &unk_10051AF98;
      v9 = v7;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (void)shouldPrioritizeAppWithIdentity:(id)a3
{
  v4 = [a3 bundleID];
  v5 = +[_TtC9appstored9MadBridge shared];
  v6 = [v5 isThirdPartyRestore:v4];

  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forwarding prioritize call", &v14, 0xCu);
    }

    v8 = +[_TtC9appstored9MadBridge shared];
    [v8 prioritize:v4];
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v4;
      v10 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Prioritize for %{public}@", &v14, 0x16u);
    }

    if ([v4 length])
    {
      sub_1003DFC20(self, v4, 0);
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v14 = 138543362;
        v15 = v12;
        v13 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to prioritize due to no bundleID", &v14, 0xCu);
      }
    }
  }
}

@end