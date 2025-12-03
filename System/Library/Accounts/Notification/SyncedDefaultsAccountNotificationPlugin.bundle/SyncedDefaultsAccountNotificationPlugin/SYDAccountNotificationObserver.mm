@interface SYDAccountNotificationObserver
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation SYDAccountNotificationObserver

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v10 = oldAccountCopy;
  if (accountCopy)
  {
    v11 = accountCopy;
  }

  else
  {
    v11 = oldAccountCopy;
  }

  v12 = v11;
  accountType = [v12 accountType];
  identifier = [accountType identifier];
  if (![identifier isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {

    goto LABEL_29;
  }

  if ([v12 aa_isAccountClass:AAAccountClassPrimary])
  {

    goto LABEL_9;
  }

  v15 = [v12 aa_isAccountClass:AAAccountClassFull];

  if (v15)
  {
LABEL_9:
    accountType = [v12 identifier];
    v16 = SYDGetAccountsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_F18(accountType, type, v16);
    }

    if (type > 2)
    {
      if (type != 3)
      {
        if (type == 5)
        {
LABEL_26:
          v23 = SYDGetAccountsLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v27 = accountType;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Notifying daemon about account change for AppleAccount %@", buf, 0xCu);
          }

          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_E94;
          v24[3] = &unk_40E0;
          v25 = accountType;
          [SYDClientToDaemonConnection processAccountChangesWithCompletionHandler:v24];

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v21 = SYDGetAccountsLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = accountCopy;
        v22 = "User signed out of account %@";
        goto LABEL_24;
      }
    }

    else
    {
      if (type != 1)
      {
        if (type == 2)
        {
          v17 = kAccountDataclassKeyValue;
          v18 = [v10 isEnabledForDataclass:kAccountDataclassKeyValue];
          v19 = [accountCopy isEnabledForDataclass:v17];
          if (v18 != v19)
          {
            v20 = v19;
            v21 = SYDGetAccountsLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v27 = accountType;
              v28 = 1024;
              v29 = v20;
              v30 = 1024;
              v31 = v18;
              _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "Enabled state for account %@ was modified, isEnabled=%d wasEnabled=%d", buf, 0x18u);
            }

            goto LABEL_25;
          }
        }

LABEL_29:

        goto LABEL_30;
      }

      v21 = SYDGetAccountsLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = accountCopy;
        v22 = "User signed in to account %@";
LABEL_24:
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, v22, buf, 0xCu);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_30:
}

@end