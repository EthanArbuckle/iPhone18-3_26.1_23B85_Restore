@interface ICStartupNavigationController
+ (BOOL)shouldUseCompactLayoutForTraitCollection:(id)a3 viewSize:(CGSize)a4;
+ (double)introductionControlsButtonWidthForView:(id)a3 viewSize:(CGSize)a4;
- (ICNAEventReporter)eventReporter;
- (ICStartupNavigationController)initWithForceWelcomeScreen:(BOOL)a3 presentingWindow:(id)a4 dismissBlock:(id)a5;
- (NSArray)primaryAccountDevices;
- (UIWindow)presentingWindow;
- (unint64_t)getStartupMigrationType;
- (unint64_t)supportedInterfaceOrientations;
- (void)continueAction;
- (void)dismissWithCompletionBlock:(id)a3;
- (void)eventReporterLostSession:(id)a3;
- (void)noUpgradeAction;
- (void)noUpgradeActionAndDismiss;
- (void)startupMigrationTypeMightHaveChanged;
- (void)submitOnboardingScreenViewEvent;
- (void)upgradeAction;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICStartupNavigationController

- (ICStartupNavigationController)initWithForceWelcomeScreen:(BOOL)a3 presentingWindow:(id)a4 dismissBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v35.receiver = self;
  v35.super_class = ICStartupNavigationController;
  v10 = [(ICStartupNavigationController *)&v35 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    [(ICStartupNavigationController *)v10 setPresentingWindow:v8];
    [(ICStartupNavigationController *)v11 setDismissBlock:v9];
    if (+[UIDevice ic_isVision])
    {
      v12 = [UIImage ic_applicationIconImageWithSize:84.0, 84.0];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v8 ic_behavior];
    if (!a3 && +[ICStartupController shouldShowWhatsNewScreen])
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      if (v13 == 1)
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

      v19 = [(ICStartupNavigationController *)v11 startupWhatsNewViewController];
      v11->_startupScreenType = 1;
      goto LABEL_19;
    }

    v20 = [[ICStartupController alloc] initWithDelegate:v11];
    [(ICStartupNavigationController *)v11 setStartupController:v20];

    v21 = +[NSBundle mainBundle];
    v22 = v21;
    if (v13 == 1)
    {
      v23 = @"Welcome to Math Notes";
    }

    else
    {
      v23 = @"Welcome to Notes";
    }

    v17 = [v21 localizedStringForKey:v23 value:&stru_100661CF0 table:0];

    v24 = [(ICStartupNavigationController *)v11 traitCollection];
    if ([v24 horizontalSizeClass] == 2 && (+[UIDevice ic_isVision](UIDevice, "ic_isVision") & 1) == 0)
    {

      if (v13 == 1)
      {
        v25 = 0;
        goto LABEL_18;
      }

      IsAppleAccountBrandingEnabled = ICInternalSettingsIsAppleAccountBrandingEnabled();
      v33 = +[NSBundle mainBundle];
      v24 = v33;
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

    v19 = [(ICStartupNavigationController *)v11 startupViewController];
    v11->_startupScreenType = 2;

LABEL_19:
    [(ICStartupNavigationController *)v11 pushViewController:v19 animated:0];
    [(ICStartupNavigationController *)v11 setModalPresentationStyle:2];
    [(ICStartupNavigationController *)v11 setNavigationBarHidden:1];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICStartupNavigationController;
  [(ICStartupNavigationController *)&v7 viewWillAppear:a3];
  v4 = [(ICStartupNavigationController *)self startupController];
  v5 = [(ICStartupNavigationController *)self startupViewController];
  [v4 checkStatusIfNecessaryWithDeviceCheckIndicator:v5];

  v6 = [(ICStartupNavigationController *)self view];
  [v6 setAccessibilityIdentifier:@"Welcome Screen"];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICStartupNavigationController;
  [(ICStartupNavigationController *)&v5 viewDidAppear:a3];
  v4 = [(ICStartupNavigationController *)self eventReporter];
  [v4 startOnboardingScreenViewEventDurationTracking];
}

