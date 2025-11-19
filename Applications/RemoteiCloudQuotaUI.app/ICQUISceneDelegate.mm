@interface ICQUISceneDelegate
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation ICQUISceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connecting to session.", v16, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [[UIWindow alloc] initWithWindowScene:v8];
    window = self->_window;
    self->_window = v9;

    v11 = objc_alloc_init(ICQUIRootViewController);
    rootViewController = self->_rootViewController;
    self->_rootViewController = v11;

    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10000502C(v8, v13);
    }

    v14 = [v8 _sceneIdentifier];
    [(ICQUIRootViewController *)self->_rootViewController setSceneIdentifier:v14];

    [(UIWindow *)self->_window setRootViewController:self->_rootViewController];
    [(UIWindow *)self->_window setContentsPosition:0];
    v17 = self;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    [v8 _registerSceneActionsHandlerArray:v15 forKey:@"launch_params"];
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100004FEC();
    }
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000050C4();
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000050F8();
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000512C();
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100005160();
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sceneDidEnterBackground. Dismissing upgrade flow.", v5, 2u);
  }

  [(ICQUIRootViewController *)self->_rootViewController dismissUpgradeFlow];
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[ICQUISceneDelegate _respondToActions:forFBSScene:inUIScene:fromTransitionContext:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s called.", buf, 0xCu);
  }

  v8 = [v6 mutableCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v29;
    *&v10 = 138412290;
    v23 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 info];
        v16 = [v15 objectForSetting:0];
        v17 = [ICQRemoteContext contextFromDictionary:v16];
        v18 = _ICQGetLogSystem();
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v34 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Fetched a remote context: %@", buf, 0xCu);
          }

          [(ICQUIRootViewController *)self->_rootViewController setRemoteContext:v17];
          [v8 removeObject:v14];
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100005194(&v26, v27, v19);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  [(UIWindow *)self->_window makeKeyAndVisible];
  v20 = v8;
  v21 = [v8 copy];

  return v21;
}

@end