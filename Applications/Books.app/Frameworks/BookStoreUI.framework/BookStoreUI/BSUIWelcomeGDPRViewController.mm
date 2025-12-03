@interface BSUIWelcomeGDPRViewController
- (BSUIWelcomeGDPRViewController)initWithCompletion:(id)completion;
- (void)_analyticsSubmitGetStartedActionEventForGDPRLink:(BOOL)link;
- (void)_getStartedPressed:(id)pressed;
- (void)_privacyLinkPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BSUIWelcomeGDPRViewController

- (BSUIWelcomeGDPRViewController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BSUIBundle();
  v6 = [v5 localizedStringForKey:@"Welcome to Apple Books" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v7 = BSUIBundle();
  v8 = [v7 localizedStringForKey:@"Find great books and audiobooks you can read or listen to anywhere value:on all your Apple devices." table:{&stru_3960F8, @"BookStoreUILocalizable"}];

  v9 = +[NSBundle mainBundle];
  bundleIdentifier = [v9 bundleIdentifier];
  v11 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:2];

  v16.receiver = self;
  v16.super_class = BSUIWelcomeGDPRViewController;
  v12 = [(BSUIWelcomeGDPRViewController *)&v16 initWithTitle:v6 detailText:v8 icon:v11 contentLayout:2];
  if (v12)
  {
    v13 = [completionCopy copy];
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

  contentView = [(BSUIWelcomeGDPRViewController *)self contentView];
  [contentView addSubview:v3];

  topAnchor = [v3 topAnchor];
  contentView2 = [(BSUIWelcomeGDPRViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[0] = v30;
  contentView3 = [(BSUIWelcomeGDPRViewController *)self contentView];
  heightAnchor = [contentView3 heightAnchor];
  heightAnchor2 = [v3 heightAnchor];
  v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v38[1] = v12;
  widthAnchor = [v3 widthAnchor];
  selfCopy = self;
  contentView4 = [(BSUIWelcomeGDPRViewController *)self contentView];
  widthAnchor2 = [contentView4 widthAnchor];
  v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
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
  buttonTray = [(BSUIWelcomeGDPRViewController *)selfCopy buttonTray];
  [buttonTray setPrivacyLinkController:v20];

  objc_opt_class();
  view = [v20 view];
  v24 = BUDynamicCast();

  [v24 addTarget:selfCopy action:"_privacyLinkPressed:" forControlEvents:0x2000];
  v25 = +[OBBoldTrayButton boldButton];
  v26 = BSUIBundle();
  v27 = [v26 localizedStringForKey:@"Get Started" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  [v25 setTitle:v27 forState:0];
  [v25 addTarget:selfCopy action:"_getStartedPressed:" forControlEvents:64];
  v28 = +[UIColor bc_welcomeButtonColor];
  [v25 setTintColor:v28];

  buttonTray2 = [(BSUIWelcomeGDPRViewController *)selfCopy buttonTray];
  [buttonTray2 addButton:v25];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: viewWillAppear", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = BSUIWelcomeGDPRViewController;
  [(BSUIWelcomeGDPRViewController *)&v10 viewWillAppear:appearCopy];
  ba_analyticsTracker = [(BSUIWelcomeGDPRViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
  {
    v7 = [(BSUIWelcomeGDPRViewController *)self ba_setupNewAnalyticsTrackerWithName:@"GetStarted"];
  }

  v8 = +[NSDate date];
  appearDate = self->_appearDate;
  self->_appearDate = v8;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: viewWillDisappear", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = BSUIWelcomeGDPRViewController;
  [(BSUIWelcomeGDPRViewController *)&v8 viewWillDisappear:disappearCopy];
  if (self->_appearDate)
  {
    ba_effectiveAnalyticsTracker = [(BSUIWelcomeGDPRViewController *)self ba_effectiveAnalyticsTracker];
    v7 = +[BAEventReporter sharedReporter];
    [v7 emitGetStartedViewEventWithTracker:ba_effectiveAnalyticsTracker startDate:self->_appearDate];
  }
}

- (void)_getStartedPressed:(id)pressed
{
  v4 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: _getStartedPressed", v7, 2u);
  }

  [(BSUIWelcomeGDPRViewController *)self _analyticsSubmitGetStartedActionEventForGDPRLink:0];
  completion = [(BSUIWelcomeGDPRViewController *)self completion];
  v6 = completion;
  if (completion)
  {
    (*(completion + 16))(completion);
  }
}

- (void)_privacyLinkPressed:(id)pressed
{
  v4 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRViewController: _privacyLinkPressed", v5, 2u);
  }

  [(BSUIWelcomeGDPRViewController *)self _analyticsSubmitGetStartedActionEventForGDPRLink:1];
}

- (void)_analyticsSubmitGetStartedActionEventForGDPRLink:(BOOL)link
{
  linkCopy = link;
  ba_effectiveAnalyticsTracker = [(BSUIWelcomeGDPRViewController *)self ba_effectiveAnalyticsTracker];
  v4 = +[BAEventReporter sharedReporter];
  v5 = v4;
  if (linkCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v4 emitGetStartedActionEventWithTracker:ba_effectiveAnalyticsTracker type:v6];
}

@end