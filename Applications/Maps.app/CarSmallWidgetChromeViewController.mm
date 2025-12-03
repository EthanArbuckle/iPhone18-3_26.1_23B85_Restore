@interface CarSmallWidgetChromeViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CarSmallWidgetChromeViewController)initWithCarSceneType:(int64_t)type;
- (id)defaultFullscreenViewControllerDismissalTransition;
- (id)defaultFullscreenViewControllerPresentationTransition;
- (void)_tappedWidget:(id)widget;
- (void)dealloc;
- (void)didSuppress;
- (void)didUnsuppress;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CarSmallWidgetChromeViewController

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v5 = [(ChromeViewController *)self topContext:recognizer];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    topContext = [(ChromeViewController *)self topContext];
    v8 = [topContext modeHandlesGestures] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (void)_tappedWidget:(id)widget
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ _tappedWidget", &v5, 0xCu);
  }

  [MapsCarPlayServicesShim openMapsCarPlayApplicationWithCompletion:0];
}

- (void)didUnsuppress
{
  v9.receiver = self;
  v9.super_class = CarSmallWidgetChromeViewController;
  [(ChromeViewController *)&v9 didUnsuppress];
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    topContext2 = [(ChromeViewController *)self topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  v6 = sub_10008B0B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] is unsuppressing. Will try to activate RG for chrome.", buf, 0xCu);
  }

  v7 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v7 routeGeniusManager];
  [routeGeniusManager activateIfPossibleForChrome:self];
}

- (void)didSuppress
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetChromeViewController;
  [(ChromeViewController *)&v6 didSuppress];
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] is suppressing. Will deactivate RG for chrome.", buf, 0xCu);
  }

  v4 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v4 routeGeniusManager];
  [routeGeniusManager deactivateForChrome:self];
}

- (id)defaultFullscreenViewControllerDismissalTransition
{
  v2 = [[CarSmallWidgetChromeTransitionAnimator alloc] initWithOperation:2];

  return v2;
}

- (id)defaultFullscreenViewControllerPresentationTransition
{
  v2 = [[CarSmallWidgetChromeTransitionAnimator alloc] initWithOperation:1];

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = CarSmallWidgetChromeViewController;
  [(ChromeViewController *)&v9 viewDidLayoutSubviews];
  v3 = sub_100799D40();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    view = [(CarSmallWidgetChromeViewController *)self view];
    [view frame];
    v5 = NSStringFromCGRect(v14);
    view2 = [(CarSmallWidgetChromeViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v8 = NSStringFromCGRect(v15);
    *buf = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Widget chromeVC didLayoutSubviews, frame: %@, safeAreaLayoutGuide: %@", buf, 0x16u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = CarSmallWidgetChromeViewController;
  [(CarSmallWidgetChromeViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = sub_100799D40();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    view = [(CarSmallWidgetChromeViewController *)self view];
    [view frame];
    v24.width = v10;
    v24.height = v11;
    v12 = NSStringFromCGSize(v24);
    v25.width = width;
    v25.height = height;
    v13 = NSStringFromCGSize(v25);
    isAnimated = [coordinatorCopy isAnimated];
    v15 = @"NO";
    if (isAnimated)
    {
      v15 = @"YES";
    }

    v16 = v15;
    *buf = 138412802;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Widget will transition from size: %@ to size: %@, animated: %@", buf, 0x20u);
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CarSmallWidgetChromeViewController;
  [(ChromeViewController *)&v10 viewDidLoad];
  v3 = sub_100799D40();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CarSmallWidgetChromeViewController view loaded.", v9, 2u);
  }

  if ([(CarSmallWidgetChromeViewController *)self sceneType]== 3)
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor crsui_dashboardWidgetBackgroundColor];
  }
  v4 = ;
  view = [(CarSmallWidgetChromeViewController *)self view];
  [view setBackgroundColor:v4];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tappedWidget:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v6;

  [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
  view2 = [(CarSmallWidgetChromeViewController *)self view];
  [view2 addGestureRecognizer:self->_tapGesture];
}

- (void)dealloc
{
  v3 = sub_100799D40();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v4 routeGeniusManager];
  [routeGeniusManager deactivateForChrome:self];

  v6.receiver = self;
  v6.super_class = CarSmallWidgetChromeViewController;
  [(ChromeViewController *)&v6 dealloc];
}

- (CarSmallWidgetChromeViewController)initWithCarSceneType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = CarSmallWidgetChromeViewController;
  v4 = [(ChromeViewController *)&v8 init];
  if (v4)
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (type > 6)
      {
        v6 = @".Unknown";
      }

      else
      {
        v6 = off_10162E140[type];
      }

      *buf = 134349314;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] initialising with sceneType: %{public}@", buf, 0x16u);
    }

    v4->_sceneType = type;
  }

  return v4;
}

@end