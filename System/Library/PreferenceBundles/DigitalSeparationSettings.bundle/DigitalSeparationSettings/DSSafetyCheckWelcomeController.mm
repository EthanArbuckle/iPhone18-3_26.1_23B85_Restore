@interface DSSafetyCheckWelcomeController
- (BOOL)performButtonActionForSpecifier:(id)specifier;
- (CGRect)_fitFrame:(CGRect)frame toView:(id)view;
- (id)specifiers;
- (void)_performButtonActionForSpecifier:(id)specifier;
- (void)_presentDTOBanner;
- (void)_removeDTOBanner;
- (void)dealloc;
- (void)didEnterForeground:(id)foreground;
- (void)didTapLearnMoreLink:(id)link;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)quickExit;
- (void)startEmergencyResetFlow;
- (void)startManageSharingFlow;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willEnterBackground:(id)background;
@end

@implementation DSSafetyCheckWelcomeController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = DSSafetyCheckWelcomeController;
  [(DSSafetyCheckWelcomeController *)&v9 viewDidLoad];
  navigationItem = [(DSSafetyCheckWelcomeController *)self navigationItem];
  v4 = [UIBarButtonItem alloc];
  v5 = [NSString localizedStringForKey:@"QUICK_EXIT"];
  v6 = [v4 initWithTitle:v5 style:0 target:self action:"quickExit"];
  [navigationItem setRightBarButtonItem:v6];

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
    traitCollection = [(DSSafetyCheckWelcomeController *)self traitCollection];
    pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

    if (pe_isSettingsFeatureDescriptionCellSupported)
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

- (void)willEnterBackground:(id)background
{
  if (!self->_obfuscationWindow)
  {
    view = [(DSSafetyCheckWelcomeController *)self view];
    window = [view window];
    v6 = [DSObfuscationWindow showDSObfuscationWindowForApplicationWindow:window];
    obfuscationWindow = self->_obfuscationWindow;
    self->_obfuscationWindow = v6;

    unpresentedResourceDictionary = self->_unpresentedResourceDictionary;
    self->_unpresentedResourceDictionary = 0;
  }
}

- (void)didEnterForeground:(id)foreground
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
  view = [(DSSafetyCheckWelcomeController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  _FBSScene = [windowScene _FBSScene];
  v5 = [[UIDestroySceneAction alloc] initWithPreferredAnimationType:1 callbackQueue:&_dispatch_main_q completion:&stru_10770];
  v6 = [NSSet setWithObject:v5];
  [_FBSScene sendActions:v6];
}

- (void)didTapLearnMoreLink:(id)link
{
  AnalyticsSendEventLazy();
  v4 = [NSString localizedStringForKey:@"WELCOME_LEARN_MORE_URL"];
  [DSSafetyCheck showlearnMoreForPresentingViewController:self withURL:v4];
}

- (void)startEmergencyResetFlow
{
  unpresentedResourceDictionary = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];

  if (!unpresentedResourceDictionary)
  {
LABEL_9:
    [DSSafetyCheck startEmergencyResetWithPresentingViewController:self];
    return;
  }

  unpresentedResourceDictionary2 = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];
  v5 = [unpresentedResourceDictionary2 objectForKeyedSubscript:@"path"];
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
  unpresentedResourceDictionary = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];

  if (!unpresentedResourceDictionary)
  {
LABEL_9:
    [DSSafetyCheck startManageSharingWithPresentingViewController:self];
    return;
  }

  unpresentedResourceDictionary2 = [(DSSafetyCheckWelcomeController *)self unpresentedResourceDictionary];
  v5 = [unpresentedResourceDictionary2 objectForKeyedSubscript:@"path"];
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

- (BOOL)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  specifier = [(DSSafetyCheckWelcomeController *)self specifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [specifier isEqualToSpecifier:specifierCopy])
  {
    v6 = DSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Casting to DSDeepLinkSpecifier because self.specifer is kind of class", buf, 2u);
    }

    [(DSSafetyCheckWelcomeController *)self _performButtonActionForSpecifier:specifier];
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DSSafetyCheckWelcomeController;
    v7 = [(DSSafetyCheckWelcomeController *)&v9 performButtonActionForSpecifier:specifierCopy];
  }

  return v7;
}

- (void)_performButtonActionForSpecifier:(id)specifier
{
  inputURL = [specifier inputURL];
  path = [inputURL path];

  if ([path length])
  {
    v10 = @"path";
    v11 = path;
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

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v10.receiver = self;
  v10.super_class = DSSafetyCheckWelcomeController;
  [(DSSafetyCheckWelcomeController *)&v10 handleURL:lCopy withCompletion:&stru_107D0];
  v8 = DSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = lCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Handling URL: %@", buf, 0xCu);
  }

  [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:0];
  if (([DSSafetyCheck startWithPresentingViewController:self withURL:lCopy]& 1) == 0)
  {
    v9 = DSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = lCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Not presenting flow for resource dictionary %@", buf, 0xCu);
    }

    [(DSSafetyCheckWelcomeController *)self setUnpresentedResourceDictionary:lCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
    banner = [(DSSafetyCheckWelcomeController *)self banner];

    if (banner)
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

  table = [(DSSafetyCheckWelcomeController *)self table];
  [table setTableHeaderView:banner];

  widthAnchor = [(DSPlatterTableView *)self->_banner widthAnchor];
  table2 = [(DSSafetyCheckWelcomeController *)self table];
  widthAnchor2 = [table2 widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v10 setActive:1];

  table3 = [(DSSafetyCheckWelcomeController *)self table];
  tableHeaderView = [table3 tableHeaderView];
  [tableHeaderView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  banner = [(DSSafetyCheckWelcomeController *)self banner];
  [(DSSafetyCheckWelcomeController *)self _fitFrame:banner toView:v14, v16, v18, v20];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  table4 = [(DSSafetyCheckWelcomeController *)self table];
  tableHeaderView2 = [table4 tableHeaderView];
  [tableHeaderView2 setFrame:{v23, v25, v27, v29}];

  table5 = [(DSSafetyCheckWelcomeController *)self table];
  [table5 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  table6 = [(DSSafetyCheckWelcomeController *)self table];
  [(DSSafetyCheckWelcomeController *)self _fitFrame:table6 toView:v33, v35, v37, v39];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  table7 = [(DSSafetyCheckWelcomeController *)self table];
  [table7 setFrame:{v42, v44, v46, v48}];
}

- (CGRect)_fitFrame:(CGRect)frame toView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [view systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
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
  table = [(DSSafetyCheckWelcomeController *)self table];
  [table setTableHeaderView:0];

  [(DSSafetyCheckWelcomeController *)self viewWillLayoutSubviews];
}

@end