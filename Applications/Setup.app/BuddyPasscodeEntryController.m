@interface BuddyPasscodeEntryController
- (BOOL)usesSimplePasscodeEntry;
- (BuddyPasscodeEntryDelegate)delegate;
- (id)passcodeView;
- (void)_finishedWithPasscode:(id)a3;
- (void)_setupFirstEntry;
- (void)clear;
- (void)configurePasscodeTypeUsingAnimations:(BOOL)a3;
- (void)dealloc;
- (void)loadView;
- (void)nextButtonPressed;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)passcodeInput:(id)a3 willChangeContents:(id)a4;
- (void)updateStatusMessage;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BuddyPasscodeEntryController

- (void)loadView
{
  v13 = self;
  location[1] = a2;
  v2 = objc_alloc_init(DevicePINController);
  pinController = v13->_pinController;
  v13->_pinController = v2;

  location[0] = [[BFFPasscodeView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location[0] setAutoresizingMask:18];
  [location[0] setPasscodeViewController:v13];
  v4 = +[BFFStyle sharedStyle];
  v5 = [v4 backgroundColor];
  [location[0] setBackgroundColor:v5];

  [(BuddyPasscodeEntryController *)v13 setView:location[0]];
  v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  statusLabel = v13->_statusLabel;
  v13->_statusLabel = v6;

  v8 = v13->_statusLabel;
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v8 setFont:v9];

  [(UILabel *)v13->_statusLabel setTextAlignment:1];
  [(UILabel *)v13->_statusLabel setNumberOfLines:0];
  [(UILabel *)v13->_statusLabel setLineBreakMode:0];
  v10 = [(BuddyPasscodeEntryController *)v13 view];
  [v10 addSubview:v13->_statusLabel];

  v11 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v11 addObserver:v13 selector:"updateStatusMessage" name:UIApplicationDidBecomeActiveNotification object:0];

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  [(NSTimer *)self->_statusTimer invalidate];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v3 dealloc];
}

- (id)passcodeView
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyPasscodeEntryController;
  return [(BuddyPasscodeEntryController *)&v3 view];
}

- (BOOL)usesSimplePasscodeEntry
{
  v2 = [(BuddyPasscodeEntryController *)self isNumeric];
  v3 = 0;
  if (v2)
  {
    v4 = [(BuddyPasscodeEntryController *)self numericLength];
    v3 = 1;
    if (v4 != 4)
    {
      return [(BuddyPasscodeEntryController *)self numericLength]== 6;
    }
  }

  return v3;
}

