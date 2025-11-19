@interface RMAccountsNotificationPlugin
- (BOOL)_changeIsSignificantForAccount:(id)a3 oldAccount:(id)a4;
- (BOOL)_shouldNotifyForAccount:(id)a3;
- (void)_postNotification;
- (void)_sendStatusNotificationIfNeededForAccount:(id)a3 oldAccount:(id)a4 changeType:(int)a5;
@end

@implementation RMAccountsNotificationPlugin

- (void)_sendStatusNotificationIfNeededForAccount:(id)a3 oldAccount:(id)a4 changeType:(int)a5
{
  v8 = a3;
  v9 = a4;
  if ([(RMAccountsNotificationPlugin *)self _shouldNotifyForAccount:v8]|| [(RMAccountsNotificationPlugin *)self _shouldNotifyForAccount:v9])
  {
    v10 = +[RMLog accountsNotificationPlugin];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    switch(a5)
    {
      case 3:
        if (v11)
        {
          sub_2CA0(v9);
        }

        goto LABEL_15;
      case 2:
        if (v11)
        {
          sub_2B14(v8);
        }

        v12 = [(RMAccountsNotificationPlugin *)self _changeIsSignificantForAccount:v8 oldAccount:v9];
        v10 = +[RMLog accountsNotificationPlugin];
        v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v13)
          {
            sub_2C1C(v8);
          }

          goto LABEL_15;
        }

        if (v13)
        {
          sub_2B98(v8);
        }

        break;
      case 1:
        if (v11)
        {
          sub_2D24(v8);
        }

LABEL_15:

        [(RMAccountsNotificationPlugin *)self _postNotification];
        goto LABEL_21;
      default:
        if (v11)
        {
          sub_2DA8(a5, v10);
        }

        break;
    }
  }

LABEL_21:
}

- (void)_postNotification
{
  v2 = +[RMLog accountsNotificationPlugin];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = @"com.apple.remotemanagement.status.account.notification";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Posting notification: %{public}@", &v4, 0xCu);
  }

  notify_post([@"com.apple.remotemanagement.status.account.notification" UTF8String]);
  v3 = +[RMLog accountsNotificationPlugin];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2E20(v3);
  }
}

- (BOOL)_shouldNotifyForAccount:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_changeIsSignificantForAccount:(id)a3 oldAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [AccountStatusHandler handlerForAccount:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 statusHasChangedForAccount:v5 oldAccount:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end