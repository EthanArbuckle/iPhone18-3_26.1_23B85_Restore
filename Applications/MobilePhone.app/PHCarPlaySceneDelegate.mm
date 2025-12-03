@interface PHCarPlaySceneDelegate
- (id)instantiateRootViewController;
- (void)attachCarPlayToWindowScene:(id)scene;
- (void)detachCarPlay;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation PHCarPlaySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CarPlay scene did connect to session: %@ options: %@", &v16, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PHCarPlaySceneDelegate *)self attachCarPlayToWindowScene:sceneCopy];
  }

  else
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PHCarPlaySceneDelegate scene:sceneCopy willConnectToSession:v12 options:?];
    }
  }

  uRLContexts = [optionsCopy URLContexts];
  v14 = [uRLContexts count];

  if (v14)
  {
    uRLContexts2 = [optionsCopy URLContexts];
    [(PHCarPlaySceneDelegate *)self scene:sceneCopy openURLContexts:uRLContexts2];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay scene did disconnect", v5, 2u);
  }

  [(PHCarPlaySceneDelegate *)self detachCarPlay];
}

- (void)attachCarPlayToWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to attach CarPlay to scene %@", &v13, 0xCu);
  }

  carPlayWindow = [(PHCarPlaySceneDelegate *)self carPlayWindow];

  if (!carPlayWindow)
  {
    v7 = [[UIWindow alloc] initWithWindowScene:sceneCopy];
    if (_os_feature_enabled_impl())
    {
      v8 = +[UIColor clearColor];
      [v7 setBackgroundColor:v8];
    }

    instantiateRootViewController = [(PHCarPlaySceneDelegate *)self instantiateRootViewController];
    [(PHCarPlaySceneDelegate *)self setRootViewController:instantiateRootViewController];

    rootViewController = [(PHCarPlaySceneDelegate *)self rootViewController];
    [v7 setRootViewController:rootViewController];

    [(PHCarPlaySceneDelegate *)self setCarPlayWindow:v7];
    v11 = objc_alloc_init(TUHardwareControlsBroadcaster);
    [(PHCarPlaySceneDelegate *)self setHardwareControlsBroadcaster:v11];
  }

  carPlayWindow2 = [(PHCarPlaySceneDelegate *)self carPlayWindow];
  [carPlayWindow2 makeKeyAndVisible];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = contextsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlaySceneDelegate openURLContexts: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = contextsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        rootViewController = [(PHCarPlaySceneDelegate *)self rootViewController];
        mainMenuContainerViewController = [rootViewController mainMenuContainerViewController];
        v15 = [v12 URL];
        [mainMenuContainerViewController handleURL:v15];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)detachCarPlay
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    carPlayWindow = [(PHCarPlaySceneDelegate *)self carPlayWindow];
    v5 = 138412290;
    v6 = carPlayWindow;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Detaching CarPlay window %@", &v5, 0xCu);
  }

  [(PHCarPlaySceneDelegate *)self setCarPlayWindow:0];
  [(PHCarPlaySceneDelegate *)self setHardwareControlsBroadcaster:0];
}

- (id)instantiateRootViewController
{
  v2 = objc_alloc_init(PHCarPlayRootContainerViewController);

  return v2;
}

- (void)scene:(uint64_t)a1 willConnectToSession:(NSObject *)a2 options:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type for CarPlay scene: %@", &v2, 0xCu);
}

@end