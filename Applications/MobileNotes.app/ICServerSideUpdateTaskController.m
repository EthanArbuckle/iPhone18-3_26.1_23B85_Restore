@interface ICServerSideUpdateTaskController
- (BOOL)isInternetReachable;
- (ICCloudContext)cloudContext;
- (ICServerSideUpdateTaskController)initWithWorkerContext:(id)a3;
- (id)accountsNeedingServerUpgrade;
- (id)currentBuild;
- (id)currentVersion;
- (id)invernessClientForAccount:(id)a3;
- (void)resetState;
- (void)runServerSideTaskWithClient:(id)a3 account:(id)a4 completion:(id)a5;
- (void)runServerSideTasksIfNeeded:(id)a3;
@end

@implementation ICServerSideUpdateTaskController

- (ICServerSideUpdateTaskController)initWithWorkerContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICServerSideUpdateTaskController;
  v6 = [(ICServerSideUpdateTaskController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workerContext, a3);
  }

  return v7;
}

- (ICCloudContext)cloudContext
{
  cloudContext = self->_cloudContext;
  if (cloudContext)
  {
    v3 = cloudContext;
  }

  else
  {
    v3 = +[ICCloudContext sharedContext];
  }

  return v3;
}

- (void)runServerSideTasksIfNeeded:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  if ([(ICServerSideUpdateTaskController *)self isInternetReachable])
  {
    v6 = [(ICServerSideUpdateTaskController *)self workerContext];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B4594;
    v19[3] = &unk_100645BA0;
    v19[4] = self;
    v20 = v5;
    [v6 performBlockAndWait:v19];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DCF8C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B48C0;
  block[3] = &unk_100645CC8;
  v18 = v4;
  v16 = v4;
  dispatch_group_notify(v5, v15, block);
}

- (void)runServerSideTaskWithClient:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD074(v9, self, v11);
  }

  v20 = [v9 serverSideUpdateTaskLastCompletedBuild];
  v12 = [v9 serverSideUpdateTaskLastCompletedVersion];
  v13 = [(ICServerSideUpdateTaskController *)self currentBuild];
  v14 = [(ICServerSideUpdateTaskController *)self currentVersion];
  v15 = [(ICServerSideUpdateTaskController *)self platformName];
  v16 = [v9 serverSideUpdateTaskContinuationToken];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B4B00;
  v21[3] = &unk_100648300;
  v21[4] = self;
  v22 = v9;
  v23 = v8;
  v24 = v10;
  v17 = v10;
  v18 = v8;
  v19 = v9;
  [v18 didCompleteInstallOrUpdateWithPreviousBuildNumber:v20 previousVersion:v12 currentBuildNumber:v13 currentVersion:v14 platformName:v15 continuationToken:v16 callback:v21];
}

- (void)resetState
{
  v3 = [(ICServerSideUpdateTaskController *)self workerContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B50A0;
  v6[3] = &unk_100645E30;
  v6[4] = self;
  [v3 performBlockAndWait:v6];

  v4 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Successfully reset state for all accounts", v5, 2u);
  }
}

- (id)accountsNeedingServerUpgrade
{
  v3 = +[ICCloudConfiguration sharedConfiguration];
  v4 = [v3 serverSideUpdateTaskMaxFailureCount];

  v5 = [(ICServerSideUpdateTaskController *)self workerContext];
  v6 = [ICAccount allActiveCloudKitAccountsInContext:v5];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B531C;
  v9[3] = &unk_100648328;
  v10 = v4;
  v9[4] = self;
  v7 = [v6 ic_objectsPassingTest:v9];

  return v7;
}

- (BOOL)isInternetReachable
{
  if ([(ICServerSideUpdateTaskController *)self overrideInternetReachabilityToNotReachable])
  {
    v2 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DD4E8(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return 0;
  }

  else
  {
    v11 = +[ICReachability sharedReachabilityForInternetConnection];
    v10 = [v11 currentReachabilityStatus] != 0;
  }

  return v10;
}

- (id)invernessClientForAccount:(id)a3
{
  v4 = a3;
  v5 = [(ICServerSideUpdateTaskController *)self overrideInvernessClient];

  if (v5)
  {
    v6 = [(ICServerSideUpdateTaskController *)self overrideInvernessClient];
  }

  else
  {
    v7 = [(ICServerSideUpdateTaskController *)self cloudContext];
    v8 = [v4 identifier];
    v6 = [v7 invernessClientForAccountID:v8];
  }

  return v6;
}

- (id)currentVersion
{
  v3 = [(ICServerSideUpdateTaskController *)self overrideCurrentVersion];

  if (v3)
  {
    [(ICServerSideUpdateTaskController *)self overrideCurrentVersion];
  }

  else
  {
    +[ICDeviceSupport productVersion];
  }
  v4 = ;

  return v4;
}

- (id)currentBuild
{
  v3 = [(ICServerSideUpdateTaskController *)self overrideCurrentBuild];

  if (v3)
  {
    [(ICServerSideUpdateTaskController *)self overrideCurrentBuild];
  }

  else
  {
    +[ICDeviceSupport productBuildVersion];
  }
  v4 = ;

  return v4;
}

@end