@interface CACASceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation CACASceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = sceneCopy;
    session = [v6 session];
    role = [session role];
    v9 = _UIWindowSceneSessionRoleCarPlay;
    if ([role isEqualToString:_UIWindowSceneSessionRoleCarPlay])
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

    screen = [v6 screen];
    displayIdentity = [screen displayIdentity];
    type = [displayIdentity type];

    if (type == 8)
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

    session2 = [v6 session];
    role2 = [session2 role];
    if ([role2 isEqualToString:UIWindowSceneSessionRoleApplication])
    {

LABEL_16:
      v11 = +[CACDisplayManager sharedManager];
      [v11 initializeWindowsWithScene:v6];
      goto LABEL_17;
    }

    session3 = [v6 session];
    role3 = [session3 role];
    v21 = [role3 isEqualToString:v9];

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
      sub_10000226C(sceneCopy, v6);
    }
  }

LABEL_18:
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  session = [disconnectCopy session];
  role = [session role];
  v5 = [role isEqualToString:_UIWindowSceneSessionRoleCarPlay];

  if (v5)
  {
    v6 = +[CACDisplayManager sharedManager];
    [v6 deinitializeWindowsWithScene:disconnectCopy];
  }
}

@end