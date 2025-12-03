@interface StocksSyncAppLauncher
+ (BOOL)_acquire:(id)_acquire;
+ (void)_invalidateAfterDelay:(id)delay;
+ (void)_launchAppWithBundleID:(id)d withAction:(id)action completion:(id)completion;
+ (void)_postNotification:(__CFString *)notification;
+ (void)launchPhoneApp;
@end

@implementation StocksSyncAppLauncher

+ (void)launchPhoneApp
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v3 getActivePairedDevice];

  if (getActivePairedDevice)
  {
    v5 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_29E4;
    block[3] = &unk_C328;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v5 = stocks_sync_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Asked to launch phone app but there isn't a paired watch to ping; ignore.", buf, 2u);
    }
  }
}

+ (BOOL)_acquire:(id)_acquire
{
  v13 = 0;
  [_acquire acquireWithError:&v13];
  v3 = v13;
  v4 = stocks_sync_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v6 = "Unable to acquire assertion.";
      v7 = &v12;
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_0, v8, v9, v6, v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    v6 = "Acquired assertion.";
    v7 = &v11;
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  return v3 == 0;
}

+ (void)_invalidateAfterDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 2000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2E38;
  v7[3] = &unk_C350;
  v8 = delayCopy;
  v5 = delayCopy;
  v6 = objc_retainBlock(v7);
  dispatch_after(v4, &_dispatch_main_q, v6);
}

+ (void)_postNotification:(__CFString *)notification
{
  v4 = stocks_sync_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    notificationCopy = notification;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Posting %@.", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, notification, 0, 0, 1u);
}

+ (void)_launchAppWithBundleID:(id)d withAction:(id)action completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  actionCopy = action;
  v10 = stocks_sync_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = dCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Attempting to launch %@.", buf, 0xCu);
  }

  v23[0] = &__kCFBooleanTrue;
  v22[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v22[1] = FBSOpenApplicationOptionKeyActions;
  v21 = actionCopy;
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  v23[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = [FBSOpenApplicationOptions optionsWithDictionary:v12];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_31A0;
  v18[3] = &unk_C430;
  v19 = dCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = dCopy;
  v16 = objc_retainBlock(v18);
  v17 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  [v17 openApplication:v15 withOptions:v13 completion:v16];
}

@end