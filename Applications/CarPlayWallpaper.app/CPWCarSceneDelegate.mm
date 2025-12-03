@interface CPWCarSceneDelegate
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation CPWCarSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  v7 = sub_100002238(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scene is connecting: %{public}@", buf, 0xCu);
  }

  v8 = sceneCopy;
  selfCopy = self;
  v9 = [NSArray arrayWithObjects:&selfCopy count:1];
  v10 = [NSString stringWithFormat:@"%p", self];
  [v8 _registerSettingsDiffActionArray:v9 forKey:v10];

  v11 = [[UIWindow alloc] initWithWindowScene:v8];
  [(CPWCarSceneDelegate *)self setWindow:v11];

  _FBSScene = [v8 _FBSScene];
  settings = [_FBSScene settings];
  displayIdentity = [settings displayIdentity];
  isCarInstrumentsDisplay = [displayIdentity isCarInstrumentsDisplay];

  objc_opt_class();
  _FBSScene2 = [v8 _FBSScene];
  settings2 = [_FBSScene2 settings];
  if (settings2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = settings2;
  }

  else
  {
    v17 = 0;
  }

  v18 = +[UIApplication sharedApplication];
  delegate = [v18 delegate];

  objc_opt_class();
  wallpaper = [v17 wallpaper];
  if (wallpaper && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v21 = wallpaper;
  }

  else
  {
    v21 = 0;
  }

  v22 = CRSUISystemWallpaperProvider_ptr;
  if (v21)
  {
    v22 = CRSUIClusterThemeManager_ptr;
  }

  v23 = objc_alloc_init(*v22);
  v24 = [CPWRootViewController alloc];
  wallpaper2 = [v17 wallpaper];
  assetLibrary = [delegate assetLibrary];
  isDimmed = [v17 isDimmed];
  wallpaperCache = [delegate wallpaperCache];
  v29 = [(CPWRootViewController *)v24 initWithWallpaper:wallpaper2 assetLibrary:assetLibrary isDimmed:isDimmed wallpaperProvider:v23 wallpaperCache:wallpaperCache isInstrumentCluster:isCarInstrumentsDisplay];
  [(CPWCarSceneDelegate *)self setRootViewController:v29];

  rootViewController = [(CPWCarSceneDelegate *)self rootViewController];
  window = [(CPWCarSceneDelegate *)self window];
  [window setRootViewController:rootViewController];

  window2 = [(CPWCarSceneDelegate *)self window];
  [window2 makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100002238(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scene did disconnect: %{public}@", buf, 0xCu);
  }

  selfCopy = self;
  v6 = disconnectCopy;
  v7 = [NSArray arrayWithObjects:&selfCopy count:1];
  [v6 _unregisterSettingsDiffActionArrayForKey:v7];

  rootViewController = [(CPWCarSceneDelegate *)self rootViewController];
  [rootViewController invalidate];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  v10 = sub_100002238(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handling update for scene: %{public}@", &v18, 0xCu);
  }

  objc_opt_class();
  _FBSScene = [sceneCopy _FBSScene];
  settings = [_FBSScene settings];
  if (settings && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = settings;
  }

  else
  {
    v13 = 0;
  }

  wallpaper = [v13 wallpaper];
  rootViewController = [(CPWCarSceneDelegate *)self rootViewController];
  [rootViewController setWallpaper:wallpaper];

  isDimmed = [v13 isDimmed];
  rootViewController2 = [(CPWCarSceneDelegate *)self rootViewController];
  [rootViewController2 setShouldHomeScreenWallpaperBeDimmed:isDimmed];
}

@end