@interface CBRemoteSetupAuthenticationViewController
- (CBRemoteSetupAuthenticationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (void)didTapFallbackButton;
- (void)setupView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CBRemoteSetupAuthenticationViewController

- (CBRemoteSetupAuthenticationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v9.receiver = self;
  v9.super_class = CBRemoteSetupAuthenticationViewController;
  v5 = [(CBRemoteSetupAuthenticationViewController *)&v9 initWithTitle:title detailText:text icon:icon];
  if (v5)
  {
    v6 = +[CBRemoteSetupManager sharedInstance];
    remoteSetupManager = v5->_remoteSetupManager;
    v5->_remoteSetupManager = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CBRemoteSetupAuthenticationViewController;
  [(CBRemoteSetupAuthenticationViewController *)&v3 viewDidLoad];
  [(CBRemoteSetupAuthenticationViewController *)self setupView];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CBRemoteSetupAuthenticationViewController;
  [(CBRemoteSetupAuthenticationViewController *)&v8 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  remoteSetupManager = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
  setupState = [remoteSetupManager setupState];

  if (setupState == 3)
  {
    remoteSetupManager2 = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
    [remoteSetupManager2 restartRemoteSetupBroadcast];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CBRemoteSetupAuthenticationViewController;
  [(CBRemoteSetupAuthenticationViewController *)&v5 viewWillAppear:appear];
  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]!= 2 && [(CBRemoteSetupAuthenticationViewController *)self passwordType]!= 8)
  {
    [(CBRemoteSetupAuthenticationViewController *)self dismissViewControllerAnimated:1 completion:0];
    remoteSetupManager = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
    [remoteSetupManager setupFailed];
  }
}

- (void)setupView
{
  [(CBRemoteSetupAuthenticationViewController *)self setModalPresentationStyle:1];
  view = [(CBRemoteSetupAuthenticationViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  headerView = [(CBRemoteSetupAuthenticationViewController *)self headerView];
  [headerView setTitleHyphenationFactor:0.0];

  v5 = objc_alloc_init(UIView);
  [(CBRemoteSetupAuthenticationViewController *)self setContainerView:v5];

  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 2)
  {
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CBRemoteSetupAuthenticationViewController *)self setPinCodeLabel:v6];

    pinCodeLabel = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [pinCodeLabel setNumberOfLines:0];

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle0];
    pinCodeLabel2 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [pinCodeLabel2 setFont:v8];

    pinCodeLabel3 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [pinCodeLabel3 setTextAlignment:1];

    pinCodeLabel4 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [pinCodeLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    pinCodeLabel5 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    LODWORD(v13) = 1148846080;
    [pinCodeLabel5 setContentHuggingPriority:1 forAxis:v13];

    pinCodeLabel6 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    pairingCode = [(CBRemoteSetupAuthenticationViewController *)self pairingCode];
    [pinCodeLabel6 setText:pairingCode];
  }

  else if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 8)
  {
    v16 = [[OBButtonTray alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CBRemoteSetupAuthenticationViewController *)self setButtonTray:v16];

    buttonTray = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    [buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonTray2 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    [buttonTray2 setHidden:1];

    view2 = [(CBRemoteSetupAuthenticationViewController *)self view];
    buttonTray3 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    [view2 addSubview:buttonTray3];

    v21 = +[OBLinkTrayButton linkButton];
    [(CBRemoteSetupAuthenticationViewController *)self setFallbackButton:v21];

    fallbackButton = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"REMOTE_SETUP_AUTH_FALLBACK_PIN" value:&stru_10007EAB0 table:0];
    [fallbackButton setTitle:v24 forState:0];

    fallbackButton2 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    [fallbackButton2 addTarget:self action:"didTapFallbackButton" forControlEvents:64];

    fallbackButton3 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    [fallbackButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonTray4 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    fallbackButton4 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    [buttonTray4 addButton:fallbackButton4];

    pairingCode2 = [(CBRemoteSetupAuthenticationViewController *)self pairingCode];
    v30 = [pairingCode2 dataUsingEncoding:1];

    v31 = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [v31 setValue:v30 forKey:@"inputMessage"];
    memset(&v119, 0, sizeof(v119));
    CGAffineTransformMakeScale(&v119, 10.0, 10.0);
    outputImage = [v31 outputImage];
    v118 = v119;
    v33 = [outputImage imageByApplyingTransform:&v118];

    v34 = [[UIImage alloc] initWithCIImage:v33];
    v35 = [[UIImageView alloc] initWithImage:v34];
    [(CBRemoteSetupAuthenticationViewController *)self setQrCodeView:v35];

    qrCodeView = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [qrCodeView setTag:1];

    qrCodeView2 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [qrCodeView2 setUserInteractionEnabled:0];

    qrCodeView3 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [qrCodeView3 setContentMode:1];

    qrCodeView4 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [qrCodeView4 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v40 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_100047048(self, v40);
    }
  }

  objc_initWeak(&v119, self);
  containerView = [(CBRemoteSetupAuthenticationViewController *)self containerView];
  v116[0] = _NSConcreteStackBlock;
  v116[1] = 3221225472;
  v116[2] = sub_100018260;
  v116[3] = &unk_10007DCE8;
  objc_copyWeak(&v117, &v119);
  v116[4] = self;
  [(CBRemoteSetupAuthenticationViewController *)self addContentSubView:containerView heightConstraintForLayout:v116];

  v42 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v42 userInterfaceIdiom];

  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 2)
  {
    containerView2 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    pinCodeLabel7 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [containerView2 addSubview:pinCodeLabel7];

    pinCodeLabel8 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    leadingAnchor = [pinCodeLabel8 leadingAnchor];
    containerView3 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    leadingAnchor2 = [containerView3 leadingAnchor];
    v111 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v121[0] = v111;
    pinCodeLabel9 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    trailingAnchor = [pinCodeLabel9 trailingAnchor];
    containerView4 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    trailingAnchor2 = [containerView4 trailingAnchor];
    v106 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v121[1] = v106;
    pinCodeLabel10 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    lastBaselineAnchor = [pinCodeLabel10 lastBaselineAnchor];
    containerView5 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    topAnchor = [containerView5 topAnchor];
    v46 = 96.0;
    if (userInterfaceIdiom == 1)
    {
      v46 = 106.0;
    }

    v101 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:v46];
    v121[2] = v101;
    containerView6 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    bottomAnchor = [containerView6 bottomAnchor];
    pinCodeLabel11 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    bottomAnchor2 = [pinCodeLabel11 bottomAnchor];
    v96 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v121[3] = v96;
    fallbackButton5 = [NSArray arrayWithObjects:v121 count:4];
    [NSLayoutConstraint activateConstraints:fallbackButton5];
    goto LABEL_14;
  }

  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 8)
  {
    containerView7 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    qrCodeView5 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [containerView7 addSubview:qrCodeView5];

    pinCodeLabel8 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    leadingAnchor = [pinCodeLabel8 bottomAnchor];
    containerView3 = [(CBRemoteSetupAuthenticationViewController *)self view];
    leadingAnchor2 = [containerView3 bottomAnchor];
    v111 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v120[0] = v111;
    pinCodeLabel9 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    trailingAnchor = [pinCodeLabel9 leadingAnchor];
    containerView4 = [(CBRemoteSetupAuthenticationViewController *)self view];
    trailingAnchor2 = [containerView4 leadingAnchor];
    v106 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v120[1] = v106;
    pinCodeLabel10 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    lastBaselineAnchor = [pinCodeLabel10 trailingAnchor];
    containerView5 = [(CBRemoteSetupAuthenticationViewController *)self view];
    topAnchor = [containerView5 trailingAnchor];
    v101 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:0.0];
    v120[2] = v101;
    containerView6 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    bottomAnchor = [containerView6 centerXAnchor];
    pinCodeLabel11 = [(CBRemoteSetupAuthenticationViewController *)self view];
    bottomAnchor2 = [pinCodeLabel11 centerXAnchor];
    v96 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v120[3] = v96;
    fallbackButton5 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    centerXAnchor = [fallbackButton5 centerXAnchor];
    buttonTray5 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    centerXAnchor2 = [buttonTray5 centerXAnchor];
    v91 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v120[4] = v91;
    fallbackButton6 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    bottomAnchor3 = [fallbackButton6 bottomAnchor];
    buttonTray6 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    bottomAnchor4 = [buttonTray6 bottomAnchor];
    v86 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v120[5] = v86;
    qrCodeView6 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    leadingAnchor3 = [qrCodeView6 leadingAnchor];
    containerView8 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    leadingAnchor4 = [containerView8 leadingAnchor];
    v81 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v120[6] = v81;
    qrCodeView7 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    trailingAnchor3 = [qrCodeView7 trailingAnchor];
    containerView9 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    trailingAnchor4 = [containerView9 trailingAnchor];
    v76 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v120[7] = v76;
    qrCodeView8 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    topAnchor2 = [qrCodeView8 topAnchor];
    containerView10 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    topAnchor3 = [containerView10 topAnchor];
    v71 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v120[8] = v71;
    qrCodeView9 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    centerXAnchor3 = [qrCodeView9 centerXAnchor];
    containerView11 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    centerXAnchor4 = [containerView11 centerXAnchor];
    v66 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v120[9] = v66;
    qrCodeView10 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    widthAnchor = [qrCodeView10 widthAnchor];
    containerView12 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    widthAnchor2 = [containerView12 widthAnchor];
    v61 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v120[10] = v61;
    qrCodeView11 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    bottomAnchor5 = [qrCodeView11 bottomAnchor];
    buttonTray7 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    topAnchor4 = [buttonTray7 topAnchor];
    v51 = [bottomAnchor5 constraintEqualToAnchor:topAnchor4];
    v120[11] = v51;
    qrCodeView12 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    heightAnchor = [qrCodeView12 heightAnchor];
    containerView13 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    heightAnchor2 = [containerView13 heightAnchor];
    v56 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v120[12] = v56;
    v57 = [NSArray arrayWithObjects:v120 count:13];
    [NSLayoutConstraint activateConstraints:v57];

LABEL_14:
  }

  view3 = [(CBRemoteSetupAuthenticationViewController *)self view];
  [view3 layoutIfNeeded];

  objc_destroyWeak(&v117);
  objc_destroyWeak(&v119);
}

- (void)didTapFallbackButton
{
  [(CBRemoteSetupAuthenticationViewController *)self dismissViewControllerAnimated:1 completion:0];
  remoteSetupManager = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
  [remoteSetupManager changeDesiredAuthType:2];
}

@end