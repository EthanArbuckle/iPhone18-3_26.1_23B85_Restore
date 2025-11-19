@interface ICCloudContext
- (BOOL)isInForeground;
- (void)applicationDidEnterBackground;
- (void)applicationDidFinishLaunching;
- (void)applicationWillEnterForeground;
- (void)applicationWillTerminate;
@end

@implementation ICCloudContext

- (void)applicationDidFinishLaunching
{
  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000503C();
  }

  [(ICCloudContext *)self syncWithReason:@"DidFinishLaunching" completionHandler:0];
}

- (void)applicationDidEnterBackground
{
  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D8DE4();
  }

  [(ICCloudContext *)self setQualityOfService:9];
  v4 = +[UMUserManager sharedManager];
  v5 = [v4 currentUser];
  v6 = [v5 userType];

  v7 = +[UIApplication sharedApplication];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100067724;
  v13[3] = &unk_100646080;
  v14 = v6 == 1;
  v13[4] = self;
  qword_1006CB240 = [v7 beginBackgroundTaskWithName:@"Background Sync" expirationHandler:v13];

  if (qword_1006CB240 != UIBackgroundTaskInvalid)
  {
    v8 = v6 != 1;
    v9 = [(ICCloudContext *)self syncOnlyIfReachable];
    [(ICCloudContext *)self setSyncOnlyIfReachable:v8];
    [(ICCloudContext *)self updateCloudContextState];
    v10 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D8E18();
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000678A0;
    v11[3] = &unk_1006469C8;
    v11[4] = self;
    v12 = v9;
    [(ICCloudContext *)self processPendingCloudObjectsWithCompletionHandler:v11];
  }
}

- (void)applicationWillTerminate
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:qword_1006CB240];

  qword_1006CB240 = UIBackgroundTaskInvalid;
}

- (void)applicationWillEnterForeground
{
  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9048();
  }

  [(ICCloudContext *)self setQualityOfService:17];
  dispatchMainAfterDelay();
}

- (BOOL)isInForeground
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  performBlockOnMainThreadAndWait();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

@end