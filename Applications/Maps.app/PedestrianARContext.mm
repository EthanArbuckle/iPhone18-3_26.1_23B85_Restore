@interface PedestrianARContext
- (BOOL)provideAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (ChromeViewController)chromeViewController;
- (PedestrianARContext)initWithRoute:(id)route platformController:(id)controller guidanceObserver:(id)observer navigationService:(id)service;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)dealloc;
- (void)pedestrianARViewControllerDidStop:(id)stop;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setChromeViewController:(id)controller;
- (void)willBeginDisplayingInSecureLockScreen;
@end

@implementation PedestrianARContext

- (BOOL)provideAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B1DD24;
  block[3] = &unk_1016605F8;
  block[4] = self;
  draftCopy = draft;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = draftCopy;
  dispatch_async(&_dispatch_main_q, block);

  return 1;
}

- (void)pedestrianARViewControllerDidStop:(id)stop
{
  chromeViewController = [(PedestrianARContext *)self chromeViewController];
  previousTopContext = [chromeViewController previousTopContext];

  if (previousTopContext == self)
  {
    v7 = sub_100B1DF5C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] VC stopped but we're currently in the process of being dismissed; ignoring", buf, 0xCu);
    }
  }

  else
  {
    iosBasedChromeViewController = [(PedestrianARContext *)self iosBasedChromeViewController];
    appCoordinator = [iosBasedChromeViewController appCoordinator];
    [appCoordinator exitPedestrianAR];
  }
}

- (void)willBeginDisplayingInSecureLockScreen
{
  pedestrianARViewController = [(PedestrianARContext *)self pedestrianARViewController];
  [pedestrianARViewController willBeginDisplayingInSecureLockScreen];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = sub_100B1DF5C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349314;
    selfCopy = self;
    v9 = 2080;
    v10 = "[PedestrianARContext resignTopContextInChromeViewController:withAnimation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v7, 0x16u);
  }

  pedestrianARViewController = [(PedestrianARContext *)self pedestrianARViewController];
  [pedestrianARViewController stop];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = sub_100B1DF5C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy = self;
    v8 = 2080;
    v9 = "[PedestrianARContext becomeTopContextInChromeViewController:withAnimation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v6, 0x16u);
  }
}

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
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
      selfCopy = "[PedestrianARContext setChromeViewController:]";
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
        selfCopy = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    pedestrianARViewController = sub_100B1DF5C();
    if (os_log_type_enabled(pedestrianARViewController, OS_LOG_TYPE_ERROR))
    {
      v9 = 134349314;
      selfCopy = self;
      v11 = 2112;
      v12 = controllerCopy;
      _os_log_impl(&_mh_execute_header, pedestrianARViewController, OS_LOG_TYPE_ERROR, "[%{public}p] Chrome VC must be an iOS one: %@", &v9, 0x16u);
    }
  }

  else
  {
LABEL_4:
    pedestrianARViewController = [(PedestrianARContext *)self pedestrianARViewController];
    [pedestrianARViewController setChromeViewController:controllerCopy];
  }
}

- (ChromeViewController)chromeViewController
{
  pedestrianARViewController = [(PedestrianARContext *)self pedestrianARViewController];
  chromeViewController = [pedestrianARViewController chromeViewController];

  return chromeViewController;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARContext;
  [(PedestrianARContext *)&v4 dealloc];
}

- (PedestrianARContext)initWithRoute:(id)route platformController:(id)controller guidanceObserver:(id)observer navigationService:(id)service
{
  routeCopy = route;
  controllerCopy = controller;
  observerCopy = observer;
  serviceCopy = service;
  if (!routeCopy)
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

  if (!controllerCopy)
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

  if (!observerCopy)
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

  if (!serviceCopy)
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

    v16 = [[PedestrianARViewController alloc] initWithRoute:routeCopy platformController:controllerCopy guidanceObserver:observerCopy navigationService:serviceCopy];
    pedestrianARViewController = v14->_pedestrianARViewController;
    v14->_pedestrianARViewController = v16;

    [(PedestrianARViewController *)v14->_pedestrianARViewController setArDelegate:v14];
    [(ContainerViewController *)v14->_pedestrianARViewController setChromeContext:v14];
  }

  return v14;
}

@end