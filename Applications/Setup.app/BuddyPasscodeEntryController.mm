@interface BuddyPasscodeEntryController
- (BOOL)usesSimplePasscodeEntry;
- (BuddyPasscodeEntryDelegate)delegate;
- (id)passcodeView;
- (void)_finishedWithPasscode:(id)passcode;
- (void)_setupFirstEntry;
- (void)clear;
- (void)configurePasscodeTypeUsingAnimations:(BOOL)animations;
- (void)dealloc;
- (void)loadView;
- (void)nextButtonPressed;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)passcodeInput:(id)input willChangeContents:(id)contents;
- (void)updateStatusMessage;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BuddyPasscodeEntryController

- (void)loadView
{
  selfCopy = self;
  location[1] = a2;
  v2 = objc_alloc_init(DevicePINController);
  pinController = selfCopy->_pinController;
  selfCopy->_pinController = v2;

  location[0] = [[BFFPasscodeView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location[0] setAutoresizingMask:18];
  [location[0] setPasscodeViewController:selfCopy];
  v4 = +[BFFStyle sharedStyle];
  backgroundColor = [v4 backgroundColor];
  [location[0] setBackgroundColor:backgroundColor];

  [(BuddyPasscodeEntryController *)selfCopy setView:location[0]];
  v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  statusLabel = selfCopy->_statusLabel;
  selfCopy->_statusLabel = v6;

  v8 = selfCopy->_statusLabel;
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v8 setFont:v9];

  [(UILabel *)selfCopy->_statusLabel setTextAlignment:1];
  [(UILabel *)selfCopy->_statusLabel setNumberOfLines:0];
  [(UILabel *)selfCopy->_statusLabel setLineBreakMode:0];
  view = [(BuddyPasscodeEntryController *)selfCopy view];
  [view addSubview:selfCopy->_statusLabel];

  v11 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v11 addObserver:selfCopy selector:"updateStatusMessage" name:UIApplicationDidBecomeActiveNotification object:0];

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(NSTimer *)self->_statusTimer invalidate];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v3 dealloc];
}

- (id)passcodeView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyPasscodeEntryController;
  return [(BuddyPasscodeEntryController *)&v3 view];
}

- (BOOL)usesSimplePasscodeEntry
{
  isNumeric = [(BuddyPasscodeEntryController *)self isNumeric];
  v3 = 0;
  if (isNumeric)
  {
    numericLength = [(BuddyPasscodeEntryController *)self numericLength];
    v3 = 1;
    if (numericLength != 4)
    {
      return [(BuddyPasscodeEntryController *)self numericLength]== 6;
    }
  }

  return v3;
}

