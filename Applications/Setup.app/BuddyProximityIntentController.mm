@interface BuddyProximityIntentController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (int64_t)_activityIndicatorViewStyle;
- (void)_setupView;
- (void)_setupViewForSolarium;
- (void)_updateLayout;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyProximityIntentController

- (void)viewDidLoad
{
  v15 = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = BuddyProximityIntentController;
  [(BuddyProximityIntentController *)&v13 viewDidLoad];
  v2 = [(BuddyProximityIntentController *)v15 navigationItem];
  [v2 setHidesBackButton:1 animated:0];

  v3 = [(BuddyProximityIntentController *)v15 proximitySetupController];
  v4 = [(ProximitySetupController *)v3 information];
  location = [(SASProximityInformation *)v4 deviceClass];

  v5 = +[NSBundle mainBundle];
  v6 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_INTENT_TITLE" deviceClass:location];
  v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyProximityIntentController *)v15 setTitleText:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [BuddyLocalizationUtilities siblingPairDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_INTENT_DETAIL" deviceClass:location];
  v10 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyProximityIntentController *)v15 setDetailText:v10];

  v11 = [(BuddyProximityIntentController *)v15 featureFlags];
  LOBYTE(v9) = [(BuddyFeatureFlags *)v11 isSolariumEnabled];

  if (v9)
  {
    [(BuddyProximityIntentController *)v15 _setupViewForSolarium];
  }

  else
  {
    [(BuddyProximityIntentController *)v15 _setupView];
  }

  [(BuddyProximityIntentController *)v15 _updateLayout];
  objc_storeStrong(&location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyProximityIntentController;
  [(BuddyProximityIntentController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyProximityIntentController *)v7 activityIndicator];
  [(UIActivityIndicatorView *)v3 startAnimating];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = BuddyProximityIntentController;
  [(BuddyProximityIntentController *)&v11 viewDidAppear:a3];
  if ([(BuddyProximityIntentController *)v14 hasIntent])
  {
    v3 = dispatch_time(0, 1000000000);
    v4 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10006D1A0;
    v9 = &unk_10032B0D0;
    v10 = v14;
    dispatch_after(v3, v4, &v5);

    objc_storeStrong(&v10, 0);
  }

  else
  {
    [(BuddyProximityIntentController *)v14 setDidAppear:1];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyProximityIntentController *)v4 _updateLayout];
  objc_storeStrong(location, 0);
}

- (void)_setupViewForSolarium
{
  v2 = [(BuddyProximityIntentController *)self spinnerController];

  if (!v2)
  {
    v3 = [BFFSpinnerController alloc];
    v4 = [(BuddyProximityIntentController *)self detailText];
    v5 = [(BuddyProximityIntentController *)self titleText];
    v6 = [v3 initWithSpinnerText:v4 title:v5];
    [(BuddyProximityIntentController *)self setSpinnerController:v6];

    v7 = [(BuddyProximityIntentController *)self view];
    v8 = [(BuddyProximityIntentController *)self spinnerController];
    v9 = [(BFFSpinnerController *)v8 view];
    [v7 addSubview:v9];

    v10 = [(BuddyProximityIntentController *)self spinnerController];
    v11 = [(BFFSpinnerController *)v10 view];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(BuddyProximityIntentController *)self spinnerController];
    v13 = [(BFFSpinnerController *)v12 view];
    v14 = [(BuddyProximityIntentController *)self view];
    [v13 pinToEdges:v14];

    v15 = [(BuddyProximityIntentController *)self spinnerController];
    [(BuddyProximityIntentController *)self addChildViewController:v15];

    v16 = [(BuddyProximityIntentController *)self spinnerController];
    [(BFFSpinnerController *)v16 didMoveToParentViewController:self];
  }
}

- (void)_setupView
{
  v2 = [(BuddyProximityIntentController *)self welcomeController];

  if (!v2)
  {
    v3 = [OBWelcomeController alloc];
    v4 = [(BuddyProximityIntentController *)self titleText];
    v5 = [(BuddyProximityIntentController *)self detailText];
    v6 = [v3 initWithTitle:v4 detailText:v5 icon:0];
    [(BuddyProximityIntentController *)self setWelcomeController:v6];

    v7 = [(BuddyProximityIntentController *)self view];
    v8 = [(BuddyProximityIntentController *)self welcomeController];
    v9 = [(OBWelcomeController *)v8 view];
    [v7 addSubview:v9];

    v10 = [(BuddyProximityIntentController *)self welcomeController];
    v11 = [(OBWelcomeController *)v10 view];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(BuddyProximityIntentController *)self welcomeController];
    v13 = [(OBWelcomeController *)v12 view];
    v14 = [(BuddyProximityIntentController *)self view];
    [v13 pinToEdges:v14];

    v15 = [(BuddyProximityIntentController *)self welcomeController];
    [(BuddyProximityIntentController *)self addChildViewController:v15];

    v16 = [(BuddyProximityIntentController *)self welcomeController];
    [(OBWelcomeController *)v16 didMoveToParentViewController:self];

    v17 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:{-[BuddyProximityIntentController _activityIndicatorViewStyle](self, "_activityIndicatorViewStyle")}];
    [(BuddyProximityIntentController *)self setActivityIndicator:v17];

    v18 = [(BuddyProximityIntentController *)self activityIndicator];
    [(UIActivityIndicatorView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(BuddyProximityIntentController *)self activityIndicator];
    LODWORD(v20) = 1148846080;
    [(UIActivityIndicatorView *)v19 setContentCompressionResistancePriority:1 forAxis:v20];

    v21 = [(BuddyProximityIntentController *)self welcomeController];
    v22 = [(OBWelcomeController *)v21 contentView];
    v23 = [(BuddyProximityIntentController *)self activityIndicator];
    [v22 addSubview:v23];
  }
}

