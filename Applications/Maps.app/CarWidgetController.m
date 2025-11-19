@interface CarWidgetController
- (CarWidgetController)initWithCarSceneType:(int64_t)a3;
- (void)_mapsCar_rebuildContextsForCurrentAppState;
- (void)_mapsCar_scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)dealloc;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation CarWidgetController

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] sceneDidEnterBackground, widgetControllerClass: %@", &v7, 0x16u);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] sceneWillEnterForeground, widgetControllerClass: %@", &v8, 0x16u);
  }

  v7 = [(CarWidgetController *)self chromeViewController];
  [v7 setSuppressed:0];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] sceneDidDisconnect, widgetControllerClass: %@", &v9, 0x16u);
  }

  v7 = [(CarWidgetController *)self chromeViewController];
  [v7 setSuppressed:1];

  [(CarWidgetController *)self setChromeViewController:0];
  v8 = +[CarSessionController sharedInstance];
  [v8 removeObserver:self];
}

- (void)_mapsCar_rebuildContextsForCurrentAppState
{
  v3 = [(CarWidgetController *)self chromeViewController];
  v4 = [(CarWidgetController *)self contextsForCurrentAppState];
  [v3 setContexts:v4 animated:0 completion:0];

  v5 = [(CarWidgetController *)self chromeViewController];
  [v5 setNeedsUpdateComponent:@"accessories" animated:0];
}

- (void)_mapsCar_scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 134349314;
    v20 = self;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] willConnectToSession:options, widgetControllerClass: %@", buf, 0x16u);
  }

  v9 = +[CarSessionController sharedInstance];
  [v9 addObserver:self];

  v10 = [objc_msgSend(objc_msgSend(objc_opt_class() "chromeViewControllerClass")];
  [(CarWidgetController *)self setChromeViewController:v10];

  v11 = [(CarWidgetController *)self chromeViewController];
  [v11 setSuppressed:1];

  v12 = objc_opt_class();
  v13 = [(CarWidgetController *)self chromeViewController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DF9DB0;
  v18[3] = &unk_101655578;
  v18[4] = v12;
  [v13 setFallbackContextCoordinationBlock:v18];

  v14 = [(CarWidgetController *)self chromeViewController];
  v15 = [(CarWidgetController *)self contextsForCurrentAppState];
  [v14 setContexts:v15 animated:0 completion:0];

  v16 = +[CarChromeModeCoordinator sharedInstance];
  v17 = [(CarWidgetController *)self chromeViewController];
  [v16 addChromeViewController:v17];
}

- (void)dealloc
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v11 = "[CarWidgetController dealloc]";
        v12 = 2080;
        v13 = "CarWidgetController.m";
        v14 = 1024;
        v15 = 38;
        v16 = 2080;
        v17 = "dispatch_get_main_queue()";
        v18 = 2080;
        v19 = dispatch_queue_get_label(&_dispatch_main_q);
        v20 = 2080;
        v21 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v7 = sub_10006D178();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v11 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v9.receiver = self;
  v9.super_class = CarWidgetController;
  [(CarWidgetController *)&v9 dealloc];
}

- (CarWidgetController)initWithCarSceneType:(int64_t)a3
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v17 = "[CarWidgetController initWithCarSceneType:]";
        v18 = 2080;
        v19 = "CarWidgetController.m";
        v20 = 1024;
        v21 = 27;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  if (a3 <= 6 && ((1 << a3) & 0x72) != 0 && a3 <= 3)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[CarWidgetController initWithCarSceneType:]";
      v18 = 2080;
      v19 = "CarWidgetController.m";
      v20 = 1024;
      v21 = 28;
      v22 = 2080;
      v23 = "CarSceneTypeIsDashboardWidget(sceneType) || CarSceneTypeIsInstrumentClusterWidget(sceneType)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v15.receiver = self;
  v15.super_class = CarWidgetController;
  result = [(CarWidgetController *)&v15 init];
  if (result)
  {
    result->_sceneType = a3;
  }

  return result;
}

@end