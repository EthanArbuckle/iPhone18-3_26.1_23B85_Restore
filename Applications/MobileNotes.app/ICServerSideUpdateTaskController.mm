@interface ICServerSideUpdateTaskController
- (BOOL)isInternetReachable;
- (ICCloudContext)cloudContext;
- (ICServerSideUpdateTaskController)initWithWorkerContext:(id)context;
- (id)accountsNeedingServerUpgrade;
- (id)currentBuild;
- (id)currentVersion;
- (id)invernessClientForAccount:(id)account;
- (void)resetState;
- (void)runServerSideTaskWithClient:(id)client account:(id)account completion:(id)completion;
- (void)runServerSideTasksIfNeeded:(id)needed;
@end

@implementation ICServerSideUpdateTaskController

- (ICServerSideUpdateTaskController)initWithWorkerContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICServerSideUpdateTaskController;
  v6 = [(ICServerSideUpdateTaskController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workerContext, context);
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

- (void)runServerSideTasksIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = dispatch_group_create();
  if ([(ICServerSideUpdateTaskController *)self isInternetReachable])
  {
    workerContext = [(ICServerSideUpdateTaskController *)self workerContext];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B4594;
    v19[3] = &unk_100645BA0;
    v19[4] = self;
    v20 = v5;
    [workerContext performBlockAndWait:v19];
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
  v18 = neededCopy;
  v16 = neededCopy;
  dispatch_group_notify(v5, v15, block);
}

- (void)runServerSideTaskWithClient:(id)client account:(id)account completion:(id)completion
{
  clientCopy = client;
  accountCopy = account;
  completionCopy = completion;
  v11 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD074(accountCopy, self, v11);
  }

  serverSideUpdateTaskLastCompletedBuild = [accountCopy serverSideUpdateTaskLastCompletedBuild];
  serverSideUpdateTaskLastCompletedVersion = [accountCopy serverSideUpdateTaskLastCompletedVersion];
  currentBuild = [(ICServerSideUpdateTaskController *)self currentBuild];
  currentVersion = [(ICServerSideUpdateTaskController *)self currentVersion];
  platformName = [(ICServerSideUpdateTaskController *)self platformName];
  serverSideUpdateTaskContinuationToken = [accountCopy serverSideUpdateTaskContinuationToken];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B4B00;
  v21[3] = &unk_100648300;
  v21[4] = self;
  v22 = accountCopy;
  v23 = clientCopy;
  v24 = completionCopy;
  v17 = completionCopy;
  v18 = clientCopy;
  v19 = accountCopy;
  [v18 didCompleteInstallOrUpdateWithPreviousBuildNumber:serverSideUpdateTaskLastCompletedBuild previousVersion:serverSideUpdateTaskLastCompletedVersion currentBuildNumber:currentBuild currentVersion:currentVersion platformName:platformName continuationToken:serverSideUpdateTaskContinuationToken callback:v21];
}

- (void)resetState
{
  workerContext = [(ICServerSideUpdateTaskController *)self workerContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B50A0;
  v6[3] = &unk_100645E30;
  v6[4] = self;
  [workerContext performBlockAndWait:v6];

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
  serverSideUpdateTaskMaxFailureCount = [v3 serverSideUpdateTaskMaxFailureCount];

  workerContext = [(ICServerSideUpdateTaskController *)self workerContext];
  v6 = [ICAccount allActiveCloudKitAccountsInContext:workerContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B531C;
  v9[3] = &unk_100648328;
  v10 = serverSideUpdateTaskMaxFailureCount;
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

- (id)invernessClientForAccount:(id)account
{
  accountCopy = account;
  overrideInvernessClient = [(ICServerSideUpdateTaskController *)self overrideInvernessClient];

  if (overrideInvernessClient)
  {
    overrideInvernessClient2 = [(ICServerSideUpdateTaskController *)self overrideInvernessClient];
  }

  else
  {
    cloudContext = [(ICServerSideUpdateTaskController *)self cloudContext];
    identifier = [accountCopy identifier];
    overrideInvernessClient2 = [cloudContext invernessClientForAccountID:identifier];
  }

  return overrideInvernessClient2;
}

- (id)currentVersion
{
  overrideCurrentVersion = [(ICServerSideUpdateTaskController *)self overrideCurrentVersion];

  if (overrideCurrentVersion)
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
  overrideCurrentBuild = [(ICServerSideUpdateTaskController *)self overrideCurrentBuild];

  if (overrideCurrentBuild)
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