- (void)_setupFirstEntry
{
  v16 = self;
  v15[1] = a2;
  v15[0] = +[MCProfileConnection sharedConnection];
  v14 = 0;
  v13 = [v15[0] unlockScreenTypeWithOutSimplePasscodeType:&v14];
  if (v13)
  {
    if (v13 == 1)
    {
      [(BuddyPasscodeEntryController *)v16 setNumeric:1];
      [(BuddyPasscodeEntryController *)v16 setNumericLength:0];
    }

    else
    {
      [(BuddyPasscodeEntryController *)v16 setNumeric:0];
    }
  }

  else
  {
    [(BuddyPasscodeEntryController *)v16 setNumeric:1];
    if (v14)
    {
      v2 = 6;
    }

    else
    {
      v2 = 4;
    }

    [(BuddyPasscodeEntryController *)v16 setNumericLength:v2];
  }

  [(BuddyPasscodeEntryController *)v16 configurePasscodeTypeUsingAnimations:0];
  v3 = [(BuddyPasscodeEntryController *)v16 passcodeView];
  v4 = [(BuddyPasscodeEntryController *)v16 titleText];
  [v3 setTitle:v4];

  location = 0;
  if ([(BuddyPasscodeEntryController *)v16 usesSimplePasscodeEntry])
  {
    v5 = [BFFSimplePasscodeInputView alloc];
    v6 = [v5 initWithFrame:-[BuddyPasscodeEntryController numericLength](v16 numberOfEntryFields:{"numericLength"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  else
  {
    v8 = [BFFComplexPasscodeInputView alloc];
    v6 = [v8 initWithFrame:-[BuddyPasscodeEntryController isNumeric](v16 numericOnly:{"isNumeric"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  v7 = location;
  location = v6;

  v9 = [location instructions];
  v10 = [(BuddyPasscodeEntryController *)v16 instructions];
  [v9 setText:v10];

  v11 = [(BuddyPasscodeEntryController *)v16 passcodeView];
  [v11 transitionToPasscodeInput:location delegate:v16];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v2 viewDidLoad];
  [(BuddyPasscodeEntryController *)v4 setExtendedLayoutIncludesOpaqueBars:1];
  [(BuddyPasscodeEntryController *)v4 _setupFirstEntry];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v8 viewWillAppear:a3];
  v3 = [(BuddyPasscodeEntryController *)v11 passcodeView];
  v7 = [v3 passcodeInputView];

  [v7 becomeFirstResponder];
  v4 = [(BuddyPasscodeEntryController *)v11 navigationItem];
  v5 = [v4 rightBarButtonItem];
  v6 = [v7 passcode];
  [v5 setEnabled:{objc_msgSend(v6, "length") != 0}];

  [(BuddyPasscodeEntryController *)v11 updateStatusMessage];
  objc_storeStrong(&v7, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v5 viewWillDisappear:a3];
  v3 = [(BuddyPasscodeEntryController *)v8 view];
  v4 = [v3 passcodeInputView];

  [v4 resignFirstResponder];
  objc_storeStrong(&v4, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v3 viewDidDisappear:a3];
  [(BuddyPasscodeEntryController *)v6 clear];
}

- (void)viewDidLayoutSubviews
{
  v42 = self;
  v41 = a2;
  v40 = 0x4024000000000000;
  v39.receiver = self;
  v39.super_class = BuddyPasscodeEntryController;
  [(BuddyPasscodeEntryController *)&v39 viewDidLayoutSubviews];
  v2 = [(BuddyPasscodeEntryController *)v42 view];
  v3 = [(BuddyPasscodeEntryController *)v42 passcodeView];
  v4 = [v3 passcodeInputView];
  v5 = [v4 passcodeField];
  [v5 frame];
  v35 = v6;
  v34 = v7;
  v37 = v8;
  v36 = v9;
  v10 = [(BuddyPasscodeEntryController *)v42 passcodeView];
  v11 = [v10 passcodeInputView];
  [v2 convertRect:v11 fromView:{v34, v35, v36, v37}];
  v38.origin.y = v12;
  v38.origin.x = v13;
  v38.size.height = v14;
  v38.size.width = v15;

  v16 = [(BuddyPasscodeEntryController *)v42 view];
  [v16 bounds];
  v32 = v17;

  statusLabel = v42->_statusLabel;
  sub_10008B9DC();
  [(UILabel *)statusLabel sizeThatFits:v19, v20];
  v33 = v21;
  v22 = [(BuddyPasscodeEntryController *)v42 view];
  [v22 bounds];
  v28 = v23;
  v27 = v24;
  v30 = v25;
  v29 = v26;
  *&v24 = (v26 - v32) * 0.5;
  v31 = floorf(*&v24);

  [(UILabel *)v42->_statusLabel setFrame:v31, CGRectGetMaxY(v38) + 10.0, v32, v33, v27, v28, *&v29, v30];
}

- (void)_finishedWithPasscode:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(DevicePINController *)v5->_pinController attemptValidationWithPIN:location[0]]& 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&v5->_delegate);
    [WeakRetained passcodeEntryController:v5 didEnterPasscode:location[0]];
  }

  else
  {
    [(BuddyPasscodeEntryController *)v5 updateStatusMessage];
    [(BuddyPasscodeEntryController *)v5 clear];
  }

  objc_storeStrong(location, 0);
}

- (void)nextButtonPressed
{
  v5 = self;
  location[1] = a2;
  v2 = [(BuddyPasscodeEntryController *)self passcodeView];
  v3 = [v2 passcodeInputView];
  location[0] = [v3 passcode];

  [(BuddyPasscodeEntryController *)v5 passcodeInput:0 enteredPasscode:location[0]];
  objc_storeStrong(location, 0);
}

- (void)updateStatusMessage
{
  v25 = self;
  v24 = a2;
  v23 = [(DevicePINController *)self->_pinController isBlocked]& 1;
  v2 = [(BuddyPasscodeEntryController *)v25 passcodeView];
  v3 = [v2 passcodeInputView];
  [v3 setEnabled:(v23 ^ 1) & 1];

  if (v23)
  {
    [(DevicePINController *)v25->_pinController unblockTime];
    v5 = v4;
    +[NSDate timeIntervalSinceReferenceDate];
    v22 = v5 - v6;
    *&v6 = (v5 - v6) / 60.0;
    v21 = ceilf(*&v6);
    location = objc_opt_new();
    [location setUnitsStyle:3];
    [location setAllowedUnits:64];
    statusLabel = v25->_statusLabel;
    v8 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v8 localizedStringForKey:@"PASSCODE_BLOCKED_TRY_AGAIN_%@" value:&stru_10032F900 table:@"Localizable"];
    v10 = [location stringFromTimeInterval:v21 * 60.0];
    v11 = [NSString localizedStringWithFormat:v9, v10];
    [(UILabel *)statusLabel setText:v11];

    [(NSTimer *)v25->_statusTimer invalidate];
    v12 = [NSTimer scheduledTimerWithTimeInterval:v25 target:"updateStatusMessage" selector:0 userInfo:0 repeats:(v22 % 60 + 1)];
    statusTimer = v25->_statusTimer;
    v25->_statusTimer = v12;

    objc_storeStrong(&location, 0);
  }

  else
  {
    v19 = [(DevicePINController *)v25->_pinController numberOfFailedAttempts];
    if ((v19 & 0x8000000000000000) != 0)
    {
      [(UILabel *)v25->_statusLabel setText:&stru_10032F900];
    }

    else
    {
      v14 = v25->_statusLabel;
      v15 = +[NSBundle mainBundle];
      v16 = [(NSBundle *)v15 localizedStringForKey:@"PASSCODE_ATTEMPT_FAILURES" value:&stru_10032F900 table:@"Localizable"];
      v17 = [NSString localizedStringWithFormat:v16, v19];
      [(UILabel *)v14 setText:v17];
    }
  }

  v18 = [(BuddyPasscodeEntryController *)v25 view];
  [v18 setNeedsLayout];
}

- (void)passcodeInput:(id)a3 willChangeContents:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [(BuddyPasscodeEntryController *)v9 navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:{objc_msgSend(v7, "length") != 0}];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = [location[0] passcodeField];
  [v5 forceDisplayIfNeeded];

  v15 = 0x3FB374BC6A7EF9DBLL;
  v14 = dispatch_time(0, (0.076 * 1000000000.0));
  v6 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10008C184;
  v11 = &unk_10032B838;
  v12 = v18;
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
  v3 = [v2 passcodeInputView];
  [v3 setPasscode:&stru_10032F900];
}

- (void)configurePasscodeTypeUsingAnimations:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  if ([(BuddyPasscodeEntryController *)self usesSimplePasscodeEntry])
  {
    v3 = [(BuddyPasscodeEntryController *)v11 navigationItem];
    [v3 setRightBarButtonItem:0 animated:v9];
  }

  else
  {
    v4 = [UIBarButtonItem alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v5 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v8 = [v4 initWithTitle:v6 style:2 target:v11 action:"nextButtonPressed"];

    v7 = [(BuddyPasscodeEntryController *)v11 navigationItem];
    [v7 setRightBarButtonItem:v8 animated:v9];

    objc_storeStrong(&v8, 0);
  }
}

- (BuddyPasscodeEntryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end