@interface CPWCarSceneDelegate
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation CPWCarSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = sub_100002238(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scene is connecting: %{public}@", buf, 0xCu);
  }

  v8 = v6;
  v34 = self;
  v9 = [NSArray arrayWithObjects:&v34 count:1];
  v10 = [NSString stringWithFormat:@"%p", self];
  [v8 _registerSettingsDiffActionArray:v9 forKey:v10];

  v11 = [[UIWindow alloc] initWithWindowScene:v8];
  [(CPWCarSceneDelegate *)self setWindow:v11];

  v12 = [v8 _FBSScene];
  v13 = [v12 settings];
  v14 = [v13 displayIdentity];
  v33 = [v14 isCarInstrumentsDisplay];

  objc_opt_class();
  v15 = [v8 _FBSScene];
  v16 = [v15 settings];
  if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = +[UIApplication sharedApplication];
  v19 = [v18 delegate];

  objc_opt_class();
  v20 = [v17 wallpaper];
  if (v20 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v21 = v20;
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
  v25 = [v17 wallpaper];
  v26 = [v19 assetLibrary];
  v27 = [v17 isDimmed];
  v28 = [v19 wallpaperCache];
  v29 = [(CPWRootViewController *)v24 initWithWallpaper:v25 assetLibrary:v26 isDimmed:v27 wallpaperProvider:v23 wallpaperCache:v28 isInstrumentCluster:v33];
  [(CPWCarSceneDelegate *)self setRootViewController:v29];

  v30 = [(CPWCarSceneDelegate *)self rootViewController];
  v31 = [(CPWCarSceneDelegate *)self window];
  [v31 setRootViewController:v30];

  v32 = [(CPWCarSceneDelegate *)self window];
  [v32 makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100002238(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scene did disconnect: %{public}@", buf, 0xCu);
  }

  v9 = self;
  v6 = v4;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  [v6 _unregisterSettingsDiffActionArrayForKey:v7];

  v8 = [(CPWCarSceneDelegate *)self rootViewController];
  [v8 invalidate];
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v9 = a3;
  v10 = sub_100002238(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handling update for scene: %{public}@", &v18, 0xCu);
  }

  objc_opt_class();
  v11 = [v9 _FBSScene];
  v12 = [v11 settings];
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 wallpaper];
  v15 = [(CPWCarSceneDelegate *)self rootViewController];
  [v15 setWallpaper:v14];

  v16 = [v13 isDimmed];
  v17 = [(CPWCarSceneDelegate *)self rootViewController];
  [v17 setShouldHomeScreenWallpaperBeDimmed:v16];
}

@end