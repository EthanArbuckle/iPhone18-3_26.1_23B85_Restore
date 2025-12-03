@interface FRInternalExtrasFakeNotificationSender
- (void)_scheduleFakeChannelSupportNotification:(id)notification;
- (void)_scheduleFakeNewArticleNotification:(id)notification whenAppEntersBackground:(id)background;
- (void)scheduleAnyFakeNotificationsFromInternalExtras:(id)extras whenAppEntersBackground:(id)background;
@end

@implementation FRInternalExtrasFakeNotificationSender

- (void)scheduleAnyFakeNotificationsFromInternalExtras:(id)extras whenAppEntersBackground:(id)background
{
  extrasCopy = extras;
  backgroundCopy = background;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"fake_notification_for_article_on_background"];

  if (v8)
  {
    [(FRInternalExtrasFakeNotificationSender *)self _scheduleFakeNewArticleNotification:extrasCopy whenAppEntersBackground:backgroundCopy];
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"fake_notification_for_channel_supports_notifications_on_background"];

  if (v10)
  {
    [(FRInternalExtrasFakeNotificationSender *)self _scheduleFakeChannelSupportNotification:extrasCopy];
  }
}

- (void)_scheduleFakeChannelSupportNotification:(id)notification
{
  notificationCopy = notification;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:0 forKey:@"fake_notification_for_channel_supports_notifications_on_background"];

  v6 = [[FCTag alloc] initForTestingWithTagType:2 identifier:@"fakeID" name:@"Fake Channel"];
  v5 = [NSSet setWithObject:v6];
  [notificationCopy scheduleLocalNotificationforChannels:v5];
}

- (void)_scheduleFakeNewArticleNotification:(id)notification whenAppEntersBackground:(id)background
{
  notificationCopy = notification;
  backgroundCopy = background;
  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setBool:0 forKey:@"fake_notification_for_article_on_background"];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100050304;
  v17[3] = &unk_1000C5598;
  v8 = backgroundCopy;
  v18 = v8;
  v19 = &v20;
  v9 = [v8 beginBackgroundTaskWithName:@"AppDelegateEnterBackground" expirationHandler:v17];
  v21[3] = v9;
  v10 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050350;
  block[3] = &unk_1000C3740;
  v14 = notificationCopy;
  v15 = v8;
  v16 = &v20;
  v11 = v8;
  v12 = notificationCopy;
  dispatch_after(v10, &_dispatch_main_q, block);

  _Block_object_dispose(&v20, 8);
}

@end