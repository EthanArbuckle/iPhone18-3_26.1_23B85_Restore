@interface MTASceneManager
- (MTASceneDelegate)delegate;
- (MTASceneManager)init;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation MTASceneManager

- (MTASceneManager)init
{
  v6.receiver = self;
  v6.super_class = MTASceneManager;
  v2 = [(MTASceneManager *)&v6 init];
  if (v2)
  {
    v3 = +[UIApplication sharedApplication];
    v4 = [v3 delegate];
    [(MTASceneManager *)v2 setDelegate:v4];
  }

  return v2;
}

- (MTASceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543362;
    v27 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ willConnectToSession", &v26, 0xCu);
  }

  v12 = [v10 role];

  v13 = [v12 isEqualToString:UIWindowSceneSessionRoleApplication];
  if (v13)
  {
    v14 = v8;
    v15 = [(MTASceneManager *)self delegate];
    [v15 windowSceneWillConnect:v14];

    v16 = [v9 URLContexts];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [v9 URLContexts];
      [(MTASceneManager *)self scene:v14 openURLContexts:v18];
    }

    v19 = [v9 shortcutItem];

    if (v19)
    {
      v20 = [v9 shortcutItem];
      [(MTASceneManager *)self windowScene:v14 performActionForShortcutItem:v20 completionHandler:&stru_1000AE6E0];
    }

    v21 = [v9 userActivities];
    v22 = [v21 count];

    if (v22)
    {
      v23 = [v9 userActivities];
      v24 = [v23 anyObject];

      v25 = [v24 activityType];
      [(MTASceneManager *)self scene:v14 willContinueUserActivityWithType:v25];

      [(MTASceneManager *)self scene:v14 continueUserActivity:v24];
    }
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneDidBecomeActive", &v7, 0xCu);
  }

  v6 = [(MTASceneManager *)self delegate];
  [v6 sceneDidBecomeActive:v4];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneWillEnterForeground", &v10, 0xCu);
  }

  v6 = [v4 session];
  v7 = [v6 role];
  v8 = [v7 isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v8)
  {
    v9 = [(MTASceneManager *)self delegate];
    [v9 sceneWillEnterForeground:v4];
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneDidEnterBackground", &v7, 0xCu);
  }

  v6 = [(MTASceneManager *)self delegate];
  [v6 sceneDidEnterBackground:v4];
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ performActionForShortcutItem", &v13, 0xCu);
  }

  v12 = [(MTASceneManager *)self delegate];
  [v12 windowScene:v10 performActionForShortcutItem:v9 completionHandler:v8];
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ willContinueUserActivityWithType", &v10, 0xCu);
  }

  v9 = [(MTASceneManager *)self delegate];
  [v9 scene:v7 willContinueUserActivityWithType:v6];
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ continueUserActivity", &v10, 0xCu);
  }

  v9 = [(MTASceneManager *)self delegate];
  [v9 scene:v7 continueUserActivity:v6];
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ didFailToContinueUserActivityWithType", &v13, 0xCu);
  }

  v12 = [(MTASceneManager *)self delegate];
  [v12 scene:v10 didFailToContinueUserActivityWithType:v9 error:v8];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ openURLContexts: %{public}@", &v15, 0x16u);
  }

  v9 = [v7 allObjects];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [(MTASceneManager *)self delegate];
    v12 = [v10 URL];
    v13 = [v10 options];
    v14 = [v13 sourceApplication];
    [v11 scene:v6 openURL:v12 sourceApplication:v14];
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneWillResignActive", &v7, 0xCu);
  }

  v6 = [(MTASceneManager *)self delegate];
  [v6 sceneWillResignActive:v4];
}

@end