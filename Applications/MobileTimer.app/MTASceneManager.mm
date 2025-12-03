@interface MTASceneManager
- (MTASceneDelegate)delegate;
- (MTASceneManager)init;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
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
    delegate = [v3 delegate];
    [(MTASceneManager *)v2 setDelegate:delegate];
  }

  return v2;
}

- (MTASceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  sessionCopy = session;
  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ willConnectToSession", &v26, 0xCu);
  }

  role = [sessionCopy role];

  v13 = [role isEqualToString:UIWindowSceneSessionRoleApplication];
  if (v13)
  {
    v14 = sceneCopy;
    delegate = [(MTASceneManager *)self delegate];
    [delegate windowSceneWillConnect:v14];

    uRLContexts = [optionsCopy URLContexts];
    v17 = [uRLContexts count];

    if (v17)
    {
      uRLContexts2 = [optionsCopy URLContexts];
      [(MTASceneManager *)self scene:v14 openURLContexts:uRLContexts2];
    }

    shortcutItem = [optionsCopy shortcutItem];

    if (shortcutItem)
    {
      shortcutItem2 = [optionsCopy shortcutItem];
      [(MTASceneManager *)self windowScene:v14 performActionForShortcutItem:shortcutItem2 completionHandler:&stru_1000AE6E0];
    }

    userActivities = [optionsCopy userActivities];
    v22 = [userActivities count];

    if (v22)
    {
      userActivities2 = [optionsCopy userActivities];
      anyObject = [userActivities2 anyObject];

      activityType = [anyObject activityType];
      [(MTASceneManager *)self scene:v14 willContinueUserActivityWithType:activityType];

      [(MTASceneManager *)self scene:v14 continueUserActivity:anyObject];
    }
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneDidBecomeActive", &v7, 0xCu);
  }

  delegate = [(MTASceneManager *)self delegate];
  [delegate sceneDidBecomeActive:activeCopy];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneWillEnterForeground", &v10, 0xCu);
  }

  session = [foregroundCopy session];
  role = [session role];
  v8 = [role isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v8)
  {
    delegate = [(MTASceneManager *)self delegate];
    [delegate sceneWillEnterForeground:foregroundCopy];
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneDidEnterBackground", &v7, 0xCu);
  }

  delegate = [(MTASceneManager *)self delegate];
  [delegate sceneDidEnterBackground:backgroundCopy];
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  sceneCopy = scene;
  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ performActionForShortcutItem", &v13, 0xCu);
  }

  delegate = [(MTASceneManager *)self delegate];
  [delegate windowScene:sceneCopy performActionForShortcutItem:itemCopy completionHandler:handlerCopy];
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  sceneCopy = scene;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ willContinueUserActivityWithType", &v10, 0xCu);
  }

  delegate = [(MTASceneManager *)self delegate];
  [delegate scene:sceneCopy willContinueUserActivityWithType:typeCopy];
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  sceneCopy = scene;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ continueUserActivity", &v10, 0xCu);
  }

  delegate = [(MTASceneManager *)self delegate];
  [delegate scene:sceneCopy continueUserActivity:activityCopy];
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  errorCopy = error;
  typeCopy = type;
  sceneCopy = scene;
  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ didFailToContinueUserActivityWithType", &v13, 0xCu);
  }

  delegate = [(MTASceneManager *)self delegate];
  [delegate scene:sceneCopy didFailToContinueUserActivityWithType:typeCopy error:errorCopy];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sceneCopy = scene;
  contextsCopy = contexts;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = contextsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ openURLContexts: %{public}@", &v15, 0x16u);
  }

  allObjects = [contextsCopy allObjects];
  firstObject = [allObjects firstObject];

  if (firstObject)
  {
    delegate = [(MTASceneManager *)self delegate];
    v12 = [firstObject URL];
    options = [firstObject options];
    sourceApplication = [options sourceApplication];
    [delegate scene:sceneCopy openURL:v12 sourceApplication:sourceApplication];
  }
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneWillResignActive", &v7, 0xCu);
  }

  delegate = [(MTASceneManager *)self delegate];
  [delegate sceneWillResignActive:activeCopy];
}

@end