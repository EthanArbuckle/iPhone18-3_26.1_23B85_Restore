@interface ANNotificationProvider
- (ANNotificationProvider)init;
- (ANNotificationProviderDelegate)delegate;
- (id)_defaultNotificationCategories;
- (id)_notificationContent:(id)a3;
- (void)_notifyDelegateOfAction:(id)a3 forNotification:(id)a4;
- (void)deliveredNotifications:(id)a3;
- (void)postNotification:(id)a3 completion:(id)a4;
- (void)removeNotificationWithIdentifier:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation ANNotificationProvider

- (ANNotificationProvider)init
{
  v8.receiver = self;
  v8.super_class = ANNotificationProvider;
  v2 = [(ANNotificationProvider *)&v8 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.accountnotifications"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
    v5 = v2->_notificationCenter;
    v6 = [(ANNotificationProvider *)v2 _defaultNotificationCategories];
    [(UNUserNotificationCenter *)v5 setNotificationCategories:v6];
  }

  return v2;
}

- (id)_defaultNotificationCategories
{
  v2 = [[NSMutableSet alloc] initWithCapacity:1];
  v3 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.accountnotification.default" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  [v2 addObject:v3];

  return v2;
}

- (void)postNotification:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ANNotificationProvider *)self _notificationContent:v7];
  v9 = [v7 identifier];

  v10 = [UNNotificationRequest requestWithIdentifier:v9 content:v8 trigger:0];

  v11 = _ANLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[ANNotificationProvider postNotification:completion:]";
    v18 = 1024;
    v19 = 71;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s (%d) Posting notification request %@", buf, 0x1Cu);
  }

  notificationCenter = self->_notificationCenter;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003040;
  v14[3] = &unk_10000C3F8;
  v15 = v6;
  v13 = v6;
  [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v10 withCompletionHandler:v14];
}

- (id)_notificationContent:(id)a3
{
  v3 = a3;
  v4 = _ANLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[ANNotificationProvider _notificationContent:]";
    v17 = 1024;
    v18 = 83;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) Generating notification content", buf, 0x12u);
  }

  v5 = objc_alloc_init(UNMutableNotificationContent);
  v6 = [v3 title];
  [v5 setTitle:v6];

  v7 = [v3 message];
  [v5 setBody:v7];

  v8 = [v3 date];
  [v5 setDate:v8];

  v9 = +[UNNotificationSound defaultSound];
  [v5 setSound:v9];

  [v5 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  [v5 setShouldBackgroundDefaultAction:1];
  [v5 setCategoryIdentifier:@"com.apple.accountnotification.default"];
  v10 = [v3 dictionaryRepresentation];

  v14 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v5 setUserInfo:v11];

  return v5;
}

- (void)removeNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v4;
    v6 = [NSArray arrayWithObjects:&v13 count:1];
    *buf = 136315650;
    v15 = "[ANNotificationProvider removeNotificationWithIdentifier:]";
    v16 = 1024;
    v17 = 104;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Removing notification %@", buf, 0x1Cu);
  }

  notificationCenter = self->_notificationCenter;
  v12 = v4;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v8];

  v9 = self->_notificationCenter;
  v11 = v4;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [(UNUserNotificationCenter *)v9 removeDeliveredNotificationsWithIdentifiers:v10];
}

- (void)deliveredNotifications:(id)a3
{
  v4 = a3;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[ANNotificationProvider deliveredNotifications:]";
    v12 = 1024;
    v13 = 112;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Fetching delivered notifications", buf, 0x12u);
  }

  notificationCenter = self->_notificationCenter;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003550;
  v8[3] = &unk_10000C460;
  v9 = v4;
  v7 = v4;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _ANLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "[ANNotificationProvider userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v20 = 1024;
    v21 = 137;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Recieved notification response %@", &v18, 0x1Cu);
  }

  v10 = [v7 notification];
  v11 = [v10 request];
  v12 = [v11 content];

  v13 = [v12 userInfo];

  if (v13)
  {
    v14 = [v12 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"ANAccountNotificationDictionaryRepresentationKey"];

    if (v15)
    {
      v16 = [[ANAccountNotification alloc] initWithDictionaryRepresentation:v15];
      if (v16)
      {
        v17 = [v7 actionIdentifier];
        [(ANNotificationProvider *)self _notifyDelegateOfAction:v17 forNotification:v16];
      }

      else
      {
        v17 = _ANLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10000566C();
        }
      }
    }

    else
    {
      v16 = _ANLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000056E8();
      }
    }
  }

  else
  {
    v15 = _ANLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100005764();
    }
  }

  v8[2](v8);
}

- (void)_notifyDelegateOfAction:(id)a3 forNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ANLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[ANNotificationProvider _notifyDelegateOfAction:forNotification:]";
    v13 = 1024;
    v14 = 165;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Attempting to notify delegate of action %@", &v11, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if ([v6 isEqualToString:UNNotificationDefaultActionIdentifier])
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 notificationProvider:self didActivateNotification:v7];
    }

    else if ([v6 isEqualToString:UNNotificationDismissActionIdentifier])
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 notificationProvider:self didDismissNotification:v7];
    }

    else
    {
      v10 = _ANLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000057E0();
      }
    }
  }

  else
  {
    v10 = _ANLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[ANNotificationProvider _notifyDelegateOfAction:forNotification:]";
      v13 = 1024;
      v14 = 176;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) No delegate, nothing to pass back", &v11, 0x12u);
    }
  }
}

- (ANNotificationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end