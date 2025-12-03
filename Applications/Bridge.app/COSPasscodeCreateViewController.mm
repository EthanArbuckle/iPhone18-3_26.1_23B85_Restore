@interface COSPasscodeCreateViewController
- (id)detailText;
- (id)titleText;
- (void)back:(id)back;
- (void)dealloc;
- (void)passcodeCreationComplete;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation COSPasscodeCreateViewController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSPasscodeCreateViewController;
  [(COSPasscodeCreateViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = COSPasscodeCreateViewController;
  [(COSPasscodeCreateViewController *)&v5 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"passcodeCreationComplete" name:PBBridgeDidCompletePasscodeCreationNotification object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = COSPasscodeCreateViewController;
  [(COSSetupPageViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:PBBridgeDidCompletePasscodeCreationNotification object:0];
}

- (void)back:(id)back
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Backed Out Past a Set Passcode: Present Option to Reset Buddy", buf, 2u);
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"RESET_BUDDY_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RESET_BUDDY_MESSAGE_%@" value:&stru_10026E598 table:@"Localizable"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
  v10 = [NSString stringWithFormat:v7, v9];
  v11 = [UIAlertController alertControllerWithTitle:v5 message:v10 preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_10026BA80];

  [v11 addAction:v14];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CANCEL_RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&stru_10026BAC0];

  [v11 addAction:v17];
  [(COSPasscodeCreateViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (id)titleText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PASSCODE_CREATING_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailText
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  isComplex = [(COSPasscodeCreateViewController *)self isComplex];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (isTinkerPairing)
  {
    if (isComplex)
    {
      v8 = @"PASSCODE_CREATING_TEXT_COMPLEX_TINKER";
    }

    else
    {
      v8 = @"PASSCODE_CREATING_TEXT_SIMPLE_TINKER";
    }

    v9 = @"Localizable-tinker";
  }

  else
  {
    if (isComplex)
    {
      v8 = @"PASSCODE_CREATING_TEXT_COMPLEX";
    }

    else
    {
      v8 = @"PASSCODE_CREATING_TEXT_SIMPLE";
    }

    v9 = @"Localizable";
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_10026E598 table:v9];

  return v10;
}

- (void)passcodeCreationComplete
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2C04;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end