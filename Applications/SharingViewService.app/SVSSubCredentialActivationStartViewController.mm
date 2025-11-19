@interface SVSSubCredentialActivationStartViewController
- (PRXAction)openAction;
- (PRXButton)openButton;
- (SubCredentialActivationMainController)mainController;
- (void)_handleEnterCode;
- (void)_handleOpenApp;
- (void)updateAppName:(id)a3 image:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

  v3 = [(SVSSubCredentialActivationStartViewController *)self mainController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011C478;
  v4[3] = &unk_100195AC0;
  v4[4] = self;
  [v3 dismissAnimated:1 completion:v4];
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

- (void)updateAppName:(id)a3 image:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (dword_1001BEEA8 <= 50 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [v7 setHidden:1];

  v8 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [v8 stopAnimating];

  v9 = [(SVSSubCredentialActivationStartViewController *)self openButton];
  if ([v23 length])
  {
    v10 = [(SVSSubCredentialActivationStartViewController *)self mainController];
    v11 = [v10 appContent];
    v12 = [v11 installed];

    if (v12)
    {
      v19 = @"SUBCREDENTIAL_OPEN_BUTTON_INSTALLED";
    }

    else
    {
      v19 = @"SUBCREDENTIAL_OPEN_BUTTON_UNINSTALLED";
    }

    v20 = sub_100127C0C(@"Localizable-Subcredential", v19, v13, v14, v15, v16, v17, v18, v23);
    [v9 setTitle:v20 forState:0];
    [v9 setHidden:0];
  }

  else
  {
    [v9 setHidden:1];
  }

  [(SVSSubCredentialActivationStartViewController *)self setAppIconImage:v6];
  v21 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [v21 setImage:v6];

  v22 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [v22 setBackgroundColor:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = SVSSubCredentialActivationStartViewController;
  [(SVSSubCredentialActivationStartViewController *)&v13 viewWillAppear:a3];
  v4 = [(SVSSubCredentialActivationStartViewController *)self mainController];
  v5 = [v4 _remoteViewControllerProxy];
  [v5 setStatusBarHidden:1 withDuration:0.3];

  v6 = [(SVSSubCredentialActivationStartViewController *)self appIconImage];

  if (v6)
  {
    v7 = [(SVSSubCredentialActivationStartViewController *)self appName];
    v8 = [(SVSSubCredentialActivationStartViewController *)self appIconImage];
    [(SVSSubCredentialActivationStartViewController *)self updateAppName:v7 image:v8];
  }

  else
  {
    v9 = +[UIColor secondarySystemFillColor];
    v10 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
    [v10 setBackgroundColor:v9];

    v11 = [(SVSSubCredentialActivationStartViewController *)self openButton];
    [v11 setHidden:1];

    v12 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
    [v12 setHidden:0];

    v7 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
    [v7 startAnimating];
  }
}

- (void)viewDidLoad
{
  v88.receiver = self;
  v88.super_class = SVSSubCredentialActivationStartViewController;
  [(SVSSubCredentialActivationStartViewController *)&v88 viewDidLoad];
  v78 = [(SVSSubCredentialActivationStartViewController *)self mainController];
  [(SVSSubCredentialActivationStartViewController *)self setDismissalType:3];
  v3 = [v78 cardTitle];
  [(SVSSubCredentialActivationStartViewController *)self setTitle:v3];

  v4 = [v78 cardSubtitle];
  [(SVSSubCredentialActivationStartViewController *)self setSubtitle:v4];

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

  v14 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [v15 _setContinuousCornerRadius:20.0];

  v16 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v17 = [v16 layer];
  [v17 setMasksToBounds:1];

  v18 = +[UIColor labelColor];
  v19 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [v19 setTintColor:v18];

  v20 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  v21 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  [v20 addSubview:v21];

  v22 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(SVSSubCredentialActivationStartViewController *)self setActivityIndicator:v22];

  v23 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [v24 setHidden:1];

  v25 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  v26 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  [v25 addSubview:v26];

  v74 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v71 = [v74 topAnchor];
  v73 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  v72 = [v73 mainContentGuide];
  v70 = [v72 topAnchor];
  v69 = [v71 constraintGreaterThanOrEqualToAnchor:v70];
  v90[0] = v69;
  v68 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v65 = [v68 centerYAnchor];
  v67 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  v66 = [v67 mainContentGuide];
  v64 = [v66 centerYAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v90[1] = v63;
  v62 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v59 = [v62 centerXAnchor];
  v61 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  v60 = [v61 mainContentGuide];
  v58 = [v60 centerXAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v90[2] = v57;
  v56 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v55 = [v56 heightAnchor];
  v54 = [v55 constraintEqualToConstant:98.0];
  v90[3] = v54;
  v53 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v52 = [v53 widthAnchor];
  v51 = [v52 constraintEqualToConstant:98.0];
  v90[4] = v51;
  v50 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v47 = [v50 bottomAnchor];
  v49 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  v48 = [v49 mainContentGuide];
  v46 = [v48 bottomAnchor];
  v45 = [v47 constraintLessThanOrEqualToAnchor:v46];
  v90[5] = v45;
  v44 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  v43 = [v44 centerXAnchor];
  v27 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v28 = [v27 centerXAnchor];
  v29 = [v43 constraintEqualToAnchor:v28];
  v90[6] = v29;
  v30 = [(SVSSubCredentialActivationStartViewController *)self activityIndicator];
  v31 = [v30 centerYAnchor];
  v32 = [(SVSSubCredentialActivationStartViewController *)self appIconImageView];
  v33 = [v32 centerYAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  v90[7] = v34;
  v35 = [NSArray arrayWithObjects:v90 count:8];
  [NSLayoutConstraint activateConstraints:v35];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v36 = [(SVSSubCredentialActivationStartViewController *)self contentView];
  v37 = [v36 actionButtons];

  v38 = [v37 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v38)
  {
    v39 = *v80;
    while (2)
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v80 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v79 + 1) + 8 * i);
        if (![v41 proximityButtonType])
        {
          v38 = v41;
          goto LABEL_11;
        }
      }

      v38 = [v37 countByEnumeratingWithState:&v79 objects:v89 count:16];
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