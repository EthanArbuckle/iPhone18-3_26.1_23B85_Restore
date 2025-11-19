@interface MapsAppleConnectAuthViewController
+ (void)presentAppleConnectAuthControllerFrom:(id)a3 withProxyURL:(id)a4;
- (MapsAppleConnectAuthViewController)initWithProxyURL:(id)a3;
- (void)_dismissViewController;
- (void)_doAppleConnectAuthentication;
- (void)_updateStatus:(BOOL)a3 message:(id)a4;
- (void)authenticator:(id)a3 didCompleteWithError:(id)a4;
- (void)authenticator:(id)a3 didCompleteWithResult:(id)a4;
- (void)setPersonID:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MapsAppleConnectAuthViewController

- (void)setPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppleConnectAuthViewController *)self personID];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = sub_100798EEC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Updating AppleConnect ID", v9, 2u);
      }

      if (v4)
      {
        GEOConfigSetString();
      }

      else
      {
        _GEOConfigRemoveValue();
      }
    }
  }
}

- (void)authenticator:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  self->_state = 2;
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = MapsAuthDidFinishNotification;
  v18 = GEOMapsAuthSuccessKey;
  v19 = &__kCFBooleanFalse;
  v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v6 postNotificationName:v7 object:self userInfo:v8];

  v9 = [v5 domain];
  LODWORD(v7) = [v9 isEqualToString:@"AppleConnectErrorDomain"];

  if (!v7)
  {
    v12 = GEOGetMapsProxyAuthLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      v13 = "Apple Connect Authentication failed with error: %@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    }

LABEL_11:

    v14 = [v5 localizedDescription];
    v15 = [NSString stringWithFormat:@"Failed with error: %@", v14];
    [(MapsAppleConnectAuthViewController *)self _updateStatus:0 message:v15];

    goto LABEL_12;
  }

  v10 = [v5 code];
  v11 = GEOGetMapsProxyAuthLog();
  v12 = v11;
  if (v10 != -100)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v10;
      v13 = "Apple Connect Authentication failed with error %ld";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Apple Connect Authentication cancelled", buf, 2u);
  }

  [(MapsAppleConnectAuthViewController *)self _updateStatus:0 message:@"Canceled"];
LABEL_12:
  [(MapsAppleConnectAuthViewController *)self setPersonID:0];
}

- (void)authenticator:(id)a3 didCompleteWithResult:(id)a4
{
  v5 = a4;
  self->_state = 2;
  v6 = [v5 token];
  if (![v6 length])
  {

    goto LABEL_7;
  }

  v7 = [v5 personId];
  v8 = [v7 length];

  if (!v8)
  {
LABEL_7:
    v15 = [NSString stringWithFormat:@"Failed: missing token or personID"];
    [(MapsAppleConnectAuthViewController *)self _updateStatus:0 message:v15];

    [(MapsAppleConnectAuthViewController *)self setPersonID:0];
    goto LABEL_8;
  }

  v9 = GEOGetMapsProxyAuthLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v5 username];
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Apple Connect Authentication Success for User: %@", &v16, 0xCu);
  }

  [(MapsAppleConnectAuthViewController *)self _updateStatus:1 message:@"Complete"];
  v11 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  v12 = [v5 token];
  v13 = [(MapsAppleConnectAuthViewController *)self authProxyURL];
  [v11 renewMapsAuthProxyToken:0 fromToken:v12 authProxyURL:v13 suppressNotification:0];

  v14 = [v5 personId];
  [(MapsAppleConnectAuthViewController *)self setPersonID:v14];

  [(MapsAppleConnectAuthViewController *)self _dismissViewController];
LABEL_8:
}

