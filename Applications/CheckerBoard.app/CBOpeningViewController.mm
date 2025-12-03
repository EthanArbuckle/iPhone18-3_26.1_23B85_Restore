@interface CBOpeningViewController
+ (id)_welcomeImageForSymbol:(id)symbol;
+ (id)openingViewControllerForBootIntent;
- (void)_setupLanguageButton;
- (void)_setupOnboardingButtons;
- (void)_setupVersionFooter;
- (void)dealloc;
- (void)didTappedExitButton;
- (void)didTappedLanguageSelectorButton;
- (void)didTappedStartDiagnosticsButton;
- (void)viewDidLoad;
@end

@implementation CBOpeningViewController

+ (id)openingViewControllerForBootIntent
{
  v3 = +[CBBootIntentManager sharedInstance];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"DIAGNOSTICS_DESCRIPTION" value:&stru_10007EAB0 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"DIAGNOSTICS" value:&stru_10007EAB0 table:0];

  if ([v3 currentBootIntentReason] == 1)
  {
    v8 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v8 userInterfaceIdiom];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"SELF_SERVICE_REPAIR" value:&stru_10007EAB0 table:0];

    v12 = @"SELF_SERVICE_REPAIR_DESCRIPTION_IPHONE";
    if (userInterfaceIdiom == 1)
    {
      v12 = @"SELF_SERVICE_REPAIR_DESCRIPTION_IPAD";
    }

    v13 = v12;
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:v13 value:&stru_10007EAB0 table:0];

    v16 = [self _welcomeImageForSymbol:@"screwdriver.fill"];
    if (v16)
    {
      v17 = v16;
      v18 = [[CBOpeningViewController alloc] initWithTitle:v11 detailText:v15 icon:v16];

      goto LABEL_9;
    }

    v7 = v11;
    v5 = v15;
  }

  else
  {
    v11 = v7;
    v15 = v5;
  }

  v18 = [[CBOpeningViewController alloc] initWithTitle:v7 detailText:v5 symbolName:@"apple.diagnostics"];
LABEL_9:

  return v18;
}

+ (id)_welcomeImageForSymbol:(id)symbol
{
  symbolCopy = symbol;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  v6 = [[IFSymbol alloc] initWithSymbolName:symbolCopy bundleURL:0];
  v7 = objc_opt_new();
  v8 = [[IFColor alloc] initWithSystemColor:11];
  v17 = v8;
  v9 = [NSArray arrayWithObjects:&v17 count:1];
  [v7 setSymbolColors:v9];

  v10 = [[IFColor alloc] initWithSystemColor:7];
  v16 = v10;
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  [v7 setEnclosureColors:v11];

  [v7 setRenderingMode:3];
  v12 = 85.0;
  if (userInterfaceIdiom == 1)
  {
    v12 = 60.0;
  }

  [v7 setSize:{v12, v12}];
  v13 = [v6 imageForGraphicSymbolDescriptor:v7];
  v14 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v13 CGImage]);

  return v14;
}

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Welcome Screen pane loaded", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CBOpeningViewController;
  [(CBOpeningViewController *)&v4 viewDidLoad];
  [(CBOpeningViewController *)self setModalPresentationStyle:2];
  [(CBOpeningViewController *)self _setupVersionFooter];
  [(CBOpeningViewController *)self _setupOnboardingButtons];
  [(CBOpeningViewController *)self setShowingDeviceInformation:0];
  [(CBOpeningViewController *)self setupInfoButton];
  [(CBOpeningViewController *)self _setupLanguageButton];
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called in Opening View Controller", buf, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CBOpeningViewController;
  [(CBOpeningViewController *)&v5 dealloc];
}

- (void)_setupVersionFooter
{
  v10 = +[UIDevice currentDevice];
  v3 = MGCopyAnswer();
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OS_VERSION" value:&stru_10007EAB0 table:0];
  systemName = [v10 systemName];
  systemVersion = [v10 systemVersion];
  v8 = [NSString stringWithFormat:v5, systemName, systemVersion, v3];

  buttonTray = [(CBOpeningViewController *)self buttonTray];
  [buttonTray setCaptionText:v8 style:1];
}

- (void)_setupOnboardingButtons
{
  v3 = +[NSBundle mainBundle];
  v16 = [v3 localizedStringForKey:@"START_DIAGNOSTICS" value:&stru_10007EAB0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"EXIT_DIAGNOSTICS" value:&stru_10007EAB0 table:0];

  v6 = +[CBBootIntentManager sharedInstance];
  currentBootIntentReason = [v6 currentBootIntentReason];

  if (currentBootIntentReason == 1)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"EXIT_SELF_SERVICE_REPAIR" value:&stru_10007EAB0 table:0];

    v5 = v9;
  }

  v10 = +[OBBoldTrayButton boldButton];
  [v10 setTitle:v16 forState:0];
  [v10 addTarget:self action:"didTappedStartDiagnosticsButton" forControlEvents:64];
  buttonTray = [(CBOpeningViewController *)self buttonTray];
  [buttonTray addButton:v10];

  v12 = +[OBLinkTrayButton linkButton];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:v5 value:&stru_10007EAB0 table:0];
  [v12 setTitle:v14 forState:0];

  [v12 addTarget:self action:"didTappedExitButton" forControlEvents:64];
  buttonTray2 = [(CBOpeningViewController *)self buttonTray];
  [buttonTray2 addButton:v12];
}

- (void)didTappedStartDiagnosticsButton
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Start Diagnostics] button tapped", v6, 2u);
  }

  v4 = [[CBNetworkViewController alloc] initWithSetupPresentationTheme:1];
  navigationController = [(CBOpeningViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)didTappedExitButton
{
  v2 = +[CBAlertManager sharedInstance];
  [v2 showExitConfirmationWithCompletion:0 response:&stru_10007D8C8];
}

- (void)_setupLanguageButton
{
  v6 = [UIImage imageNamed:@"LanguageGlyph"];
  v3 = [[UIBarButtonItem alloc] initWithImage:v6 style:0 target:self action:"didTappedLanguageSelectorButton"];
  v4 = +[UIColor systemBlueColor];
  [v3 setTintColor:v4];

  navigationItem = [(CBOpeningViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];
}

- (void)didTappedLanguageSelectorButton
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Language Selector] button tapped", v7, 2u);
  }

  v4 = objc_alloc_init(CBLanguageSelectorViewController);
  v5 = +[CBLocationController sharedLocationController];
  languageComposite = [v5 languageComposite];
  [(CBLanguageSelectorViewController *)v4 setLanguageComposite:languageComposite];

  [(CBOpeningViewController *)self presentViewController:v4 animated:1 completion:0];
}

@end