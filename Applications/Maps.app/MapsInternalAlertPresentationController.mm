@interface MapsInternalAlertPresentationController
+ (id)sharedInstance;
- (MapsInternalAlertPresentationController)init;
- (id)_windowForScene:(id)a3;
- (void)_dismissalTransitionDidEndNotification:(id)a3;
- (void)presentAlertController:(id)a3 fromWindowScene:(id)a4;
@end

@implementation MapsInternalAlertPresentationController

- (void)_dismissalTransitionDidEndNotification:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v24 = "[MapsInternalAlertPresentationController _dismissalTransitionDidEndNotification:]";
        v25 = 2080;
        v26 = "MapsInternalAlertPresentationController.m";
        v27 = 1024;
        v28 = 88;
        v29 = 2080;
        v30 = "dispatch_get_main_queue()";
        v31 = 2080;
        v32 = dispatch_queue_get_label(&_dispatch_main_q);
        v33 = 2080;
        v34 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v8 = [v4 object];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:UIPresentationControllerDismissalTransitionDidEndNotification object:v8];

  v10 = [v8 view];
  v11 = [v10 window];
  v12 = [v11 windowScene];

  if (v12)
  {
    [(NSMapTable *)self->_windowMap objectForKey:v12];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10085EE48;
    v20 = block[3] = &unk_101661A40;
    v21 = self;
    v22 = v12;
    v13 = v20;
    dispatch_async(&_dispatch_main_q, block);

LABEL_9:
    goto LABEL_10;
  }

  v14 = sub_10006D178();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v24 = "[MapsInternalAlertPresentationController _dismissalTransitionDidEndNotification:]";
    v25 = 2080;
    v26 = "MapsInternalAlertPresentationController.m";
    v27 = 1024;
    v28 = 93;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (id)_windowForScene:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = 136316418;
        v18 = "[MapsInternalAlertPresentationController _windowForScene:]";
        v19 = 2080;
        v20 = "MapsInternalAlertPresentationController.m";
        v21 = 1024;
        v22 = 69;
        v23 = 2080;
        v24 = "dispatch_get_main_queue()";
        v25 = 2080;
        v26 = dispatch_queue_get_label(&_dispatch_main_q);
        v27 = 2080;
        v28 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v17, 0x3Au);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v17 = 138412290;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }
  }

  if (!v4)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[MapsInternalAlertPresentationController _windowForScene:]";
      v19 = 2080;
      v20 = "MapsInternalAlertPresentationController.m";
      v21 = 1024;
      v22 = 70;
      v23 = 2080;
      v24 = "windowScene != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }
  }

  v8 = [(NSMapTable *)self->_windowMap objectForKey:v4];
  if (!v8)
  {
    v8 = [[PassThroughWindow alloc] initWithWindowScene:v4];
    [(PassThroughWindow *)v8 setWindowLevel:UIWindowLevelAlert];
    v9 = objc_alloc_init(UIApplicationRotationFollowingController);
    [v9 setSizesWindowToScene:1];
    [(PassThroughWindow *)v8 setRootViewController:v9];
    [(PassThroughWindow *)v8 setHidden:0];
    [(NSMapTable *)self->_windowMap setObject:v8 forKey:v4];
  }

  return v8;
}

- (void)presentAlertController:(id)a3 fromWindowScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 136316418;
        v19 = "[MapsInternalAlertPresentationController presentAlertController:fromWindowScene:]";
        v20 = 2080;
        v21 = "MapsInternalAlertPresentationController.m";
        v22 = 1024;
        v23 = 52;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v18, 0x3Au);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v18 = 138412290;
          v19 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  if (v7)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_dismissalTransitionDidEndNotification:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:v6];

    v12 = [(MapsInternalAlertPresentationController *)self _windowForScene:v7];
    v13 = [v12 rootViewController];
    [v13 _maps_topMostPresentViewController:v6 animated:1 completion:0];
    goto LABEL_9;
  }

  v17 = sub_10006D178();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315906;
    v19 = "[MapsInternalAlertPresentationController presentAlertController:fromWindowScene:]";
    v20 = 2080;
    v21 = "MapsInternalAlertPresentationController.m";
    v22 = 1024;
    v23 = 53;
    v24 = 2080;
    v25 = "windowScene != nil";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v18, 0x26u);
  }

  if (sub_100E03634())
  {
    v12 = sub_10006D178();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = +[NSThread callStackSymbols];
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
LABEL_9:

LABEL_10:
  }
}

- (MapsInternalAlertPresentationController)init
{
  v6.receiver = self;
  v6.super_class = MapsInternalAlertPresentationController;
  v2 = [(MapsInternalAlertPresentationController *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable weakToStrongObjectsMapTable];
    windowMap = v2->_windowMap;
    v2->_windowMap = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10195DA28 != -1)
  {
    dispatch_once(&qword_10195DA28, &stru_10162BFC8);
  }

  v3 = qword_10195DA20;

  return v3;
}

@end