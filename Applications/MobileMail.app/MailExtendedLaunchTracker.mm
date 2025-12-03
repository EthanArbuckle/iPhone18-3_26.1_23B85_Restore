@interface MailExtendedLaunchTracker
+ (OS_os_log)log;
- (MailExtendedLaunchTracker)initWithDelegate:(id)delegate;
- (MailExtendedLaunchTrackerDelegate)delegate;
- (id)_sceneID:(id)d;
- (id)_viewControllerID:(id)d;
- (void)didFinishLoadViewController:(id)controller scene:(id)scene;
- (void)observeScene:(id)scene;
- (void)observeViewController:(id)controller scene:(id)scene;
@end

@implementation MailExtendedLaunchTracker

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025728;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD0B0 != -1)
  {
    dispatch_once(&qword_1006DD0B0, block);
  }

  v2 = qword_1006DD0A8;

  return v2;
}

- (MailExtendedLaunchTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MailExtendedLaunchTracker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = MailExtendedLaunchTracker;
  v5 = [(MailExtendedLaunchTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_opt_new();
    observedScenes = v6->_observedScenes;
    v6->_observedScenes = v7;
  }

  return v6;
}

- (void)observeScene:(id)scene
{
  v6 = [(MailExtendedLaunchTracker *)self _sceneID:scene];
  v4 = objc_opt_new();
  observedScenes = [(MailExtendedLaunchTracker *)self observedScenes];
  [observedScenes setObject:v4 forKeyedSubscript:v6];
}

- (void)observeViewController:(id)controller scene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v8 = [(MailExtendedLaunchTracker *)self _sceneID:sceneCopy];
  observedScenes = [(MailExtendedLaunchTracker *)self observedScenes];
  v10 = [observedScenes objectForKey:v8];

  if (v10)
  {
    v11 = +[MailExtendedLaunchTracker log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v18 = 138544130;
      v19 = v13;
      v20 = 2048;
      v21 = controllerCopy;
      v22 = 2114;
      v23 = v15;
      v24 = 2048;
      v25 = sceneCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "observeViewController:<%{public}@: %p> scene: <%{public}@: %p>", &v18, 0x2Au);
    }

    v16 = [(MailExtendedLaunchTracker *)self _viewControllerID:controllerCopy];
    v17 = [observedScenes objectForKeyedSubscript:v8];
    [v17 addObject:v16];
  }
}

- (void)didFinishLoadViewController:(id)controller scene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v8 = +[MailExtendedLaunchTracker log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v23 = 138544130;
    v24 = v10;
    v25 = 2048;
    v26 = controllerCopy;
    v27 = 2114;
    v28 = v12;
    v29 = 2048;
    v30 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didFinishLoadViewController:<%{public}@: %p> scene: <%{public}@: %p>", &v23, 0x2Au);
  }

  v13 = [(MailExtendedLaunchTracker *)self _sceneID:sceneCopy];
  v14 = [(MailExtendedLaunchTracker *)self _viewControllerID:controllerCopy];
  observedScenes = [(MailExtendedLaunchTracker *)self observedScenes];
  v16 = [observedScenes objectForKeyedSubscript:v13];
  if ([v16 containsObject:v14])
  {
    [v16 removeObject:v14];
    if (v16 && ![v16 count])
    {
      [observedScenes removeObjectForKey:v13];
    }

    if ([observedScenes count])
    {
      delegate = +[MailExtendedLaunchTracker log];
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v16 count];
        v23 = 138544386;
        v24 = v19;
        v25 = 2048;
        v26 = controllerCopy;
        v27 = 2114;
        v28 = v21;
        v29 = 2048;
        v30 = sceneCopy;
        v31 = 2048;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "didFinishLoadViewController:<%{public}@: %p> scene: <%{public}@: %p> waiting on %lu view controllers", &v23, 0x34u);
      }
    }

    else
    {
      delegate = [(MailExtendedLaunchTracker *)self delegate];
      [delegate didFinishLoadAllScenes:self];
    }
  }
}

- (id)_sceneID:(id)d
{
  session = [d session];
  persistentIdentifier = [session persistentIdentifier];

  return persistentIdentifier;
}

- (id)_viewControllerID:(id)d
{
  v3 = [NSValue valueWithNonretainedObject:d];

  return v3;
}

@end