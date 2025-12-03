@interface ICStartupNavigationController
+ (BOOL)shouldUseCompactLayoutForTraitCollection:(id)collection viewSize:(CGSize)size;
+ (double)introductionControlsButtonWidthForView:(id)view viewSize:(CGSize)size;
- (ICNAEventReporter)eventReporter;
- (ICStartupNavigationController)initWithForceWelcomeScreen:(BOOL)screen presentingWindow:(id)window dismissBlock:(id)block;
- (NSArray)primaryAccountDevices;
- (UIWindow)presentingWindow;
- (unint64_t)getStartupMigrationType;
- (unint64_t)supportedInterfaceOrientations;
- (void)continueAction;
- (void)dismissWithCompletionBlock:(id)block;
- (void)eventReporterLostSession:(id)session;
- (void)noUpgradeAction;
- (void)noUpgradeActionAndDismiss;
- (void)startupMigrationTypeMightHaveChanged;
- (void)submitOnboardingScreenViewEvent;
- (void)upgradeAction;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICStartupNavigationController

- (ICStartupNavigationController)initWithForceWelcomeScreen:(BOOL)screen presentingWindow:(id)window dismissBlock:(id)block
{
  windowCopy = window;
  blockCopy = block;
  v35.receiver = self;
  v35.super_class = ICStartupNavigationController;
  v10 = [(ICStartupNavigationController *)&v35 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    [(ICStartupNavigationController *)v10 setPresentingWindow:windowCopy];
    [(ICStartupNavigationController *)v11 setDismissBlock:blockCopy];
    if (+[UIDevice ic_isVision])
    {
      v12 = [UIImage ic_applicationIconImageWithSize:84.0, 84.0];
    }

    else
    {
      v12 = 0;
    }

    ic_behavior = [windowCopy ic_behavior];
    if (!screen && +[ICStartupController shouldShowWhatsNewScreen])
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      if (ic_behavior == 1)
      {
        v16 = @"What’s New in Math Notes";
      }

      else
      {
        v16 = @"What’s New in Notes";
      }

      v17 = [v14 localizedStringForKey:v16 value:&stru_100661CF0 table:0];

      v18 = [[ICStartupWhatsNewViewController alloc] initWithTitle:v17 detailText:0 icon:v12];
      [(ICStartupNavigationController *)v11 setStartupWhatsNewViewController:v18];

      startupWhatsNewViewController = [(ICStartupNavigationController *)v11 startupWhatsNewViewController];
      v11->_startupScreenType = 1;
      goto LABEL_19;
    }

    v20 = [[ICStartupController alloc] initWithDelegate:v11];
    [(ICStartupNavigationController *)v11 setStartupController:v20];

    v21 = +[NSBundle mainBundle];
    v22 = v21;
    if (ic_behavior == 1)
    {
      v23 = @"Welcome to Math Notes";
    }

    else
    {
      v23 = @"Welcome to Notes";
    }

    v17 = [v21 localizedStringForKey:v23 value:&stru_100661CF0 table:0];

    traitCollection = [(ICStartupNavigationController *)v11 traitCollection];
    if ([traitCollection horizontalSizeClass] == 2 && (+[UIDevice ic_isVision](UIDevice, "ic_isVision") & 1) == 0)
    {

      if (ic_behavior == 1)
      {
        v25 = 0;
        goto LABEL_18;
      }

      IsAppleAccountBrandingEnabled = ICInternalSettingsIsAppleAccountBrandingEnabled();
      v33 = +[NSBundle mainBundle];
      traitCollection = v33;
      if (IsAppleAccountBrandingEnabled)
      {
        v34 = @"Great new tools for notes synced to your Apple Account.";
      }

      else
      {
        v34 = @"Great new tools for notes synced to your iCloud account.";
      }

      v25 = [v33 localizedStringForKey:v34 value:&stru_100661CF0 table:0];
    }

    else
    {
      v25 = 0;
    }

LABEL_18:
    v26 = [[ICStartupViewController alloc] initWithTitle:v17 detailText:v25 icon:v12];
    [(ICStartupNavigationController *)v11 setStartupViewController:v26];

    v27 = [ICStartupDeviceListViewController alloc];
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"Upgrade Notes" value:&stru_100661CF0 table:0];
    v30 = [(ICStartupDeviceListViewController *)v27 initWithTitle:v29 detailText:0 icon:0];
    [(ICStartupNavigationController *)v11 setDeviceListViewController:v30];

    startupWhatsNewViewController = [(ICStartupNavigationController *)v11 startupViewController];
    v11->_startupScreenType = 2;

