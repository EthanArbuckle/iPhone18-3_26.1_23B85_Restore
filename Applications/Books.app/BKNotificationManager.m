@interface BKNotificationManager
+ (id)sharedInstance;
- (BKNotificationManager)init;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_emitNotificationEngagementEventForResponse:(id)a3;
- (void)getAuthorizationStatusWithCompletion:(id)a3;
- (void)getAuthorizationStatusWithCompletionValue:(id)a3;
- (void)handleNotificationResponse:(id)a3;
- (void)handlePriceTrackingNotificationResponse:(id)a3 content:(id)a4;
- (void)requestAuthorizationWithCompletion:(id)a3;
- (void)requestAuthorizationWithCompletionValue:(id)a3;
- (void)requestReauthorizationWithCompletion:(id)a3;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation BKNotificationManager

- (BKNotificationManager)init
{
  v19.receiver = self;
  v19.super_class = BKNotificationManager;
  v2 = [(BKNotificationManager *)&v19 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    reauthorizationCompletions = v2->_reauthorizationCompletions;
    v2->_reauthorizationCompletions = v3;

    v5 = +[UNUserNotificationCenter currentNotificationCenter];
    center = v2->_center;
    v2->_center = v5;

    v7 = +[BKAchievementsNotificationController categoryIdentifier];
    v8 = [UNNotificationCategory categoryWithIdentifier:v7 actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];

    v9 = +[UNNotificationCategory YearInReviewNotificationCategoryIdentifier];
    v10 = [UNNotificationCategory categoryWithIdentifier:v9 actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];

    v11 = v2->_center;
    v12 = [NSSet setWithObjects:v8, v10, 0];
    [(UNUserNotificationCenter *)v11 setNotificationCategories:v12];

    [(UNUserNotificationCenter *)v2->_center setDelegate:v2];
    v13 = v2->_center;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100167640;
    v17[3] = &unk_100A09158;
    v14 = v2;
    v18 = v14;
    [(UNUserNotificationCenter *)v13 getNotificationSettingsWithCompletionHandler:v17];
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v14 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = [(BKNotificationManager *)self statusController];
  [v4 checkAndReportOptInStatus];

  v5 = [(BKNotificationManager *)self reauthorizationCompletions];
  if ([v5 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BKNotificationManager] [Reauthorization] Returned from Settings app", buf, 2u);
    }

    v6 = +[NSMutableArray array];
    [(BKNotificationManager *)self setReauthorizationCompletions:v6];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001677E8;
    v7[3] = &unk_100A059D8;
    v7[4] = v5;
    [(BKNotificationManager *)self getAuthorizationStatusWithCompletion:v7];
  }
}

- (void)getAuthorizationStatusWithCompletionValue:(id)a3
{
  v4 = a3;
  v5 = [(BKNotificationManager *)self center];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167A20;
  v7[3] = &unk_100A09158;
  v8 = v4;
  v6 = v4;
  [v5 getNotificationSettingsWithCompletionHandler:v7];
}

- (void)requestAuthorizationWithCompletionValue:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100167BB0;
  v5[3] = &unk_100A038D0;
  v6 = a3;
  v4 = v6;
  [(BKNotificationManager *)self requestAuthorizationWithCompletion:v5];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167D2C;
  block[3] = &unk_100A03560;
  block[4] = a1;
  if (qword_100AF7768 != -1)
  {
    dispatch_once(&qword_100AF7768, block);
  }

  v2 = qword_100AF7770;

  return v2;
}

- (void)requestAuthorizationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKNotificationManager *)self center];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167E14;
  v7[3] = &unk_100A063F0;
  v8 = v4;
  v6 = v4;
  [v5 requestAuthorizationWithOptions:38 completionHandler:v7];
}

- (void)requestReauthorizationWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100167F2C;
  v4[3] = &unk_100A09180;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKNotificationManager *)v5 getAuthorizationStatusWithCompletion:v4];
}

- (void)getAuthorizationStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKNotificationManager *)self center];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001682EC;
  v7[3] = &unk_100A091A8;
  v8 = v4;
  v6 = v4;
  [v5 getNotificationSettingsWithCompletionHandler:v7];
}

