@interface PasscodeViewController
- (BOOL)deviceHasComplexNumericPasscode;
- (BOOL)deviceHasSimplePasscode;
- (PasscodeViewController)init;
- (PasscodeViewControllerDelegate)delegate;
- (unint64_t)numberOfCharactersInSimpleDevicePasscode;
- (void)disable;
- (void)enable;
- (void)loadView;
- (void)nextButtonPressed:(id)pressed;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)passcodeInput:(id)input willChangeContents:(id)contents;
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
  spinnerItem = [(PasscodeViewController *)self spinnerItem];
  navigationItem = [(PasscodeViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:spinnerItem];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C6B0;
  v8[3] = &unk_100028A88;
  v8[4] = self;
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:0.5];
  [(PasscodeViewController *)self setActivityTimer:v5];

  passcodeInputView = [(PasscodeViewController *)self passcodeInputView];
  [passcodeInputView resignFirstResponder];

  navigationItem2 = [(PasscodeViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1 animated:1];
}

- (void)enable
{
  nextItem = [(PasscodeViewController *)self nextItem];
  if (nextItem)
  {
    nextItem2 = [(PasscodeViewController *)self nextItem];
  }

  else
  {
    nextItem2 = 0;
  }

  navigationItem = [(PasscodeViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:nextItem2];

  if (nextItem)
  {
  }

  navigationItem2 = [(PasscodeViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:0 animated:1];

  nextItem3 = [(PasscodeViewController *)self nextItem];
  [nextItem3 setEnabled:0];

  activityTimer = [(PasscodeViewController *)self activityTimer];
  [activityTimer invalidate];

  [(PasscodeViewController *)self setActivityTimer:0];
  activityView = [(PasscodeViewController *)self activityView];
  [activityView stopAnimating];

  passcodeInputView = [(PasscodeViewController *)self passcodeInputView];
  [passcodeInputView setPasscode:&stru_100028E90];

  passcodeInputView2 = [(PasscodeViewController *)self passcodeInputView];
  [passcodeInputView2 becomeFirstResponder];
}

- (void)loadView
{
  v42.receiver = self;
  v42.super_class = PasscodeViewController;
  [(PasscodeViewController *)&v42 loadView];
  if ([(PasscodeViewController *)self deviceHasSimplePasscode])
  {
    nextItem2 = [[BFFSimplePasscodeInputView alloc] initWithFrame:-[PasscodeViewController numberOfCharactersInSimpleDevicePasscode](self numberOfEntryFields:{"numberOfCharactersInSimpleDevicePasscode"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(PasscodeViewController *)self setPasscodeInputView:nextItem2];
LABEL_5:

    goto LABEL_6;
  }

  deviceHasComplexNumericPasscode = [(PasscodeViewController *)self deviceHasComplexNumericPasscode];
  v5 = [[BFFComplexPasscodeInputView alloc] initWithFrame:deviceHasComplexNumericPasscode numericOnly:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PasscodeViewController *)self setPasscodeInputView:v5];

  if (deviceHasComplexNumericPasscode)
  {
    v6 = [UIBarButtonItem alloc];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"NEXT_BUTTON_TITLE" value:&stru_100028E90 table:0];
    v9 = [v6 initWithTitle:v8 image:0 target:self action:"nextButtonPressed:" menu:0];
    [(PasscodeViewController *)self setNextItem:v9];

    nextItem = [(PasscodeViewController *)self nextItem];
    [nextItem setEnabled:0];

    nextItem2 = [(PasscodeViewController *)self nextItem];
    navigationItem = [(PasscodeViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:nextItem2];

    goto LABEL_5;
  }

LABEL_6:
  passcodeInputView = [(PasscodeViewController *)self passcodeInputView];
  [passcodeInputView setDelegate:self];

  contentView = [(PasscodeViewController *)self contentView];
  passcodeInputView2 = [(PasscodeViewController *)self passcodeInputView];
  [contentView addSubview:passcodeInputView2];

  passcodeInputView3 = [(PasscodeViewController *)self passcodeInputView];
  [passcodeInputView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  passcodeInputView4 = [(PasscodeViewController *)self passcodeInputView];
  topAnchor = [passcodeInputView4 topAnchor];
  contentView2 = [(PasscodeViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v37;
  passcodeInputView5 = [(PasscodeViewController *)self passcodeInputView];
  leftAnchor = [passcodeInputView5 leftAnchor];
  contentView3 = [(PasscodeViewController *)self contentView];
  leftAnchor2 = [contentView3 leftAnchor];
  v32 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v43[1] = v32;
  passcodeInputView6 = [(PasscodeViewController *)self passcodeInputView];
  rightAnchor = [passcodeInputView6 rightAnchor];
  contentView4 = [(PasscodeViewController *)self contentView];
  rightAnchor2 = [contentView4 rightAnchor];
  v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v43[2] = v18;
  passcodeInputView7 = [(PasscodeViewController *)self passcodeInputView];
  bottomAnchor = [passcodeInputView7 bottomAnchor];
  contentView5 = [(PasscodeViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[3] = v23;
  v24 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(PasscodeViewController *)self setActivityView:v25];

  activityView = [(PasscodeViewController *)self activityView];
  [activityView setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [UIBarButtonItem alloc];
  activityView2 = [(PasscodeViewController *)self activityView];
  v29 = [v27 initWithCustomView:activityView2];
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
  simplePasscodeType = [v2 simplePasscodeType];

  if (simplePasscodeType == -1)
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

  if (simplePasscodeType != 1)
  {
    if (!simplePasscodeType)
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

- (void)nextButtonPressed:(id)pressed
{
  delegate = [(PasscodeViewController *)self delegate];

  if (delegate)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[PasscodeViewController nextButtonPressed:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Next button pressed. Calling didAuthenticate on delegate.", &v9, 0xCu);
    }

    delegate2 = [(PasscodeViewController *)self delegate];
    passcodeInputView = [(PasscodeViewController *)self passcodeInputView];
    passcode = [passcodeInputView passcode];
    [delegate2 passcodeViewController:self didEnterPasscode:passcode];
  }
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  delegate = [(PasscodeViewController *)self delegate];

  if (delegate)
  {
    v7 = sub_100012608();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[PasscodeViewController passcodeInput:enteredPasscode:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling didAuthenticate on delegate.", &v9, 0xCu);
    }

    delegate2 = [(PasscodeViewController *)self delegate];
    [delegate2 passcodeViewController:self didEnterPasscode:passcodeCopy];
  }
}

- (void)passcodeInput:(id)input willChangeContents:(id)contents
{
  contentsCopy = contents;
  nextItem = [(PasscodeViewController *)self nextItem];

  if (nextItem)
  {
    v6 = [contentsCopy length] != 0;
    nextItem2 = [(PasscodeViewController *)self nextItem];
    [nextItem2 setEnabled:v6];
  }
}

- (PasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end