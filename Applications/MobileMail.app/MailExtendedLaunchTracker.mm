@interface MailExtendedLaunchTracker
+ (OS_os_log)log;
- (MailExtendedLaunchTracker)initWithDelegate:(id)a3;
- (MailExtendedLaunchTrackerDelegate)delegate;
- (id)_sceneID:(id)a3;
- (id)_viewControllerID:(id)a3;
- (void)didFinishLoadViewController:(id)a3 scene:(id)a4;
- (void)observeScene:(id)a3;
- (void)observeViewController:(id)a3 scene:(id)a4;
@end

@implementation MailExtendedLaunchTracker

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025728;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
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

- (MailExtendedLaunchTracker)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MailExtendedLaunchTracker;
  v5 = [(MailExtendedLaunchTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_opt_new();
    observedScenes = v6->_observedScenes;
    v6->_observedScenes = v7;
  }

  return v6;
}

- (void)observeScene:(id)a3
{
  v6 = [(MailExtendedLaunchTracker *)self _sceneID:a3];
  v4 = objc_opt_new();
  v5 = [(MailExtendedLaunchTracker *)self observedScenes];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

- (void)observeViewController:(id)a3 scene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailExtendedLaunchTracker *)self _sceneID:v7];
  v9 = [(MailExtendedLaunchTracker *)self observedScenes];
  v10 = [v9 objectForKey:v8];

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
      v21 = v6;
      v22 = 2114;
      v23 = v15;
      v24 = 2048;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "observeViewController:<%{public}@: %p> scene: <%{public}@: %p>", &v18, 0x2Au);
    }

    v16 = [(MailExtendedLaunchTracker *)self _viewControllerID:v6];
    v17 = [v9 objectForKeyedSubscript:v8];
    [v17 addObject:v16];
  }
}

- (void)didFinishLoadViewController:(id)a3 scene:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v26 = v6;
    v27 = 2114;
    v28 = v12;
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didFinishLoadViewController:<%{public}@: %p> scene: <%{public}@: %p>", &v23, 0x2Au);
  }

  v13 = [(MailExtendedLaunchTracker *)self _sceneID:v7];
  v14 = [(MailExtendedLaunchTracker *)self _viewControllerID:v6];
  v15 = [(MailExtendedLaunchTracker *)self observedScenes];
  v16 = [v15 objectForKeyedSubscript:v13];
  if ([v16 containsObject:v14])
  {
    [v16 removeObject:v14];
    if (v16 && ![v16 count])
    {
      [v15 removeObjectForKey:v13];
    }

    if ([v15 count])
    {
      v17 = +[MailExtendedLaunchTracker log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v16 count];
        v23 = 138544386;
        v24 = v19;
        v25 = 2048;
        v26 = v6;
        v27 = 2114;
        v28 = v21;
        v29 = 2048;
        v30 = v7;
        v31 = 2048;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "didFinishLoadViewController:<%{public}@: %p> scene: <%{public}@: %p> waiting on %lu view controllers", &v23, 0x34u);
      }
    }

    else
    {
      v17 = [(MailExtendedLaunchTracker *)self delegate];
      [v17 didFinishLoadAllScenes:self];
    }
  }
}

- (id)_sceneID:(id)a3
{
  v3 = [a3 session];
  v4 = [v3 persistentIdentifier];

  return v4;
}

- (id)_viewControllerID:(id)a3
{
  v3 = [NSValue valueWithNonretainedObject:a3];

  return v3;
}

@end