- (void)_updateLayout
{
  v55 = self;
  location[1] = a2;
  v2 = [(BuddyProximityIntentController *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)v2 isSolariumEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = [(BuddyProximityIntentController *)v55 activityIndicator];
    [(UIActivityIndicatorView *)v4 removeFromSuperview];

    v5 = [(BuddyProximityIntentController *)v55 welcomeController];
    v6 = [(OBWelcomeController *)v5 contentView];
    v7 = [(BuddyProximityIntentController *)v55 activityIndicator];
    [v6 addSubview:v7];

    v8 = [(BuddyProximityIntentController *)v55 _activityIndicatorViewStyle];
    v9 = [(BuddyProximityIntentController *)v55 activityIndicator];
    [(UIActivityIndicatorView *)v9 setActivityIndicatorViewStyle:v8];

    v10 = [(BuddyProximityIntentController *)v55 view];
    v11 = [v10 centerYAnchor];
    v12 = [(BuddyProximityIntentController *)v55 activityIndicator];
    v13 = [(UIActivityIndicatorView *)v12 centerYAnchor];
    location[0] = [v11 constraintEqualToAnchor:v13];

    LODWORD(v14) = 1132068864;
    [location[0] setPriority:v14];
    v15 = [(BuddyProximityIntentController *)v55 welcomeController];
    LOBYTE(v11) = [(OBWelcomeController *)v15 isContentCenterAligned];

    if (v11)
    {
      v52 = [(BuddyProximityIntentController *)v55 welcomeController];
      v50 = [(OBWelcomeController *)v52 contentView];
      v46 = [v50 centerXAnchor];
      v48 = [(BuddyProximityIntentController *)v55 activityIndicator];
      v44 = [(UIActivityIndicatorView *)v48 centerXAnchor];
      v42 = [v46 constraintEqualToAnchor:?];
      v57[0] = v42;
      v57[1] = location[0];
      v40 = [(BuddyProximityIntentController *)v55 activityIndicator];
      v36 = [(UIActivityIndicatorView *)v40 topAnchor];
      v38 = [(BuddyProximityIntentController *)v55 welcomeController];
      v16 = [(OBWelcomeController *)v38 contentView];
      v17 = [v16 topAnchor];
      v18 = [v36 constraintGreaterThanOrEqualToAnchor:v17];
      v57[2] = v18;
      v19 = [(BuddyProximityIntentController *)v55 welcomeController];
      v20 = [(OBWelcomeController *)v19 contentView];
      v21 = [v20 bottomAnchor];
      v22 = [(BuddyProximityIntentController *)v55 activityIndicator];
      v23 = [(UIActivityIndicatorView *)v22 bottomAnchor];
      v24 = [v21 constraintEqualToAnchor:v23];
      v57[3] = v24;
      v25 = [NSArray arrayWithObjects:v57 count:4];
      [NSLayoutConstraint activateConstraints:v25];
    }

    else
    {
      v53 = [(BuddyProximityIntentController *)v55 welcomeController];
      v51 = [(OBWelcomeController *)v53 contentView];
      v47 = [v51 leadingAnchor];
      v49 = [(BuddyProximityIntentController *)v55 activityIndicator];
      v45 = [(UIActivityIndicatorView *)v49 leadingAnchor];
      v43 = [v47 constraintEqualToAnchor:?];
      v56[0] = v43;
      v56[1] = location[0];
      v41 = [(BuddyProximityIntentController *)v55 activityIndicator];
      v37 = [(UIActivityIndicatorView *)v41 topAnchor];
      v39 = [(BuddyProximityIntentController *)v55 welcomeController];
      v26 = [(OBWelcomeController *)v39 contentView];
      v27 = [v26 topAnchor];
      v28 = [v37 constraintGreaterThanOrEqualToAnchor:v27];
      v56[2] = v28;
      v29 = [(BuddyProximityIntentController *)v55 welcomeController];
      v30 = [(OBWelcomeController *)v29 contentView];
      v31 = [v30 bottomAnchor];
      v32 = [(BuddyProximityIntentController *)v55 activityIndicator];
      v33 = [(UIActivityIndicatorView *)v32 bottomAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];
      v56[3] = v34;
      v35 = [NSArray arrayWithObjects:v56 count:4];
      [NSLayoutConstraint activateConstraints:v35];
    }

    objc_storeStrong(location, 0);
  }
}

- (int64_t)_activityIndicatorViewStyle
{
  v2 = [(BuddyProximityIntentController *)self welcomeController];
  v3 = [(OBWelcomeController *)v2 isContentCenterAligned];

  if (v3)
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
  v2 = [(BuddyProximityIntentController *)self proximitySetupController];
  v3 = [(ProximitySetupController *)v2 supportsIntent];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyProximityIntentController *)self proximitySetupController];
    v6 = 1;
    v4 = [(ProximitySetupController *)v7 hasConnection];
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityIntentController *)v11 proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10006E0B0;
  v8 = &unk_10032B0F8;
  v9 = v11;
  [(ProximitySetupController *)v3 waitForIntent:&v4];

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