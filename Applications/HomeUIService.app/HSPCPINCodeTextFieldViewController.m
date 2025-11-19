@interface HSPCPINCodeTextFieldViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (HSPCPINCodeTextFieldViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_skipPINCodeButtonTapped;
- (id)_updatePINCodesForAllUsers;
- (id)commitConfiguration;
- (void)_updateContinueActionEnabledFor:(id)a3;
- (void)_updateOnboardingFlags;
- (void)_updateSubtitle;
- (void)textFieldDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSPCPINCodeTextFieldViewController

- (HSPCPINCodeTextFieldViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = HSPCPINCodeTextFieldViewController;
  v8 = [(HSPCTextFieldViewController *)&v28 initWithCoordinator:v6 config:v7 withTextFieldMinimumHeight:100.0];
  if (v8)
  {
    v9 = sub_100063A44(@"HSProximityCardPINCodeTextFieldTitle");
    [(HSPCPINCodeTextFieldViewController *)v8 setTitle:v9];

    v10 = sub_100063A44(@"HSProximityCardPINCodeTextFieldSubtitle");
    [(HSPCPINCodeTextFieldViewController *)v8 setSubtitle:v10];

    v11 = [(HSPCTextFieldViewController *)v8 continueAction];
    [v11 setEnabled:1];

    v12 = [PRXLabel labelWithStyle:1];
    [(HSPCTextFieldViewController *)v8 setFootnoteLabel:v12];

    v8->_PINCodeLengthMin = 4;
    v8->_PINCodeLengthMax = 8;
    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    v14 = [v7 home];
    v15 = [v13 pinCodeManagerForHome:v14];
    pinCodeManager = v8->_pinCodeManager;
    v8->_pinCodeManager = v15;

    objc_initWeak(&location, v8);
    v17 = v8->_pinCodeManager;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100006FDC;
    v25 = &unk_1000C5808;
    objc_copyWeak(&v26, &location);
    [(HFPinCodeManager *)v17 fetchPinCodeConstraints:&v22];
    if (!qword_1000E6700)
    {
      v18 = objc_alloc_init(NSNumberFormatter);
      v19 = qword_1000E6700;
      qword_1000E6700 = v18;

      v20 = [NSLocale autoupdatingCurrentLocale:v22];
      [qword_1000E6700 setLocale:v20];

      [qword_1000E6700 setNumberStyle:0];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HSPCPINCodeTextFieldViewController;
  [(HSPCTextFieldViewController *)&v15 viewDidLoad];
  v16 = NSKernAttributeName;
  v17 = &off_1000CE0F8;
  v3 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v4 = [(HSPCTextFieldViewController *)self textField];
  [v4 setDefaultTextAttributes:v3];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  v6 = [(HSPCTextFieldViewController *)self textField];
  [v6 setFont:v5];

  v7 = +[UIColor labelColor];
  v8 = [(HSPCTextFieldViewController *)self textField];
  [v8 setTextColor:v7];

  v9 = [(HSPCTextFieldViewController *)self textField];
  [v9 setClearButtonMode:0];

  v10 = [(HSPCTextFieldViewController *)self textField];
  [v10 setTextAlignment:1];

  v11 = [(HSPCTextFieldViewController *)self textField];
  [v11 setKeyboardType:4];

  v12 = [(HSPCTextFieldViewController *)self textField];
  [v12 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v13 = [(HSPCTextFieldViewController *)self textField];
  v14 = [v13 layer];
  [v14 setDisableUpdateMask:16];
}

- (id)commitConfiguration
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User tapped Continue from the PIN code text field prox card", buf, 2u);
  }

  objc_initWeak(buf, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000078D0;
  v21[3] = &unk_1000C5880;
  objc_copyWeak(&v22, buf);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000798C;
  v19[3] = &unk_1000C58D0;
  v19[4] = self;
  v4 = objc_retainBlock(v21);
  v20 = v4;
  v5 = objc_retainBlock(v19);
  v6 = [(HSPCPINCodeTextFieldViewController *)self pinCodeManager];
  v7 = [v6 fetchFromAccessoryCache];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100007C58;
  v17[3] = &unk_1000C5830;
  objc_copyWeak(&v18, buf);
  v8 = [v7 flatMap:v17];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007CBC;
  v13[3] = &unk_1000C5A88;
  objc_copyWeak(&v16, buf);
  v9 = v4;
  v14 = v9;
  v10 = v5;
  v15 = v10;
  v11 = [v8 flatMap:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  return v11;
}

- (id)_skipPINCodeButtonTapped
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2080;
    v14 = "[HSPCPINCodeTextFieldViewController _skipPINCodeButtonTapped]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@:%s) User tapped Skip from HSPCPINCodeTextFieldViewController", buf, 0x16u);
  }

  [(HSPCPINCodeTextFieldViewController *)self _updateOnboardingFlags];
  v4 = [(HSPCTextFieldViewController *)self config];
  v5 = [v4 home];
  v10[0] = v5;
  v10[1] = &off_1000CD378;
  v9[1] = HFAnalyticsAccessCodeOperationTypeKey;
  v9[2] = HFAnalyticsAccessCodeDuringOnboardingKey;
  v10[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  [HFAnalytics sendEvent:26 withData:v6];
  v7 = [NAFuture futureWithResult:&off_1000CD348];

  return v7;
}

- (void)_updateSubtitle
{
  v3 = [(HSPCTextFieldViewController *)self textField];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMin];
    [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMax];
    sub_100063B5C(@"HSProximityCardPINCodeTextFieldSubtitle_Edit", @"%lu%lu", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    sub_100063A44(@"HSProximityCardPINCodeTextFieldSubtitle");
  }
  v12 = ;
  [(HSPCPINCodeTextFieldViewController *)self setSubtitle:v12];
}

- (id)_updatePINCodesForAllUsers
{
  v3 = [(HSPCTextFieldViewController *)self config];
  v4 = [v3 home];
  v5 = [v4 hf_currentUserIsAdministrator];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(HSPCPINCodeTextFieldViewController *)self pinCodeManager];
    v7 = [(HSPCTextFieldViewController *)self config];
    v8 = [v7 addedAccessory];
    v9 = [v6 enablePinCodesForAllUsersOnNewAccessory:v8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000091F8;
    v12[3] = &unk_1000C5AB0;
    objc_copyWeak(&v13, &location);
    v10 = [v9 addCompletionBlock:v12];
    objc_destroyWeak(&v13);

    objc_destroyWeak(&location);
  }

  else
  {
    v10 = +[NAFuture futureWithNoResult];
  }

  return v10;
}

