@interface BSUIWelcomeGDPRViewController
- (BSUIWelcomeGDPRViewController)initWithCompletion:(id)a3;
- (void)_analyticsSubmitGetStartedActionEventForGDPRLink:(BOOL)a3;
- (void)_getStartedPressed:(id)a3;
- (void)_privacyLinkPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BSUIWelcomeGDPRViewController

- (BSUIWelcomeGDPRViewController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BSUIBundle();
  v6 = [v5 localizedStringForKey:@"Welcome to Apple Books" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v7 = BSUIBundle();
  v8 = [v7 localizedStringForKey:@"Find great books and audiobooks you can read or listen to anywhere value:on all your Apple devices." table:{&stru_3960F8, @"BookStoreUILocalizable"}];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 bundleIdentifier];
  v11 = [UIImage _applicationIconImageForBundleIdentifier:v10 format:2];

  v16.receiver = self;
  v16.super_class = BSUIWelcomeGDPRViewController;
  v12 = [(BSUIWelcomeGDPRViewController *)&v16 initWithTitle:v6 detailText:v8 icon:v11 contentLayout:2];
  if (v12)
  {
    v13 = [v4 copy];
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = BSUIWelcomeGDPRViewController;
  [(BSUIWelcomeGDPRViewController *)&v35 viewDidLoad];
  v3 = objc_alloc_init(UILabel);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor secondaryLabelColor];
  [v3 setTextColor:v4];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v3 setFont:v5];

  [v3 setTextAlignment:4];
  [v3 setNumberOfLines:0];
  v6 = BSUIBundle();
  v7 = [v6 localizedStringForKey:@"Features vary by region." value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  [v3 setText:v7];

  v8 = [(BSUIWelcomeGDPRViewController *)self contentView];
  [v8 addSubview:v3];

  v32 = [v3 topAnchor];
  v33 = [(BSUIWelcomeGDPRViewController *)self contentView];
  v31 = [v33 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v38[0] = v30;
  v9 = [(BSUIWelcomeGDPRViewController *)self contentView];
  v10 = [v9 heightAnchor];
  v11 = [v3 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v38[1] = v12;
  v13 = [v3 widthAnchor];
  v34 = self;
  v14 = [(BSUIWelcomeGDPRViewController *)self contentView];
  v15 = [v14 widthAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v38[2] = v16;
  v17 = [NSArray arrayWithObjects:v38 count:3];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = BUOnboardingAllBundleIDs();
  v19 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v18;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: viewDidLoad: bundleIdentifiers: %{public}@", buf, 0xCu);
  }

  v20 = [OBPrivacyLinkController linkWithBundleIdentifiers:v18];
  [v20 setUnderlineLinks:1];
  v21 = [UIColor colorNamed:@"BrandColor"];
  [v20 setCustomTintColor:v21];
  v22 = [(BSUIWelcomeGDPRViewController *)v34 buttonTray];
  [v22 setPrivacyLinkController:v20];

  objc_opt_class();
  v23 = [v20 view];
  v24 = BUDynamicCast();

  [v24 addTarget:v34 action:"_privacyLinkPressed:" forControlEvents:0x2000];
  v25 = +[OBBoldTrayButton boldButton];
  v26 = BSUIBundle();
  v27 = [v26 localizedStringForKey:@"Get Started" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  [v25 setTitle:v27 forState:0];
  [v25 addTarget:v34 action:"_getStartedPressed:" forControlEvents:64];
  v28 = +[UIColor bc_welcomeButtonColor];
  [v25 setTintColor:v28];

  v29 = [(BSUIWelcomeGDPRViewController *)v34 buttonTray];
  [v29 addButton:v25];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: viewWillAppear", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = BSUIWelcomeGDPRViewController;
  [(BSUIWelcomeGDPRViewController *)&v10 viewWillAppear:v3];
  v6 = [(BSUIWelcomeGDPRViewController *)self ba_analyticsTracker];

  if (!v6)
  {
    v7 = [(BSUIWelcomeGDPRViewController *)self ba_setupNewAnalyticsTrackerWithName:@"GetStarted"];
  }

  v8 = +[NSDate date];
  appearDate = self->_appearDate;
  self->_appearDate = v8;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: viewWillDisappear", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = BSUIWelcomeGDPRViewController;
  [(BSUIWelcomeGDPRViewController *)&v8 viewWillDisappear:v3];
  if (self->_appearDate)
  {
    v6 = [(BSUIWelcomeGDPRViewController *)self ba_effectiveAnalyticsTracker];
    v7 = +[BAEventReporter sharedReporter];
    [v7 emitGetStartedViewEventWithTracker:v6 startDate:self->_appearDate];
  }
}

- (void)_getStartedPressed:(id)a3
{
  v4 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: _getStartedPressed", v7, 2u);
  }

  [(BSUIWelcomeGDPRViewController *)self _analyticsSubmitGetStartedActionEventForGDPRLink:0];
  v5 = [(BSUIWelcomeGDPRViewController *)self completion];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }
}

- (void)_privacyLinkPressed:(id)a3
{
  v4 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: _privacyLinkPressed", v5, 2u);
  }

  [(BSUIWelcomeGDPRViewController *)self _analyticsSubmitGetStartedActionEventForGDPRLink:1];
}

- (void)_analyticsSubmitGetStartedActionEventForGDPRLink:(BOOL)a3
{
  v3 = a3;
  v7 = [(BSUIWelcomeGDPRViewController *)self ba_effectiveAnalyticsTracker];
  v4 = +[BAEventReporter sharedReporter];
  v5 = v4;
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v4 emitGetStartedActionEventWithTracker:v7 type:v6];
}

@end