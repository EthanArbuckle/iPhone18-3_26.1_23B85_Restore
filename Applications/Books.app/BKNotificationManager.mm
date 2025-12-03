@interface BKNotificationManager
+ (id)sharedInstance;
- (BKNotificationManager)init;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_emitNotificationEngagementEventForResponse:(id)response;
- (void)getAuthorizationStatusWithCompletion:(id)completion;
- (void)getAuthorizationStatusWithCompletionValue:(id)value;
- (void)handleNotificationResponse:(id)response;
- (void)handlePriceTrackingNotificationResponse:(id)response content:(id)content;
- (void)requestAuthorizationWithCompletion:(id)completion;
- (void)requestAuthorizationWithCompletionValue:(id)value;
- (void)requestReauthorizationWithCompletion:(id)completion;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
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

- (void)_applicationWillEnterForeground:(id)foreground
{
  statusController = [(BKNotificationManager *)self statusController];
  [statusController checkAndReportOptInStatus];

  reauthorizationCompletions = [(BKNotificationManager *)self reauthorizationCompletions];
  if ([reauthorizationCompletions count])
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
    v7[4] = reauthorizationCompletions;
    [(BKNotificationManager *)self getAuthorizationStatusWithCompletion:v7];
  }
}

- (void)getAuthorizationStatusWithCompletionValue:(id)value
{
  valueCopy = value;
  center = [(BKNotificationManager *)self center];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167A20;
  v7[3] = &unk_100A09158;
  v8 = valueCopy;
  v6 = valueCopy;
  [center getNotificationSettingsWithCompletionHandler:v7];
}

- (void)requestAuthorizationWithCompletionValue:(id)value
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100167BB0;
  v5[3] = &unk_100A038D0;
  valueCopy = value;
  v4 = valueCopy;
  [(BKNotificationManager *)self requestAuthorizationWithCompletion:v5];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167D2C;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF7768 != -1)
  {
    dispatch_once(&qword_100AF7768, block);
  }

  v2 = qword_100AF7770;

  return v2;
}

- (void)requestAuthorizationWithCompletion:(id)completion
{
  completionCopy = completion;
  center = [(BKNotificationManager *)self center];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167E14;
  v7[3] = &unk_100A063F0;
  v8 = completionCopy;
  v6 = completionCopy;
  [center requestAuthorizationWithOptions:38 completionHandler:v7];
}

- (void)requestReauthorizationWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100167F2C;
  v4[3] = &unk_100A09180;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(BKNotificationManager *)selfCopy getAuthorizationStatusWithCompletion:v4];
}

- (void)getAuthorizationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  center = [(BKNotificationManager *)self center];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001682EC;
  v7[3] = &unk_100A091A8;
  v8 = completionCopy;
  v6 = completionCopy;
  [center getNotificationSettingsWithCompletionHandler:v7];
}

- (void)handleNotificationResponse:(id)response
{
  responseCopy = response;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];

  categoryIdentifier = [content categoryIdentifier];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = content;
    v23 = 2112;
    v24 = categoryIdentifier;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Processing incoming notification: %@, category ID: %@", buf, 0x16u);
  }

  v9 = +[BKAchievementsNotificationController categoryIdentifier];
  v10 = [categoryIdentifier isEqualToString:v9];

  if (v10)
  {
    actionIdentifier = [responseCopy actionIdentifier];
    v12 = [actionIdentifier isEqualToString:UNNotificationDefaultActionIdentifier];

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        userInfo = [content userInfo];
        *buf = 138412290;
        v22 = userInfo;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requested to open achievement sheet: %@", buf, 0xCu);
      }

      [(BKNotificationManager *)self _emitNotificationEngagementEventForResponse:responseCopy];
      v14 = +[BKAppDelegate sceneManager];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100168620;
      v19[3] = &unk_100A091D0;
      v20 = content;
      [v14 requestPrimaryOrBookScene:v19];
    }
  }

  else
  {
    v15 = +[UNNotificationCategory YearInReviewNotificationCategoryIdentifier];
    v16 = [categoryIdentifier isEqualToString:v15];

    if (v16)
    {
      actionIdentifier2 = [responseCopy actionIdentifier];
      v18 = [actionIdentifier2 isEqualToString:UNNotificationDefaultActionIdentifier];

      if (v18)
      {
        +[JSAApplication openYearInReview];
      }
    }

    else if ([categoryIdentifier isEqualToString:BDSPriceTrackerNotificationCategoryIdentifier])
    {
      [(BKNotificationManager *)self handlePriceTrackingNotificationResponse:responseCopy content:content];
    }
  }
}

- (void)handlePriceTrackingNotificationResponse:(id)response content:(id)content
{
  responseCopy = response;
  contentCopy = content;
  actionIdentifier = [responseCopy actionIdentifier];
  v8 = [actionIdentifier isEqualToString:UNNotificationDefaultActionIdentifier];

  if (v8)
  {
    objc_opt_class();
    userInfo = [contentCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:BDSPriceTrackerNotificationDeepLinkURLKey];
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
      bundleIdentifier = [v14 bundleIdentifier];
      [v13 setObject:bundleIdentifier forKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];

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
    sub_1007919D8(responseCopy);
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(BKNotificationManager *)self handleNotificationResponse:response];
  handlerCopy[2]();
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  settingsCopy = settings;
  centerCopy = center;
  v7 = +[NSNotificationCenter defaultCenter];
  v9 = @"settings";
  v10 = settingsCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [v7 postNotificationName:@"UNUserNotificationCenterDidChangeSettings" object:centerCopy userInfo:v8];
}

- (void)_emitNotificationEngagementEventForResponse:(id)response
{
  notification = [response notification];
  request = [notification request];

  content = [request content];
  userInfo = [content userInfo];
  identifier = [request identifier];
  title = [content title];
  v6 = [BKAchievementsNotificationController titleKeyFromNotificationUserInfo:userInfo];
  body = [content body];
  v8 = [BKAchievementsNotificationController messageKeyFromNotificationUserInfo:userInfo];
  v9 = [[BANotificationData alloc] initWithNotificationContentID:0 notificationID:identifier notificationType:2 recoType:0 goalType:+[BKAchievementsNotificationController goalTypeFromNotificationUserInfo:](BKAchievementsNotificationController titleCode:"goalTypeFromNotificationUserInfo:" title:userInfo) messageCode:v6 message:{title, v8, body}];
  v10 = [[BANotificationEngagementData alloc] initWithActionType:1 actionUrl:&stru_100A30A68 targetID:&__NSArray0__struct targetType:0];
  v11 = +[BKAppDelegate delegate];
  primaryAnalyticsController = [v11 primaryAnalyticsController];

  v13 = +[BAEventReporter sharedReporter];
  applicationTracker = [primaryAnalyticsController applicationTracker];
  [v13 emitNotificationEngagementEventWithTracker:applicationTracker engagementData:v10 notificationData:v9];
}

@end