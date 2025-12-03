@interface BuddyFinishedController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_shouldShowCursiveAnimation;
- (BOOL)_shouldShowGetStartedButton;
- (BOOL)_welcomeGradientShouldAdjustBuddyColor;
- (BuddyFindMyDisabledAlertPresenter)findMyDisabledAlertPresenter;
- (BuddyFinishedController)init;
- (UINavigationController)_navigationController;
- (id)contentView;
- (unint64_t)allowedTerminationSources;
- (void)_cleanUpAppLifecycleNotifications;
- (void)_determineStyleWithCompletion:(id)completion;
- (void)_invalidateWelcomeAnimationAutoStopTimer;
- (void)_observeAppLifecycleNotifications;
- (void)_prepareContentView;
- (void)_shouldShowIntelligenceAnimationWithCompletion:(id)completion;
- (void)_startWelcomeAnimationAutoPauseTimer;
- (void)dealloc;
- (void)didEnterBackground:(id)background;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setNavigationController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willEnterForeground:(id)foreground;
@end

@implementation BuddyFinishedController

- (BuddyFinishedController)init
{
  v3 = [NSBundle mainBundle:a2];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WELCOME_TO"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  location = [(BuddyFinishedController *)self initWithTitle:v5];
  v6 = location;

  objc_storeStrong(&location, 0);
  return v6;
}

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v3 loadView];
  navigationItem = [(BuddyFinishedController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  [(BuddyFinishedController *)selfCopy _prepareContentView];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v25 = a2;
  v24.receiver = self;
  v24.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v24 viewDidLoad];
  if ([(BuddyFinishedController *)selfCopy style]== 3)
  {
    [(BuddyFinishedController *)selfCopy setTitle:&stru_10032F900];
  }

  else
  {
    if ([(BuddyFinishedController *)selfCopy _shouldShowGetStartedButton])
    {
      objc_initWeak(&location, selfCopy);
      v2 = selfCopy;
      v3 = +[NSBundle mainBundle];
      v4 = [(NSBundle *)v3 localizedStringForKey:@"GET_STARTED" value:&stru_10032F900 table:@"Localizable"];
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_10006A1D4;
      v21 = &unk_10032AF58;
      objc_copyWeak(&v22, &location);
      [(BuddyFinishedController *)v2 setButtonTitle:v4 action:&v17];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v5 = selfCopy;
      v6 = +[NSBundle mainBundle];
      v7 = [(NSBundle *)v6 localizedStringForKey:@"GET_STARTED_IPHONE_X" value:&stru_10032F900 table:@"Localizable"];
      [(BuddyFinishedController *)v5 setInstructionalText:v7];
    }

    if ([(BuddyFinishedController *)selfCopy drawHomeAffordance])
    {
      v8 = [[MTLumaDodgePillView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(BuddyFinishedController *)selfCopy setHomeAffordanceView:v8];

      homeAffordanceView = [(BuddyFinishedController *)selfCopy homeAffordanceView];
      [(MTLumaDodgePillView *)homeAffordanceView setStyle:3];

      view = [(BuddyFinishedController *)selfCopy view];
      homeAffordanceView2 = [(BuddyFinishedController *)selfCopy homeAffordanceView];
      [view addSubview:homeAffordanceView2];
    }

    welcomeGradientViewProvider = [(BuddyFinishedController *)selfCopy welcomeGradientViewProvider];
    _welcomeGradientShouldAdjustBuddyColor = 0;
    if (welcomeGradientViewProvider)
    {
      v14 = welcomeGradientViewProvider;
      _welcomeGradientShouldAdjustBuddyColor = [(BuddyFinishedController *)selfCopy _welcomeGradientShouldAdjustBuddyColor];
      welcomeGradientViewProvider = v14;
    }

    if (_welcomeGradientShouldAdjustBuddyColor)
    {
      v15 = [UIColor colorWithRed:0.93 green:0.93 blue:0.93 alpha:1.0];
      view2 = [(BuddyFinishedController *)selfCopy view];
      [view2 setBackgroundColor:v15];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v29 viewDidLayoutSubviews];
  if ([(BuddyFinishedController *)selfCopy style]!= 3)
  {
    homeAffordanceView = [(BuddyFinishedController *)selfCopy homeAffordanceView];

    if (homeAffordanceView)
    {
      view = [(BuddyFinishedController *)selfCopy view];
      [view bounds];
      v28.origin.y = v4;
      v28.origin.x = v5;
      v28.size.height = v6;
      v28.size.width = v7;

      homeAffordanceView2 = [(BuddyFinishedController *)selfCopy homeAffordanceView];
      view2 = [(BuddyFinishedController *)selfCopy view];
      [view2 bounds];
      [(MTLumaDodgePillView *)homeAffordanceView2 suggestedSizeForContentWidth:v10];

      homeAffordanceView3 = [(BuddyFinishedController *)selfCopy homeAffordanceView];
      [(MTLumaDodgePillView *)homeAffordanceView3 setFrame:*&v28.origin, *&v28.size];

      homeAffordanceView4 = [(BuddyFinishedController *)selfCopy homeAffordanceView];
      v13 = sub_10006A4C8();
      [(MTLumaDodgePillView *)homeAffordanceView4 setBounds:v13, v14, v15, v16];

      CGRectGetMidX(v28);
      CGRectGetHeight(v28);
      homeAffordanceView5 = [(BuddyFinishedController *)selfCopy homeAffordanceView];
      [(MTLumaDodgePillView *)homeAffordanceView5 bounds];
      v22 = [(BuddyFinishedController *)selfCopy homeAffordanceView:v18];
      [(MTLumaDodgePillView *)v22 suggestedEdgeSpacing];
      sub_10006A520();
      v26 = v23;
      v27 = v24;

      homeAffordanceView6 = [(BuddyFinishedController *)selfCopy homeAffordanceView];
      [(MTLumaDodgePillView *)homeAffordanceView6 setCenter:v26, v27];
    }
  }
}

- (id)contentView
{
  cursiveWelcomeView = [(BuddyFinishedController *)self cursiveWelcomeView];

  if (cursiveWelcomeView)
  {
    cursiveWelcomeView2 = [(BuddyFinishedController *)self cursiveWelcomeView];
  }

  else
  {
    welcomeGradientViewProvider = [(BuddyFinishedController *)self welcomeGradientViewProvider];

    if (welcomeGradientViewProvider)
    {
      welcomeGradientViewProvider2 = [(BuddyFinishedController *)self welcomeGradientViewProvider];
      viewController = [(SASWelcomeToDeviceViewControllerProvider *)welcomeGradientViewProvider2 viewController];
      cursiveWelcomeView2 = [viewController view];
    }

    else
    {
      bookendAnimator = [(BuddyFinishedController *)self bookendAnimator];

      if (bookendAnimator)
      {
        cursiveWelcomeView2 = objc_opt_new();
      }

      else
      {
        cursiveWelcomeView2 = 0;
      }
    }
  }

  return cursiveWelcomeView2;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v10 viewDidAppear:appear];
  if ([(BuddyFinishedController *)selfCopy style]!= 3)
  {
    cursiveWelcomeView = [(BuddyFinishedController *)selfCopy cursiveWelcomeView];
    [(BuddyFinishedCursiveChildWelcomeView *)cursiveWelcomeView startAnimation];

    welcomeGradientViewProvider = [(BuddyFinishedController *)selfCopy welcomeGradientViewProvider];
    [(SASWelcomeToDeviceViewControllerProvider *)welcomeGradientViewProvider startAnimation];

    v5 = +[NSBundle mainBundle];
    v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WELCOME_TO"];
    v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
    cursiveWelcomeView2 = [(BuddyFinishedController *)selfCopy cursiveWelcomeView];
    [(BuddyFinishedCursiveChildWelcomeView *)cursiveWelcomeView2 setAccessibilityLabel:v7];

    if ([(BuddyFinishedController *)selfCopy style]!= 3)
    {
      findMyDisabledAlertPresenter = [(BuddyFinishedController *)selfCopy findMyDisabledAlertPresenter];
      [(BuddyFindMyDisabledAlertPresenter *)findMyDisabledAlertPresenter presentFindMyDisabledAlertIfNeededOnViewController:selfCopy];
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = +[DMCMultiUserModeUtilities inSharediPadUserSession];
  v4 = 1;
  if (v3)
  {
    v4 = +[DMCMultiUserModeUtilities awaitUserConfigurationEnabled]^ 1;
  }

  v20 = v4 & 1;
  if (v4)
  {
    [(BuddyFinishedController *)selfCopy setStyle:3];
    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v17;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Pre-warming posterboard", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = objc_alloc_init(sub_10006AA70());
    [(BuddyFinishedController *)selfCopy setPosterboardService:v7];

    posterboardService = [(BuddyFinishedController *)selfCopy posterboardService];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10006AB84;
    v13 = &unk_10032AFF8;
    v14 = selfCopy;
    v15 = location[0];
    [(PRSService *)posterboardService fetchPosterConfigurationsForRole:0 completion:&v9];

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    v19 = 0;
  }

  else
  {
    (*(location[0] + 2))(location[0], 0);
    v19 = 1;
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)allowedTerminationSources
{
  if ([(BuddyFinishedController *)self style]== 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)setNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(BuddyFinishedController *)selfCopy set_navigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_determineStyleWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  featureFlags = [(BuddyFinishedController *)selfCopy featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (isSolariumEnabled)
  {
    [(BuddyFinishedController *)selfCopy setStyle:3];
    (*(location[0] + 2))();
  }

  else if ([(BuddyFinishedController *)selfCopy _shouldShowCursiveAnimation])
  {
    [(BuddyFinishedController *)selfCopy setStyle:1];
    (*(location[0] + 2))();
  }

  else
  {
    v5 = selfCopy;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10006B4C4;
    v10 = &unk_10032B020;
    v11 = selfCopy;
    v12 = location[0];
    [(BuddyFinishedController *)v5 _shouldShowIntelligenceAnimationWithCompletion:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_prepareContentView
{
  style = [(BuddyFinishedController *)self style];
  if (style)
  {
    if (style == 1)
    {
      v3 = [[BuddyFinishedCursiveChildWelcomeView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(BuddyFinishedController *)self setCursiveWelcomeView:v3];

      cursiveWelcomeView = [(BuddyFinishedController *)self cursiveWelcomeView];
      [(BuddyFinishedCursiveChildWelcomeView *)cursiveWelcomeView setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else if (style == 2)
    {
      v5 = [SASWelcomeToDeviceViewControllerProvider alloc];
      v6 = +[NSBundle mainBundle];
      v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WELCOME_TO"];
      v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
      v9 = +[UIColor labelColor];
      v10 = [v5 initWithText:v8 finalTextColor:v9 onAnimationCompleteHandler:0];
      [(BuddyFinishedController *)self setWelcomeGradientViewProvider:v10];

      welcomeGradientViewProvider = [(BuddyFinishedController *)self welcomeGradientViewProvider];
      viewController = [(SASWelcomeToDeviceViewControllerProvider *)welcomeGradientViewProvider viewController];
      view = [viewController view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      v14 = +[UIColor clearColor];
      welcomeGradientViewProvider2 = [(BuddyFinishedController *)self welcomeGradientViewProvider];
      viewController2 = [(SASWelcomeToDeviceViewControllerProvider *)welcomeGradientViewProvider2 viewController];
      view2 = [viewController2 view];
      [view2 setBackgroundColor:v14];
    }
  }
}

- (BOOL)_welcomeGradientShouldAdjustBuddyColor
{
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 potentialEDRHeadroom];
  v4 = v3 > 2.0;

  v9 = v4;
  traitCollection = [(BuddyFinishedController *)self traitCollection];
  v6 = [traitCollection userInterfaceStyle] == 2;

  v7 = 0;
  if (!v6)
  {
    return !v9;
  }

  return v7;
}

- (BOOL)_shouldShowCursiveAnimation
{
  v2 = [(BuddyFinishedController *)self flowItemDispositionProvider:a2];
  v3 = ([(BuddyFlowItemDispositionProvider *)v2 dispositions]& 0x10) == 16;

  return v3;
}

- (void)_shouldShowIntelligenceAnimationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  intelligenceProvider = [(BuddyFinishedController *)selfCopy intelligenceProvider];
  [(IntelligenceProvider *)intelligenceProvider isIntelligenceEnabledWithCompletionHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldShowGetStartedButton
{
  deviceProvider = [(BuddyFinishedController *)self deviceProvider];
  hasHomeButton = [(BYDeviceProvider *)deviceProvider hasHomeButton];
  v6 = 0;
  v4 = 1;
  if ((hasHomeButton & 1) == 0)
  {
    deviceProvider2 = [(BuddyFinishedController *)self deviceProvider];
    v6 = 1;
    v4 = [(BYDeviceProvider *)deviceProvider2 type]== 1;
  }

  v9 = v4;
  if (v6)
  {
  }

  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(BuddyFinishedController *)self _cleanUpAppLifecycleNotifications];
  [(BuddyFinishedController *)selfCopy _invalidateWelcomeAnimationAutoStopTimer];
  v2.receiver = selfCopy;
  v2.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v2 dealloc];
}

- (void)_observeAppLifecycleNotifications
{
  [(BuddyFinishedController *)self _cleanUpAppLifecycleNotifications];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 addObserver:self selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)_cleanUpAppLifecycleNotifications
{
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)willEnterForeground:(id)foreground
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, foreground);
  bookendAnimator = [(BuddyFinishedController *)selfCopy bookendAnimator];

  if (bookendAnimator)
  {
    bookendAnimator2 = [(BuddyFinishedController *)selfCopy bookendAnimator];
    [(BuddyFinishedControllerPresenter *)bookendAnimator2 continueAnimation];

    [(BuddyFinishedController *)selfCopy _startWelcomeAnimationAutoPauseTimer];
  }

  objc_storeStrong(location, 0);
}

- (void)didEnterBackground:(id)background
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, background);
  bookendAnimator = [(BuddyFinishedController *)selfCopy bookendAnimator];
  [(BuddyFinishedControllerPresenter *)bookendAnimator pauseAnimation];

  [(BuddyFinishedController *)selfCopy _invalidateWelcomeAnimationAutoStopTimer];
  objc_storeStrong(location, 0);
}

- (void)_startWelcomeAnimationAutoPauseTimer
{
  selfCopy = self;
  location[1] = a2;
  [(BuddyFinishedController *)self _invalidateWelcomeAnimationAutoStopTimer];
  location[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting welcome animation timer", buf, 2u);
  }

  objc_storeStrong(location, 0);
  objc_initWeak(&from, selfCopy);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10006BE74;
  v9 = &unk_10032B048;
  objc_copyWeak(&v10, &from);
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v5 block:18.0];
  [(BuddyFinishedController *)selfCopy setWelcomeAnimationTimer:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
}

- (void)_invalidateWelcomeAnimationAutoStopTimer
{
  selfCopy = self;
  oslog[1] = a2;
  welcomeAnimationTimer = [(BuddyFinishedController *)self welcomeAnimationTimer];

  if (welcomeAnimationTimer)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating welcome animation timer", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
    welcomeAnimationTimer2 = [(BuddyFinishedController *)selfCopy welcomeAnimationTimer];
    [(NSTimer *)welcomeAnimationTimer2 invalidate];

    [(BuddyFinishedController *)selfCopy setWelcomeAnimationTimer:0];
  }
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BuddyFindMyDisabledAlertPresenter)findMyDisabledAlertPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_findMyDisabledAlertPresenter);

  return WeakRetained;
}

- (UINavigationController)_navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->__navigationController);

  return WeakRetained;
}

@end