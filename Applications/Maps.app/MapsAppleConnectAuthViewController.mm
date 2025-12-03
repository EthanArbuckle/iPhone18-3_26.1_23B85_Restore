@interface MapsAppleConnectAuthViewController
+ (void)presentAppleConnectAuthControllerFrom:(id)from withProxyURL:(id)l;
- (MapsAppleConnectAuthViewController)initWithProxyURL:(id)l;
- (void)_dismissViewController;
- (void)_doAppleConnectAuthentication;
- (void)_updateStatus:(BOOL)status message:(id)message;
- (void)authenticator:(id)authenticator didCompleteWithError:(id)error;
- (void)authenticator:(id)authenticator didCompleteWithResult:(id)result;
- (void)setPersonID:(id)d;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MapsAppleConnectAuthViewController

- (void)setPersonID:(id)d
{
  dCopy = d;
  personID = [(MapsAppleConnectAuthViewController *)self personID];
  v6 = personID;
  if (personID == dCopy)
  {
  }

  else
  {
    v7 = [dCopy isEqual:personID];

    if ((v7 & 1) == 0)
    {
      v8 = sub_100798EEC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Updating AppleConnect ID", v9, 2u);
      }

      if (dCopy)
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

- (void)authenticator:(id)authenticator didCompleteWithError:(id)error
{
  errorCopy = error;
  self->_state = 2;
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = MapsAuthDidFinishNotification;
  v18 = GEOMapsAuthSuccessKey;
  v19 = &__kCFBooleanFalse;
  v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v6 postNotificationName:v7 object:self userInfo:v8];

  domain = [errorCopy domain];
  LODWORD(v7) = [domain isEqualToString:@"AppleConnectErrorDomain"];

  if (!v7)
  {
    v12 = GEOGetMapsProxyAuthLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = errorCopy;
      v13 = "Apple Connect Authentication failed with error: %@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    }

LABEL_11:

    localizedDescription = [errorCopy localizedDescription];
    v15 = [NSString stringWithFormat:@"Failed with error: %@", localizedDescription];
    [(MapsAppleConnectAuthViewController *)self _updateStatus:0 message:v15];

    goto LABEL_12;
  }

  code = [errorCopy code];
  v11 = GEOGetMapsProxyAuthLog();
  v12 = v11;
  if (code != -100)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = code;
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

- (void)authenticator:(id)authenticator didCompleteWithResult:(id)result
{
  resultCopy = result;
  self->_state = 2;
  token = [resultCopy token];
  if (![token length])
  {

    goto LABEL_7;
  }

  personId = [resultCopy personId];
  v8 = [personId length];

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
    username = [resultCopy username];
    v16 = 138412290;
    v17 = username;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Apple Connect Authentication Success for User: %@", &v16, 0xCu);
  }

  [(MapsAppleConnectAuthViewController *)self _updateStatus:1 message:@"Complete"];
  v11 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  token2 = [resultCopy token];
  authProxyURL = [(MapsAppleConnectAuthViewController *)self authProxyURL];
  [v11 renewMapsAuthProxyToken:0 fromToken:token2 authProxyURL:authProxyURL suppressNotification:0];

  personId2 = [resultCopy personId];
  [(MapsAppleConnectAuthViewController *)self setPersonID:personId2];

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

- (void)_updateStatus:(BOOL)status message:(id)message
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A7FC94;
  block[3] = &unk_101660CE8;
  statusCopy = status;
  block[4] = self;
  messageCopy = message;
  v4 = messageCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MapsAppleConnectAuthViewController;
  [(MapsAppleConnectAuthViewController *)&v5 viewDidAppear:appear];
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
  navigationItem = [(MapsAppleConnectAuthViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v5];

  v7 = +[UIColor systemBackgroundColor];
  view = [(MapsAppleConnectAuthViewController *)self view];
  [view setBackgroundColor:v7];

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
  view2 = [(MapsAppleConnectAuthViewController *)self view];
  [view2 addSubview:v21];

  topAnchor = [v21 topAnchor];
  view3 = [(MapsAppleConnectAuthViewController *)self view];
  layoutMarginsGuide = [view3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v74 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:3.0];
  v80[0] = v74;
  view4 = [(MapsAppleConnectAuthViewController *)self view];
  layoutMarginsGuide2 = [view4 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  bottomAnchor2 = [v21 bottomAnchor];
  v69 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:5.0];
  v80[1] = v69;
  leadingAnchor = [v21 leadingAnchor];
  view5 = [(MapsAppleConnectAuthViewController *)self view];
  layoutMarginsGuide3 = [view5 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
  v64 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v80[2] = v64;
  view6 = [(MapsAppleConnectAuthViewController *)self view];
  layoutMarginsGuide4 = [view6 layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide4 trailingAnchor];
  trailingAnchor2 = [v21 trailingAnchor];
  v59 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v80[3] = v59;
  topAnchor3 = [v13 topAnchor];
  topAnchor4 = [v21 topAnchor];
  v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v80[4] = v55;
  topAnchor5 = [v15 topAnchor];
  bottomAnchor3 = [v13 bottomAnchor];
  v51 = [topAnchor5 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  v80[5] = v51;
  topAnchor6 = [(UILabel *)self->_statusLabel topAnchor];
  v58 = v15;
  bottomAnchor4 = [v15 bottomAnchor];
  v48 = [topAnchor6 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:3.0];
  v80[6] = v48;
  topAnchor7 = [(UIButton *)self->_reAuthButton topAnchor];
  bottomAnchor5 = [(UILabel *)self->_statusLabel bottomAnchor];
  v45 = [topAnchor7 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor5 multiplier:3.0];
  v80[7] = v45;
  bottomAnchor6 = [v21 bottomAnchor];
  bottomAnchor7 = [(UIButton *)self->_reAuthButton bottomAnchor];
  v42 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v80[8] = v42;
  centerXAnchor = [v15 centerXAnchor];
  centerXAnchor2 = [v21 centerXAnchor];
  v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v80[9] = v39;
  v52 = v13;
  leadingAnchor3 = [v13 leadingAnchor];
  leadingAnchor4 = [v21 leadingAnchor];
  v36 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
  v80[10] = v36;
  trailingAnchor3 = [v21 trailingAnchor];
  trailingAnchor4 = [v13 trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
  v80[11] = v33;
  leadingAnchor5 = [(UILabel *)self->_statusLabel leadingAnchor];
  leadingAnchor6 = [v21 leadingAnchor];
  v24 = [leadingAnchor5 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor6 multiplier:1.0];
  v80[12] = v24;
  trailingAnchor5 = [v21 trailingAnchor];
  trailingAnchor6 = [(UILabel *)self->_statusLabel trailingAnchor];
  v27 = [trailingAnchor5 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor6 multiplier:1.0];
  v80[13] = v27;
  centerXAnchor3 = [(UIButton *)self->_reAuthButton centerXAnchor];
  centerXAnchor4 = [v21 centerXAnchor];
  v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v80[14] = v30;
  v31 = [NSArray arrayWithObjects:v80 count:15];
  [NSLayoutConstraint activateConstraints:v31];
}

- (MapsAppleConnectAuthViewController)initWithProxyURL:(id)l
{
  v6.receiver = self;
  v6.super_class = MapsAppleConnectAuthViewController;
  lCopy = l;
  v4 = [(MapsAppleConnectAuthViewController *)&v6 init];
  [(MapsAppleConnectAuthViewController *)v4 setAuthProxyURL:lCopy, v6.receiver, v6.super_class];

  return v4;
}

+ (void)presentAppleConnectAuthControllerFrom:(id)from withProxyURL:(id)l
{
  fromCopy = from;
  lCopy = l;
  presentedViewController = [fromCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [fromCopy presentedViewController];

      v13PresentedViewController = [presentedViewController2 presentedViewController];

      v9 = presentedViewController2;
      fromCopy = presentedViewController2;
    }

    while (v13PresentedViewController);
  }

  else
  {
    v9 = fromCopy;
  }

  v14 = v9;
  if (!lCopy)
  {
    v10 = GEOGetURL();
    if (!v10)
    {
      v10 = GEOGetURL();
      if (!v10)
      {
        lCopy = [UIAlertController alertControllerWithTitle:@"I'm afraid I can't do that" message:@"No Maps Authentication URL found. Refusing to attempt Apple Connect Auth. Try switching to a secure environment before re-attempting." preferredStyle:1];
        v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
        [lCopy addAction:v11];
        [v14 presentViewController:lCopy animated:1 completion:0];
        goto LABEL_12;
      }
    }

    lCopy = v10;
  }

  v11 = [[MapsAppleConnectAuthViewController alloc] initWithProxyURL:lCopy];
  v12 = [[UINavigationController alloc] initWithRootViewController:v11];
  if ([v14 isViewLoaded])
  {
    [v12 setModalPresentationStyle:2];
    [v14 presentViewController:v12 animated:1 completion:0];
  }

LABEL_12:
}

@end