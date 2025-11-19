@interface DSSafetyCheckWelcomeController
- (BOOL)performButtonActionForSpecifier:(id)a3;
- (CGRect)_fitFrame:(CGRect)a3 toView:(id)a4;
- (id)specifiers;
- (void)_performButtonActionForSpecifier:(id)a3;
- (void)_presentDTOBanner;
- (void)_removeDTOBanner;
- (void)dealloc;
- (void)didEnterForeground:(id)a3;
- (void)didTapLearnMoreLink:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)quickExit;
- (void)startEmergencyResetFlow;
- (void)startManageSharingFlow;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willEnterBackground:(id)a3;
@end

@implementation DSSafetyCheckWelcomeController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = DSSafetyCheckWelcomeController;
  [(DSSafetyCheckWelcomeController *)&v9 viewDidLoad];
  v3 = [(DSSafetyCheckWelcomeController *)self navigationItem];
  v4 = [UIBarButtonItem alloc];
  v5 = [NSString localizedStringForKey:@"QUICK_EXIT"];
  v6 = [v4 initWithTitle:v5 style:0 target:self action:"quickExit"];
  [v3 setRightBarButtonItem:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"willEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"didEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v5.receiver = self;
  v5.super_class = DSSafetyCheckWelcomeController;
  [(DSSafetyCheckWelcomeController *)&v5 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(DSSafetyCheckWelcomeController *)self traitCollection];
    v7 = [v6 pe_isSettingsFeatureDescriptionCellSupported];

    if (v7)
    {
      v8 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v8];
      v9 = [NSString localizedStringForKey:@"SAFETY_CHECK"];
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:-1 edit:0];

      [v10 setIdentifier:@"PLACARD"];
      v11 = objc_opt_class();
      v12 = PSCellClassKey;
      [v10 setProperty:v11 forKey:PSCellClassKey];
      v13 = [NSString localizedStringForKey:@"WELCOME_DETAIL"];
      [v10 setProperty:v13 forKey:PSTableCellSubtitleTextKey];

      [v10 setProperty:@"com.apple.graphic-icon.safety-check" forKey:PSIconUTTypeIdentifierKey];
      [v5 addObject:v10];
    }

    else
    {
      v12 = PSCellClassKey;
    }

    v14 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v14];
    v15 = [DSDeepLinkSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v15 setObject:objc_opt_class() forKeyedSubscript:v12];
    v16 = [NSValue valueWithNonretainedObject:self];
    [v15 setObject:v16 forKeyedSubscript:@"DSSafetyCheckWelcomeCellDelegateKey"];

    [v15 setIdentifier:@"EMERGENCY_RESET"];
    [v15 setButtonAction:"startEmergencyResetFlow"];
    [v5 addObject:v15];
    v17 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v17];
    v18 = [DSDeepLinkSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v18 setObject:objc_opt_class() forKeyedSubscript:v12];
    v19 = [NSValue valueWithNonretainedObject:self];
    [v18 setObject:v19 forKeyedSubscript:@"DSSafetyCheckWelcomeCellDelegateKey"];

    [v18 setIdentifier:@"MANAGE_SHARING"];
    [v18 setButtonAction:"startManageSharingFlow"];
    [v5 addObject:v18];
    v20 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)willEnterBackground:(id)a3
{
  if (!self->_obfuscationWindow)
  {
    v4 = [(DSSafetyCheckWelcomeController *)self view];
    v5 = [v4 window];
    v6 = [DSObfuscationWindow showDSObfuscationWindowForApplicationWindow:v5];
    obfuscationWindow = self->_obfuscationWindow;
    self->_obfuscationWindow = v6;

    unpresentedResourceDictionary = self->_unpresentedResourceDictionary;
    self->_unpresentedResourceDictionary = 0;
  }
}

- (void)didEnterForeground:(id)a3
{
  obfuscationWindow = self->_obfuscationWindow;
  if (obfuscationWindow)
  {
    [(UIWindow *)obfuscationWindow setHidden:1];
    v5 = self->_obfuscationWindow;
    self->_obfuscationWindow = 0;
  }
}

- (void)quickExit
{
  v2 = [(DSSafetyCheckWelcomeController *)self view];
  v3 = [v2 window];
  v7 = [v3 windowScene];

  v4 = [v7 _FBSScene];
  v5 = [[UIDestroySceneAction alloc] initWithPreferredAnimationType:1 callbackQueue:&_dispatch_main_q completion:&stru_10770];
  v6 = [NSSet setWithObject:v5];
  [v4 sendActions:v6];
}

- (void)didTapLearnMoreLink:(id)a3
{
  AnalyticsSendEventLazy();
  v4 = [NSString localizedStringForKey:@"WELCOME_LEARN_MORE_URL"];
  [DSSafetyCheck showlearnMoreForPresentingViewController:self withURL:v4];
}

