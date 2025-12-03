@interface MSDViewServiceRootViewController
- (MSDViewServiceRootViewController)initWithScene:(id)scene;
- (void)doCancelInstall;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operationFailed:(id)failed;
- (void)presentConfirmationAlert;
- (void)quit;
- (void)respondToGesture:(id)gesture;
- (void)respondToShowErrorGesture:(id)gesture;
- (void)restartTimerWithTimeInterval:(double)interval;
- (void)showErrorTimeout:(id)timeout;
- (void)timeout:(id)timeout;
- (void)updateErrorState;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation MSDViewServiceRootViewController

- (MSDViewServiceRootViewController)initWithScene:(id)scene
{
  sceneCopy = scene;
  v5 = sub_1000015E4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[MSDViewServiceRootViewController initWithScene:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s called", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = MSDViewServiceRootViewController;
  v6 = [(MSDViewServiceRootViewController *)&v14 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"IN_PROGRESS" value:&stru_10000C608 table:0];
    displayString = v6->_displayString;
    v6->_displayString = v8;

    v10 = sub_1000015E4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6->_displayString;
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Display string: %@", buf, 0xCu);
    }

    [(MSDViewServiceRootViewController *)v6 setObserverAdded:0];
    configurationContext = [sceneCopy configurationContext];
    [(MSDViewServiceRootViewController *)v6 setConfigurationContext:configurationContext];

    [(MSDViewServiceRootViewController *)v6 setScene:sceneCopy];
  }

  return v6;
}

