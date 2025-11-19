@interface PasscodeViewController
- (BOOL)deviceHasComplexNumericPasscode;
- (BOOL)deviceHasSimplePasscode;
- (PasscodeViewController)init;
- (PasscodeViewControllerDelegate)delegate;
- (unint64_t)numberOfCharactersInSimpleDevicePasscode;
- (void)disable;
- (void)enable;
- (void)loadView;
- (void)nextButtonPressed:(id)a3;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)passcodeInput:(id)a3 willChangeContents:(id)a4;
- (void)viewDidLoad;
@end

@implementation PasscodeViewController

- (PasscodeViewController)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PASSCODE_SCREEN_TITLE" value:&stru_100028E90 table:0];
  v7.receiver = self;
  v7.super_class = PasscodeViewController;
  v5 = [(PasscodeViewController *)&v7 initWithTitle:v4 detailText:0 symbolName:@"lock" contentLayout:2];

  return v5;
}

- (void)disable
{
  v3 = [(PasscodeViewController *)self spinnerItem];
  v4 = [(PasscodeViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C6B0;
  v8[3] = &unk_100028A88;
  v8[4] = self;
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:0.5];
  [(PasscodeViewController *)self setActivityTimer:v5];

  v6 = [(PasscodeViewController *)self passcodeInputView];
  [v6 resignFirstResponder];

  v7 = [(PasscodeViewController *)self navigationItem];
  [v7 setHidesBackButton:1 animated:1];
}

- (void)enable
{
  v3 = [(PasscodeViewController *)self nextItem];
  if (v3)
  {
    v4 = [(PasscodeViewController *)self nextItem];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PasscodeViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  if (v3)
  {
  }

  v6 = [(PasscodeViewController *)self navigationItem];
  [v6 setHidesBackButton:0 animated:1];

  v7 = [(PasscodeViewController *)self nextItem];
  [v7 setEnabled:0];

  v8 = [(PasscodeViewController *)self activityTimer];
  [v8 invalidate];

  [(PasscodeViewController *)self setActivityTimer:0];
  v9 = [(PasscodeViewController *)self activityView];
  [v9 stopAnimating];

  v10 = [(PasscodeViewController *)self passcodeInputView];
  [v10 setPasscode:&stru_100028E90];

  v11 = [(PasscodeViewController *)self passcodeInputView];
  [v11 becomeFirstResponder];
}

- (void)loadView
{
  v42.receiver = self;
  v42.super_class = PasscodeViewController;
  [(PasscodeViewController *)&v42 loadView];
  if ([(PasscodeViewController *)self deviceHasSimplePasscode])
  {
    v3 = [[BFFSimplePasscodeInputView alloc] initWithFrame:-[PasscodeViewController numberOfCharactersInSimpleDevicePasscode](self numberOfEntryFields:{"numberOfCharactersInSimpleDevicePasscode"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(PasscodeViewController *)self setPasscodeInputView:v3];
LABEL_5:

    goto LABEL_6;
  }

  v4 = [(PasscodeViewController *)self deviceHasComplexNumericPasscode];
  v5 = [[BFFComplexPasscodeInputView alloc] initWithFrame:v4 numericOnly:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PasscodeViewController *)self setPasscodeInputView:v5];

  if (v4)
  {
    v6 = [UIBarButtonItem alloc];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"NEXT_BUTTON_TITLE" value:&stru_100028E90 table:0];
    v9 = [v6 initWithTitle:v8 image:0 target:self action:"nextButtonPressed:" menu:0];
    [(PasscodeViewController *)self setNextItem:v9];

    v10 = [(PasscodeViewController *)self nextItem];
    [v10 setEnabled:0];

    v3 = [(PasscodeViewController *)self nextItem];
    v11 = [(PasscodeViewController *)self navigationItem];
    [v11 setRightBarButtonItem:v3];

    goto LABEL_5;
  }

LABEL_6:
  v12 = [(PasscodeViewController *)self passcodeInputView];
  [v12 setDelegate:self];

  v13 = [(PasscodeViewController *)self contentView];
  v14 = [(PasscodeViewController *)self passcodeInputView];
  [v13 addSubview:v14];

  v15 = [(PasscodeViewController *)self passcodeInputView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(PasscodeViewController *)self passcodeInputView];
  v39 = [v41 topAnchor];
  v40 = [(PasscodeViewController *)self contentView];
  v38 = [v40 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v43[0] = v37;
  v36 = [(PasscodeViewController *)self passcodeInputView];
  v34 = [v36 leftAnchor];
  v35 = [(PasscodeViewController *)self contentView];
  v33 = [v35 leftAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v43[1] = v32;
  v31 = [(PasscodeViewController *)self passcodeInputView];
  v30 = [v31 rightAnchor];
  v16 = [(PasscodeViewController *)self contentView];
  v17 = [v16 rightAnchor];
  v18 = [v30 constraintEqualToAnchor:v17];
  v43[2] = v18;
  v19 = [(PasscodeViewController *)self passcodeInputView];
  v20 = [v19 bottomAnchor];
  v21 = [(PasscodeViewController *)self contentView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v43[3] = v23;
  v24 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(PasscodeViewController *)self setActivityView:v25];

  v26 = [(PasscodeViewController *)self activityView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [UIBarButtonItem alloc];
  v28 = [(PasscodeViewController *)self activityView];
  v29 = [v27 initWithCustomView:v28];
  [(PasscodeViewController *)self setSpinnerItem:v29];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PasscodeViewController;
  [(PasscodeViewController *)&v2 viewDidLoad];
}

- (BOOL)deviceHasSimplePasscode
{
  v2 = +[DeviceRecoveryController sharedController];
  v3 = [v2 unlockScreenType] == 0;

  return v3;
}

- (BOOL)deviceHasComplexNumericPasscode
{
  v2 = +[DeviceRecoveryController sharedController];
  v3 = [v2 unlockScreenType] == 1;

  return v3;
}

- (unint64_t)numberOfCharactersInSimpleDevicePasscode
{
  v2 = +[DeviceRecoveryController sharedController];
  v3 = [v2 simplePasscodeType];

  if (v3 == -1)
  {
    v6 = sub_100012608();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "[PasscodeViewController numberOfCharactersInSimpleDevicePasscode]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Device passcode is not simple", &v8, 0xCu);
    }

LABEL_13:
    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "[PasscodeViewController numberOfCharactersInSimpleDevicePasscode]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Device passcode type is not known", &v8, 0xCu);
    }

    v5 = 0;
    goto LABEL_16;
  }

  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = sub_100012608();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136446210;
        v9 = "[PasscodeViewController numberOfCharactersInSimpleDevicePasscode]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Device passcode is 4 digits", &v8, 0xCu);
      }

      v5 = 4;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[PasscodeViewController numberOfCharactersInSimpleDevicePasscode]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Device passcode is 6 digits", &v8, 0xCu);
  }

  v5 = 6;
