@interface RMAccountsNotificationPlugin
- (BOOL)_changeIsSignificantForAccount:(id)account oldAccount:(id)oldAccount;
- (BOOL)_shouldNotifyForAccount:(id)account;
- (void)_postNotification;
- (void)_sendStatusNotificationIfNeededForAccount:(id)account oldAccount:(id)oldAccount changeType:(int)type;
@end

@implementation RMAccountsNotificationPlugin

- (void)_sendStatusNotificationIfNeededForAccount:(id)account oldAccount:(id)oldAccount changeType:(int)type
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  if ([(RMAccountsNotificationPlugin *)self _shouldNotifyForAccount:accountCopy]|| [(RMAccountsNotificationPlugin *)self _shouldNotifyForAccount:oldAccountCopy])
  {
    v10 = +[RMLog accountsNotificationPlugin];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    switch(type)
    {
      case 3:
        if (v11)
        {
          sub_2CA0(oldAccountCopy);
        }

        goto LABEL_15;
      case 2:
        if (v11)
        {
          sub_2B14(accountCopy);
        }

        v12 = [(RMAccountsNotificationPlugin *)self _changeIsSignificantForAccount:accountCopy oldAccount:oldAccountCopy];
        v10 = +[RMLog accountsNotificationPlugin];
        v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v13)
          {
            sub_2C1C(accountCopy);
          }

          goto LABEL_15;
        }

        if (v13)
        {
          sub_2B98(accountCopy);
        }

        break;
      case 1:
        if (v11)
        {
          sub_2D24(accountCopy);
        }

LABEL_15:

        [(RMAccountsNotificationPlugin *)self _postNotification];
        goto LABEL_21;
      default:
        if (v11)
        {
          sub_2DA8(type, v10);
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

- (BOOL)_shouldNotifyForAccount:(id)account
{
  if (!account)
  {
    return 0;
  }

  v3 = [account objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_changeIsSignificantForAccount:(id)account oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v7 = [AccountStatusHandler handlerForAccount:accountCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 statusHasChangedForAccount:accountCopy oldAccount:oldAccountCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end