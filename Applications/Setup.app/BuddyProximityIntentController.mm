@interface BuddyProximityIntentController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (int64_t)_activityIndicatorViewStyle;
- (void)_setupView;
- (void)_setupViewForSolarium;
- (void)_updateLayout;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyProximityIntentController

- (void)viewDidLoad
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = BuddyProximityIntentController;
  [(BuddyProximityIntentController *)&v13 viewDidLoad];
  navigationItem = [(BuddyProximityIntentController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  proximitySetupController = [(BuddyProximityIntentController *)selfCopy proximitySetupController];
  information = [(ProximitySetupController *)proximitySetupController information];
  location = [(SASProximityInformation *)information deviceClass];

  v5 = +[NSBundle mainBundle];
  v6 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_INTENT_TITLE" deviceClass:location];
  v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyProximityIntentController *)selfCopy setTitleText:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [BuddyLocalizationUtilities siblingPairDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_INTENT_DETAIL" deviceClass:location];
  v10 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyProximityIntentController *)selfCopy setDetailText:v10];

  featureFlags = [(BuddyProximityIntentController *)selfCopy featureFlags];
  LOBYTE(v9) = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (v9)
  {
    [(BuddyProximityIntentController *)selfCopy _setupViewForSolarium];
  }

  else
  {
    [(BuddyProximityIntentController *)selfCopy _setupView];
  }

  [(BuddyProximityIntentController *)selfCopy _updateLayout];
  objc_storeStrong(&location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyProximityIntentController;
  [(BuddyProximityIntentController *)&v4 viewWillAppear:appear];
  activityIndicator = [(BuddyProximityIntentController *)selfCopy activityIndicator];
  [(UIActivityIndicatorView *)activityIndicator startAnimating];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = BuddyProximityIntentController;
  [(BuddyProximityIntentController *)&v11 viewDidAppear:appear];
  if ([(BuddyProximityIntentController *)selfCopy hasIntent])
  {
    v3 = dispatch_time(0, 1000000000);
    v4 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10006D1A0;
    v9 = &unk_10032B0D0;
    v10 = selfCopy;
    dispatch_after(v3, v4, &v5);

    objc_storeStrong(&v10, 0);
  }

  else
  {
    [(BuddyProximityIntentController *)selfCopy setDidAppear:1];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  [(BuddyProximityIntentController *)selfCopy _updateLayout];
  objc_storeStrong(location, 0);
}

- (void)_setupViewForSolarium
{
  spinnerController = [(BuddyProximityIntentController *)self spinnerController];

  if (!spinnerController)
  {
    v3 = [BFFSpinnerController alloc];
    detailText = [(BuddyProximityIntentController *)self detailText];
    titleText = [(BuddyProximityIntentController *)self titleText];
    v6 = [v3 initWithSpinnerText:detailText title:titleText];
    [(BuddyProximityIntentController *)self setSpinnerController:v6];

    view = [(BuddyProximityIntentController *)self view];
    spinnerController2 = [(BuddyProximityIntentController *)self spinnerController];
    view2 = [(BFFSpinnerController *)spinnerController2 view];
    [view addSubview:view2];

    spinnerController3 = [(BuddyProximityIntentController *)self spinnerController];
    view3 = [(BFFSpinnerController *)spinnerController3 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    spinnerController4 = [(BuddyProximityIntentController *)self spinnerController];
    view4 = [(BFFSpinnerController *)spinnerController4 view];
    view5 = [(BuddyProximityIntentController *)self view];
    [view4 pinToEdges:view5];

    spinnerController5 = [(BuddyProximityIntentController *)self spinnerController];
    [(BuddyProximityIntentController *)self addChildViewController:spinnerController5];

    spinnerController6 = [(BuddyProximityIntentController *)self spinnerController];
    [(BFFSpinnerController *)spinnerController6 didMoveToParentViewController:self];
  }
}

- (void)_setupView
{
  welcomeController = [(BuddyProximityIntentController *)self welcomeController];

  if (!welcomeController)
  {
    v3 = [OBWelcomeController alloc];
    titleText = [(BuddyProximityIntentController *)self titleText];
    detailText = [(BuddyProximityIntentController *)self detailText];
    v6 = [v3 initWithTitle:titleText detailText:detailText icon:0];
    [(BuddyProximityIntentController *)self setWelcomeController:v6];

    view = [(BuddyProximityIntentController *)self view];
    welcomeController2 = [(BuddyProximityIntentController *)self welcomeController];
    view2 = [(OBWelcomeController *)welcomeController2 view];
    [view addSubview:view2];

    welcomeController3 = [(BuddyProximityIntentController *)self welcomeController];
    view3 = [(OBWelcomeController *)welcomeController3 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    welcomeController4 = [(BuddyProximityIntentController *)self welcomeController];
    view4 = [(OBWelcomeController *)welcomeController4 view];
    view5 = [(BuddyProximityIntentController *)self view];
    [view4 pinToEdges:view5];

    welcomeController5 = [(BuddyProximityIntentController *)self welcomeController];
    [(BuddyProximityIntentController *)self addChildViewController:welcomeController5];

    welcomeController6 = [(BuddyProximityIntentController *)self welcomeController];
    [(OBWelcomeController *)welcomeController6 didMoveToParentViewController:self];

    v17 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:{-[BuddyProximityIntentController _activityIndicatorViewStyle](self, "_activityIndicatorViewStyle")}];
    [(BuddyProximityIntentController *)self setActivityIndicator:v17];

    activityIndicator = [(BuddyProximityIntentController *)self activityIndicator];
    [(UIActivityIndicatorView *)activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];

    activityIndicator2 = [(BuddyProximityIntentController *)self activityIndicator];
    LODWORD(v20) = 1148846080;
    [(UIActivityIndicatorView *)activityIndicator2 setContentCompressionResistancePriority:1 forAxis:v20];

    welcomeController7 = [(BuddyProximityIntentController *)self welcomeController];
    contentView = [(OBWelcomeController *)welcomeController7 contentView];
    activityIndicator3 = [(BuddyProximityIntentController *)self activityIndicator];
    [contentView addSubview:activityIndicator3];
  }
}

- (void)_updateLayout
{
  selfCopy = self;
  location[1] = a2;
  featureFlags = [(BuddyProximityIntentController *)self featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if ((isSolariumEnabled & 1) == 0)
  {
    activityIndicator = [(BuddyProximityIntentController *)selfCopy activityIndicator];
    [(UIActivityIndicatorView *)activityIndicator removeFromSuperview];

    welcomeController = [(BuddyProximityIntentController *)selfCopy welcomeController];
    contentView = [(OBWelcomeController *)welcomeController contentView];
    activityIndicator2 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
    [contentView addSubview:activityIndicator2];

    _activityIndicatorViewStyle = [(BuddyProximityIntentController *)selfCopy _activityIndicatorViewStyle];
    activityIndicator3 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
    [(UIActivityIndicatorView *)activityIndicator3 setActivityIndicatorViewStyle:_activityIndicatorViewStyle];

    view = [(BuddyProximityIntentController *)selfCopy view];
    centerYAnchor = [view centerYAnchor];
    activityIndicator4 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
    centerYAnchor2 = [(UIActivityIndicatorView *)activityIndicator4 centerYAnchor];
    location[0] = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    LODWORD(v14) = 1132068864;
    [location[0] setPriority:v14];
    welcomeController2 = [(BuddyProximityIntentController *)selfCopy welcomeController];
    LOBYTE(centerYAnchor) = [(OBWelcomeController *)welcomeController2 isContentCenterAligned];

    if (centerYAnchor)
    {
      welcomeController3 = [(BuddyProximityIntentController *)selfCopy welcomeController];
      contentView2 = [(OBWelcomeController *)welcomeController3 contentView];
      centerXAnchor = [contentView2 centerXAnchor];
      activityIndicator5 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
      centerXAnchor2 = [(UIActivityIndicatorView *)activityIndicator5 centerXAnchor];
      v42 = [centerXAnchor constraintEqualToAnchor:?];
      v57[0] = v42;
      v57[1] = location[0];
      activityIndicator6 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
      topAnchor = [(UIActivityIndicatorView *)activityIndicator6 topAnchor];
      welcomeController4 = [(BuddyProximityIntentController *)selfCopy welcomeController];
      contentView3 = [(OBWelcomeController *)welcomeController4 contentView];
      topAnchor2 = [contentView3 topAnchor];
      v18 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v57[2] = v18;
      welcomeController5 = [(BuddyProximityIntentController *)selfCopy welcomeController];
      contentView4 = [(OBWelcomeController *)welcomeController5 contentView];
      bottomAnchor = [contentView4 bottomAnchor];
      activityIndicator7 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
      bottomAnchor2 = [(UIActivityIndicatorView *)activityIndicator7 bottomAnchor];
      v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v57[3] = v24;
      v25 = [NSArray arrayWithObjects:v57 count:4];
      [NSLayoutConstraint activateConstraints:v25];
    }

    else
    {
      welcomeController6 = [(BuddyProximityIntentController *)selfCopy welcomeController];
      contentView5 = [(OBWelcomeController *)welcomeController6 contentView];
      leadingAnchor = [contentView5 leadingAnchor];
      activityIndicator8 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
      leadingAnchor2 = [(UIActivityIndicatorView *)activityIndicator8 leadingAnchor];
      v43 = [leadingAnchor constraintEqualToAnchor:?];
      v56[0] = v43;
      v56[1] = location[0];
      activityIndicator9 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
      topAnchor3 = [(UIActivityIndicatorView *)activityIndicator9 topAnchor];
      welcomeController7 = [(BuddyProximityIntentController *)selfCopy welcomeController];
      contentView6 = [(OBWelcomeController *)welcomeController7 contentView];
      topAnchor4 = [contentView6 topAnchor];
      v28 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
      v56[2] = v28;
      welcomeController8 = [(BuddyProximityIntentController *)selfCopy welcomeController];
      contentView7 = [(OBWelcomeController *)welcomeController8 contentView];
      bottomAnchor3 = [contentView7 bottomAnchor];
      activityIndicator10 = [(BuddyProximityIntentController *)selfCopy activityIndicator];
      bottomAnchor4 = [(UIActivityIndicatorView *)activityIndicator10 bottomAnchor];
      v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v56[3] = v34;
      v35 = [NSArray arrayWithObjects:v56 count:4];
      [NSLayoutConstraint activateConstraints:v35];
    }

    objc_storeStrong(location, 0);
  }
}

- (int64_t)_activityIndicatorViewStyle
{
  welcomeController = [(BuddyProximityIntentController *)self welcomeController];
  isContentCenterAligned = [(OBWelcomeController *)welcomeController isContentCenterAligned];

  if (isContentCenterAligned)
  {
    return 100;
  }

  else
  {
    return 101;
  }
}

- (BOOL)controllerNeedsToRun
{
  proximitySetupController = [(BuddyProximityIntentController *)self proximitySetupController];
  supportsIntent = [(ProximitySetupController *)proximitySetupController supportsIntent];
  v6 = 0;
  hasConnection = 0;
  if (supportsIntent)
  {
    proximitySetupController2 = [(BuddyProximityIntentController *)self proximitySetupController];
    v6 = 1;
    hasConnection = [(ProximitySetupController *)proximitySetupController2 hasConnection];
  }

  v9 = hasConnection & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  proximitySetupController = [(BuddyProximityIntentController *)selfCopy proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10006E0B0;
  v8 = &unk_10032B0F8;
  v9 = selfCopy;
  [(ProximitySetupController *)proximitySetupController waitForIntent:&v4];

  if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end