@interface SAUIPerformNotificationAction
- (void)_adui_handleWithCompletion:(id)a3;
@end

@implementation SAUIPerformNotificationAction

- (void)_adui_handleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[SAUIPerformNotificationAction(ADUIService) _adui_handleWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = [AFTwoArgumentSafetyBlock alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002867E0;
  v15[3] = &unk_100519680;
  v15[4] = self;
  v16 = v4;
  v7 = v4;
  v8 = [v6 initWithBlock:v15 defaultValue1:0 defaultValue2:0];
  v9 = [(SAUIPerformNotificationAction *)self notificationIdentifier];
  v10 = [(SAUIPerformNotificationAction *)self actionIdentifier];
  v11 = +[ADNotificationManager sharedManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002868EC;
  v13[3] = &unk_10051B778;
  v14 = v8;
  v12 = v8;
  [v11 performActionWithIdentifier:v10 forUNNotificationWithIdentifier:v9 completion:v13];
}

@end