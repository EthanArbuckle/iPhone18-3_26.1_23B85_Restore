@interface SceneDelegate
- (BOOL)_isWindowSceneExternalDisplay:(id)display;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  userActivities = [optionsCopy userActivities];
  anyObject = [userActivities anyObject];

  activityType = [anyObject activityType];
  sceneClientIdentifier = self->_sceneClientIdentifier;
  self->_sceneClientIdentifier = activityType;

  buf[0] = 0;
  objc_opt_class();
  v15 = +[UIApplication sharedApplication];
  delegate = [v15 delegate];
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
      sub_100007D50(sceneCopy, v21);
    }

    goto LABEL_31;
  }

  screen = [sceneCopy screen];
  displayIdentity = [screen displayIdentity];
  type = [displayIdentity type];

  if (type != 8)
  {
    _sceneIdentifier = [sceneCopy _sceneIdentifier];
    if ([_sceneIdentifier hasPrefix:@"SUIS"])
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
    screen2 = [sceneCopy screen];
    _isEmbeddedScreen = [screen2 _isEmbeddedScreen];

    if (_isEmbeddedScreen)
    {
      v27 = AXLogUI();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_sceneClientIdentifier;
        *buf = 134218242;
        v40 = sceneCopy;
        v41 = 2112;
        v42 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "willConnect scene: %p sceneClientIdentifier: %@", buf, 0x16u);
      }

      displayManager = [v21 displayManager];
      [displayManager _windowSceneConnected:sceneCopy forSceneClientIdentifier:self->_sceneClientIdentifier];
    }

    else
    {
      if (![(SceneDelegate *)self _isWindowSceneExternalDisplay:sceneCopy])
      {
LABEL_24:
        userInfo = [anyObject userInfo];

        if (userInfo)
        {
          userInfo2 = [anyObject userInfo];
          v34 = [userInfo2 objectForKeyedSubscript:@"AXUIServerPreferredLevelKey"];

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

        _FBSScene = [sceneCopy _FBSScene];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100003580;
        v38[3] = &unk_100010848;
        *&v38[4] = v36;
        [_FBSScene updateClientSettingsWithBlock:v38];

        goto LABEL_31;
      }

      v30 = AXLogUI();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_sceneClientIdentifier;
        *buf = 134218242;
        v40 = sceneCopy;
        v41 = 2112;
        v42 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "willConnect external scene: %p sceneClientIdentifier: %@", buf, 0x16u);
      }

      displayManager = [v21 displayManager];
      [displayManager _externalDisplaySceneConnected:sceneCopy forSceneClientIdentifier:self->_sceneClientIdentifier];
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

- (BOOL)_isWindowSceneExternalDisplay:(id)display
{
  displayCopy = display;
  session = [displayCopy session];
  role = [session role];
  if ([role isEqualToString:UIWindowSceneSessionRoleApplication])
  {
    _FBSScene = [displayCopy _FBSScene];
    settings = [_FBSScene settings];
    displayIdentity = [settings displayIdentity];
    rootIdentity = [displayIdentity rootIdentity];
    v9 = +[UIScreen mainScreen];
    displayIdentity2 = [v9 displayIdentity];
    rootIdentity2 = [displayIdentity2 rootIdentity];
    if ([rootIdentity isEqual:rootIdentity2])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      [displayCopy screen];
      v13 = v15 = _FBSScene;
      v12 = [v13 _isEmbeddedScreen] ^ 1;

      _FBSScene = v15;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[AXUIServiceManager sharedServiceManager];
    screen = [disconnectCopy screen];
    _isEmbeddedScreen = [screen _isEmbeddedScreen];

    if (_isEmbeddedScreen)
    {
      v8 = AXLogUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sceneClientIdentifier = self->_sceneClientIdentifier;
        v13 = 134218242;
        v14 = disconnectCopy;
        v15 = 2112;
        v16 = sceneClientIdentifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didDisconnect scene: %p sceneClientIdentifier: %@", &v13, 0x16u);
      }

      displayManager = [v5 displayManager];
      [displayManager _windowSceneDisconnected:disconnectCopy forSceneClientIdentifier:self->_sceneClientIdentifier];
LABEL_12:

      goto LABEL_13;
    }

    if ([(SceneDelegate *)self _isWindowSceneExternalDisplay:disconnectCopy])
    {
      v11 = AXLogUI();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_sceneClientIdentifier;
        v13 = 134218242;
        v14 = disconnectCopy;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didDisconnect external scene: %p sceneClientIdentifier: %@", &v13, 0x16u);
      }

      displayManager = [v5 displayManager];
      [displayManager _externalDisplaySceneDisconnected:disconnectCopy forSceneClientIdentifier:self->_sceneClientIdentifier];
      goto LABEL_12;
    }
  }

  else
  {
    v5 = AXLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100007D50(disconnectCopy, v5);
    }
  }

LABEL_13:
}

@end