- (void)_updateOnboardingFlags
{
  v3 = [HFUserItem alloc];
  v4 = [(HSPCTextFieldViewController *)self config];
  v5 = [v4 home];
  v6 = [(HSPCTextFieldViewController *)self config];
  v7 = [v6 home];
  v8 = [v7 currentUser];
  v15 = [v3 initWithHome:v5 user:v8 nameStyle:0];

  v9 = [v15 setDismissAccessCodeOnboarding:1];
  v10 = [(HSPCTextFieldViewController *)self config];
  v11 = [v10 home];
  LODWORD(v5) = [v11 hf_currentUserIsAdministrator];

  if (v5)
  {
    v12 = [(HSPCTextFieldViewController *)self config];
    v13 = [v12 home];
    v14 = [v13 hf_setHasOnboardedForAccessCode];
  }
}

- (void)_updateContinueActionEnabledFor:(id)a3
{
  v9 = a3;
  v4 = [(HSPCTextFieldViewController *)self textField];
  v5 = [v4 isUserInteractionEnabled];

  if (v5)
  {
    v6 = [v9 length];
    v7 = v6 >= [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMin]&& v6 <= [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMax];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(HSPCTextFieldViewController *)self continueAction];
  [v8 setEnabled:v7];
}

- (void)textFieldDidChange:(id)a3
{
  v4 = [a3 text];
  [(HSPCPINCodeTextFieldViewController *)self _updateContinueActionEnabledFor:v4];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [(HSPCTextFieldViewController *)self textField];
  v10 = [v9 text];
  v11 = v10;
  v12 = &stru_1000C89F8;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [(__CFString *)v13 stringByReplacingCharactersInRange:location withString:length, v8];

  v15 = [v14 length];
  LOBYTE(v15) = v15 <= [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMax];

  return v15;
}

@end