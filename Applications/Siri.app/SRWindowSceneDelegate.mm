@interface SRWindowSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation SRWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "[SRWindowSceneDelegate scene:willConnectToSession:options:]";
    v21 = 2112;
    v22 = optionsCopy;
    v23 = 2112;
    v24 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Options: %@, scene: %@", &v19, 0x20u);
  }

  _FBSScene = [sceneCopy _FBSScene];
  settings = [_FBSScene settings];

  interfaceOrientation = [settings interfaceOrientation];
  v14 = +[SRApplication sharedApplication];
  [v14 setFrontMostAppOrientation:interfaceOrientation];

  v15 = +[UIApplication sharedApplication];
  delegate = [v15 delegate];

  appWindow = [delegate appWindow];
  [appWindow _setWindowInterfaceOrientation:interfaceOrientation];
  [delegate setCurrentScene:sceneCopy];
  if (!appWindow)
  {
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE8AC(v18);
    }
  }

  [appWindow setWindowScene:sceneCopy];
  [appWindow makeKeyWindow];
  [appWindow setHidden:0];
  [delegate invalidateKeyboardWindowIfNeeded];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRWindowSceneDelegate sceneDidDisconnect:]";
    v10 = 2112;
    v11 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Scene: %@", &v8, 0x16u);
  }

  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];

  appWindow = [delegate appWindow];
  [delegate setCurrentScene:0];
  [delegate tearDownViews];
  [appWindow setHidden:1];
  [appWindow setWindowScene:0];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRWindowSceneDelegate sceneDidBecomeActive:]";
    v9 = 2112;
    v10 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Scene: %@", &v7, 0x16u);
  }

  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];

  [delegate didBecomeActiveHandler];
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRWindowSceneDelegate sceneWillResignActive:]";
    v9 = 2112;
    v10 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Scene: %@", &v7, 0x16u);
  }

  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];

  [delegate willResignActiveHandler];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRWindowSceneDelegate sceneWillEnterForeground:]";
    v9 = 2112;
    v10 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Scene: %@", &v7, 0x16u);
  }

  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];

  [delegate willEnterForegroundHandler];
  [delegate setUpViews];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SRWindowSceneDelegate sceneDidEnterBackground:]";
    v7 = 2112;
    v8 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Scene: %@", &v5, 0x16u);
  }
}

@end