@interface SVSSubCredentialActivationStartViewController
- (PRXAction)openAction;
- (PRXButton)openButton;
- (SubCredentialActivationMainController)mainController;
- (void)_handleEnterCode;
- (void)_handleOpenApp;
- (void)updateAppName:(id)name image:(id)image;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SVSSubCredentialActivationStartViewController

- (PRXButton)openButton
{
  WeakRetained = objc_loadWeakRetained(&self->_openButton);

  return WeakRetained;
}

- (PRXAction)openAction
{
  WeakRetained = objc_loadWeakRetained(&self->_openAction);

  return WeakRetained;
}

- (SubCredentialActivationMainController)mainController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);

  return WeakRetained;
}

- (void)_handleOpenApp
{
  if (dword_1001BEEA8 <= 50 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(SVSSubCredentialActivationStartViewController *)self mainController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011C478;
  v4[3] = &unk_100195AC0;
  v4[4] = self;
  [mainController dismissAnimated:1 completion:v4];
}

- (void)_handleEnterCode
{
  if (dword_1001BEEA8 <= 50 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(SVSSubCredentialActivationStartViewController *)self mainController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011C6EC;
  v5 = v4[3] = &unk_100195AC0;
  v3 = v5;
  [v3 dismissAnimated:1 completion:v4];
}

- (void)updateAppName:(id)name image:(id)image
{
  nameCopy = name;
  imageCopy = image;
  if (dword_1001BEEA8 <= 50 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  activityIndicator = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [activityIndicator setHidden:1];

  activityIndicator2 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [activityIndicator2 stopAnimating];

  openButton = [(SVSSubCredentialActivationStartViewController *)self openButton];
  if ([nameCopy length])
  {
    mainController = [(SVSSubCredentialActivationStartViewController *)self mainController];
    appContent = [mainController appContent];
    installed = [appContent installed];

    if (installed)
    {
      v19 = @"SUBCREDENTIAL_OPEN_BUTTON_INSTALLED";
    }

    else
    {
      v19 = @"SUBCREDENTIAL_OPEN_BUTTON_UNINSTALLED";
    }

    v20 = sub_100127C0C(@"Localizable-Subcredential", v19, v13, v14, v15, v16, v17, v18, nameCopy);
    [openButton setTitle:v20 forState:0];
    [openButton setHidden:0];
  }

  else
  {
    [openButton setHidden:1];
  }

  [(SVSSubCredentialActivationStartViewController *)self setAppIconImage:imageCopy];
  appIconImageView = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [appIconImageView setImage:imageCopy];

  appIconImageView2 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [appIconImageView2 setBackgroundColor:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = SVSSubCredentialActivationStartViewController;
  [(SVSSubCredentialActivationStartViewController *)&v13 viewWillAppear:appear];
  mainController = [(SVSSubCredentialActivationStartViewController *)self mainController];
  _remoteViewControllerProxy = [mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.3];

  appIconImage = [(SVSSubCredentialActivationStartViewController *)self appIconImage];

  if (appIconImage)
  {
    appName = [(SVSSubCredentialActivationStartViewController *)self appName];
    appIconImage2 = [(SVSSubCredentialActivationStartViewController *)self appIconImage];
    [(SVSSubCredentialActivationStartViewController *)self updateAppName:appName image:appIconImage2];
  }

  else
  {
    v9 = +[UIColor secondarySystemFillColor];
    appIconImageView = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
    [appIconImageView setBackgroundColor:v9];

    openButton = [(SVSSubCredentialActivationStartViewController *)self openButton];
    [openButton setHidden:1];

    activityIndicator = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
    [activityIndicator setHidden:0];

    appName = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
    [appName startAnimating];
  }
}

- (void)viewDidLoad
{
  v88.receiver = self;
  v88.super_class = SVSSubCredentialActivationStartViewController;
  [(SVSSubCredentialActivationStartViewController *)&v88 viewDidLoad];
  mainController = [(SVSSubCredentialActivationStartViewController *)self mainController];
  [(SVSSubCredentialActivationStartViewController *)self setDismissalType:3];
  cardTitle = [mainController cardTitle];
  [(SVSSubCredentialActivationStartViewController *)self setTitle:cardTitle];

  cardSubtitle = [mainController cardSubtitle];
  [(SVSSubCredentialActivationStartViewController *)self setSubtitle:cardSubtitle];

  objc_initWeak(&location, self);
  v77 = sub_100127C0C(@"Localizable-Subcredential", @"SUBCREDENTIAL_ENTER_CODE", v5, v6, v7, v8, v9, v10, v42);
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_10011D578;
  v85[3] = &unk_1001958D8;
  objc_copyWeak(&v86, &location);
  v76 = [PRXAction actionWithTitle:v77 style:0 handler:v85];
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_10011D5B8;
  v83[3] = &unk_1001958D8;
  objc_copyWeak(&v84, &location);
  v75 = [PRXAction actionWithTitle:&stru_100195CA8 style:1 handler:v83];
  [(SVSSubCredentialActivationStartViewController *)self setOpenAction:?];
  v11 = [(SVSSubCredentialActivationStartViewController *)self addAction:v76];
  v12 = [(SVSSubCredentialActivationStartViewController *)self addAction:v75];
  v13 = objc_alloc_init(UIImageView);
  [(SVSSubCredentialActivationStartViewController *)self setAppIconImageView:v13];

  appIconImageView = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [appIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  appIconImageView2 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [appIconImageView2 _setContinuousCornerRadius:20.0];

  appIconImageView3 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  layer = [appIconImageView3 layer];
  [layer setMasksToBounds:1];

  v18 = +[UIColor labelColor];
  appIconImageView4 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [appIconImageView4 setTintColor:v18];

  contentView = [(SVSSubCredentialActivationStartViewController *)self contentView];
  appIconImageView5 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [contentView addSubview:appIconImageView5];

  v22 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(SVSSubCredentialActivationStartViewController *)self setActivityIndicator:v22];

  activityIndicator = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];

  activityIndicator2 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [activityIndicator2 setHidden:1];

  contentView2 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  activityIndicator3 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [contentView2 addSubview:activityIndicator3];

  appIconImageView6 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  topAnchor = [appIconImageView6 topAnchor];
  contentView3 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v69 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v90[0] = v69;
  appIconImageView7 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  centerYAnchor = [appIconImageView7 centerYAnchor];
  contentView4 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  mainContentGuide2 = [contentView4 mainContentGuide];
  centerYAnchor2 = [mainContentGuide2 centerYAnchor];
  v63 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v90[1] = v63;
  appIconImageView8 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  centerXAnchor = [appIconImageView8 centerXAnchor];
  contentView5 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  mainContentGuide3 = [contentView5 mainContentGuide];
  centerXAnchor2 = [mainContentGuide3 centerXAnchor];
  v57 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v90[2] = v57;
  appIconImageView9 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  heightAnchor = [appIconImageView9 heightAnchor];
  v54 = [heightAnchor constraintEqualToConstant:98.0];
  v90[3] = v54;
  appIconImageView10 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  widthAnchor = [appIconImageView10 widthAnchor];
  v51 = [widthAnchor constraintEqualToConstant:98.0];
  v90[4] = v51;
  appIconImageView11 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  bottomAnchor = [appIconImageView11 bottomAnchor];
  contentView6 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  mainContentGuide4 = [contentView6 mainContentGuide];
  bottomAnchor2 = [mainContentGuide4 bottomAnchor];
  v45 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v90[5] = v45;
  activityIndicator4 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  centerXAnchor3 = [activityIndicator4 centerXAnchor];
  appIconImageView12 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  centerXAnchor4 = [appIconImageView12 centerXAnchor];
  v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v90[6] = v29;
  activityIndicator5 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  centerYAnchor3 = [activityIndicator5 centerYAnchor];
  appIconImageView13 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  centerYAnchor4 = [appIconImageView13 centerYAnchor];
  v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v90[7] = v34;
  v35 = [NSArray arrayWithObjects:v90 count:8];
  [NSLayoutConstraint activateConstraints:v35];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  contentView7 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  actionButtons = [contentView7 actionButtons];

  v38 = [actionButtons countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v38)
  {
    v39 = *v80;
    while (2)
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v80 != v39)
        {
          objc_enumerationMutation(actionButtons);
        }

        v41 = *(*(&v79 + 1) + 8 * i);
        if (![v41 proximityButtonType])
        {
          v38 = v41;
          goto LABEL_11;
        }
      }

      v38 = [actionButtons countByEnumeratingWithState:&v79 objects:v89 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v38 setHidden:1];
  [(SVSSubCredentialActivationStartViewController *)self setOpenButton:v38];

  objc_destroyWeak(&v84);
  objc_destroyWeak(&v86);

  objc_destroyWeak(&location);
}

@end