- (void)loadView
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v223 = "[MSDViewServiceRootViewController loadView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called", buf, 0xCu);
  }

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
  v14 = +[UIColor clearColor];
  [v13 setBackgroundColor:v14];

  [v13 setOpaque:0];
  [(MSDViewServiceRootViewController *)self setView:v13];
  v15 = [UIBlurEffect effectWithStyle:2];
  v16 = [[UIVisualEffectView alloc] initWithEffect:v15];
  view = [(MSDViewServiceRootViewController *)self view];
  [view bounds];
  [v16 setFrame:?];

  [v16 setAutoresizingMask:18];
  v219 = v15;
  v217 = [UIVibrancyEffect effectForBlurEffect:v15];
  v18 = [[UIVisualEffectView alloc] initWithEffect:v217];
  [v13 bounds];
  [v18 setFrame:?];
  contentView = [v16 contentView];
  v216 = v18;
  [contentView addSubview:v18];

  view2 = [(MSDViewServiceRootViewController *)self view];
  v218 = v16;
  [view2 insertSubview:v16 atIndex:0];

  configurationContext = [(MSDViewServiceRootViewController *)self configurationContext];
  userInfo = [configurationContext userInfo];

  v23 = +[NSBundle mainBundle];
  v24 = [userInfo objectForKeyedSubscript:@"DisplayString"];
  v25 = [v23 localizedStringForKey:v24 value:&stru_10000C608 table:0];
  [(MSDViewServiceRootViewController *)self setDisplayString:v25];

  v215 = userInfo;
  v214 = [userInfo objectForKeyedSubscript:@"CancelButton"];
  bOOLValue = [v214 BOOLValue];
  v27 = +[MSDViewServiceModel sharedInstance];
  [v27 setShowCancelButton:bOOLValue];

  v28 = sub_1000015E4();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    displayString = [(MSDViewServiceRootViewController *)self displayString];
    *buf = 138543362;
    v223 = displayString;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "StoreDemoViewService DisplayString = %{public}@", buf, 0xCu);
  }

  v30 = objc_alloc_init(UILabel);
  [(MSDViewServiceRootViewController *)self setMainLabel:v30];

  v31 = objc_alloc_init(NSMutableParagraphStyle);
  v32 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v32 userInterfaceIdiom];

  v34 = 25.0;
  if (userInterfaceIdiom == 1)
  {
    v34 = 40.0;
    v35 = 40.0;
  }

  else
  {
    v35 = 30.0;
  }

  if (userInterfaceIdiom == 1)
  {
    v36 = 50.0;
  }

  else
  {
    v36 = 30.0;
  }

  if (userInterfaceIdiom == 1)
  {
    v37 = 15.0;
  }

  else
  {
    v37 = 5.0;
  }

  v38 = [UIFont fontWithName:@"HelveticaNeue-Thin" size:v34];
  mainLabel = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel setFont:v38];

  [v31 setMinimumLineHeight:v35];
  [v31 setMaximumLineHeight:v36];
  [v31 setLineSpacing:v37];

  mainLabel2 = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  mainLabel3 = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel3 setNumberOfLines:0];

  mainLabel4 = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel4 setAdjustsFontSizeToFitWidth:1];

  v43 = +[UIColor clearColor];
  mainLabel5 = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel5 setBackgroundColor:v43];

  v45 = +[UIColor whiteColor];
  mainLabel6 = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel6 setTextColor:v45];

  [v31 setAlignment:1];
  v220 = NSParagraphStyleAttributeName;
  v221 = v31;
  v212 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
  v47 = [NSAttributedString alloc];
  displayString2 = [(MSDViewServiceRootViewController *)self displayString];
  v49 = [v47 initWithString:displayString2 attributes:v212];
  mainLabel7 = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel7 setAttributedText:v49];

  mainLabel8 = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel8 sizeToFit];

  view3 = [(MSDViewServiceRootViewController *)self view];
  mainLabel9 = [(MSDViewServiceRootViewController *)self mainLabel];
  [view3 addSubview:mainLabel9];

  v54 = objc_alloc_init(UIButton);
  [(MSDViewServiceRootViewController *)self setCancelButton:v54];

  cancelButton = [(MSDViewServiceRootViewController *)self cancelButton];
  [cancelButton setHidden:1];

  cancelButton2 = [(MSDViewServiceRootViewController *)self cancelButton];
  [cancelButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  cancelButton3 = [(MSDViewServiceRootViewController *)self cancelButton];
  v58 = +[NSBundle mainBundle];
  v59 = [v58 localizedStringForKey:@"STOP_INSTALL" value:&stru_10000C608 table:0];
  [cancelButton3 setTitle:v59 forState:0];

  cancelButton4 = [(MSDViewServiceRootViewController *)self cancelButton];
  [cancelButton4 sizeToFit];

  cancelButton5 = [(MSDViewServiceRootViewController *)self cancelButton];
  [cancelButton5 addTarget:self action:"presentConfirmationAlert" forControlEvents:64];

  view4 = [(MSDViewServiceRootViewController *)self view];
  cancelButton6 = [(MSDViewServiceRootViewController *)self cancelButton];
  [view4 addSubview:cancelButton6];

  v64 = objc_alloc_init(UILabel);
  [(MSDViewServiceRootViewController *)self setStatusLabel:v64];

  statusLabel = [(MSDViewServiceRootViewController *)self statusLabel];
  [statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v66 = +[NSBundle mainBundle];
  v67 = [v66 localizedStringForKey:@"ITEM_FAILED" value:&stru_10000C608 table:0];
  statusLabel2 = [(MSDViewServiceRootViewController *)self statusLabel];
  [statusLabel2 setText:v67];

  statusLabel3 = [(MSDViewServiceRootViewController *)self statusLabel];
  [statusLabel3 setLineBreakMode:0];

  statusLabel4 = [(MSDViewServiceRootViewController *)self statusLabel];
  [statusLabel4 setNumberOfLines:0];

  statusLabel5 = [(MSDViewServiceRootViewController *)self statusLabel];
  v72 = +[UIColor whiteColor];
  [statusLabel5 setTextColor:v72];

  statusLabel6 = [(MSDViewServiceRootViewController *)self statusLabel];
  v74 = [UIFont systemFontOfSize:14.0];
  [statusLabel6 setFont:v74];

  statusLabel7 = [(MSDViewServiceRootViewController *)self statusLabel];
  [statusLabel7 setTextAlignment:2];

  statusLabel8 = [(MSDViewServiceRootViewController *)self statusLabel];
  [statusLabel8 sizeToFit];

  view5 = [(MSDViewServiceRootViewController *)self view];
  statusLabel9 = [(MSDViewServiceRootViewController *)self statusLabel];
  [view5 addSubview:statusLabel9];

  v79 = objc_alloc_init(UITextView);
  [(MSDViewServiceRootViewController *)self setErrorView:v79];

  errorView = [(MSDViewServiceRootViewController *)self errorView];
  [errorView setHidden:1];

  errorView2 = [(MSDViewServiceRootViewController *)self errorView];
  [errorView2 setUserInteractionEnabled:0];

  errorView3 = [(MSDViewServiceRootViewController *)self errorView];
  [errorView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  errorView4 = [(MSDViewServiceRootViewController *)self errorView];
  v84 = +[UIColor whiteColor];
  [errorView4 setTextColor:v84];

  errorView5 = [(MSDViewServiceRootViewController *)self errorView];
  v86 = [UIFont systemFontOfSize:14.0];
  [errorView5 setFont:v86];

  v87 = +[UIColor clearColor];
  errorView6 = [(MSDViewServiceRootViewController *)self errorView];
  [errorView6 setBackgroundColor:v87];

  errorView7 = [(MSDViewServiceRootViewController *)self errorView];
  [errorView7 setTextAlignment:0];

  view6 = [(MSDViewServiceRootViewController *)self view];
  errorView8 = [(MSDViewServiceRootViewController *)self errorView];
  [view6 addSubview:errorView8];

  v92 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  [(MSDViewServiceRootViewController *)self setProgressBar:v92];

  progressBar = [(MSDViewServiceRootViewController *)self progressBar];
  [progressBar setTranslatesAutoresizingMaskIntoConstraints:0];

  progressBar2 = [(MSDViewServiceRootViewController *)self progressBar];
  [progressBar2 setHidden:1];

  v95 = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
  progressBar3 = [(MSDViewServiceRootViewController *)self progressBar];
  [progressBar3 setTrackTintColor:v95];

  v97 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
  progressBar4 = [(MSDViewServiceRootViewController *)self progressBar];
  [progressBar4 setTintColor:v97];

  view7 = [(MSDViewServiceRootViewController *)self view];
  progressBar5 = [(MSDViewServiceRootViewController *)self progressBar];
  [view7 addSubview:progressBar5];

  view8 = [(MSDViewServiceRootViewController *)self view];
  mainLabel10 = [(MSDViewServiceRootViewController *)self mainLabel];
  view9 = [(MSDViewServiceRootViewController *)self view];
  v104 = [NSLayoutConstraint constraintWithItem:mainLabel10 attribute:9 relatedBy:0 toItem:view9 attribute:9 multiplier:1.0 constant:0.0];
  [view8 addConstraint:v104];

  view10 = [(MSDViewServiceRootViewController *)self view];
  mainLabel11 = [(MSDViewServiceRootViewController *)self mainLabel];
  view11 = [(MSDViewServiceRootViewController *)self view];
  v108 = [NSLayoutConstraint constraintWithItem:mainLabel11 attribute:10 relatedBy:0 toItem:view11 attribute:10 multiplier:1.0 constant:0.0];
  [view10 addConstraint:v108];

  v109 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v109 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 1)
  {
    v111 = 50.0;
  }

  else
  {
    v111 = 10.0;
  }

  view12 = [(MSDViewServiceRootViewController *)self view];
  mainLabel12 = [(MSDViewServiceRootViewController *)self mainLabel];
  view13 = [(MSDViewServiceRootViewController *)self view];
  v115 = [NSLayoutConstraint constraintWithItem:mainLabel12 attribute:5 relatedBy:0 toItem:view13 attribute:5 multiplier:1.0 constant:v111];
  [view12 addConstraint:v115];

  view14 = [(MSDViewServiceRootViewController *)self view];
  mainLabel13 = [(MSDViewServiceRootViewController *)self mainLabel];
  view15 = [(MSDViewServiceRootViewController *)self view];
  v119 = [NSLayoutConstraint constraintWithItem:mainLabel13 attribute:5 relatedBy:0 toItem:view15 attribute:5 multiplier:1.0 constant:v111];
  [view14 addConstraint:v119];

  view16 = [(MSDViewServiceRootViewController *)self view];
  cancelButton7 = [(MSDViewServiceRootViewController *)self cancelButton];
  view17 = [(MSDViewServiceRootViewController *)self view];
  v123 = [NSLayoutConstraint constraintWithItem:cancelButton7 attribute:9 relatedBy:0 toItem:view17 attribute:9 multiplier:1.0 constant:0.0];
  [view16 addConstraint:v123];

  view18 = [(MSDViewServiceRootViewController *)self view];
  cancelButton8 = [(MSDViewServiceRootViewController *)self cancelButton];
  view19 = [(MSDViewServiceRootViewController *)self view];
  v127 = [NSLayoutConstraint constraintWithItem:cancelButton8 attribute:10 relatedBy:0 toItem:view19 attribute:10 multiplier:1.7 constant:0.0];
  [view18 addConstraint:v127];

  view20 = [(MSDViewServiceRootViewController *)self view];
  errorView9 = [(MSDViewServiceRootViewController *)self errorView];
  centerXAnchor = [errorView9 centerXAnchor];
  view21 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide = [view21 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v134 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [view20 addConstraint:v134];

  view22 = [(MSDViewServiceRootViewController *)self view];
  errorView10 = [(MSDViewServiceRootViewController *)self errorView];
  centerYAnchor = [errorView10 centerYAnchor];
  view23 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide2 = [view23 safeAreaLayoutGuide];
  centerYAnchor2 = [safeAreaLayoutGuide2 centerYAnchor];
  v141 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [view22 addConstraint:v141];

  view24 = [(MSDViewServiceRootViewController *)self view];
  errorView11 = [(MSDViewServiceRootViewController *)self errorView];
  leadingAnchor = [errorView11 leadingAnchor];
  view25 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide3 = [view25 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v148 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [view24 addConstraint:v148];

  view26 = [(MSDViewServiceRootViewController *)self view];
  errorView12 = [(MSDViewServiceRootViewController *)self errorView];
  trailingAnchor = [errorView12 trailingAnchor];
  view27 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide4 = [view27 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v155 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  [view26 addConstraint:v155];

  view28 = [(MSDViewServiceRootViewController *)self view];
  errorView13 = [(MSDViewServiceRootViewController *)self errorView];
  topAnchor = [errorView13 topAnchor];
  view29 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide5 = [view29 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide5 topAnchor];
  v162 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  [view28 addConstraint:v162];

  view30 = [(MSDViewServiceRootViewController *)self view];
  errorView14 = [(MSDViewServiceRootViewController *)self errorView];
  bottomAnchor = [errorView14 bottomAnchor];
  view31 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide6 = [view31 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide6 bottomAnchor];
  v169 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
  [view30 addConstraint:v169];

  view32 = [(MSDViewServiceRootViewController *)self view];
  statusLabel10 = [(MSDViewServiceRootViewController *)self statusLabel];
  trailingAnchor3 = [statusLabel10 trailingAnchor];
  view33 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide7 = [view33 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide7 trailingAnchor];
  v176 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  [view32 addConstraint:v176];

  view34 = [(MSDViewServiceRootViewController *)self view];
  statusLabel11 = [(MSDViewServiceRootViewController *)self statusLabel];
  leadingAnchor3 = [statusLabel11 leadingAnchor];
  view35 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide8 = [view35 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide8 leadingAnchor];
  v183 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  [view34 addConstraint:v183];

  view36 = [(MSDViewServiceRootViewController *)self view];
  statusLabel12 = [(MSDViewServiceRootViewController *)self statusLabel];
  bottomAnchor3 = [statusLabel12 bottomAnchor];
  view37 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide9 = [view37 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide9 bottomAnchor];
  v190 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
  [view36 addConstraint:v190];

  view38 = [(MSDViewServiceRootViewController *)self view];
  progressBar6 = [(MSDViewServiceRootViewController *)self progressBar];
  centerXAnchor3 = [progressBar6 centerXAnchor];
  view39 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide10 = [view39 safeAreaLayoutGuide];
  centerXAnchor4 = [safeAreaLayoutGuide10 centerXAnchor];
  v197 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [view38 addConstraint:v197];

  view40 = [(MSDViewServiceRootViewController *)self view];
  progressBar7 = [(MSDViewServiceRootViewController *)self progressBar];
  widthAnchor = [progressBar7 widthAnchor];
  view41 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide11 = [view41 safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide11 widthAnchor];
  v204 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [view40 addConstraint:v204];

  view42 = [(MSDViewServiceRootViewController *)self view];
  progressBar8 = [(MSDViewServiceRootViewController *)self progressBar];
  bottomAnchor5 = [progressBar8 bottomAnchor];
  view43 = [(MSDViewServiceRootViewController *)self view];
  safeAreaLayoutGuide12 = [view43 safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide12 bottomAnchor];
  v211 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [view42 addConstraint:v211];

  [(MSDViewServiceRootViewController *)self updateErrorState];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = MSDViewServiceRootViewController;
  [(MSDViewServiceRootViewController *)&v28 viewDidLoad];
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[MSDViewServiceRootViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called", buf, 0xCu);
  }

  v4 = objc_alloc_init(UIView);
  view = [(MSDViewServiceRootViewController *)self view];
  [view size];
  v7 = v6 * 0.5;
  view2 = [(MSDViewServiceRootViewController *)self view];
  [view2 size];
  v10 = v9 * 0.5;
  view3 = [(MSDViewServiceRootViewController *)self view];
  [view3 size];
  v13 = v12 * 0.5;

  [v4 setFrame:{v7, 0.0, v10, v13}];
  view4 = [(MSDViewServiceRootViewController *)self view];
  [view4 addSubview:v4];

  v15 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"respondToGesture:"];
  [v15 setDelegate:self];
  [v15 setMinimumPressDuration:5.0];
  [v15 setNumberOfTouchesRequired:3];
  [v4 addGestureRecognizer:v15];
  if (os_variant_has_internal_content())
  {
    v16 = objc_alloc_init(UIView);

    view5 = [(MSDViewServiceRootViewController *)self view];
    [view5 size];
    v19 = v18 * 0.5;
    view6 = [(MSDViewServiceRootViewController *)self view];
    [view6 size];
    v22 = v21 * 0.5;
    view7 = [(MSDViewServiceRootViewController *)self view];
    [view7 size];
    v25 = v24 * 0.5;

    [v16 setFrame:{0.0, v19, v22, v25}];
    view8 = [(MSDViewServiceRootViewController *)self view];
    [view8 addSubview:v16];

    v27 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"respondToShowErrorGesture:"];
    [v27 setDelegate:self];
    [v27 setMinimumPressDuration:5.0];
    [v27 setNumberOfTouchesRequired:3];
    [v16 addGestureRecognizer:v27];
    v15 = v27;
    v4 = v16;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = sub_1000015E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "StoreDemoViewService disappeared.", v9, 2u);
  }

  if ([(MSDViewServiceRootViewController *)self observerAdded])
  {
    v5 = +[MSDViewServiceModel sharedInstance];
    [v5 removeObserver:self forKeyPath:@"errorMessage"];

    v6 = +[MSDViewServiceModel sharedInstance];
    [v6 removeObserver:self forKeyPath:@"errorToReport"];

    v7 = +[MSDViewServiceModel sharedInstance];
    [v7 removeObserver:self forKeyPath:@"progress"];

    v8 = +[MSDViewServiceModel sharedInstance];
    [v8 removeObserver:self forKeyPath:@"disableIdleTimer"];

    [(MSDViewServiceRootViewController *)self setObserverAdded:0];
  }
}

- (void)doCancelInstall
{
  v3 = +[MSDKManagedDevice sharedInstance];
  [v3 cancelOperation];

  [(MSDViewServiceRootViewController *)self quit];
}

- (void)timeout:(id)timeout
{
  [(MSDViewServiceRootViewController *)self dismissViewControllerAnimated:1 completion:0];
  cancelButton = [(MSDViewServiceRootViewController *)self cancelButton];
  [cancelButton setHidden:1];
}

- (void)showErrorTimeout:(id)timeout
{
  errorView = [(MSDViewServiceRootViewController *)self errorView];
  [errorView setHidden:1];

  mainLabel = [(MSDViewServiceRootViewController *)self mainLabel];
  [mainLabel setHidden:0];

  v6 = +[MSDViewServiceModel sharedInstance];
  errorMessage = [v6 errorMessage];

  if (errorMessage)
  {
    statusLabel = [(MSDViewServiceRootViewController *)self statusLabel];
    [statusLabel setHidden:0];
  }
}

- (void)respondToGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
  {
    cancelButton2 = +[MSDViewServiceModel sharedInstance];
    if ([cancelButton2 showCancelButton])
    {
      cancelButton = [(MSDViewServiceRootViewController *)self cancelButton];
      isHidden = [cancelButton isHidden];

      if (!isHidden)
      {
        goto LABEL_7;
      }

      [(MSDViewServiceRootViewController *)self restartTimerWithTimeInterval:10.0];
      cancelButton2 = [(MSDViewServiceRootViewController *)self cancelButton];
      [cancelButton2 setHidden:0];
    }
  }

LABEL_7:
}

