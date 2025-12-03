@interface BKWelcomeNotificationWarmingItem
- (BKWelcomeNotificationWarmingItem)init;
- (BOOL)featureEnabled;
- (BOOL)welcomeScreenShouldShow;
- (id)resolveNotificationAuthorizationPromise;
- (id)welcomeScreenViewControllerWithCompletion:(id)completion;
- (void)requestAuthorizationFromAMS;
@end

@implementation BKWelcomeNotificationWarmingItem

- (BKWelcomeNotificationWarmingItem)init
{
  v5.receiver = self;
  v5.super_class = BKWelcomeNotificationWarmingItem;
  v2 = [(BKWelcomeNotificationWarmingItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKWelcomeNotificationWarmingItem *)v2 requestAuthorizationFromAMS];
  }

  return v3;
}

- (void)requestAuthorizationFromAMS
{
  if ([(BKWelcomeNotificationWarmingItem *)self featureEnabled])
  {
    v3 = +[NSUserDefaults bu_groupUserDefaults];
    v4 = [v3 BOOLForKey:@"BKWelcomeNotificationWarmingItem.warmingSheetShown"];

    v5 = +[UIApplication sharedApplication];
    launchedToTest = [v5 launchedToTest];

    if (v4 & 1) != 0 || (launchedToTest)
    {
      return;
    }

    v7 = +[AMSUserNotificationAuthorizationTask engagementRequestForFullSheet];
    [(BKWelcomeNotificationWarmingItem *)self setNotificationAuthorizationPromise:v7];

    notificationAuthorizationPromise = [(BKWelcomeNotificationWarmingItem *)self notificationAuthorizationPromise];
    v8 = [notificationAuthorizationPromise continueWithBlock:&stru_100A06C30];
    [(BKWelcomeNotificationWarmingItem *)self setNotificationAuthorizationPromise:v8];
  }

  else
  {
    notificationAuthorizationPromise = +[BKNotificationManager sharedInstance];
    [notificationAuthorizationPromise requestAuthorizationWithCompletion:0];
  }
}

- (BOOL)featureEnabled
{
  v2 = +[NSUserDefaults bu_groupUserDefaults];
  v3 = [v2 BOOLForKey:@"BKDisableNotificationWarmingSheet"];

  return v3 ^ 1;
}

- (id)resolveNotificationAuthorizationPromise
{
  resolveNotificationAuthorizationPromiseNextRetry = [(BKWelcomeNotificationWarmingItem *)self resolveNotificationAuthorizationPromiseNextRetry];
  [resolveNotificationAuthorizationPromiseNextRetry timeIntervalSinceNow];
  v5 = v4;

  if (v5 <= 0.0)
  {
    notificationAuthorizationPromise = [(BKWelcomeNotificationWarmingItem *)self notificationAuthorizationPromise];
    v8 = +[NSDate date];
    v14 = 0;
    v7 = [notificationAuthorizationPromise resultWithTimeout:&v14 error:5.0];
    v9 = v14;
    [v8 timeIntervalSinceNow];
    if (!v7 && v9 && v10 <= -5.0)
    {
      v11 = BSUIWelcomeScreenLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10078E260(v11);
      }

      v12 = [NSDate dateWithTimeIntervalSinceNow:3.0];
      [(BKWelcomeNotificationWarmingItem *)self setResolveNotificationAuthorizationPromiseNextRetry:v12];
    }
  }

  else
  {
    notificationAuthorizationPromise = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(notificationAuthorizationPromise, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, notificationAuthorizationPromise, OS_LOG_TYPE_DEFAULT, "A recent attempt to resolve the authorization status promise timed out. Assuming we still can't resolve it.", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)welcomeScreenShouldShow
{
  resolveNotificationAuthorizationPromise = [(BKWelcomeNotificationWarmingItem *)self resolveNotificationAuthorizationPromise];
  v4 = 0;
  if ([(BKWelcomeNotificationWarmingItem *)self featureEnabled]&& resolveNotificationAuthorizationPromise)
  {
    if ([resolveNotificationAuthorizationPromise authorizationStatus])
    {
      v4 = 0;
    }

    else
    {
      request = [resolveNotificationAuthorizationPromise request];
      v4 = request != 0;
    }
  }

  v6 = +[NSUserDefaults bu_groupUserDefaults];
  v7 = [v6 BOOLForKey:@"BKWelcomeNotificationWarmingItem.warmingSheetShown"];

  v8 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = @"Yes";
    }

    else
    {
      v9 = @"No";
    }

    if ([(BKWelcomeNotificationWarmingItem *)self featureEnabled])
    {
      v10 = @"Yes";
    }

    else
    {
      v10 = @"No";
    }

    if ([resolveNotificationAuthorizationPromise authorizationStatus])
    {
      v11 = @"No";
    }

    else
    {
      v11 = @"Yes";
    }

    request2 = [resolveNotificationAuthorizationPromise request];
    v15 = 138544130;
    if (request2)
    {
      v13 = @"Yes";
    }

    else
    {
      v13 = @"No";
    }

    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "should display notification warming sheet: Already showed it in the past? %{public}@; Feature Enabled: %{public}@ ; Authorization status is undertermined: %{public}@; Got a AMSEngagementRequest back: %{public}@; ", &v15, 0x2Au);
  }

  return v4;
}

- (id)welcomeScreenViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BKWelcomeNotificationWarmingItem *)self featureEnabled])
  {
    resolveNotificationAuthorizationPromise = [(BKWelcomeNotificationWarmingItem *)self resolveNotificationAuthorizationPromise];
    request = [resolveNotificationAuthorizationPromise request];
    [request setMetricsOverlay:&off_100A43C00];
    v7 = [AMSUIEngagementTaskViewController alloc];
    v8 = +[BUBag defaultBag];
    v9 = [v7 initWithRequest:request bag:v8];

    startEngagement = [v9 startEngagement];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D4F1C;
    v12[3] = &unk_100A06C58;
    v13 = completionCopy;
    [startEngagement addFinishBlock:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end