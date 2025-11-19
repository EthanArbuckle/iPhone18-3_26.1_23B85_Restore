@interface CBRemoteSetupAuthenticationViewController
- (CBRemoteSetupAuthenticationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (void)didTapFallbackButton;
- (void)setupView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CBRemoteSetupAuthenticationViewController

- (CBRemoteSetupAuthenticationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v9.receiver = self;
  v9.super_class = CBRemoteSetupAuthenticationViewController;
  v5 = [(CBRemoteSetupAuthenticationViewController *)&v9 initWithTitle:a3 detailText:a4 icon:a5];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CBRemoteSetupAuthenticationViewController;
  [(CBRemoteSetupAuthenticationViewController *)&v8 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
  v6 = [v5 setupState];

  if (v6 == 3)
  {
    v7 = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
    [v7 restartRemoteSetupBroadcast];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CBRemoteSetupAuthenticationViewController;
  [(CBRemoteSetupAuthenticationViewController *)&v5 viewWillAppear:a3];
  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]!= 2 && [(CBRemoteSetupAuthenticationViewController *)self passwordType]!= 8)
  {
    [(CBRemoteSetupAuthenticationViewController *)self dismissViewControllerAnimated:1 completion:0];
    v4 = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
    [v4 setupFailed];
  }
}

- (void)setupView
{
  [(CBRemoteSetupAuthenticationViewController *)self setModalPresentationStyle:1];
  v3 = [(CBRemoteSetupAuthenticationViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CBRemoteSetupAuthenticationViewController *)self headerView];
  [v4 setTitleHyphenationFactor:0.0];

  v5 = objc_alloc_init(UIView);
  [(CBRemoteSetupAuthenticationViewController *)self setContainerView:v5];

  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 2)
  {
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CBRemoteSetupAuthenticationViewController *)self setPinCodeLabel:v6];

    v7 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [v7 setNumberOfLines:0];

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle0];
    v9 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [v9 setFont:v8];

    v10 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [v10 setTextAlignment:1];

    v11 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    LODWORD(v13) = 1148846080;
    [v12 setContentHuggingPriority:1 forAxis:v13];

    v14 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    v15 = [(CBRemoteSetupAuthenticationViewController *)self pairingCode];
    [v14 setText:v15];
  }

  else if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 8)
  {
    v16 = [[OBButtonTray alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CBRemoteSetupAuthenticationViewController *)self setButtonTray:v16];

    v17 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    [v18 setHidden:1];

    v19 = [(CBRemoteSetupAuthenticationViewController *)self view];
    v20 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    [v19 addSubview:v20];

    v21 = +[OBLinkTrayButton linkButton];
    [(CBRemoteSetupAuthenticationViewController *)self setFallbackButton:v21];

    v22 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"REMOTE_SETUP_AUTH_FALLBACK_PIN" value:&stru_10007EAB0 table:0];
    [v22 setTitle:v24 forState:0];

    v25 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    [v25 addTarget:self action:"didTapFallbackButton" forControlEvents:64];

    v26 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v28 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    [v27 addButton:v28];

    v29 = [(CBRemoteSetupAuthenticationViewController *)self pairingCode];
    v30 = [v29 dataUsingEncoding:1];

    v31 = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [v31 setValue:v30 forKey:@"inputMessage"];
    memset(&v119, 0, sizeof(v119));
    CGAffineTransformMakeScale(&v119, 10.0, 10.0);
    v32 = [v31 outputImage];
    v118 = v119;
    v33 = [v32 imageByApplyingTransform:&v118];

    v34 = [[UIImage alloc] initWithCIImage:v33];
    v35 = [[UIImageView alloc] initWithImage:v34];
    [(CBRemoteSetupAuthenticationViewController *)self setQrCodeView:v35];

    v36 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [v36 setTag:1];

    v37 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [v37 setUserInteractionEnabled:0];

    v38 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [v38 setContentMode:1];

    v39 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
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
  v41 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
  v116[0] = _NSConcreteStackBlock;
  v116[1] = 3221225472;
  v116[2] = sub_100018260;
  v116[3] = &unk_10007DCE8;
  objc_copyWeak(&v117, &v119);
  v116[4] = self;
  [(CBRemoteSetupAuthenticationViewController *)self addContentSubView:v41 heightConstraintForLayout:v116];

  v42 = +[UIDevice currentDevice];
  v43 = [v42 userInterfaceIdiom];

  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 2)
  {
    v44 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v45 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    [v44 addSubview:v45];

    v115 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    v113 = [v115 leadingAnchor];
    v114 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v112 = [v114 leadingAnchor];
    v111 = [v113 constraintEqualToAnchor:v112];
    v121[0] = v111;
    v110 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    v108 = [v110 trailingAnchor];
    v109 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v107 = [v109 trailingAnchor];
    v106 = [v108 constraintEqualToAnchor:v107];
    v121[1] = v106;
    v105 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    v103 = [v105 lastBaselineAnchor];
    v104 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v102 = [v104 topAnchor];
    v46 = 96.0;
    if (v43 == 1)
    {
      v46 = 106.0;
    }

    v101 = [v103 constraintEqualToAnchor:v102 constant:v46];
    v121[2] = v101;
    v100 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v98 = [v100 bottomAnchor];
    v99 = [(CBRemoteSetupAuthenticationViewController *)self pinCodeLabel];
    v97 = [v99 bottomAnchor];
    v96 = [v98 constraintGreaterThanOrEqualToAnchor:v97];
    v121[3] = v96;
    v95 = [NSArray arrayWithObjects:v121 count:4];
    [NSLayoutConstraint activateConstraints:v95];
    goto LABEL_14;
  }

  if ([(CBRemoteSetupAuthenticationViewController *)self passwordType]== 8)
  {
    v47 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v48 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    [v47 addSubview:v48];

    v115 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v113 = [v115 bottomAnchor];
    v114 = [(CBRemoteSetupAuthenticationViewController *)self view];
    v112 = [v114 bottomAnchor];
    v111 = [v113 constraintEqualToAnchor:v112 constant:0.0];
    v120[0] = v111;
    v110 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v108 = [v110 leadingAnchor];
    v109 = [(CBRemoteSetupAuthenticationViewController *)self view];
    v107 = [v109 leadingAnchor];
    v106 = [v108 constraintEqualToAnchor:v107 constant:0.0];
    v120[1] = v106;
    v105 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v103 = [v105 trailingAnchor];
    v104 = [(CBRemoteSetupAuthenticationViewController *)self view];
    v102 = [v104 trailingAnchor];
    v101 = [v103 constraintEqualToAnchor:v102 constant:0.0];
    v120[2] = v101;
    v100 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v98 = [v100 centerXAnchor];
    v99 = [(CBRemoteSetupAuthenticationViewController *)self view];
    v97 = [v99 centerXAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v120[3] = v96;
    v95 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    v93 = [v95 centerXAnchor];
    v94 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v92 = [v94 centerXAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v120[4] = v91;
    v90 = [(CBRemoteSetupAuthenticationViewController *)self fallbackButton];
    v88 = [v90 bottomAnchor];
    v89 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v87 = [v89 bottomAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v120[5] = v86;
    v85 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    v83 = [v85 leadingAnchor];
    v84 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v82 = [v84 leadingAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v120[6] = v81;
    v80 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    v78 = [v80 trailingAnchor];
    v79 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v77 = [v79 trailingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v120[7] = v76;
    v75 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    v73 = [v75 topAnchor];
    v74 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v72 = [v74 topAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v120[8] = v71;
    v70 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    v68 = [v70 centerXAnchor];
    v69 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v67 = [v69 centerXAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v120[9] = v66;
    v65 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    v63 = [v65 widthAnchor];
    v64 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v62 = [v64 widthAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v120[10] = v61;
    v60 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    v59 = [v60 bottomAnchor];
    v49 = [(CBRemoteSetupAuthenticationViewController *)self buttonTray];
    v50 = [v49 topAnchor];
    v51 = [v59 constraintEqualToAnchor:v50];
    v120[11] = v51;
    v52 = [(CBRemoteSetupAuthenticationViewController *)self qrCodeView];
    v53 = [v52 heightAnchor];
    v54 = [(CBRemoteSetupAuthenticationViewController *)self containerView];
    v55 = [v54 heightAnchor];
    v56 = [v53 constraintEqualToAnchor:v55];
    v120[12] = v56;
    v57 = [NSArray arrayWithObjects:v120 count:13];
    [NSLayoutConstraint activateConstraints:v57];

LABEL_14:
  }

  v58 = [(CBRemoteSetupAuthenticationViewController *)self view];
  [v58 layoutIfNeeded];

  objc_destroyWeak(&v117);
  objc_destroyWeak(&v119);
}

- (void)didTapFallbackButton
{
  [(CBRemoteSetupAuthenticationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = [(CBRemoteSetupAuthenticationViewController *)self remoteSetupManager];
  [v3 changeDesiredAuthType:2];
}

@end