- (void)restartTimerWithTimeInterval:(double)interval
{
  timer = [(MSDViewServiceRootViewController *)self timer];

  if (timer)
  {
    timer2 = [(MSDViewServiceRootViewController *)self timer];
    [timer2 invalidate];

    [(MSDViewServiceRootViewController *)self setTimer:0];
  }

  v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"timeout:" selector:0 userInfo:0 repeats:interval];
  [(MSDViewServiceRootViewController *)self setTimer:v7];
}

- (void)presentConfirmationAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CONFIRMATION_ALERT_TITLE" value:&stru_10000C608 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CONFIRMATION_ALERT_MESSAGE" value:&stru_10000C608 table:0];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"STOP" value:&stru_10000C608 table:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000042DC;
  v15[3] = &unk_10000C460;
  v15[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v15];
  [v7 addAction:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_10000C608 table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000042E4;
  v14[3] = &unk_10000C460;
  v14[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v14];
  [v7 addAction:v13];

  [(MSDViewServiceRootViewController *)self presentViewController:v7 animated:1 completion:0];
  [(MSDViewServiceRootViewController *)self restartTimerWithTimeInterval:30.0];
}

- (void)respondToShowErrorGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
  {
    errorView = [(MSDViewServiceRootViewController *)self errorView];
    isHidden = [errorView isHidden];

    if (isHidden)
    {
      showErrorTimer = [(MSDViewServiceRootViewController *)self showErrorTimer];

      if (showErrorTimer)
      {
        showErrorTimer2 = [(MSDViewServiceRootViewController *)self showErrorTimer];
        [showErrorTimer2 invalidate];

        [(MSDViewServiceRootViewController *)self setShowErrorTimer:0];
      }

      v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"showErrorTimeout:" selector:0 userInfo:0 repeats:30.0];
      [(MSDViewServiceRootViewController *)self setShowErrorTimer:v8];

      errorView2 = [(MSDViewServiceRootViewController *)self errorView];
      [errorView2 setHidden:0];

      mainLabel = [(MSDViewServiceRootViewController *)self mainLabel];
      [mainLabel setHidden:1];

      cancelButton = [(MSDViewServiceRootViewController *)self cancelButton];
      [cancelButton setHidden:1];

      statusLabel = [(MSDViewServiceRootViewController *)self statusLabel];
      [statusLabel setHidden:1];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  if ([pathCopy isEqualToString:@"errorToReport"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000479C;
    block[3] = &unk_10000C488;
    objc_copyWeak(&v21, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v21);
  }

  else if ([pathCopy isEqualToString:@"errorMessage"])
  {
    v12 = sub_1000015E4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = changeCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received an error message change: %{public}@", buf, 0xCu);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100004898;
    v18[3] = &unk_10000C488;
    objc_copyWeak(&v19, &location);
    dispatch_async(&_dispatch_main_q, v18);
    objc_destroyWeak(&v19);
  }

  else if ([pathCopy isEqualToString:@"progress"])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000048D8;
    v16[3] = &unk_10000C488;
    objc_copyWeak(&v17, &location);
    dispatch_async(&_dispatch_main_q, v16);
    objc_destroyWeak(&v17);
  }

  else if ([pathCopy isEqualToString:@"disableIdleTimer"])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000049A4;
    v14[3] = &unk_10000C488;
    objc_copyWeak(&v15, &location);
    dispatch_async(&_dispatch_main_q, v14);
    objc_destroyWeak(&v15);
  }

  else
  {
    v13 = sub_1000015E4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100005A78(v13);
    }
  }

  objc_destroyWeak(&location);
}

