@interface UserNotificationManager
- (UserNotificationManager)init;
- (void)_handleWatchAuthenticationMessage:(id)a3 fromDevice:(id)a4;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation UserNotificationManager

- (UserNotificationManager)init
{
  v11.receiver = self;
  v11.super_class = UserNotificationManager;
  v2 = [(UserNotificationManager *)&v11 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.AppStore"];
    center = v2->_center;
    v2->_center = v3;

    v5 = [UNNotificationCategory categoryWithIdentifier:@"asd-notification-default" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
    v6 = v2->_center;
    v12 = v5;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    v8 = [NSSet setWithArray:v7];
    [(UNUserNotificationCenter *)v6 setNotificationCategories:v8];

    [(UNUserNotificationCenter *)v2->_center setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setPrivateDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setWantsNotificationResponsesDelivered];
    v9 = sub_1002EB36C();
    sub_1002EB6D8(v9, v2, "_handleWatchAuthenticationMessage:fromDevice:", 7);
  }

  return v2;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a5;
  v7 = a4;
  if ([AMSUserNotification shouldHandleNotificationResponse:v7])
  {
    v8 = +[BagService appstoredService];
    v9 = [v8 amsBag];
    v10 = [AMSUserNotification handleNotificationResponse:v7 bag:v9];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003E95E4;
    v13[3] = &unk_10051D1B0;
    v14 = v6;
    [v10 addFinishBlock:v13];
  }

  else
  {
    v11 = [v7 notification];
    v12 = [v11 request];
    v10 = sub_100304114(Bulletin, v12);

    sub_100304498(v10, v7);
    v6[2](v6);
  }
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v8 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Settings did change", &v12, 0xCu);
  }

  v9 = +[BagService appstoredService];
  v10 = [v9 amsBag];
  v11 = [AMSUserNotification notificationCenter:v5 didChangeSettings:v6 bag:v10];
}

- (void)_handleWatchAuthenticationMessage:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = [XDCPingMessage alloc];
  if (v6)
  {
    Property = objc_getProperty(v6, v8, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [(XDCPingMessage *)v9 initWithData:v11];

  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      uuid = v12->_uuid;
    }

    else
    {
      uuid = 0;
    }

    v17 = uuid;
    v32 = 138543874;
    v33 = v14;
    v34 = 2114;
    v35 = v17;
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: [%{public}@] Received request to show auth notification from %{public}@", &v32, 0x20u);
  }

  v18 = objc_alloc_init(XDCPingMessage);
  if (v12)
  {
    v19 = v12->_uuid;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  sub_100268B54(v18, v20);

  v21 = sub_100342264(v6, v18, 7);
  v22 = sub_1002EB36C();
  v23 = v22;
  if (v22)
  {
    sub_1002EB834(v22, v21, v7, 0, 0);
  }

  v24 = ASDLocalizedString();
  v25 = ASDLocalizedString();
  v26 = sub_10030440C(Bulletin, v24, v25);

  if (v26)
  {
    objc_setProperty_nonatomic_copy(v26, v27, @"com.apple.Bridge", 72);
  }

  v28 = [NSURL URLWithString:@"bridge:root=com.apple.BridgeAppStoreDaemonSettings"];
  v30 = v28;
  if (v26)
  {
    objc_setProperty_nonatomic_copy(v26, v29, v28, 24);

    objc_setProperty_nonatomic_copy(v26, v31, @"com.apple.appstored.authenticate.watch", 56);
  }

  else
  {
  }

  sub_1003E926C(self, v26);
}

@end