- (void)continueAction
{
  v3 = [(ICStartupNavigationController *)self startupController];
  [v3 didContinueFromStartupView];

  v4 = [(ICStartupNavigationController *)self deviceListViewController];
  [(ICStartupNavigationController *)self pushViewController:v4 animated:1];
}

- (void)upgradeAction
{
  v2 = [(ICStartupNavigationController *)self startupController];
  [v2 didUpgradeFromStartupView:1];
}

- (void)noUpgradeAction
{
  v2 = [(ICStartupNavigationController *)self startupController];
  [v2 didUpgradeFromStartupView:0];
}

- (void)submitOnboardingScreenViewEvent
{
  v3 = [(ICStartupNavigationController *)self startupScreenType];
  if (v3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (v3 == 1);
  }

  v5 = [(ICStartupNavigationController *)self eventReporter];
  [v5 submitOnboardingScreenViewEventWithType:v4];
}

- (void)dismissWithCompletionBlock:(id)a3
{
  v8 = a3;
  [(ICStartupNavigationController *)self submitOnboardingScreenViewEvent];
  v4 = [(ICStartupNavigationController *)self startupController];
  [v4 didContinueFromStartupView];

  v5 = [(ICStartupNavigationController *)self dismissBlock];

  if (v5)
  {
    v6 = [(ICStartupNavigationController *)self dismissBlock];
    (v6)[2](v6, v8);

    [(ICStartupNavigationController *)self setDismissBlock:0];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"ICStartupNavigationControllerDidDismissNotification" object:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = ICStartupNavigationController;
  return [(ICStartupNavigationController *)&v6 supportedInterfaceOrientations];
}

+ (double)introductionControlsButtonWidthForView:(id)a3 viewSize:(CGSize)a4
{
  width = a4.width;
  v5 = a3;
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    v8 = fmin(width + -32.0, 360.0);
  }

  else
  {
    v9 = [v5 traitCollection];
    if ([v9 horizontalSizeClass] == 1)
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

+ (BOOL)shouldUseCompactLayoutForTraitCollection:(id)a3 viewSize:(CGSize)a4
{
  width = a4.width;
  if ([a3 horizontalSizeClass] != 1)
  {
    return 0;
  }

  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];
  v8 = width < 639.0 || v6 == 0;

  return v8;
}

- (NSArray)primaryAccountDevices
{
  v2 = [(ICStartupNavigationController *)self startupController];
  v3 = [v2 primaryAccountDevices];

  return v3;
}

- (unint64_t)getStartupMigrationType
{
  v2 = [(ICStartupNavigationController *)self startupController];
  v3 = [v2 getStartupMigrationType];

  return v3;
}

- (void)startupMigrationTypeMightHaveChanged
{
  v4 = [(ICStartupNavigationController *)self startupController];
  v3 = [(ICStartupNavigationController *)self startupViewController];
  [v4 checkStatusIfNecessaryWithDeviceCheckIndicator:v3];
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ICStartupNavigationController *)self view];
    v7 = [v3 initWithSubTrackerName:v5 view:v6];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (void)noUpgradeActionAndDismiss
{
  v3 = [(ICStartupNavigationController *)self viewControllers];
  v8 = [v3 firstObject];

  v4 = [(ICStartupNavigationController *)self deviceListViewController];

  if (v8 == v4)
  {
    v7 = [(ICStartupNavigationController *)self deviceListViewController];
    [v7 noUpgrade:self];
  }

  else
  {
    v5 = [(ICStartupNavigationController *)self startupViewController];

    v6 = v8;
    if (v8 != v5)
    {
      goto LABEL_6;
    }

    v7 = [(ICStartupNavigationController *)self startupViewController];
    [v7 continueAction:self];
  }

  v6 = v8;
LABEL_6:
}

- (UIWindow)presentingWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingWindow);

  return WeakRetained;
}

@end