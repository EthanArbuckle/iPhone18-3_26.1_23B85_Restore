@interface ICICloudProgressIndicatorTracker
+ (BOOL)isMigratingICloudAccount:(id)account;
+ (BOOL)isMigratingLocalAccount;
- (ICICloudProgressIndicatorTracker)initWithDelegate:(id)delegate;
- (void)_performProgressUpdate;
- (void)cloudOperationsDidChange:(id)change;
- (void)dealloc;
- (void)invalidate;
- (void)migrationStateDidChange:(id)change;
@end

@implementation ICICloudProgressIndicatorTracker

- (ICICloudProgressIndicatorTracker)initWithDelegate:(id)delegate
{
  v13.receiver = self;
  v13.super_class = ICICloudProgressIndicatorTracker;
  v3 = [(ICProgressIndicatorTracker *)&v13 initWithDelegate:delegate];
  if (v3)
  {
    v4 = [[ICSelectorDelayer alloc] initWithTarget:v3 selector:"updateMakingProgress" delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.15];
    [(ICICloudProgressIndicatorTracker *)v3 setUpdateMakingProgressDelayer:v4];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"cloudOperationsDidChange:" name:ICCloudContextHasPendingOperationsDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"migrationStateDidChange:" name:ICMigrationStateDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"migrationStateDidChange:" name:@"ICCurrentDeviceMigrationStateDidChange" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"legacyImportOperationsDidChange:" name:@"ICLegacyImportManagerOperationsDidChangeNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = kReachabilityChangedNotification;
    v11 = +[ICReachability sharedReachabilityForInternetConnection];
    [v9 addObserver:v3 selector:"reachabilityChanged:" name:v10 object:v11];

    [(ICICloudProgressIndicatorTracker *)v3 updateMakingProgress];
  }

  return v3;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = ICICloudProgressIndicatorTracker;
  [(ICProgressIndicatorTracker *)&v4 invalidate];
  updateMakingProgressDelayer = [(ICICloudProgressIndicatorTracker *)self updateMakingProgressDelayer];
  [updateMakingProgressDelayer cancelPreviousFireRequests];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICICloudProgressIndicatorTracker;
  [(ICICloudProgressIndicatorTracker *)&v4 dealloc];
}

+ (BOOL)isMigratingICloudAccount:(id)account
{
  [ICAccount allActiveCloudKitAccountsInContext:account];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [ICDeviceMigrationState currentDeviceMigrationStateForAccount:*(*(&v10 + 1) + 8 * i) createIfNecessary:0, v10];
        isMigrating = [v7 isMigrating];

        if (isMigrating)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)isMigratingLocalAccount
{
  v2 = +[UMUserManager sharedManager];
  currentUser = [v2 currentUser];

  if ([currentUser userType] == 1 || !+[ICMigrationController didChooseToMigrateLocalAccount](ICMigrationController, "didChooseToMigrateLocalAccount"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = !+[ICMigrationController didMigrateLocalAccount];
  }

  return v4;
}

- (void)cloudOperationsDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013975C;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)migrationStateDidChange:(id)change
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E1548(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  [(ICICloudProgressIndicatorTracker *)self updateMakingProgress];
}

- (void)_performProgressUpdate
{
  objc_initWeak(&location, self);
  if (!+[NSThread isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"[ICICloudProgressIndicatorTracker _performProgressUpdate]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if ((+[ICDeviceSupport isRunningUnitTests]& 1) == 0)
  {
    if ([(ICICloudProgressIndicatorTracker *)self isPerformingProgressUpdate])
    {
      [(ICICloudProgressIndicatorTracker *)self setNeedsPerformingProgressUpdateAfterCurrentIsComplete:1];
    }

    else
    {
      [(ICICloudProgressIndicatorTracker *)self setIsPerformingProgressUpdate:1];
      v3 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_1004E1548(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      v11 = +[ICNoteContext sharedContext];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100139A34;
      v12[3] = &unk_10064ADE0;
      objc_copyWeak(&v13, &location);
      v12[4] = self;
      [v11 performBackgroundTask:v12];

      objc_destroyWeak(&v13);
    }
  }

  objc_destroyWeak(&location);
}

@end