- (void)_doAppleConnectAuthentication
{
  [(MapsAppleConnectAuthViewController *)self _updateStatus:1 message:@"Authenticating..."];
  BOOL = GEOConfigGetBOOL();
  v4 = objc_alloc_init(AppleConnectSSOAuthenticator);
  appleConnectAuthenticator = self->_appleConnectAuthenticator;
  self->_appleConnectAuthenticator = v4;

  [(AppleConnectSSOAuthenticator *)self->_appleConnectAuthenticator setDelegate:self];
  [(AppleConnectSSOAuthenticator *)self->_appleConnectAuthenticator setAppIdentifier:@"135828"];
  if (BOOL)
  {
    v6 = @"APPLECONNECT.APPLE.COM";
  }

  else
  {
    v6 = @"APPLECONNECT-UAT.APPLE.COM";
  }

  [(AppleConnectSSOAuthenticator *)self->_appleConnectAuthenticator setEnvIdentifier:v6];
  [(AppleConnectSSOAuthenticator *)self->_appleConnectAuthenticator authenticate];
  self->_state = 0;
  v7 = dispatch_time(0, 15000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A7FAE0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (void)_dismissViewController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A7FBDC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateStatus:(BOOL)a3 message:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A7FC94;
  block[3] = &unk_101660CE8;
  v7 = a3;
  block[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MapsAppleConnectAuthViewController;
  [(MapsAppleConnectAuthViewController *)&v5 viewDidAppear:a3];
  if (!self->_alreadyDisplayedACAuth)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A7FDE4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)viewDidLoad
{
  v79.receiver = self;
  v79.super_class = MapsAppleConnectAuthViewController;
  [(MapsAppleConnectAuthViewController *)&v79 viewDidLoad];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismissViewController"];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v3;

  [(UIBarButtonItem *)self->_cancelButton setEnabled:0];
  v5 = self->_cancelButton;
  v6 = [(MapsAppleConnectAuthViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = +[UIColor systemBackgroundColor];
  v8 = [(MapsAppleConnectAuthViewController *)self view];
  [v8 setBackgroundColor:v7];

  v9 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setText:@"AppleConnect for Maps Environment Authentication"];
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v13 setFont:v14];

  [v13 setTextAlignment:1];
  [v13 setLineBreakMode:0];
  [v13 setNumberOfLines:0];
  v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  statusLabel = self->_statusLabel;
  self->_statusLabel = v16;

  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_statusLabel setFont:v18];

  [(UILabel *)self->_statusLabel setTextAlignment:1];
  [(UILabel *)self->_statusLabel setNumberOfLines:0];
  [(UILabel *)self->_statusLabel setLineBreakMode:0];
  v19 = [UIButton buttonWithType:1];
  reAuthButton = self->_reAuthButton;
  self->_reAuthButton = v19;

  [(UIButton *)self->_reAuthButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_reAuthButton setTitle:@"Retry" forState:0];
  [(UIButton *)self->_reAuthButton addTarget:self action:"_doAppleConnectAuthentication" forControlEvents:64];
  [(UIButton *)self->_reAuthButton setHidden:1];
  v21 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 addSubview:v13];
  [v21 addSubview:v15];
  [v21 addSubview:self->_statusLabel];
  [v21 addSubview:self->_reAuthButton];
  v22 = [(MapsAppleConnectAuthViewController *)self view];
  [v22 addSubview:v21];

  v77 = [v21 topAnchor];
  v78 = [(MapsAppleConnectAuthViewController *)self view];
  v76 = [v78 layoutMarginsGuide];
  v75 = [v76 topAnchor];
  v74 = [v77 constraintEqualToSystemSpacingBelowAnchor:v75 multiplier:3.0];
  v80[0] = v74;
  v73 = [(MapsAppleConnectAuthViewController *)self view];
  v72 = [v73 layoutMarginsGuide];
  v71 = [v72 bottomAnchor];
  v70 = [v21 bottomAnchor];
  v69 = [v71 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v70 multiplier:5.0];
  v80[1] = v69;
  v67 = [v21 leadingAnchor];
  v68 = [(MapsAppleConnectAuthViewController *)self view];
  v66 = [v68 layoutMarginsGuide];
  v65 = [v66 leadingAnchor];
  v64 = [v67 constraintEqualToSystemSpacingAfterAnchor:v65 multiplier:1.0];
  v80[2] = v64;
  v63 = [(MapsAppleConnectAuthViewController *)self view];
  v62 = [v63 layoutMarginsGuide];
  v61 = [v62 trailingAnchor];
  v60 = [v21 trailingAnchor];
  v59 = [v61 constraintEqualToSystemSpacingAfterAnchor:v60 multiplier:1.0];
  v80[3] = v59;
  v57 = [v13 topAnchor];
  v56 = [v21 topAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v80[4] = v55;
  v54 = [v15 topAnchor];
  v53 = [v13 bottomAnchor];
  v51 = [v54 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v53 multiplier:1.0];
  v80[5] = v51;
  v50 = [(UILabel *)self->_statusLabel topAnchor];
  v58 = v15;
  v49 = [v15 bottomAnchor];
  v48 = [v50 constraintEqualToSystemSpacingBelowAnchor:v49 multiplier:3.0];
  v80[6] = v48;
  v47 = [(UIButton *)self->_reAuthButton topAnchor];
  v46 = [(UILabel *)self->_statusLabel bottomAnchor];
  v45 = [v47 constraintEqualToSystemSpacingBelowAnchor:v46 multiplier:3.0];
  v80[7] = v45;
  v44 = [v21 bottomAnchor];
  v43 = [(UIButton *)self->_reAuthButton bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v80[8] = v42;
  v41 = [v15 centerXAnchor];
  v40 = [v21 centerXAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v80[9] = v39;
  v52 = v13;
  v38 = [v13 leadingAnchor];
  v37 = [v21 leadingAnchor];
  v36 = [v38 constraintEqualToSystemSpacingAfterAnchor:v37 multiplier:1.0];
  v80[10] = v36;
  v35 = [v21 trailingAnchor];
  v34 = [v13 trailingAnchor];
  v33 = [v35 constraintEqualToSystemSpacingAfterAnchor:v34 multiplier:1.0];
  v80[11] = v33;
  v32 = [(UILabel *)self->_statusLabel leadingAnchor];
  v23 = [v21 leadingAnchor];
  v24 = [v32 constraintEqualToSystemSpacingAfterAnchor:v23 multiplier:1.0];
  v80[12] = v24;
  v25 = [v21 trailingAnchor];
  v26 = [(UILabel *)self->_statusLabel trailingAnchor];
  v27 = [v25 constraintEqualToSystemSpacingAfterAnchor:v26 multiplier:1.0];
  v80[13] = v27;
  v28 = [(UIButton *)self->_reAuthButton centerXAnchor];
  v29 = [v21 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v80[14] = v30;
  v31 = [NSArray arrayWithObjects:v80 count:15];
  [NSLayoutConstraint activateConstraints:v31];
}

- (MapsAppleConnectAuthViewController)initWithProxyURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = MapsAppleConnectAuthViewController;
  v3 = a3;
  v4 = [(MapsAppleConnectAuthViewController *)&v6 init];
  [(MapsAppleConnectAuthViewController *)v4 setAuthProxyURL:v3, v6.receiver, v6.super_class];

  return v4;
}

+ (void)presentAppleConnectAuthControllerFrom:(id)a3 withProxyURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 presentedViewController];

  if (v7)
  {
    do
    {
      v13 = [v5 presentedViewController];

      v8 = [v13 presentedViewController];

      v9 = v13;
      v5 = v13;
    }

    while (v8);
  }

  else
  {
    v9 = v5;
  }

  v14 = v9;
  if (!v6)
  {
    v10 = GEOGetURL();
    if (!v10)
    {
      v10 = GEOGetURL();
      if (!v10)
      {
        v6 = [UIAlertController alertControllerWithTitle:@"I'm afraid I can't do that" message:@"No Maps Authentication URL found. Refusing to attempt Apple Connect Auth. Try switching to a secure environment before re-attempting." preferredStyle:1];
        v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
        [v6 addAction:v11];
        [v14 presentViewController:v6 animated:1 completion:0];
        goto LABEL_12;
      }
    }

    v6 = v10;
  }

  v11 = [[MapsAppleConnectAuthViewController alloc] initWithProxyURL:v6];
  v12 = [[UINavigationController alloc] initWithRootViewController:v11];
  if ([v14 isViewLoaded])
  {
    [v12 setModalPresentationStyle:2];
    [v14 presentViewController:v12 animated:1 completion:0];
  }

LABEL_12:
}

@end