- (void)updateErrorState
{
  v3 = +[MSDViewServiceModel sharedInstance];
  errorMessage = [v3 errorMessage];

  statusLabel = [(MSDViewServiceRootViewController *)self statusLabel];
  if (errorMessage)
  {
    v5 = errorMessage;
  }

  else
  {
    v5 = @"<no error>";
  }

  [statusLabel setHidden:errorMessage == 0];

  errorView = [(MSDViewServiceRootViewController *)self errorView];
  [errorView setText:v5];
}

- (void)operationFailed:(id)failed
{
  failedCopy = failed;
  v5 = +[MSDKManagedDevice sharedInstance];
  typeOfDemoDevice = [v5 typeOfDemoDevice];

  if (typeOfDemoDevice == 5)
  {
    [(MSDViewServiceRootViewController *)self quit];
  }

  else
  {
    if ([failedCopy code] == 3727741088)
    {
      v7 = @"CONNECTION_FAILED";
    }

    else
    {
      v7 = @"GENERIC_FAILUARE";
    }

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Demo Setup" value:&stru_10000C608 table:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:v7 value:&stru_10000C608 table:0];

    v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_10000C608 table:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004CEC;
    v16[3] = &unk_10000C460;
    v16[4] = self;
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v16];
    [v12 addAction:v15];

    [(MSDViewServiceRootViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (void)quit
{
  scene = [(MSDViewServiceRootViewController *)self scene];
  [scene deactivate];
}

@end