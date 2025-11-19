@interface SceneDelegate
- (BOOL)_isWindowSceneExternalDisplay:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 userActivities];
  v12 = [v11 anyObject];

  v13 = [v12 activityType];
  sceneClientIdentifier = self->_sceneClientIdentifier;
  self->_sceneClientIdentifier = v13;

  buf[0] = 0;
  objc_opt_class();
  v15 = +[UIApplication sharedApplication];
  v16 = [v15 delegate];
  v17 = __UIAccessibilityCastAsClass();

  if (self->_sceneClientIdentifier)
  {
    [v17 setPreferredSceneAttemptCount:0];
  }

  else
  {
    [v17 setDefaultSceneAttemptCount:0];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = AXLogUI();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100007D50(v8, v21);
    }

    goto LABEL_31;
  }

  v18 = [v8 screen];
  v19 = [v18 displayIdentity];
  v20 = [v19 type];

  if (v20 != 8)
  {
    v23 = [v8 _sceneIdentifier];
    if ([v23 hasPrefix:@"SUIS"])
    {
    }

    else
    {
      v24 = AXInPreboardScenario();

      if ((v24 & 1) == 0 && !_AXSClarityBoardEnabled())
      {
        v21 = AXLogUI();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_31;
        }

        *buf = 0;
        v22 = "Skipping UIWindowScene because it was not vended by SpringBoard";
        goto LABEL_8;
      }
    }

    v21 = +[AXUIServiceManager sharedServiceManager];
    v25 = [v8 screen];
    v26 = [v25 _isEmbeddedScreen];

    if (v26)
    {
      v27 = AXLogUI();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_sceneClientIdentifier;
        *buf = 134218242;
        v40 = v8;
        v41 = 2112;
        v42 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "willConnect scene: %p sceneClientIdentifier: %@", buf, 0x16u);
      }

      v29 = [v21 displayManager];
      [v29 _windowSceneConnected:v8 forSceneClientIdentifier:self->_sceneClientIdentifier];
    }

    else
    {
      if (![(SceneDelegate *)self _isWindowSceneExternalDisplay:v8])
      {
LABEL_24:
        v32 = [v12 userInfo];

        if (v32)
        {
          v33 = [v12 userInfo];
          v34 = [v33 objectForKeyedSubscript:@"AXUIServerPreferredLevelKey"];

          if (v34)
          {
            [v34 floatValue];
            v36 = v35;
          }

          else
          {
            v36 = 10000002.0;
          }
        }

        else
        {
          v36 = 10000002.0;
        }

        v37 = [v8 _FBSScene];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100003580;
        v38[3] = &unk_100010848;
        *&v38[4] = v36;
        [v37 updateClientSettingsWithBlock:v38];

        goto LABEL_31;
      }

      v30 = AXLogUI();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_sceneClientIdentifier;
        *buf = 134218242;
        v40 = v8;
        v41 = 2112;
        v42 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "willConnect external scene: %p sceneClientIdentifier: %@", buf, 0x16u);
      }

      v29 = [v21 displayManager];
      [v29 _externalDisplaySceneConnected:v8 forSceneClientIdentifier:self->_sceneClientIdentifier];
    }

    goto LABEL_24;
  }

  v21 = AXLogUI();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v22 = "Skipping UIWindowScene because it belongs to Oneness.app";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, buf, 2u);
  }

LABEL_31:
}

- (BOOL)_isWindowSceneExternalDisplay:(id)a3
{
  v3 = a3;
  v4 = [v3 session];
  v5 = [v4 role];
  if ([v5 isEqualToString:UIWindowSceneSessionRoleApplication])
  {
    v6 = [v3 _FBSScene];
    v16 = [v6 settings];
    v7 = [v16 displayIdentity];
    v8 = [v7 rootIdentity];
    v9 = +[UIScreen mainScreen];
    v10 = [v9 displayIdentity];
    v11 = [v10 rootIdentity];
    if ([v8 isEqual:v11])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      [v3 screen];
      v13 = v15 = v6;
      v12 = [v13 _isEmbeddedScreen] ^ 1;

      v6 = v15;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[AXUIServiceManager sharedServiceManager];
    v6 = [v4 screen];
    v7 = [v6 _isEmbeddedScreen];

    if (v7)
    {
      v8 = AXLogUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sceneClientIdentifier = self->_sceneClientIdentifier;
        v13 = 134218242;
        v14 = v4;
        v15 = 2112;
        v16 = sceneClientIdentifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didDisconnect scene: %p sceneClientIdentifier: %@", &v13, 0x16u);
      }

      v10 = [v5 displayManager];
      [v10 _windowSceneDisconnected:v4 forSceneClientIdentifier:self->_sceneClientIdentifier];
LABEL_12:

      goto LABEL_13;
    }

    if ([(SceneDelegate *)self _isWindowSceneExternalDisplay:v4])
    {
      v11 = AXLogUI();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_sceneClientIdentifier;
        v13 = 134218242;
        v14 = v4;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didDisconnect external scene: %p sceneClientIdentifier: %@", &v13, 0x16u);
      }

      v10 = [v5 displayManager];
      [v10 _externalDisplaySceneDisconnected:v4 forSceneClientIdentifier:self->_sceneClientIdentifier];
      goto LABEL_12;
    }
  }

  else
  {
    v5 = AXLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100007D50(v4, v5);
    }
  }

LABEL_13:
}

@end