LABEL_16:

  return v5;
}

- (void)nextButtonPressed:(id)a3
{
  v4 = [(PasscodeViewController *)self delegate];

  if (v4)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[PasscodeViewController nextButtonPressed:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Next button pressed. Calling didAuthenticate on delegate.", &v9, 0xCu);
    }

    v6 = [(PasscodeViewController *)self delegate];
    v7 = [(PasscodeViewController *)self passcodeInputView];
    v8 = [v7 passcode];
    [v6 passcodeViewController:self didEnterPasscode:v8];
  }
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v5 = a4;
  v6 = [(PasscodeViewController *)self delegate];

  if (v6)
  {
    v7 = sub_100012608();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[PasscodeViewController passcodeInput:enteredPasscode:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling didAuthenticate on delegate.", &v9, 0xCu);
    }

    v8 = [(PasscodeViewController *)self delegate];
    [v8 passcodeViewController:self didEnterPasscode:v5];
  }
}

- (void)passcodeInput:(id)a3 willChangeContents:(id)a4
{
  v8 = a4;
  v5 = [(PasscodeViewController *)self nextItem];

  if (v5)
  {
    v6 = [v8 length] != 0;
    v7 = [(PasscodeViewController *)self nextItem];
    [v7 setEnabled:v6];
  }
}

- (PasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end