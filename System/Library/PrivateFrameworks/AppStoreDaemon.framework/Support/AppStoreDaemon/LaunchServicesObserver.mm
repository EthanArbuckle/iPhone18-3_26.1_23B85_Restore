@interface LaunchServicesObserver
- (LaunchServicesObserver)init;
- (void)_handleAppleIDDidChangeNotification:(id)notification;
- (void)_handleBetaAppCrashedNotification:(id)notification;
- (void)_handleInstalledEventNotification:(id)notification;
@end

@implementation LaunchServicesObserver

- (LaunchServicesObserver)init
{
  v7.receiver = self;
  v7.super_class = LaunchServicesObserver;
  v2 = [(LaunchServicesObserver *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = sub_1003BBF50();
    isHRNMode = [v4 isHRNMode];

    if ((isHRNMode & 1) == 0)
    {
      [v3 addObserver:v2 selector:"_handleInstalledEventNotification:" name:@"com.apple.LaunchServices.applicationRegistered" object:0];
      [v3 addObserver:v2 selector:"_handleUninstalledEventNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
      [v3 addObserver:v2 selector:"_handleBetaAppCrashedNotification:" name:@"com.apple.ReportCrash.beta.bulletin" object:0];
      [v3 addObserver:v2 selector:"_handleAppleIDDidChangeNotification:" name:@"com.apple.appstored.ASDAppleIDDidChangeNotification" object:0];
    }
  }

  return v2;
}

- (void)_handleInstalledEventNotification:(id)notification
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100386C98;
  v3[3] = &unk_100525E98;
  v3[4] = self;
  sub_1003871A4(self, notification, v3);
}

- (void)_handleAppleIDDidChangeNotification:(id)notification
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Received Apple ID did change notification.", &v8, 0xCu);
  }

  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    [*(v5 + 8) setName:@"com.apple.LaunchServicesObserver.AppleIDDidChange.ValidateAppleIDs"];
    v7 = objc_opt_new();
    [v6[1] addOperation:v7];
  }

  else
  {
    v7 = objc_opt_new();
  }
}

- (void)_handleBetaAppCrashedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"bundleID"];
  v6 = [userInfo objectForKeyedSubscript:@"incidentID"];
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5 && v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a beta app crash notification for %{public}@", &v10, 0xCu);
    }

    v8 = sub_1002404C0();
    sub_100243234(v8, v5, v6);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    userInfo2 = [notificationCopy userInfo];
    v10 = 138543362;
    v11 = userInfo2;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received a beta app crash notification without the required metadata: %{public}@", &v10, 0xCu);
  }
}

@end