@interface HSPCPINCodeTextFieldViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (HSPCPINCodeTextFieldViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_skipPINCodeButtonTapped;
- (id)_updatePINCodesForAllUsers;
- (id)commitConfiguration;
- (void)_updateContinueActionEnabledFor:(id)for;
- (void)_updateOnboardingFlags;
- (void)_updateSubtitle;
- (void)textFieldDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation HSPCPINCodeTextFieldViewController

- (HSPCPINCodeTextFieldViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = HSPCPINCodeTextFieldViewController;
  v8 = [(HSPCTextFieldViewController *)&v28 initWithCoordinator:coordinatorCopy config:configCopy withTextFieldMinimumHeight:100.0];
  if (v8)
  {
    v9 = sub_100063A44(@"HSProximityCardPINCodeTextFieldTitle");
    [(HSPCPINCodeTextFieldViewController *)v8 setTitle:v9];

    v10 = sub_100063A44(@"HSProximityCardPINCodeTextFieldSubtitle");
    [(HSPCPINCodeTextFieldViewController *)v8 setSubtitle:v10];

    continueAction = [(HSPCTextFieldViewController *)v8 continueAction];
    [continueAction setEnabled:1];

    v12 = [PRXLabel labelWithStyle:1];
    [(HSPCTextFieldViewController *)v8 setFootnoteLabel:v12];

    v8->_PINCodeLengthMin = 4;
    v8->_PINCodeLengthMax = 8;
    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    home = [configCopy home];
    v15 = [v13 pinCodeManagerForHome:home];
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
  textField = [(HSPCTextFieldViewController *)self textField];
  [textField setDefaultTextAttributes:v3];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  textField2 = [(HSPCTextFieldViewController *)self textField];
  [textField2 setFont:v5];

  v7 = +[UIColor labelColor];
  textField3 = [(HSPCTextFieldViewController *)self textField];
  [textField3 setTextColor:v7];

  textField4 = [(HSPCTextFieldViewController *)self textField];
  [textField4 setClearButtonMode:0];

  textField5 = [(HSPCTextFieldViewController *)self textField];
  [textField5 setTextAlignment:1];

  textField6 = [(HSPCTextFieldViewController *)self textField];
  [textField6 setKeyboardType:4];

  textField7 = [(HSPCTextFieldViewController *)self textField];
  [textField7 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  textField8 = [(HSPCTextFieldViewController *)self textField];
  layer = [textField8 layer];
  [layer setDisableUpdateMask:16];
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
  pinCodeManager = [(HSPCPINCodeTextFieldViewController *)self pinCodeManager];
  fetchFromAccessoryCache = [pinCodeManager fetchFromAccessoryCache];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100007C58;
  v17[3] = &unk_1000C5830;
  objc_copyWeak(&v18, buf);
  v8 = [fetchFromAccessoryCache flatMap:v17];

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
    selfCopy = self;
    v13 = 2080;
    v14 = "[HSPCPINCodeTextFieldViewController _skipPINCodeButtonTapped]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@:%s) User tapped Skip from HSPCPINCodeTextFieldViewController", buf, 0x16u);
  }

  [(HSPCPINCodeTextFieldViewController *)self _updateOnboardingFlags];
  config = [(HSPCTextFieldViewController *)self config];
  home = [config home];
  v10[0] = home;
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
  textField = [(HSPCTextFieldViewController *)self textField];
  isFirstResponder = [textField isFirstResponder];

  if (isFirstResponder)
  {
    pINCodeLengthMin = [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMin];
    [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMax];
    sub_100063B5C(@"HSProximityCardPINCodeTextFieldSubtitle_Edit", @"%lu%lu", v6, v7, v8, v9, v10, v11, pINCodeLengthMin);
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
  config = [(HSPCTextFieldViewController *)self config];
  home = [config home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    objc_initWeak(&location, self);
    pinCodeManager = [(HSPCPINCodeTextFieldViewController *)self pinCodeManager];
    config2 = [(HSPCTextFieldViewController *)self config];
    addedAccessory = [config2 addedAccessory];
    v9 = [pinCodeManager enablePinCodesForAllUsersOnNewAccessory:addedAccessory];
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
  config = [(HSPCTextFieldViewController *)self config];
  home = [config home];
  config2 = [(HSPCTextFieldViewController *)self config];
  home2 = [config2 home];
  currentUser = [home2 currentUser];
  v15 = [v3 initWithHome:home user:currentUser nameStyle:0];

  v9 = [v15 setDismissAccessCodeOnboarding:1];
  config3 = [(HSPCTextFieldViewController *)self config];
  home3 = [config3 home];
  LODWORD(home) = [home3 hf_currentUserIsAdministrator];

  if (home)
  {
    config4 = [(HSPCTextFieldViewController *)self config];
    home4 = [config4 home];
    hf_setHasOnboardedForAccessCode = [home4 hf_setHasOnboardedForAccessCode];
  }
}

- (void)_updateContinueActionEnabledFor:(id)for
{
  forCopy = for;
  textField = [(HSPCTextFieldViewController *)self textField];
  isUserInteractionEnabled = [textField isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    v6 = [forCopy length];
    v7 = v6 >= [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMin]&& v6 <= [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMax];
  }

  else
  {
    v7 = 1;
  }

  continueAction = [(HSPCTextFieldViewController *)self continueAction];
  [continueAction setEnabled:v7];
}

- (void)textFieldDidChange:(id)change
{
  text = [change text];
  [(HSPCPINCodeTextFieldViewController *)self _updateContinueActionEnabledFor:text];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  textField = [(HSPCTextFieldViewController *)self textField];
  text = [textField text];
  v11 = text;
  v12 = &stru_1000C89F8;
  if (text)
  {
    v12 = text;
  }

  v13 = v12;

  stringCopy = [(__CFString *)v13 stringByReplacingCharactersInRange:location withString:length, stringCopy];

  v15 = [stringCopy length];
  LOBYTE(v15) = v15 <= [(HSPCPINCodeTextFieldViewController *)self PINCodeLengthMax];

  return v15;
}

@end