- (void)handleNotificationResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 notification];
  v6 = [v5 request];
  v7 = [v6 content];

  v8 = [v7 categoryIdentifier];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Processing incoming notification: %@, category ID: %@", buf, 0x16u);
  }

  v9 = +[BKAchievementsNotificationController categoryIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [v4 actionIdentifier];
    v12 = [v11 isEqualToString:UNNotificationDefaultActionIdentifier];

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 userInfo];
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requested to open achievement sheet: %@", buf, 0xCu);
      }

      [(BKNotificationManager *)self _emitNotificationEngagementEventForResponse:v4];
      v14 = +[BKAppDelegate sceneManager];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100168620;
      v19[3] = &unk_100A091D0;
      v20 = v7;
      [v14 requestPrimaryOrBookScene:v19];
    }
  }

  else
  {
    v15 = +[UNNotificationCategory YearInReviewNotificationCategoryIdentifier];
    v16 = [v8 isEqualToString:v15];

    if (v16)
    {
      v17 = [v4 actionIdentifier];
      v18 = [v17 isEqualToString:UNNotificationDefaultActionIdentifier];

      if (v18)
      {
        +[JSAApplication openYearInReview];
      }
    }

    else if ([v8 isEqualToString:BDSPriceTrackerNotificationCategoryIdentifier])
    {
      [(BKNotificationManager *)self handlePriceTrackingNotificationResponse:v4 content:v7];
    }
  }
}

- (void)handlePriceTrackingNotificationResponse:(id)a3 content:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 actionIdentifier];
  v8 = [v7 isEqualToString:UNNotificationDefaultActionIdentifier];

  if (v8)
  {
    objc_opt_class();
    v9 = [v6 userInfo];
    v10 = [v9 objectForKeyedSubscript:BDSPriceTrackerNotificationDeepLinkURLKey];
    v11 = BUDynamicCast();

    if (v11)
    {
      v12 = [NSURL URLWithString:v11];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[PriceTracking] opening notification deep link URL %@...", &v18, 0xCu);
      }

      v13 = objc_opt_new();
      v14 = +[NSBundle mainBundle];
      v15 = [v14 bundleIdentifier];
      [v13 setObject:v15 forKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];

      v16 = +[BKAppDelegate delegate];
      v17 = [v13 copy];
      [v16 applicationOpenURL:v12 options:v17 sceneController:0];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100791A70();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1007919D8(v5);
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  [(BKNotificationManager *)self handleNotificationResponse:a4];
  v7[2]();
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  v9 = @"settings";
  v10 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [v7 postNotificationName:@"UNUserNotificationCenterDidChangeSettings" object:v6 userInfo:v8];
}

- (void)_emitNotificationEngagementEventForResponse:(id)a3
{
  v3 = [a3 notification];
  v17 = [v3 request];

  v4 = [v17 content];
  v5 = [v4 userInfo];
  v15 = [v17 identifier];
  v16 = [v4 title];
  v6 = [BKAchievementsNotificationController titleKeyFromNotificationUserInfo:v5];
  v7 = [v4 body];
  v8 = [BKAchievementsNotificationController messageKeyFromNotificationUserInfo:v5];
  v9 = [[BANotificationData alloc] initWithNotificationContentID:0 notificationID:v15 notificationType:2 recoType:0 goalType:+[BKAchievementsNotificationController goalTypeFromNotificationUserInfo:](BKAchievementsNotificationController titleCode:"goalTypeFromNotificationUserInfo:" title:v5) messageCode:v6 message:{v16, v8, v7}];
  v10 = [[BANotificationEngagementData alloc] initWithActionType:1 actionUrl:&stru_100A30A68 targetID:&__NSArray0__struct targetType:0];
  v11 = +[BKAppDelegate delegate];
  v12 = [v11 primaryAnalyticsController];

  v13 = +[BAEventReporter sharedReporter];
  v14 = [v12 applicationTracker];
  [v13 emitNotificationEngagementEventWithTracker:v14 engagementData:v10 notificationData:v9];
}

@end