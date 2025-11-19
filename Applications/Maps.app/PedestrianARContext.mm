@interface PedestrianARContext
- (BOOL)provideAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (ChromeViewController)chromeViewController;
- (PedestrianARContext)initWithRoute:(id)a3 platformController:(id)a4 guidanceObserver:(id)a5 navigationService:(id)a6;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)dealloc;
- (void)pedestrianARViewControllerDidStop:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setChromeViewController:(id)a3;
- (void)willBeginDisplayingInSecureLockScreen;
@end

@implementation PedestrianARContext

- (BOOL)provideAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B1DD24;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  dispatch_async(&_dispatch_main_q, block);

  return 1;
}

- (void)pedestrianARViewControllerDidStop:(id)a3
{
  v4 = [(PedestrianARContext *)self chromeViewController];
  v5 = [v4 previousTopContext];

  if (v5 == self)
  {
    v7 = sub_100B1DF5C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] VC stopped but we're currently in the process of being dismissed; ignoring", buf, 0xCu);
    }
  }

  else
  {
    v8 = [(PedestrianARContext *)self iosBasedChromeViewController];
    v6 = [v8 appCoordinator];
    [v6 exitPedestrianAR];
  }
}

- (void)willBeginDisplayingInSecureLockScreen
{
  v2 = [(PedestrianARContext *)self pedestrianARViewController];
  [v2 willBeginDisplayingInSecureLockScreen];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = sub_100B1DF5C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2080;
    v10 = "[PedestrianARContext resignTopContextInChromeViewController:withAnimation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v7, 0x16u);
  }

  v6 = [(PedestrianARContext *)self pedestrianARViewController];
  [v6 stop];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = sub_100B1DF5C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    v7 = self;
    v8 = 2080;
    v9 = "[PedestrianARContext becomeTopContextInChromeViewController:withAnimation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v6, 0x16u);
  }
}

- (void)setChromeViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[PedestrianARContext setChromeViewController:]";
      v11 = 2080;
      v12 = "PedestrianARContext.m";
      v13 = 1024;
      v14 = 91;
      v15 = 2080;
      v16 = "chromeViewController == nil || [chromeViewController isKindOfClass:IOSBasedChromeViewController.class]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = sub_100B1DF5C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 134349314;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}p] Chrome VC must be an iOS one: %@", &v9, 0x16u);
    }
  }

  else
  {
LABEL_4:
    v5 = [(PedestrianARContext *)self pedestrianARViewController];
    [v5 setChromeViewController:v4];
  }
}

- (ChromeViewController)chromeViewController
{
  v2 = [(PedestrianARContext *)self pedestrianARViewController];
  v3 = [v2 chromeViewController];

  return v3;
}

- (id)fullscreenViewControllerDismissalTransition
{
  v2 = objc_opt_new();

  return v2;
}

- (id)fullscreenViewControllerPresentationTransition
{
  v2 = objc_opt_new();

  return v2;
}

- (void)dealloc
{
  v3 = sub_100B1DF5C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARContext;
  [(PedestrianARContext *)&v4 dealloc];
}

- (PedestrianARContext)initWithRoute:(id)a3 platformController:(id)a4 guidanceObserver:(id)a5 navigationService:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARContext initWithRoute:platformController:guidanceObserver:navigationService:]";
      v34 = 2080;
      v35 = "PedestrianARContext.m";
      v36 = 1024;
      v37 = 44;
      v38 = 2080;
      v39 = "route != nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v11)
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARContext initWithRoute:platformController:guidanceObserver:navigationService:]";
      v34 = 2080;
      v35 = "PedestrianARContext.m";
      v36 = 1024;
      v37 = 45;
      v38 = 2080;
      v39 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v12)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARContext initWithRoute:platformController:guidanceObserver:navigationService:]";
      v34 = 2080;
      v35 = "PedestrianARContext.m";
      v36 = 1024;
      v37 = 46;
      v38 = 2080;
      v39 = "guidanceObserver != nil";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v13)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARContext initWithRoute:platformController:guidanceObserver:navigationService:]";
      v34 = 2080;
      v35 = "PedestrianARContext.m";
      v36 = 1024;
      v37 = 47;
      v38 = 2080;
      v39 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v31.receiver = self;
  v31.super_class = PedestrianARContext;
  v14 = [(PedestrianARContext *)&v31 init];
  if (v14)
  {
    v15 = sub_100B1DF5C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v16 = [[PedestrianARViewController alloc] initWithRoute:v10 platformController:v11 guidanceObserver:v12 navigationService:v13];
    pedestrianARViewController = v14->_pedestrianARViewController;
    v14->_pedestrianARViewController = v16;

    [(PedestrianARViewController *)v14->_pedestrianARViewController setArDelegate:v14];
    [(ContainerViewController *)v14->_pedestrianARViewController setChromeContext:v14];
  }

  return v14;
}

@end