LABEL_19:
    [(ICStartupNavigationController *)v11 pushViewController:startupWhatsNewViewController animated:0];
    [(ICStartupNavigationController *)v11 setModalPresentationStyle:2];
    [(ICStartupNavigationController *)v11 setNavigationBarHidden:1];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ICStartupNavigationController;
  [(ICStartupNavigationController *)&v7 viewWillAppear:appear];
  startupController = [(ICStartupNavigationController *)self startupController];
  startupViewController = [(ICStartupNavigationController *)self startupViewController];
  [startupController checkStatusIfNecessaryWithDeviceCheckIndicator:startupViewController];

  view = [(ICStartupNavigationController *)self view];
  [view setAccessibilityIdentifier:@"Welcome Screen"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ICStartupNavigationController;
  [(ICStartupNavigationController *)&v5 viewDidAppear:appear];
  eventReporter = [(ICStartupNavigationController *)self eventReporter];
  [eventReporter startOnboardingScreenViewEventDurationTracking];
}

- (void)continueAction
{
  startupController = [(ICStartupNavigationController *)self startupController];
  [startupController didContinueFromStartupView];

  deviceListViewController = [(ICStartupNavigationController *)self deviceListViewController];
  [(ICStartupNavigationController *)self pushViewController:deviceListViewController animated:1];
}

- (void)upgradeAction
{
  startupController = [(ICStartupNavigationController *)self startupController];
  [startupController didUpgradeFromStartupView:1];
}

- (void)noUpgradeAction
{
  startupController = [(ICStartupNavigationController *)self startupController];
  [startupController didUpgradeFromStartupView:0];
}

- (void)submitOnboardingScreenViewEvent
{
  startupScreenType = [(ICStartupNavigationController *)self startupScreenType];
  if (startupScreenType == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (startupScreenType == 1);
  }

  eventReporter = [(ICStartupNavigationController *)self eventReporter];
  [eventReporter submitOnboardingScreenViewEventWithType:v4];
}

- (void)dismissWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(ICStartupNavigationController *)self submitOnboardingScreenViewEvent];
  startupController = [(ICStartupNavigationController *)self startupController];
  [startupController didContinueFromStartupView];

  dismissBlock = [(ICStartupNavigationController *)self dismissBlock];

  if (dismissBlock)
  {
    dismissBlock2 = [(ICStartupNavigationController *)self dismissBlock];
    (dismissBlock2)[2](dismissBlock2, blockCopy);

    [(ICStartupNavigationController *)self setDismissBlock:0];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"ICStartupNavigationControllerDidDismissNotification" object:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = ICStartupNavigationController;
  return [(ICStartupNavigationController *)&v6 supportedInterfaceOrientations];
}

+ (double)introductionControlsButtonWidthForView:(id)view viewSize:(CGSize)size
{
  width = size.width;
  viewCopy = view;
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v8 = fmin(width + -32.0, 360.0);
  }

  else
  {
    traitCollection = [viewCopy traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
    {
      v8 = 288.0;
    }

    else
    {
      v8 = 480.0;
    }
  }

  return v8;
}

+ (BOOL)shouldUseCompactLayoutForTraitCollection:(id)collection viewSize:(CGSize)size
{
  width = size.width;
  if ([collection horizontalSizeClass] != 1)
  {
    return 0;
  }

  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];
  v8 = width < 639.0 || userInterfaceIdiom == 0;

  return v8;
}

- (NSArray)primaryAccountDevices
{
  startupController = [(ICStartupNavigationController *)self startupController];
  primaryAccountDevices = [startupController primaryAccountDevices];

  return primaryAccountDevices;
}

- (unint64_t)getStartupMigrationType
{
  startupController = [(ICStartupNavigationController *)self startupController];
  getStartupMigrationType = [startupController getStartupMigrationType];

  return getStartupMigrationType;
}

- (void)startupMigrationTypeMightHaveChanged
{
  startupController = [(ICStartupNavigationController *)self startupController];
  startupViewController = [(ICStartupNavigationController *)self startupViewController];
  [startupController checkStatusIfNecessaryWithDeviceCheckIndicator:startupViewController];
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    view = [(ICStartupNavigationController *)self view];
    v7 = [v3 initWithSubTrackerName:v5 view:view];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  object = [sessionCopy object];

  [v8 removeObserver:self name:v6 object:object];
}

- (void)noUpgradeActionAndDismiss
{
  viewControllers = [(ICStartupNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  deviceListViewController = [(ICStartupNavigationController *)self deviceListViewController];

  if (firstObject == deviceListViewController)
  {
    deviceListViewController2 = [(ICStartupNavigationController *)self deviceListViewController];
    [deviceListViewController2 noUpgrade:self];
  }

  else
  {
    startupViewController = [(ICStartupNavigationController *)self startupViewController];

    v6 = firstObject;
    if (firstObject != startupViewController)
    {
      goto LABEL_6;
    }

    deviceListViewController2 = [(ICStartupNavigationController *)self startupViewController];
    [deviceListViewController2 continueAction:self];
  }

  v6 = firstObject;
LABEL_6:
}

- (UIWindow)presentingWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingWindow);

  return WeakRetained;
}

@end