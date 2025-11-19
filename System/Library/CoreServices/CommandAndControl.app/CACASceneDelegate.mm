@interface CACASceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation CACASceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 session];
    v8 = [v7 role];
    v9 = _UIWindowSceneSessionRoleCarPlay;
    if ([v8 isEqualToString:_UIWindowSceneSessionRoleCarPlay])
    {
      v10 = _os_feature_enabled_impl();

      if ((v10 & 1) == 0)
      {
        v11 = CACLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v23 = 0;
          v12 = "OliveShell feature flag not enabled. Not connecting to CarPlay's UIWindowScene";
          v13 = &v23;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v14 = [v6 screen];
    v15 = [v14 displayIdentity];
    v16 = [v15 type];

    if (v16 == 8)
    {
      v11 = CACLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v22 = 0;
        v12 = "Skipping UIWindowScene because it belongs to Oneness.app";
        v13 = &v22;
        goto LABEL_12;
      }

LABEL_17:

      goto LABEL_18;
    }

    v17 = [v6 session];
    v18 = [v17 role];
    if ([v18 isEqualToString:UIWindowSceneSessionRoleApplication])
    {

LABEL_16:
      v11 = +[CACDisplayManager sharedManager];
      [v11 initializeWindowsWithScene:v6];
      goto LABEL_17;
    }

    v19 = [v6 session];
    v20 = [v19 role];
    v21 = [v20 isEqualToString:v9];

    if (v21)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = CACLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000226C(v5, v6);
    }
  }

LABEL_18:
}

- (void)sceneDidDisconnect:(id)a3
{
  v7 = a3;
  v3 = [v7 session];
  v4 = [v3 role];
  v5 = [v4 isEqualToString:_UIWindowSceneSessionRoleCarPlay];

  if (v5)
  {
    v6 = +[CACDisplayManager sharedManager];
    [v6 deinitializeWindowsWithScene:v7];
  }
}

@end