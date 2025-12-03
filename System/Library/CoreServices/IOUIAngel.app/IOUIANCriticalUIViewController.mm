@interface IOUIANCriticalUIViewController
+ (id)_createBackdropView;
- (IOUIANCriticalUIViewController)init;
- (IOUIANCriticalUIViewControllerDelegate)delegate;
- (void)dismissEmergencyDialer;
- (void)emergencyCallHostViewControllerDidRequestDismiss:(id)dismiss;
- (void)emergencyCallHostViewControllerDidTerminate:(id)terminate withError:(id)error;
- (void)handleButtonAction:(id)action;
- (void)presentEmergencyDialer;
- (void)setHeaderText:(id)text;
- (void)setImage:(id)image;
- (void)setImageWithSystemImageNamed:(id)named andConfiguration:(id)configuration;
- (void)setMessageText:(id)text;
- (void)viewDidLoad;
@end

@implementation IOUIANCriticalUIViewController

- (IOUIANCriticalUIViewController)init
{
  v8.receiver = self;
  v8.super_class = IOUIANCriticalUIViewController;
  v2 = [(IOUIANCriticalUIViewController *)&v8 init];
  if (v2)
  {
    v3 = +[IOUIANCriticalUIViewController _createBackdropView];
    backdropView = v2->_backdropView;
    v2->_backdropView = v3;

    v5 = objc_opt_new();
    criticalUIView = v2->_criticalUIView;
    v2->_criticalUIView = v5;

    [(IOUIANCriticalUIView *)v2->_criticalUIView setDelegate:v2];
    [(IOUIANCriticalUIView *)v2->_criticalUIView setButtonTitle:@"Emergency"];
  }

  return v2;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  criticalUIView = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (criticalUIView)
  {
    criticalUIView2 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [criticalUIView2 setImage:imageCopy];
  }
}

- (void)setImageWithSystemImageNamed:(id)named andConfiguration:(id)configuration
{
  namedCopy = named;
  configurationCopy = configuration;
  criticalUIView = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (criticalUIView)
  {
    criticalUIView2 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [criticalUIView2 setImageWithSystemImageNamed:namedCopy andConfiguration:configurationCopy];
  }
}

- (void)setHeaderText:(id)text
{
  textCopy = text;
  criticalUIView = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (criticalUIView)
  {
    criticalUIView2 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [criticalUIView2 setHeaderText:textCopy];
  }
}

- (void)setMessageText:(id)text
{
  textCopy = text;
  criticalUIView = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (criticalUIView)
  {
    criticalUIView2 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [criticalUIView2 setMessageText:textCopy];
  }
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = IOUIANCriticalUIViewController;
  [(IOUIANCriticalUIViewController *)&v33 viewDidLoad];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUIANCriticalUIViewController viewDidLoad...", buf, 2u);
  }

  if (![(IOUIANCriticalUIViewController *)self debugViews])
  {
    view = [(IOUIANCriticalUIViewController *)self view];
    backdropView = [(IOUIANCriticalUIViewController *)self backdropView];
    [view insertSubview:backdropView atIndex:0];
  }

  view2 = [(IOUIANCriticalUIViewController *)self view];
  criticalUIView = [(IOUIANCriticalUIViewController *)self criticalUIView];
  [view2 addSubview:criticalUIView];

  criticalUIView2 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  [criticalUIView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  criticalUIView3 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  bottomAnchor = [criticalUIView3 bottomAnchor];
  view3 = [(IOUIANCriticalUIViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[0] = v26;
  criticalUIView4 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  centerYAnchor = [criticalUIView4 centerYAnchor];
  view4 = [(IOUIANCriticalUIViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v34[1] = v21;
  criticalUIView5 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  leadingAnchor = [criticalUIView5 leadingAnchor];
  view5 = [(IOUIANCriticalUIViewController *)self view];
  readableContentGuide = [view5 readableContentGuide];
  leadingAnchor2 = [readableContentGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[2] = v10;
  criticalUIView6 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  trailingAnchor = [criticalUIView6 trailingAnchor];
  view6 = [(IOUIANCriticalUIViewController *)self view];
  readableContentGuide2 = [view6 readableContentGuide];
  trailingAnchor2 = [readableContentGuide2 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[3] = v16;
  v17 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

+ (id)_createBackdropView
{
  v2 = [UIColor colorWithRed:0.02 green:0.02 blue:0.02 alpha:0.85];
  v3 = [_UIBackdropViewSettings settingsForPrivateStyle:-2];
  [v3 setBackdropVisible:1];
  v4 = [[_UIBackdropView alloc] initWithSettings:v3];
  inputSettings = [v4 inputSettings];
  [inputSettings setBlurRadius:5.0];

  v6 = [v2 colorWithAlphaComponent:1.0];
  inputSettings2 = [v4 inputSettings];
  [inputSettings2 setColorTint:v6];

  [v2 alphaComponent];
  v9 = v8;
  inputSettings3 = [v4 inputSettings];
  [inputSettings3 setColorTintAlpha:v9];

  return v4;
}

- (void)handleButtonAction:(id)action
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    actionCopy = action;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Button action handler fired! (view: %@)", &v5, 0xCu);
  }

  [(IOUIANCriticalUIViewController *)self presentEmergencyDialer];
}

- (void)presentEmergencyDialer
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Presenting emergency call dialer...", buf, 2u);
  }

  emergencyCallHostVC = [(IOUIANCriticalUIViewController *)self emergencyCallHostVC];

  if (!emergencyCallHostVC)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000038FC;
    v4[3] = &unk_10000C528;
    v4[4] = self;
    [IOUIANCriticalUIEmergencyCallHostViewController requestEmergencyCallControllerWithCompletion:v4];
  }
}

- (void)dismissEmergencyDialer
{
  emergencyCallHostVC = [(IOUIANCriticalUIViewController *)self emergencyCallHostVC];

  if (emergencyCallHostVC)
  {
    emergencyCallHostVC2 = [(IOUIANCriticalUIViewController *)self emergencyCallHostVC];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100003B88;
    v5[3] = &unk_10000C500;
    v5[4] = self;
    [emergencyCallHostVC2 dismissViewControllerAnimated:1 completion:v5];

    [(IOUIANCriticalUIViewController *)self setEmergencyCallHostVC:0];
  }
}

- (void)emergencyCallHostViewControllerDidRequestDismiss:(id)dismiss
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    dismissCopy = dismiss;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "emergencyCallHostViewControllerDidRequestDismiss! (emergencyCallHostViewController: %@)", &v5, 0xCu);
  }

  [(IOUIANCriticalUIViewController *)self dismissEmergencyDialer];
}

- (void)emergencyCallHostViewControllerDidTerminate:(id)terminate withError:(id)error
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    terminateCopy = terminate;
    v9 = 2112;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "emergencyCallHostViewControllerDidTerminate! (emergencyCallHostViewController: %@, error: %@)", &v7, 0x16u);
  }

  [(IOUIANCriticalUIViewController *)self dismissEmergencyDialer];
}

- (IOUIANCriticalUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end