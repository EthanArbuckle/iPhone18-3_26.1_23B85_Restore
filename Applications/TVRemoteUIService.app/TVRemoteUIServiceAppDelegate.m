@interface TVRemoteUIServiceAppDelegate
- (TVDefaultSceneDelegate)defaultSceneDelegate;
- (TVLockScreenSceneDelegate)lockScreenSceneDelegate;
- (UIScene)defaultScene;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)lockScreenSceneDelegateSceneDidDisconnect:(id)a3;
@end

@implementation TVRemoteUIServiceAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [UISceneConfiguration alloc];
  v7 = [v5 role];
  v8 = [v6 initWithName:0 sessionRole:v7];

  v9 = [v5 role];
  v10 = [v9 isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v10)
  {
    v11 = off_100018580;
  }

  else
  {
    v12 = [v5 role];
    v13 = [v12 isEqualToString:_UIWindowSceneSessionTypeCoverSheet];

    if (!v13)
    {
      goto LABEL_6;
    }

    v11 = &off_100018588;
  }

  v14 = *v11;
  [v8 setDelegateClass:objc_opt_class()];
LABEL_6:

  return v8;
}

- (TVDefaultSceneDelegate)defaultSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultSceneDelegate);

  if (!WeakRetained)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 connectedScenes];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&self->_defaultSceneDelegate, v12);
            objc_storeWeak(&self->_defaultScene, v11);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = objc_loadWeakRetained(&self->_defaultSceneDelegate);
    if (!v13)
    {
      v14 = _TVRUIServiceAppLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(TVRemoteUIServiceAppDelegate *)v14 defaultSceneDelegate];
      }
    }
  }

  v15 = objc_loadWeakRetained(&self->_defaultSceneDelegate);

  return v15;
}

- (TVLockScreenSceneDelegate)lockScreenSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lockScreenSceneDelegate);

  if (!WeakRetained)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 connectedScenes];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * v10) delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&self->_defaultSceneDelegate, v11);
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = objc_loadWeakRetained(&self->_defaultSceneDelegate);
    if (!v12)
    {
      v13 = _TVRUIServiceAppLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(TVRemoteUIServiceAppDelegate *)v13 lockScreenSceneDelegate];
      }
    }
  }

  v14 = objc_loadWeakRetained(&self->_lockScreenSceneDelegate);

  return v14;
}

- (void)lockScreenSceneDelegateSceneDidDisconnect:(id)a3
{
  v3 = [(TVRemoteUIServiceAppDelegate *)self defaultSceneDelegate];
  [v3 resetRootViewController];
}

- (UIScene)defaultScene
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultScene);

  return WeakRetained;
}

@end