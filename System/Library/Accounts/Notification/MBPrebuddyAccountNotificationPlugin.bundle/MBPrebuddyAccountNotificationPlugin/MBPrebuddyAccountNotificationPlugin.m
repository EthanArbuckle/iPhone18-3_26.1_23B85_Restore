void sub_1184(id a1)
{
  v1 = +[MBPrebuddyManager sharedManager];
  [v1 updateFollowUp];
}

WithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
- (void)_updateFollowUp;
- (void)account:(id)a3 didPerformActionsForDataclasses:(id)a4;
@end

@implementation MBPrebuddyAccountNotificationPlugin

- (BOOL)account:(id)a3 willChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v8 = a6;
  v9 = [v8 aa_isAccountClass:AAAccountClassPrimary];
  if (!a3 && a4 == 3 && v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "MBPrebuddyAccountNotificationPlugin: iCloud Account will be signed out, so cancelling Prebuddy mode: %@", buf, 0xCu);
      _MBLog();
    }

    v11 = +[MBPrebuddyManager sharedManager];
    [v11 cancelPrebuddyOnAccountSignOut];
  }

  return 0;
}

- (void)account:(id)a3 didPerformActionsForDataclasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 aa_isAccountClass:AAAccountClassPrimary];
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v10 = &__kCFBooleanTrue;
    }

    else
    {
      v10 = &__kCFBooleanFalse;
    }

    *buf = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "MBPrebuddyAccountNotificationPlugin: didPerformActionsForDataclasses: %@\nisPrimary: %@\n%@", buf, 0x20u);
    _MBLog();
  }

  if (v8 && [(MBPrebuddyAccountNotificationPlugin *)self _shouldUpdateFollowUpForDataclasses:v7])
  {
    [(MBPrebuddyAccountNotificationPlugin *)self _updateFollowUp];
  }
}

- (BOOL)_shouldUpdateFollowUpForDataclasses:(id)a3
{
  v3 = a3;
  v23[0] = ACAccountDataclassBookmarks;
  v23[1] = ACAccountDataclassNews;
  v23[2] = ACAccountDataclassStocks;
  v23[3] = ACAccountDataclassHome;
  v23[4] = ACAccountDataclassHealth;
  v23[5] = ACAccountDataclassSiri;
  v23[6] = ACAccountDataclassShoebox;
  v23[7] = ACAccountDataclassKeychainSync;
  v23[8] = ACAccountDataclassMoments;
  v4 = [NSArray arrayWithObjects:v23 count:9];
  v5 = [NSSet setWithArray:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v5 containsObject:v11])
        {
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MBPrebuddyAccountNotificationPlugin: Dataclass means we should update the follow up: %@", buf, 0xCu);
            _MBLog();
          }

          v13 = 1;
          v12 = v6;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "MBPrebuddyAccountNotificationPlugin: No dataclasses triggering us to update the follow up", buf, 2u);
    _MBLog();
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (void)_updateFollowUp
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "MBPrebuddyAccountNotificationPlugin: Updating follow up", v4, 2u);
    _MBLog();
  }

  v3 = dispatch_get_global_queue(21, 0);
  dispatch_async(v3, &stru_4138);
}

@end