- (void)_setupFirstEntry
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = +[MCProfileConnection sharedConnection];
  v14 = 0;
  v13 = [v15[0] unlockScreenTypeWithOutSimplePasscodeType:&v14];
  if (v13)
  {
    if (v13 == 1)
    {
      [(BuddyPasscodeEntryController *)selfCopy setNumeric:1];
      [(BuddyPasscodeEntryController *)selfCopy setNumericLength:0];
    }

    else
    {
      [(BuddyPasscodeEntryController *)selfCopy setNumeric:0];
    }
  }

  else
  {
    [(BuddyPasscodeEntryController *)selfCopy setNumeric:1];
    if (v14)
    {
      v2 = 6;
    }

    else
    {
      v2 = 4;
    }

    [(BuddyPasscodeEntryController *)selfCopy setNumericLength:v2];
  }

  [(BuddyPasscodeEntryController *)selfCopy configurePasscodeTypeUsingAnimations:0];
  passcodeView = [(BuddyPasscodeEntryController *)selfCopy passcodeView];
  titleText = [(BuddyPasscodeEntryController *)selfCopy titleText];
  [passcodeView setTitle:titleText];

  location = 0;
  if ([(BuddyPasscodeEntryController *)selfCopy usesSimplePasscodeEntry])
  {
    v5 = [BFFSimplePasscodeInputView alloc];
    v6 = [v5 initWithFrame:-[BuddyPasscodeEntryController numericLength](selfCopy numberOfEntryFields:{"numericLength"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  else
  {
    v8 = [BFFComplexPasscodeInputView alloc];
    v6 = [v8 initWithFrame:-[BuddyPasscodeEntryController isNumeric](selfCopy numericOnly:{"isNumeric"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  v7 = location;
  location = v6;

  instructions = [location instructions];
  instructions2 = [(BuddyPasscodeEntryController *)selfCopy instructions];
  [instructions setText:instructions2];

  passcodeView2 = [(BuddyPasscodeEntryController *)selfCopy passcodeView];
  [passcodeView2 transitionToPasscodeInput:location delegate:selfCopy];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v2 viewDidLoad];
  [(BuddyPasscodeEntryController *)selfCopy setExtendedLayoutIncludesOpaqueBars:1];
  [(BuddyPasscodeEntryController *)selfCopy _setupFirstEntry];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v8 viewWillAppear:appear];
  passcodeView = [(BuddyPasscodeEntryController *)selfCopy passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];

  [passcodeInputView becomeFirstResponder];
  navigationItem = [(BuddyPasscodeEntryController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  passcode = [passcodeInputView passcode];
  [rightBarButtonItem setEnabled:{objc_msgSend(passcode, "length") != 0}];

  [(BuddyPasscodeEntryController *)selfCopy updateStatusMessage];
  objc_storeStrong(&passcodeInputView, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v7 = a2;
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v5 viewWillDisappear:disappear];
  view = [(BuddyPasscodeEntryController *)selfCopy view];
  passcodeInputView = [view passcodeInputView];

  [passcodeInputView resignFirstResponder];
  objc_storeStrong(&passcodeInputView, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  v3.receiver = self;
  v3.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v3 viewDidDisappear:disappear];
  [(BuddyPasscodeEntryController *)selfCopy clear];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v41 = a2;
  v40 = 0x4024000000000000;
  v39.receiver = self;
  v39.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v39 viewDidLayoutSubviews];
  view = [(BuddyPasscodeEntryController *)selfCopy view];
  passcodeView = [(BuddyPasscodeEntryController *)selfCopy passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];
  passcodeField = [passcodeInputView passcodeField];
  [passcodeField frame];
  v35 = v6;
  v34 = v7;
  v37 = v8;
  v36 = v9;
  passcodeView2 = [(BuddyPasscodeEntryController *)selfCopy passcodeView];
  passcodeInputView2 = [passcodeView2 passcodeInputView];
  [view convertRect:passcodeInputView2 fromView:{v34, v35, v36, v37}];
  v38.origin.y = v12;
  v38.origin.x = v13;
  v38.size.height = v14;
  v38.size.width = v15;

  view2 = [(BuddyPasscodeEntryController *)selfCopy view];
  [view2 bounds];
  v32 = v17;

  statusLabel = selfCopy->_statusLabel;
  sub_10008B9DC();
  [(UILabel *)statusLabel sizeThatFits:v19, v20];
  v33 = v21;
  view3 = [(BuddyPasscodeEntryController *)selfCopy view];
  [view3 bounds];
  v28 = v23;
  v27 = v24;
  v30 = v25;
  v29 = v26;
  *&v24 = (v26 - v32) * 0.5;
  v31 = floorf(*&v24);

  [(UILabel *)selfCopy->_statusLabel setFrame:v31, CGRectGetMaxY(v38) + 10.0, v32, v33, v27, v28, *&v29, v30];
}

- (void)_finishedWithPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  if (([(DevicePINController *)selfCopy->_pinController attemptValidationWithPIN:location[0]]& 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained passcodeEntryController:selfCopy didEnterPasscode:location[0]];
  }

  else
  {
    [(BuddyPasscodeEntryController *)selfCopy updateStatusMessage];
    [(BuddyPasscodeEntryController *)selfCopy clear];
  }

  objc_storeStrong(location, 0);
}

- (void)nextButtonPressed
{
  selfCopy = self;
  location[1] = a2;
  passcodeView = [(BuddyPasscodeEntryController *)self passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];
  location[0] = [passcodeInputView passcode];

  [(BuddyPasscodeEntryController *)selfCopy passcodeInput:0 enteredPasscode:location[0]];
  objc_storeStrong(location, 0);
}

- (void)updateStatusMessage
{
  selfCopy = self;
  v24 = a2;
  v23 = [(DevicePINController *)self->_pinController isBlocked]& 1;
  passcodeView = [(BuddyPasscodeEntryController *)selfCopy passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];
  [passcodeInputView setEnabled:(v23 ^ 1) & 1];

  if (v23)
  {
    [(DevicePINController *)selfCopy->_pinController unblockTime];
    v5 = v4;
    +[NSDate timeIntervalSinceReferenceDate];
    v22 = v5 - v6;
    *&v6 = (v5 - v6) / 60.0;
    v21 = ceilf(*&v6);
    location = objc_opt_new();
    [location setUnitsStyle:3];
    [location setAllowedUnits:64];
    statusLabel = selfCopy->_statusLabel;
    v8 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v8 localizedStringForKey:@"PASSCODE_BLOCKED_TRY_AGAIN_%@" value:&stru_10032F900 table:@"Localizable"];
    v10 = [location stringFromTimeInterval:v21 * 60.0];
    v11 = [NSString localizedStringWithFormat:v9, v10];
    [(UILabel *)statusLabel setText:v11];

    [(NSTimer *)selfCopy->_statusTimer invalidate];
    v12 = [NSTimer scheduledTimerWithTimeInterval:selfCopy target:"updateStatusMessage" selector:0 userInfo:0 repeats:(v22 % 60 + 1)];
    statusTimer = selfCopy->_statusTimer;
    selfCopy->_statusTimer = v12;

    objc_storeStrong(&location, 0);
  }

  else
  {
    numberOfFailedAttempts = [(DevicePINController *)selfCopy->_pinController numberOfFailedAttempts];
    if ((numberOfFailedAttempts & 0x8000000000000000) != 0)
    {
      [(UILabel *)selfCopy->_statusLabel setText:&stru_10032F900];
    }

    else
    {
      v14 = selfCopy->_statusLabel;
      v15 = +[NSBundle mainBundle];
      v16 = [(NSBundle *)v15 localizedStringForKey:@"PASSCODE_ATTEMPT_FAILURES" value:&stru_10032F900 table:@"Localizable"];
      v17 = [NSString localizedStringWithFormat:v16, numberOfFailedAttempts];
      [(UILabel *)v14 setText:v17];
    }
  }

  view = [(BuddyPasscodeEntryController *)selfCopy view];
  [view setNeedsLayout];
}

- (void)passcodeInput:(id)input willChangeContents:(id)contents
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v7 = 0;
  objc_storeStrong(&v7, contents);
  navigationItem = [(BuddyPasscodeEntryController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:{objc_msgSend(v7, "length") != 0}];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v16 = 0;
  objc_storeStrong(&v16, passcode);
  passcodeField = [location[0] passcodeField];
  [passcodeField forceDisplayIfNeeded];

  v15 = 0x3FB374BC6A7EF9DBLL;
  v14 = dispatch_time(0, (0.076 * 1000000000.0));
  v6 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10008C184;
  v11 = &unk_10032B838;
  v12 = selfCopy;
  v13 = v16;
  dispatch_after(v14, v6, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)clear
{
  v2 = [(BuddyPasscodeEntryController *)self passcodeView:a2];
  passcodeInputView = [v2 passcodeInputView];
  [passcodeInputView setPasscode:&stru_10032F900];
}

- (void)configurePasscodeTypeUsingAnimations:(BOOL)animations
{
  selfCopy = self;
  v10 = a2;
  animationsCopy = animations;
  if ([(BuddyPasscodeEntryController *)self usesSimplePasscodeEntry])
  {
    navigationItem = [(BuddyPasscodeEntryController *)selfCopy navigationItem];
    [navigationItem setRightBarButtonItem:0 animated:animationsCopy];
  }

  else
  {
    v4 = [UIBarButtonItem alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v5 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v8 = [v4 initWithTitle:v6 style:2 target:selfCopy action:"nextButtonPressed"];

    navigationItem2 = [(BuddyPasscodeEntryController *)selfCopy navigationItem];
    [navigationItem2 setRightBarButtonItem:v8 animated:animationsCopy];

    objc_storeStrong(&v8, 0);
  }
}

- (BuddyPasscodeEntryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end