- (void)startEmergencyResetFlow
{
  v3 = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];

  if (!v3)
  {
LABEL_9:
    [DSSafetyCheck startEmergencyResetWithPresentingViewController:self];
    return;
  }

  v4 = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];
  v5 = [v4 objectForKeyedSubscript:@"path"];
  v6 = [NSString stringWithFormat:@"EMERGENCY_RESET/%@", v5];

  v12 = @"path";
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  LODWORD(v5) = [DSSafetyCheck startWithPresentingViewController:self withURL:v7];

  v8 = DSLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v9)
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Can't form presentation for path %@, sending user through standard E.R. entrypoint", buf, 0xCu);
    }

    [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:0];
    goto LABEL_9;
  }

  if (v9)
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Presenting resource dictionary with path: %@", buf, 0xCu);
  }
}

- (void)startManageSharingFlow
{
  v3 = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];

  if (!v3)
  {
LABEL_9:
    [DSSafetyCheck startManageSharingWithPresentingViewController:self];
    return;
  }

  v4 = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];
  v5 = [v4 objectForKeyedSubscript:@"path"];
  v6 = [NSString stringWithFormat:@"MANAGE_SHARING/%@", v5];

  v12 = @"path";
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  LODWORD(v5) = [DSSafetyCheck startWithPresentingViewController:self withURL:v7];

  v8 = DSLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v9)
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Can't form presentation for path %@, sending user through standard entrypoint", buf, 0xCu);
    }

    [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:0];
    goto LABEL_9;
  }

  if (v9)
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Presenting for resource dictionary with path: %@", buf, 0xCu);
  }
}

- (BOOL)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(DSSafetyCheckWelcomeController *)self specifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isEqualToSpecifier:v4])
  {
    v6 = DSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Casting to DSDeepLinkSpecifier because self.specifer is kind of class", buf, 2u);
    }

    [(DSSafetyCheckWelcomeController *)self _performButtonActionForSpecifier:v5];
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DSSafetyCheckWelcomeController;
    v7 = [(DSSafetyCheckWelcomeController *)&v9 performButtonActionForSpecifier:v4];
  }

  return v7;
}

- (void)_performButtonActionForSpecifier:(id)a3
{
  v4 = [a3 inputURL];
  v5 = [v4 path];

  if ([v5 length])
  {
    v10 = @"path";
    v11 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:0];
    if (([DSSafetyCheck startWithPresentingViewController:self withURL:v6]& 1) == 0)
    {
      v7 = DSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Not presenting flow for resource dictionary %@", &v8, 0xCu);
      }

      [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:v6];
    }
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = DSSafetyCheckWelcomeController;
  [(DSSafetyCheckWelcomeController *)&v10 handleURL:v6 withCompletion:&stru_107D0];
  v8 = DSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Handling URL: %@", buf, 0xCu);
  }

  [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:0];
  if (([DSSafetyCheck startWithPresentingViewController:self withURL:v6]& 1) == 0)
  {
    v9 = DSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Not presenting flow for resource dictionary %@", buf, 0xCu);
    }

    [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:v6];
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = DSSafetyCheckWelcomeController;
  [(DSSafetyCheckWelcomeController *)&v4 viewWillLayoutSubviews];
  if (+[DSUtilities shouldShowBioRatchetFlow])
  {
    [(DSSafetyCheckWelcomeController *)self _presentDTOBanner];
  }

  else
  {
    v3 = [(DSSafetyCheckWelcomeController *)self banner];

    if (v3)
    {
      [(DSSafetyCheckWelcomeController *)self _removeDTOBanner];
    }
  }
}

- (void)_presentDTOBanner
{
  banner = self->_banner;
  if (!banner)
  {
    v4 = [DSPlatterTableView bannerWithPresentingViewController:self];
    v5 = self->_banner;
    self->_banner = v4;

    banner = self->_banner;
  }

  v6 = [(DSSafetyCheckWelcomeController *)self table];
  [v6 setTableHeaderView:banner];

  v7 = [(DSPlatterTableView *)self->_banner widthAnchor];
  v8 = [(DSSafetyCheckWelcomeController *)self table];
  v9 = [v8 widthAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(DSSafetyCheckWelcomeController *)self table];
  v12 = [v11 tableHeaderView];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(DSSafetyCheckWelcomeController *)self banner];
  [(DSSafetyCheckWelcomeController *)self _fitFrame:v21 toView:v14, v16, v18, v20];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(DSSafetyCheckWelcomeController *)self table];
  v31 = [v30 tableHeaderView];
  [v31 setFrame:{v23, v25, v27, v29}];

  v50 = [(DSSafetyCheckWelcomeController *)self table];
  [v50 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [(DSSafetyCheckWelcomeController *)self table];
  [(DSSafetyCheckWelcomeController *)self _fitFrame:v40 toView:v33, v35, v37, v39];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [(DSSafetyCheckWelcomeController *)self table];
  [v49 setFrame:{v42, v44, v46, v48}];
}

- (CGRect)_fitFrame:(CGRect)a3 toView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a4 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  if (v8 == height)
  {
    v9 = height;
  }

  else
  {
    v9 = v8;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_removeDTOBanner
{
  [(DSSafetyCheckWelcomeController *)self setBanner:0];
  v3 = [(DSSafetyCheckWelcomeController *)self table];
  [v3 setTableHeaderView:0];

  [(DSSafetyCheckWelcomeController *)self viewWillLayoutSubviews];
}

@end