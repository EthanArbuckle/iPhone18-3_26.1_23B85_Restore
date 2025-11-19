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
- (void)_determineStyleWithCompletion:(id)a3;
- (void)_invalidateWelcomeAnimationAutoStopTimer;
- (void)_observeAppLifecycleNotifications;
- (void)_prepareContentView;
- (void)_shouldShowIntelligenceAnimationWithCompletion:(id)a3;
- (void)_startWelcomeAnimationAutoPauseTimer;
- (void)dealloc;
- (void)didEnterBackground:(id)a3;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setNavigationController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willEnterForeground:(id)a3;
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
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v3 loadView];
  v2 = [(BuddyFinishedController *)v5 navigationItem];
  [v2 setHidesBackButton:1];

  [(BuddyFinishedController *)v5 _prepareContentView];
}

- (void)viewDidLoad
{
  v26 = self;
  v25 = a2;
  v24.receiver = self;
  v24.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v24 viewDidLoad];
  if ([(BuddyFinishedController *)v26 style]== 3)
  {
    [(BuddyFinishedController *)v26 setTitle:&stru_10032F900];
  }

  else
  {
    if ([(BuddyFinishedController *)v26 _shouldShowGetStartedButton])
    {
      objc_initWeak(&location, v26);
      v2 = v26;
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
      v5 = v26;
      v6 = +[NSBundle mainBundle];
      v7 = [(NSBundle *)v6 localizedStringForKey:@"GET_STARTED_IPHONE_X" value:&stru_10032F900 table:@"Localizable"];
      [(BuddyFinishedController *)v5 setInstructionalText:v7];
    }

    if ([(BuddyFinishedController *)v26 drawHomeAffordance])
    {
      v8 = [[MTLumaDodgePillView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(BuddyFinishedController *)v26 setHomeAffordanceView:v8];

      v9 = [(BuddyFinishedController *)v26 homeAffordanceView];
      [(MTLumaDodgePillView *)v9 setStyle:3];

      v10 = [(BuddyFinishedController *)v26 view];
      v11 = [(BuddyFinishedController *)v26 homeAffordanceView];
      [v10 addSubview:v11];
    }

    v12 = [(BuddyFinishedController *)v26 welcomeGradientViewProvider];
    v13 = 0;
    if (v12)
    {
      v14 = v12;
      v13 = [(BuddyFinishedController *)v26 _welcomeGradientShouldAdjustBuddyColor];
      v12 = v14;
    }

    if (v13)
    {
      v15 = [UIColor colorWithRed:0.93 green:0.93 blue:0.93 alpha:1.0];
      v16 = [(BuddyFinishedController *)v26 view];
      [v16 setBackgroundColor:v15];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v29 viewDidLayoutSubviews];
  if ([(BuddyFinishedController *)v31 style]!= 3)
  {
    v2 = [(BuddyFinishedController *)v31 homeAffordanceView];

    if (v2)
    {
      v3 = [(BuddyFinishedController *)v31 view];
      [v3 bounds];
      v28.origin.y = v4;
      v28.origin.x = v5;
      v28.size.height = v6;
      v28.size.width = v7;

      v8 = [(BuddyFinishedController *)v31 homeAffordanceView];
      v9 = [(BuddyFinishedController *)v31 view];
      [v9 bounds];
      [(MTLumaDodgePillView *)v8 suggestedSizeForContentWidth:v10];

      v11 = [(BuddyFinishedController *)v31 homeAffordanceView];
      [(MTLumaDodgePillView *)v11 setFrame:*&v28.origin, *&v28.size];

      v12 = [(BuddyFinishedController *)v31 homeAffordanceView];
      v13 = sub_10006A4C8();
      [(MTLumaDodgePillView *)v12 setBounds:v13, v14, v15, v16];

      CGRectGetMidX(v28);
      CGRectGetHeight(v28);
      v17 = [(BuddyFinishedController *)v31 homeAffordanceView];
      [(MTLumaDodgePillView *)v17 bounds];
      v22 = [(BuddyFinishedController *)v31 homeAffordanceView:v18];
      [(MTLumaDodgePillView *)v22 suggestedEdgeSpacing];
      sub_10006A520();
      v26 = v23;
      v27 = v24;

      v25 = [(BuddyFinishedController *)v31 homeAffordanceView];
      [(MTLumaDodgePillView *)v25 setCenter:v26, v27];
    }
  }
}

- (id)contentView
{
  v2 = [(BuddyFinishedController *)self cursiveWelcomeView];

  if (v2)
  {
    v9 = [(BuddyFinishedController *)self cursiveWelcomeView];
  }

  else
  {
    v3 = [(BuddyFinishedController *)self welcomeGradientViewProvider];

    if (v3)
    {
      v4 = [(BuddyFinishedController *)self welcomeGradientViewProvider];
      v5 = [(SASWelcomeToDeviceViewControllerProvider *)v4 viewController];
      v9 = [v5 view];
    }

    else
    {
      v6 = [(BuddyFinishedController *)self bookendAnimator];

      if (v6)
      {
        v9 = objc_opt_new();
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (void)viewDidAppear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = BuddyFinishedController;
  [(BuddyFinishedController *)&v10 viewDidAppear:a3];
  if ([(BuddyFinishedController *)v13 style]!= 3)
  {
    v3 = [(BuddyFinishedController *)v13 cursiveWelcomeView];
    [(BuddyFinishedCursiveChildWelcomeView *)v3 startAnimation];

    v4 = [(BuddyFinishedController *)v13 welcomeGradientViewProvider];
    [(SASWelcomeToDeviceViewControllerProvider *)v4 startAnimation];

    v5 = +[NSBundle mainBundle];
    v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WELCOME_TO"];
    v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
    v8 = [(BuddyFinishedController *)v13 cursiveWelcomeView];
    [(BuddyFinishedCursiveChildWelcomeView *)v8 setAccessibilityLabel:v7];

    if ([(BuddyFinishedController *)v13 style]!= 3)
    {
      v9 = [(BuddyFinishedController *)v13 findMyDisabledAlertPresenter];
      [(BuddyFindMyDisabledAlertPresenter *)v9 presentFindMyDisabledAlertIfNeededOnViewController:v13];
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[DMCMultiUserModeUtilities inSharediPadUserSession];
  v4 = 1;
  if (v3)
  {
    v4 = +[DMCMultiUserModeUtilities awaitUserConfigurationEnabled]^ 1;
  }

  v20 = v4 & 1;
  if (v4)
  {
    [(BuddyFinishedController *)v22 setStyle:3];
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
    [(BuddyFinishedController *)v22 setPosterboardService:v7];

    v8 = [(BuddyFinishedController *)v22 posterboardService];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10006AB84;
    v13 = &unk_10032AFF8;
    v14 = v22;
    v15 = location[0];
    [(PRSService *)v8 fetchPosterConfigurationsForRole:0 completion:&v9];

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

- (void)setNavigationController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyFinishedController *)v4 set_navigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_determineStyleWithCompletion:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyFinishedController *)v14 featureFlags];
  v4 = [(BuddyFeatureFlags *)v3 isSolariumEnabled];

  if (v4)
  {
    [(BuddyFinishedController *)v14 setStyle:3];
    (*(location[0] + 2))();
  }

  else if ([(BuddyFinishedController *)v14 _shouldShowCursiveAnimation])
  {
    [(BuddyFinishedController *)v14 setStyle:1];
    (*(location[0] + 2))();
  }

  else
  {
    v5 = v14;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10006B4C4;
    v10 = &unk_10032B020;
    v11 = v14;
    v12 = location[0];
    [(BuddyFinishedController *)v5 _shouldShowIntelligenceAnimationWithCompletion:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_prepareContentView
{
  v2 = [(BuddyFinishedController *)self style];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [[BuddyFinishedCursiveChildWelcomeView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(BuddyFinishedController *)self setCursiveWelcomeView:v3];

      v4 = [(BuddyFinishedController *)self cursiveWelcomeView];
      [(BuddyFinishedCursiveChildWelcomeView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else if (v2 == 2)
    {
      v5 = [SASWelcomeToDeviceViewControllerProvider alloc];
      v6 = +[NSBundle mainBundle];
      v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WELCOME_TO"];
      v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
      v9 = +[UIColor labelColor];
      v10 = [v5 initWithText:v8 finalTextColor:v9 onAnimationCompleteHandler:0];
      [(BuddyFinishedController *)self setWelcomeGradientViewProvider:v10];

      v11 = [(BuddyFinishedController *)self welcomeGradientViewProvider];
      v12 = [(SASWelcomeToDeviceViewControllerProvider *)v11 viewController];
      v13 = [v12 view];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

      v14 = +[UIColor clearColor];
      v15 = [(BuddyFinishedController *)self welcomeGradientViewProvider];
      v16 = [(SASWelcomeToDeviceViewControllerProvider *)v15 viewController];
      v17 = [v16 view];
      [v17 setBackgroundColor:v14];
    }
  }
}

- (BOOL)_welcomeGradientShouldAdjustBuddyColor
{
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 potentialEDRHeadroom];
  v4 = v3 > 2.0;

  v9 = v4;
  v5 = [(BuddyFinishedController *)self traitCollection];
  v6 = [v5 userInterfaceStyle] == 2;

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

- (void)_shouldShowIntelligenceAnimationWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyFinishedController *)v5 intelligenceProvider];
  [(IntelligenceProvider *)v3 isIntelligenceEnabledWithCompletionHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldShowGetStartedButton
{
  v2 = [(BuddyFinishedController *)self deviceProvider];
  v3 = [(BYDeviceProvider *)v2 hasHomeButton];
  v6 = 0;
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    v7 = [(BuddyFinishedController *)self deviceProvider];
    v6 = 1;
    v4 = [(BYDeviceProvider *)v7 type]== 1;
  }

  v9 = v4;
  if (v6)
  {
  }

  return v9;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(BuddyFinishedController *)self _cleanUpAppLifecycleNotifications];
  [(BuddyFinishedController *)v4 _invalidateWelcomeAnimationAutoStopTimer];
  v2.receiver = v4;
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

- (void)willEnterForeground:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyFinishedController *)v6 bookendAnimator];

  if (v3)
  {
    v4 = [(BuddyFinishedController *)v6 bookendAnimator];
    [(BuddyFinishedControllerPresenter *)v4 continueAnimation];

    [(BuddyFinishedController *)v6 _startWelcomeAnimationAutoPauseTimer];
  }

  objc_storeStrong(location, 0);
}

- (void)didEnterBackground:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyFinishedController *)v5 bookendAnimator];
  [(BuddyFinishedControllerPresenter *)v3 pauseAnimation];

  [(BuddyFinishedController *)v5 _invalidateWelcomeAnimationAutoStopTimer];
  objc_storeStrong(location, 0);
}

- (void)_startWelcomeAnimationAutoPauseTimer
{
  v15 = self;
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
  objc_initWeak(&from, v15);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10006BE74;
  v9 = &unk_10032B048;
  objc_copyWeak(&v10, &from);
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v5 block:18.0];
  [(BuddyFinishedController *)v15 setWelcomeAnimationTimer:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
}

- (void)_invalidateWelcomeAnimationAutoStopTimer
{
  v9 = self;
  oslog[1] = a2;
  v2 = [(BuddyFinishedController *)self welcomeAnimationTimer];

  if (v2)
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
    v5 = [(BuddyFinishedController *)v9 welcomeAnimationTimer];
    [(NSTimer *)v5 invalidate];

    [(BuddyFinishedController *)v9 setWelcomeAnimationTimer:0];
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