@interface DMCAccountNotificationPlugin
- (void)_logAccountModification:(id)modification changeType:(int)type accountStore:(id)store;
- (void)_managedAppleAccount:(id)account modifiedFromOldAccount:(id)oldAccount inStore:(id)store;
- (void)_postNotification:(id)notification;
- (void)_updateUsernameOfRMAccountWithAppleAccount:(id)account inStore:(id)store;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation DMCAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  if (type == 1)
  {
    selfCopy2 = self;
    v18 = accountCopy;
    v19 = 1;
    goto LABEL_10;
  }

  if (type == 3)
  {
    selfCopy2 = self;
    v18 = oldAccountCopy;
    v19 = 3;
LABEL_10:
    [(DMCAccountNotificationPlugin *)selfCopy2 _logAccountModification:v18 changeType:v19 accountStore:storeCopy];
    goto LABEL_11;
  }

  if (type == 2 && (+[DMCMultiUserModeUtilities inSharediPadUserSession]& 1) == 0)
  {
    v12 = accountCopy;
    accountType = [v12 accountType];
    identifier = [accountType identifier];
    v15 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v15)
    {
      dmc_remoteManagingAccountIdentifier = [v12 dmc_remoteManagingAccountIdentifier];

      if (dmc_remoteManagingAccountIdentifier)
      {
        [(DMCAccountNotificationPlugin *)self _managedAppleAccount:v12 modifiedFromOldAccount:oldAccountCopy inStore:storeCopy];
      }
    }

    else
    {
    }
  }

LABEL_11:
}

- (void)_logAccountModification:(id)modification changeType:(int)type accountStore:(id)store
{
  modificationCopy = modification;
  storeCopy = store;
  accountType = [modificationCopy accountType];
  identifier = [accountType identifier];
  v11 = [identifier isEqualToString:ACAccountTypeIdentifierRemoteManagement];

  if (v11)
  {
    goto LABEL_4;
  }

  v12 = modificationCopy;
  accountType2 = [v12 accountType];
  identifier2 = [accountType2 identifier];
  v15 = [identifier2 isEqualToString:ACAccountTypeIdentifierAppleAccount];

  if ((v15 & 1) == 0)
  {

    goto LABEL_14;
  }

  dmc_remoteManagingAccountIdentifier = [v12 dmc_remoteManagingAccountIdentifier];

  if (dmc_remoteManagingAccountIdentifier)
  {
LABEL_4:
    accountType3 = [modificationCopy accountType];
    identifier3 = [accountType3 identifier];
    v19 = identifier3;
    v20 = @"deleted";
    if (type == 1)
    {
      v20 = @"added";
    }

    v34 = [NSString stringWithFormat:@"%@ account %@", identifier3, v20];

    v21 = objc_opt_new();
    v22 = DMCEventsTopicAccounts;
    v35[0] = @"Account Identifier";
    identifier4 = [modificationCopy identifier];
    v24 = identifier4;
    if (identifier4)
    {
      v25 = identifier4;
    }

    else
    {
      v25 = &stru_41D8;
    }

    v36[0] = v25;
    v35[1] = @"Type";
    accountType4 = [modificationCopy accountType];
    identifier5 = [accountType4 identifier];
    v28 = identifier5;
    if (identifier5)
    {
      v29 = identifier5;
    }

    else
    {
      v29 = &stru_41D8;
    }

    v36[1] = v29;
    v35[2] = @"Total RM Account #";
    [storeCopy dmc_RemoteManagementAccounts];
    v31 = v30 = storeCopy;
    v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 count]);
    v36[2] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
    [v21 logRegularEventForTopic:v22 reason:v34 details:v33];

    storeCopy = v30;
  }

LABEL_14:
}

- (void)_managedAppleAccount:(id)account modifiedFromOldAccount:(id)oldAccount inStore:(id)store
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  storeCopy = store;
  dmc_mdmServerToken = [accountCopy dmc_mdmServerToken];
  dmc_mdmServerToken2 = [oldAccountCopy dmc_mdmServerToken];
  v13 = [dmc_mdmServerToken isEqualToString:dmc_mdmServerToken2];

  if (v13)
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "DMC account plugin not posting notification because no relevant properties changed.", buf, 2u);
    }
  }

  else
  {
    [(DMCAccountNotificationPlugin *)self _postNotification:MDMManagedAppleAccountLongLivedTokenChangedNotification];
  }

  username = [accountCopy username];
  username2 = [oldAccountCopy username];
  v17 = [username isEqualToString:username2];

  if ((v17 & 1) == 0)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "DMCAccountNotificationPlugin: username of AppleAccount has changed.", v19, 2u);
    }

    [(DMCAccountNotificationPlugin *)self _updateUsernameOfRMAccountWithAppleAccount:accountCopy inStore:storeCopy];
  }
}

- (void)_updateUsernameOfRMAccountWithAppleAccount:(id)account inStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  dmc_altDSID = [accountCopy dmc_altDSID];
  v8 = [storeCopy dmc_remoteManagementAccountForAltDSID:dmc_altDSID];

  if (v8)
  {
    username = [accountCopy username];
    [v8 setUsername:username];

    [storeCopy saveVerifiedAccount:v8 withCompletionHandler:&stru_4138];
  }

  else
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      dmc_altDSID2 = [accountCopy dmc_altDSID];
      v13 = 138543362;
      v14 = dmc_altDSID2;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "DMCAccountNotificationPlugin: Failed to find RM account with altDSID: %{public}@", &v13, 0xCu);
    }
  }
}

- (void)_postNotification:(id)notification
{
  notificationCopy = notification;
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = notificationCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "DMC account plugin posting notification: %{public}@", &v6, 0xCu);
  }

  notify_post([notificationCopy UTF8String]);
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = notificationCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "DMC account plugin posted notification: %{public}@", &v6, 0xCu);
  }
}

@end