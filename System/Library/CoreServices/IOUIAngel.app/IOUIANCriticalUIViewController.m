@interface IOUIANCriticalUIViewController
+ (id)_createBackdropView;
- (IOUIANCriticalUIViewController)init;
- (IOUIANCriticalUIViewControllerDelegate)delegate;
- (void)dismissEmergencyDialer;
- (void)emergencyCallHostViewControllerDidRequestDismiss:(id)a3;
- (void)emergencyCallHostViewControllerDidTerminate:(id)a3 withError:(id)a4;
- (void)handleButtonAction:(id)a3;
- (void)presentEmergencyDialer;
- (void)setHeaderText:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageWithSystemImageNamed:(id)a3 andConfiguration:(id)a4;
- (void)setMessageText:(id)a3;
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

- (void)setImage:(id)a3
{
  v6 = a3;
  v4 = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (v4)
  {
    v5 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [v5 setImage:v6];
  }
}

- (void)setImageWithSystemImageNamed:(id)a3 andConfiguration:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (v7)
  {
    v8 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [v8 setImageWithSystemImageNamed:v9 andConfiguration:v6];
  }
}

- (void)setHeaderText:(id)a3
{
  v6 = a3;
  v4 = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (v4)
  {
    v5 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [v5 setHeaderText:v6];
  }
}

- (void)setMessageText:(id)a3
{
  v6 = a3;
  v4 = [(IOUIANCriticalUIViewController *)self criticalUIView];

  if (v4)
  {
    v5 = [(IOUIANCriticalUIViewController *)self criticalUIView];
    [v5 setMessageText:v6];
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
    v3 = [(IOUIANCriticalUIViewController *)self view];
    v4 = [(IOUIANCriticalUIViewController *)self backdropView];
    [v3 insertSubview:v4 atIndex:0];
  }

  v5 = [(IOUIANCriticalUIViewController *)self view];
  v6 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  [v5 addSubview:v6];

  v7 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  v29 = [v31 bottomAnchor];
  v30 = [(IOUIANCriticalUIViewController *)self view];
  v28 = [v30 safeAreaLayoutGuide];
  v27 = [v28 bottomAnchor];
  v26 = [v29 constraintEqualToAnchor:v27];
  v34[0] = v26;
  v25 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  v23 = [v25 centerYAnchor];
  v24 = [(IOUIANCriticalUIViewController *)self view];
  v22 = [v24 centerYAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v34[1] = v21;
  v20 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  v18 = [v20 leadingAnchor];
  v19 = [(IOUIANCriticalUIViewController *)self view];
  v8 = [v19 readableContentGuide];
  v9 = [v8 leadingAnchor];
  v10 = [v18 constraintEqualToAnchor:v9];
  v34[2] = v10;
  v11 = [(IOUIANCriticalUIViewController *)self criticalUIView];
  v12 = [v11 trailingAnchor];
  v13 = [(IOUIANCriticalUIViewController *)self view];
  v14 = [v13 readableContentGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
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
  v5 = [v4 inputSettings];
  [v5 setBlurRadius:5.0];

  v6 = [v2 colorWithAlphaComponent:1.0];
  v7 = [v4 inputSettings];
  [v7 setColorTint:v6];

  [v2 alphaComponent];
  v9 = v8;
  v10 = [v4 inputSettings];
  [v10 setColorTintAlpha:v9];

  return v4;
}

- (void)handleButtonAction:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = a3;
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

  v3 = [(IOUIANCriticalUIViewController *)self emergencyCallHostVC];

  if (!v3)
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
  v3 = [(IOUIANCriticalUIViewController *)self emergencyCallHostVC];

  if (v3)
  {
    v4 = [(IOUIANCriticalUIViewController *)self emergencyCallHostVC];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100003B88;
    v5[3] = &unk_10000C500;
    v5[4] = self;
    [v4 dismissViewControllerAnimated:1 completion:v5];

    [(IOUIANCriticalUIViewController *)self setEmergencyCallHostVC:0];
  }
}

- (void)emergencyCallHostViewControllerDidRequestDismiss:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "emergencyCallHostViewControllerDidRequestDismiss! (emergencyCallHostViewController: %@)", &v5, 0xCu);
  }

  [(IOUIANCriticalUIViewController *)self dismissEmergencyDialer];
}

- (void)emergencyCallHostViewControllerDidTerminate:(id)a3 withError:(id)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = a3;
    v9 = 2112;
    v10 = a4;
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