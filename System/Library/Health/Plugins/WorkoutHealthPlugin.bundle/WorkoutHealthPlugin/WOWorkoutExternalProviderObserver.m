@interface WOWorkoutExternalProviderObserver
+ (id)sharedInstance;
- (id)_init;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
- (void)queue_evaluateRemovedBundleIdentifiers:(id)a3;
@end

@implementation WOWorkoutExternalProviderObserver

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_shared;

  return v2;
}

void __51__WOWorkoutExternalProviderObserver_sharedInstance__block_invoke(id a1)
{
  v1 = [[WOWorkoutExternalProviderObserver alloc] _init];
  v2 = sharedInstance_shared;
  sharedInstance_shared = v1;
}

- (id)_init
{
  v13 = a2;
  v14 = 0;
  v12.receiver = self;
  v12.super_class = WOWorkoutExternalProviderObserver;
  v14 = [(WOWorkoutExternalProviderObserver *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v2 = dispatch_queue_create("com.apple.WorkoutHealthPlugin.ExternalProviderWorkerQueue", 0);
    workerQueue = v14->_workerQueue;
    v14->_workerQueue = v2;

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v11 = HKLogWorkouts;
      v10 = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        log = v11;
        type = v10;
        __os_log_helper_16_0_0(v9);
        _os_log_impl(&dword_0, log, type, "[WorkoutExternalProviderObserver] starting workout external provider observer", v9, 2u);
      }

      objc_storeStrong(&v11, 0);
    }

    v6 = +[LSApplicationWorkspace defaultWorkspace];
    [v6 addObserver:v14];
  }

  v5 = v14;
  objc_storeStrong(&v14, 0);
  return v5;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = WOWorkoutExternalProviderObserver;
  [(WOWorkoutExternalProviderObserver *)&v3 dealloc];
}

- (void)queue_evaluateRemovedBundleIdentifiers:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v6->_workerQueue);
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    oslog = HKLogWorkouts;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_66(v7, location[0]);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_INFO, "[WorkoutExternalProviderObserver] evaluating uninstalled apps: %{public}@", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v3 = +[WorkoutKitXPCServiceHelper sharedInstance];
  [(WorkoutKitXPCServiceHelper *)v3 handleUninstalledAppIds:location[0] completion:&__block_literal_global_300];

  objc_storeStrong(location, 0);
}

void __76__WOWorkoutExternalProviderObserver_queue_evaluateRemovedBundleIdentifiers___block_invoke(id a1, BOOL a2, NSError *a3)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v10[1] = a1;
  if (location)
  {
    _HKInitializeLogging();
    v10[0] = HKLogWorkouts;
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v14, location);
      _os_log_error_impl(&dword_0, v10[0], v9, "[WorkoutExternalProviderObserver] failed to handle uninstalled apps: %{public}@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      oslog = HKLogWorkouts;
      v7 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v3 = oslog;
        v4 = v7;
        __os_log_helper_16_0_0(v6);
        _os_log_impl(&dword_0, v3, v4, "[WorkoutExternalProviderObserver] successfully handled uninstalled apps", v6, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)applicationsDidUninstall:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workerQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __62__WOWorkoutExternalProviderObserver_applicationsDidUninstall___block_invoke;
  v8 = &unk_203F8;
  v9 = location[0];
  v10 = v12;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __62__WOWorkoutExternalProviderObserver_applicationsDidUninstall___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  obj = a1[4];
  v9 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v9)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v9;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v5);
      v1 = location[0];
      v2 = [v11 bundleIdentifier];
      [v1 addObject:?];

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if ([location[0] count])
  {
    [a1[5] queue_evaluateRemovedBundleIdentifiers:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end