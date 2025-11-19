@interface PHCarPlaySceneDelegate
- (id)instantiateRootViewController;
- (void)attachCarPlayToWindowScene:(id)a3;
- (void)detachCarPlay;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation PHCarPlaySceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CarPlay scene did connect to session: %@ options: %@", &v16, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PHCarPlaySceneDelegate *)self attachCarPlayToWindowScene:v8];
  }

  else
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PHCarPlaySceneDelegate scene:v8 willConnectToSession:v12 options:?];
    }
  }

  v13 = [v10 URLContexts];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v10 URLContexts];
    [(PHCarPlaySceneDelegate *)self scene:v8 openURLContexts:v15];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay scene did disconnect", v5, 2u);
  }

  [(PHCarPlaySceneDelegate *)self detachCarPlay];
}

- (void)attachCarPlayToWindowScene:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to attach CarPlay to scene %@", &v13, 0xCu);
  }

  v6 = [(PHCarPlaySceneDelegate *)self carPlayWindow];

  if (!v6)
  {
    v7 = [[UIWindow alloc] initWithWindowScene:v4];
    if (_os_feature_enabled_impl())
    {
      v8 = +[UIColor clearColor];
      [v7 setBackgroundColor:v8];
    }

    v9 = [(PHCarPlaySceneDelegate *)self instantiateRootViewController];
    [(PHCarPlaySceneDelegate *)self setRootViewController:v9];

    v10 = [(PHCarPlaySceneDelegate *)self rootViewController];
    [v7 setRootViewController:v10];

    [(PHCarPlaySceneDelegate *)self setCarPlayWindow:v7];
    v11 = objc_alloc_init(TUHardwareControlsBroadcaster);
    [(PHCarPlaySceneDelegate *)self setHardwareControlsBroadcaster:v11];
  }

  v12 = [(PHCarPlaySceneDelegate *)self carPlayWindow];
  [v12 makeKeyAndVisible];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = a4;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlaySceneDelegate openURLContexts: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
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
        v13 = [(PHCarPlaySceneDelegate *)self rootViewController];
        v14 = [v13 mainMenuContainerViewController];
        v15 = [v12 URL];
        [v14 handleURL:v15];

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
    v4 = [(PHCarPlaySceneDelegate *)self carPlayWindow];
    v5 = 138412290;
    v6 = v4;
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