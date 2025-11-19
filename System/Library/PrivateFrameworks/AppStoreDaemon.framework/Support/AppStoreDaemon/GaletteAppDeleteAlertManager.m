@interface GaletteAppDeleteAlertManager
+ (id)_galetteAppForBundleID:(id)a3;
+ (void)_appDeleteAlertIsEnabledWithReply:(id)a3;
+ (void)_cleanupAfterUninstallingBundleID:(id)a3;
+ (void)_showUninstallAlertForApp:(id)a3 bundleID:(id)a4;
+ (void)handleInstalledAppsWithBundleIDs:(id)a3;
+ (void)handleUninstalledAppsWithBundleIDs:(id)a3;
@end

@implementation GaletteAppDeleteAlertManager

+ (void)handleInstalledAppsWithBundleIDs:(id)a3
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138543618;
    v17 = v6;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [a1 _galetteAppForBundleID:{v10, v17}];
        v12 = v11;
        if (!v11 || ![v11 mode])
        {

          goto LABEL_14;
        }

        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = sub_100256C00([v12 mode]);
          *buf = v17;
          v26 = v14;
          v27 = 2114;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Detected %{public}@ for %{public}@", buf, 0x16u);
        }

        v15 = +[GaletteStore shared];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100409D10;
        v18[3] = &unk_100528830;
        v19 = v12;
        v20 = v10;
        v16 = v12;
        [v15 modifyUsingTransaction:v18];
      }

      v7 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

+ (void)handleUninstalledAppsWithBundleIDs:(id)a3
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = sub_10040A08C;
        v17 = sub_10040A09C;
        v18 = 0;
        v8 = +[GaletteStore shared];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10040A0A4;
        v12[3] = &unk_100524770;
        v12[4] = v7;
        v12[5] = &v13;
        [v8 readUsingSession:v12];

        v9 = v14[5];
        if (!v9 || ![v9 mode])
        {
          _Block_object_dispose(&v13, 8);

          goto LABEL_12;
        }

        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10040A0F4;
        v11[3] = &unk_100528858;
        v11[5] = &v13;
        v11[6] = a1;
        v11[4] = v7;
        [a1 _appDeleteAlertIsEnabledWithReply:v11];
        _Block_object_dispose(&v13, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

+ (void)_showUninstallAlertForApp:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100256C00([v6 mode]);
    *buf = 138543618;
    v28 = v9;
    v29 = 2114;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will show uninstall alert for %{public}@ for %{public}@", buf, 0x16u);
  }

  v10 = ASDLocalizedString();
  v11 = [v6 name];
  v12 = [NSString stringWithFormat:v10, v11];

  v13 = ASDLocalizedString();
  v14 = ASDLocalizedString();
  v15 = [AMSDialogRequest requestWithTitle:v12 message:v13];
  v16 = [AMSDialogAction actionWithTitle:v14];
  v26 = v16;
  v17 = [NSArray arrayWithObjects:&v26 count:1];
  [v15 setButtonActions:v17];

  v18 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v15];
  v19 = [v18 present];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10040A4C8;
  v22[3] = &unk_100527828;
  v23 = v6;
  v24 = v7;
  v25 = a1;
  v20 = v7;
  v21 = v6;
  [v19 addFinishBlock:v22];
}

+ (void)_cleanupAfterUninstallingBundleID:(id)a3
{
  v4 = a3;
  v5 = [a1 _galetteAppForBundleID:v4];
  v6 = v5;
  if (v5 && [v5 mode])
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100256C00([v6 mode]);
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Detected another app with %{public}@, will not remove persisted record for %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9 = +[GaletteStore shared];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10040A7B8;
    v10[3] = &unk_100524748;
    v11 = v4;
    [v9 modifyUsingTransaction:v10];

    v7 = v11;
  }
}

+ (id)_galetteAppForBundleID:(id)a3
{
  v3 = a3;
  v16 = 0;
  v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:v3 allowPlaceholder:1 error:&v16];
  v5 = v16;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v3;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to lookup bundle record for %{public}@, will assume no entitlements: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = [v4 entitlements];
    v8 = [v7 objectForKey:@"com.apple.developer.storekit.external-purchase-link" ofClass:objc_opt_class()];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = 1;
LABEL_12:
      v13 = [v4 localizedName];
      v14 = [GaletteAppMemoryEntity appWithBundleID:v3 mode:v10 name:v13];

      goto LABEL_14;
    }

    v11 = [v7 objectForKey:@"com.apple.developer.storekit.external-purchase" ofClass:objc_opt_class()];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v10 = 2;
      goto LABEL_12;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (void)_appDeleteAlertIsEnabledWithReply:(id)a3
{
  v3 = a3;
  v4 = +[BagService appstoredService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10040AB30;
  v6[3] = &unk_100528880;
  v7 = v3;
  v5 = v3;
  [v4 bagWithTimeout:v6 completionHandler:0.5];
}

@end