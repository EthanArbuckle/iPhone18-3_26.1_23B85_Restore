@interface CBAlternateNetworkViewController
- (BOOL)_canAttemptJoin;
- (BOOL)_networkNameIsValid;
- (BOOL)_passwordIsValid;
- (CBAlternateNetworkViewController)initWithScanResult:(id)result prepopulatedPassword:(id)password prepopulatedSSID:(id)d;
- (id)_networkNameSpecifier;
- (id)_passwordSpecifier;
- (id)_securitySpecifier;
- (id)name;
- (id)password;
- (id)requiresPassword;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_checkoutAndPostAssociationCompletedNotificationWithError:(id)error;
- (void)_cleanUp;
- (void)_deregisterNotifications;
- (void)_enableLeftBarButtonItem:(BOOL)item;
- (void)_enableRightBarButtonItem:(BOOL)item;
- (void)_enableUI:(BOOL)i;
- (void)_handleAssociationEvent:(id)event;
- (void)_joinTapped;
- (void)_keyboardWillPresent:(id)present;
- (void)_networkJoinRetryTimerFired:(id)fired;
- (void)_presentFailedAssociationAlertWithTitle:(id)title message:(id)message;
- (void)_registerForNotifications;
- (void)_returnKeyTapped:(id)tapped;
- (void)_setReturnKeyEnabled:(BOOL)enabled;
- (void)_setupNavBar;
- (void)_updateReturnKey;
- (void)cancelTapped:(id)tapped;
- (void)dealloc;
- (void)joinTapped:(id)tapped;
- (void)setRequiresPassword:(id)password;
- (void)textFieldDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CBAlternateNetworkViewController

- (CBAlternateNetworkViewController)initWithScanResult:(id)result prepopulatedPassword:(id)password prepopulatedSSID:(id)d
{
  resultCopy = result;
  passwordCopy = password;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = CBAlternateNetworkViewController;
  v12 = [(CBAlternateNetworkViewController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_otherNetworkViewActive = resultCopy == 0;
    if (resultCopy)
    {
      networkName = [resultCopy networkName];
      networkName = v13->_networkName;
      v13->_networkName = networkName;

      objc_storeStrong(&v13->_scanResult, result);
    }

    if (dCopy && !v13->_networkName)
    {
      objc_storeStrong(&v13->_networkName, d);
    }

    if (passwordCopy)
    {
      objc_storeStrong(&v13->_networkPassword, password);
    }

    v13->_joining = 0;
    v13->_retryJoinAttemptCount = 0;
  }

  return v13;
}

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Alternate Network pane loaded", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CBAlternateNetworkViewController;
  [(CBAlternateNetworkViewController *)&v4 viewDidLoad];
  [(CBAlternateNetworkViewController *)self _setupNavBar];
}

- (void)_setupNavBar
{
  otherNetworkViewActive = [(CBAlternateNetworkViewController *)self otherNetworkViewActive];
  v6 = otherNetworkViewActive;
  if (otherNetworkViewActive)
  {
    v7 = +[NSBundle mainBundle];
    [v7 localizedStringForKey:@"OTHER_NETWORK_PROMPT" value:&stru_10007EAB0 table:0];
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v2 = [v7 localizedStringForKey:@"ENCRYPTED_NETWORK_PROMPT" value:&stru_10007EAB0 table:0];
    networkName = [(CBAlternateNetworkViewController *)self networkName];
    [NSString stringWithFormat:v2, networkName];
  }
  v8 = ;
  navigationItem = [(CBAlternateNetworkViewController *)self navigationItem];
  [navigationItem setPrompt:v8];

  if ((v6 & 1) == 0)
  {

    v8 = v2;
  }

  otherNetworkViewActive2 = [(CBAlternateNetworkViewController *)self otherNetworkViewActive];
  v11 = +[NSBundle mainBundle];
  v12 = v11;
  if (otherNetworkViewActive2)
  {
    v13 = @"OTHER_NETWORK_TITLE";
  }

  else
  {
    v13 = @"ENCRYPTED_NETWORK_TITLE";
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_10007EAB0 table:0];
  navigationItem2 = [(CBAlternateNetworkViewController *)self navigationItem];
  [navigationItem2 setTitle:v14];

  v22 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelTapped:"];
  v16 = [UIBarButtonItem alloc];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"JOIN" value:&stru_10007EAB0 table:0];
  v19 = [v16 initWithTitle:v18 style:2 target:self action:"joinTapped:"];

  navigationItem3 = [(CBAlternateNetworkViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:v22];

  navigationItem4 = [(CBAlternateNetworkViewController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:v19];

  [(CBAlternateNetworkViewController *)self _enableRightBarButtonItem:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Alternate Network pane will appear", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = CBAlternateNetworkViewController;
  [(CBAlternateNetworkViewController *)&v22 viewWillAppear:appearCopy];
  [(CBAlternateNetworkViewController *)self _registerForNotifications];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"PASSWORD" value:&stru_10007EAB0 table:0];
  [(CBAlternateNetworkViewController *)self setIndexToSelect:[(CBAlternateNetworkViewController *)self indexOfSpecifierID:v7]];

  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    indexToSelect = [(CBAlternateNetworkViewController *)self indexToSelect];
    *buf = 134217984;
    v24 = indexToSelect;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Index to be selected %ld", buf, 0xCu);
  }

  if ([(CBAlternateNetworkViewController *)self indexToSelect]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OTHER_NETWORK_NAME" value:&stru_10007EAB0 table:0];
    [(CBAlternateNetworkViewController *)self setIndexToSelect:[(CBAlternateNetworkViewController *)self indexOfSpecifierID:v11]];

    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      indexToSelect2 = [(CBAlternateNetworkViewController *)self indexToSelect];
      *buf = 134217984;
      v24 = indexToSelect2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not found. New index to be selected %ld", buf, 0xCu);
    }

    networkNameCell = [(CBAlternateNetworkViewController *)self networkNameCell];
  }

  else
  {
    networkNameCell = [(CBAlternateNetworkViewController *)self passwordCell];
  }

  v15 = networkNameCell;
  textField = [networkNameCell textField];
  [(CBAlternateNetworkViewController *)self setCurrentlyActiveTextField:textField];

  v17 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];
  v18 = [(CBAlternateNetworkViewController *)self indexPathForIndex:[(CBAlternateNetworkViewController *)self indexToSelect]];
  v19 = [v17 cellForRowAtIndexPath:v18];
  [v19 becomeFirstResponder];

  [(CBAlternateNetworkViewController *)self _updateReturnKey];
  networkPassword = [(CBAlternateNetworkViewController *)self networkPassword];

  if (networkPassword)
  {
    [(CBAlternateNetworkViewController *)self setRequiresPassword:&__kCFBooleanTrue];
    networkPassword2 = [(CBAlternateNetworkViewController *)self networkPassword];
    [(CBAlternateNetworkViewController *)self setPassword:networkPassword2];
  }
}

- (void)_registerForNotifications
{
  [(CBAlternateNetworkViewController *)self _deregisterNotifications];
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for keyboard and Wi-Fi notifications…", v8, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_keyboardWillPresent:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_returnKeyTapped:" name:UIKeyboardReturnKeyPressed object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleAssociationEvent:" name:@"CBWiFiManagerDidAssociateToOpenNetworkNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_handleAssociationEvent:" name:@"CBWiFiManagerDidAssociateToEncryptedNetworkNotification" object:0];
}

- (void)_deregisterNotifications
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deregistering keyboard and Wi-Fi notifications…", v8, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardReturnKeyPressed object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:@"CBWiFiManagerDidAssociateToOpenNetworkNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:@"CBWiFiManagerDidAssociateToEncryptedNetworkNotification" object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Alternate Network pane will disappear", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = CBAlternateNetworkViewController;
  [(CBAlternateNetworkViewController *)&v6 viewWillDisappear:disappearCopy];
  [(CBAlternateNetworkViewController *)self _cleanUp];
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called", buf, 2u);
  }

  [(CBAlternateNetworkViewController *)self _cleanUp];
  v4.receiver = self;
  v4.super_class = CBAlternateNetworkViewController;
  [(CBAlternateNetworkViewController *)&v4 dealloc];
}

- (void)_cleanUp
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up Alternate View Controller…", buf, 2u);
  }

  joinTimer = [(CBAlternateNetworkViewController *)self joinTimer];

  if (joinTimer)
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating join timer…", v13, 2u);
    }

    joinTimer2 = [(CBAlternateNetworkViewController *)self joinTimer];
    [joinTimer2 invalidate];

    [(CBAlternateNetworkViewController *)self setJoinTimer:0];
  }

  v7 = OBJC_IVAR___PSListController__specifiers;
  if ([*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count])
  {
    v8 = 0;
    v9 = PSTableCellKey;
    do
    {
      v10 = [*&self->PSListController_opaque[v7] objectAtIndex:v8];
      v11 = [v10 propertyForKey:v9];
      v12 = v11;
      if (v11)
      {
        [v11 setCellTarget:0];
        [v12 setCellAction:0];
      }

      ++v8;
    }

    while (v8 < [*&self->PSListController_opaque[v7] count]);
  }

  [(CBAlternateNetworkViewController *)self loseFocus];
  [(CBAlternateNetworkViewController *)self _deregisterNotifications];
}

- (void)_keyboardWillPresent:(id)present
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Keyboard will be presented…", v5, 2u);
  }

  [(CBAlternateNetworkViewController *)self _updateReturnKey];
}

- (void)_returnKeyTapped:(id)tapped
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Return key tapped before main thread", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000325F0;
  block[3] = &unk_10007D540;
  block[4] = self;
  selfCopy = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleAssociationEvent:(id)event
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000328C4;
  v4[3] = &unk_10007D640;
  v4[4] = self;
  eventCopy = event;
  v3 = eventCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_networkJoinRetryTimerFired:(id)fired
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Network Join Retry timeout fired…", buf, 2u);
  }

  joinTimer = [(CBAlternateNetworkViewController *)self joinTimer];

  if (joinTimer)
  {
    joinTimer2 = [(CBAlternateNetworkViewController *)self joinTimer];
    [joinTimer2 invalidate];

    [(CBAlternateNetworkViewController *)self setJoinTimer:0];
  }

  if ([(CBAlternateNetworkViewController *)self retryJoinAttemptCount]> 4)
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100047A94(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"FAILED_NETWORK_PROMPT" value:&stru_10007EAB0 table:0];
    networkName = [(CBAlternateNetworkViewController *)self networkName];
    v20 = [NSString stringWithFormat:v18, networkName];
    navigationItem = [(CBAlternateNetworkViewController *)self navigationItem];
    [navigationItem setPrompt:v20];

    [(CBAlternateNetworkViewController *)self _enableUI:1];
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"UNABLE_TO_JOIN_TITLE" value:&stru_10007EAB0 table:0];
    networkName2 = [(CBAlternateNetworkViewController *)self networkName];
    v25 = [NSString stringWithFormat:v23, networkName2];
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"TRY_AGAIN_MESSAGE" value:&stru_10007EAB0 table:0];
    [(CBAlternateNetworkViewController *)self _presentFailedAssociationAlertWithTitle:v25 message:v27];
  }

  else
  {
    [(CBAlternateNetworkViewController *)self setRetryJoinAttemptCount:[(CBAlternateNetworkViewController *)self retryJoinAttemptCount]+ 1];
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      retryJoinAttemptCount = [(CBAlternateNetworkViewController *)self retryJoinAttemptCount];
      *buf = 134217984;
      v29 = retryJoinAttemptCount;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Join Retry Attempt [#%lu]", buf, 0xCu);
    }

    [(CBAlternateNetworkViewController *)self _joinTapped];
  }
}

- (void)cancelTapped:(id)tapped
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancel tapped", v6, 2u);
  }

  v5 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"Wifi", [&off_1000811E0 integerValue], 0);
  [(CBAlternateNetworkViewController *)self _checkoutAndPostAssociationCompletedNotificationWithError:v5];
}

- (void)joinTapped:(id)tapped
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Joined tapped", v5, 2u);
  }

  [(CBAlternateNetworkViewController *)self setRetryJoinAttemptCount:0];
  [(CBAlternateNetworkViewController *)self _joinTapped];
}

- (void)_joinTapped
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Preparing to join network…", buf, 2u);
  }

  if (![(CBAlternateNetworkViewController *)self joining])
  {
    [(CBAlternateNetworkViewController *)self setJoining:1];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"JOINING_NETWORK_PROMPT" value:&stru_10007EAB0 table:0];
    networkName = [(CBAlternateNetworkViewController *)self networkName];
    v8 = [NSString stringWithFormat:v6, networkName];
    navigationItem = [(CBAlternateNetworkViewController *)self navigationItem];
    [navigationItem setPrompt:v8];

    [(CBAlternateNetworkViewController *)self _enableUI:0];
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dismissing the keyboard…", v22, 2u);
    }

    currentlyActiveTextField = [(CBAlternateNetworkViewController *)self currentlyActiveTextField];
    [currentlyActiveTextField resignFirstResponder];

    v4 = +[CBWiFiManager sharedInstance];
    if ([(CBAlternateNetworkViewController *)self otherNetworkViewActive])
    {
      networkRequiresPassword = [(CBAlternateNetworkViewController *)self networkRequiresPassword];
      bOOLValue = [networkRequiresPassword BOOLValue];

      v14 = CheckerBoardLogHandleForCategory();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if ((bOOLValue & 1) == 0)
      {
        if (v15)
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Network is [non-]hidden and open", v21, 2u);
        }

        networkName2 = [(CBAlternateNetworkViewController *)self networkName];
        [v4 associateToHiddenUnencryptedNetworkWithName:networkName2];
        goto LABEL_20;
      }

      if (v15)
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Network is [non-]hidden and encrypted", v20, 2u);
      }

      networkName2 = [(CBAlternateNetworkViewController *)self networkName];
      networkPassword = [(CBAlternateNetworkViewController *)self networkPassword];
      [v4 associateToHiddenEncryptedNetworkWithName:networkName2 password:networkPassword];
    }

    else
    {
      v18 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Network is non-hidden and encrypted", v19, 2u);
      }

      networkName2 = [(CBAlternateNetworkViewController *)self scanResult];
      networkPassword = [(CBAlternateNetworkViewController *)self networkPassword];
      [v4 associateToEncryptedNetworkWithScanResult:networkName2 password:networkPassword];
    }

LABEL_20:
    goto LABEL_21;
  }

  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We are already in the middle of an association…", v23, 2u);
  }

LABEL_21:
}

- (void)textFieldDidChange:(id)change
{
  [(CBAlternateNetworkViewController *)self setCurrentlyActiveTextField:change];

  [(CBAlternateNetworkViewController *)self _updateReturnKey];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    if ([(CBAlternateNetworkViewController *)self otherNetworkViewActive])
    {
      _securitySpecifier = [(CBAlternateNetworkViewController *)self _securitySpecifier];
      v22 = _securitySpecifier;
      v5 = [NSArray arrayWithObjects:&v22 count:1];
      [(CBAlternateNetworkViewController *)self setHiddenNetworkWithNoPasswordGroup:v5];

      _securitySpecifier2 = [(CBAlternateNetworkViewController *)self _securitySpecifier];
      v21[0] = _securitySpecifier2;
      _passwordSpecifier = [(CBAlternateNetworkViewController *)self _passwordSpecifier];
      v21[1] = _passwordSpecifier;
      v8 = [NSArray arrayWithObjects:v21 count:2];
      [(CBAlternateNetworkViewController *)self setHiddenNetworkWithPasswordGroup:v8];

      hiddenNetworkWithNoPasswordGroup = [(CBAlternateNetworkViewController *)self hiddenNetworkWithNoPasswordGroup];
      [(CBAlternateNetworkViewController *)self setCurrentSecurityGroup:hiddenNetworkWithNoPasswordGroup];

      _networkNameSpecifier = [(CBAlternateNetworkViewController *)self _networkNameSpecifier];
      v20[0] = _networkNameSpecifier;
      _groupSeparatorSpecifier = [(CBAlternateNetworkViewController *)self _groupSeparatorSpecifier];
      v20[1] = _groupSeparatorSpecifier;
      v12 = [NSArray arrayWithObjects:v20 count:2];
      v13 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v12;

      currentSecurityGroup = [(CBAlternateNetworkViewController *)self currentSecurityGroup];
      [(CBAlternateNetworkViewController *)self addSpecifiersFromArray:currentSecurityGroup];
    }

    else
    {
      currentSecurityGroup = [(CBAlternateNetworkViewController *)self _passwordSpecifier];
      v19 = currentSecurityGroup;
      v15 = [NSArray arrayWithObjects:&v19 count:1];
      v16 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v15;
    }
  }

  v17 = *&self->PSListController_opaque[v3];

  return v17;
}

- (id)_networkNameSpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"OTHER_NETWORK_NAME" value:&stru_10007EAB0 table:0];
  v5 = [PSTextFieldSpecifier preferenceSpecifierNamed:v4 target:self set:"setName:" get:"name" detail:0 cell:8 edit:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OTHER_NETWORK_PLACEHOLDER" value:&stru_10007EAB0 table:0];
  [v5 setPlaceholder:v7];

  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v5;
}

- (id)_securitySpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PASSWORD_REQUIRED" value:&stru_10007EAB0 table:0];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setRequiresPassword:" get:"requiresPassword" detail:0 cell:6 edit:0];

  return v5;
}

- (id)_passwordSpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PASSWORD" value:&stru_10007EAB0 table:0];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPassword:" get:"password" detail:0 cell:12 edit:0];

  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v5;
}

- (id)name
{
  networkName = [(CBAlternateNetworkViewController *)self networkName];
  v3 = networkName;
  if (networkName)
  {
    v4 = networkName;
  }

  else
  {
    v4 = &stru_10007EAB0;
  }

  v5 = v4;

  return v4;
}

- (void)setRequiresPassword:(id)password
{
  [(CBAlternateNetworkViewController *)self setNetworkRequiresPassword:password];
  networkRequiresPassword = [(CBAlternateNetworkViewController *)self networkRequiresPassword];
  bOOLValue = [networkRequiresPassword BOOLValue];

  currentSecurityGroup = [(CBAlternateNetworkViewController *)self currentSecurityGroup];
  [(CBAlternateNetworkViewController *)self removeContiguousSpecifiers:currentSecurityGroup];

  if (bOOLValue)
  {
    hiddenNetworkWithPasswordGroup = [(CBAlternateNetworkViewController *)self hiddenNetworkWithPasswordGroup];
    [(CBAlternateNetworkViewController *)self addSpecifiersFromArray:hiddenNetworkWithPasswordGroup];

    hiddenNetworkWithPasswordGroup2 = [(CBAlternateNetworkViewController *)self hiddenNetworkWithPasswordGroup];
    [(CBAlternateNetworkViewController *)self setCurrentSecurityGroup:hiddenNetworkWithPasswordGroup2];
  }

  else
  {
    hiddenNetworkWithNoPasswordGroup = [(CBAlternateNetworkViewController *)self hiddenNetworkWithNoPasswordGroup];
    [(CBAlternateNetworkViewController *)self addSpecifiersFromArray:hiddenNetworkWithNoPasswordGroup];

    hiddenNetworkWithNoPasswordGroup2 = [(CBAlternateNetworkViewController *)self hiddenNetworkWithNoPasswordGroup];
    [(CBAlternateNetworkViewController *)self setCurrentSecurityGroup:hiddenNetworkWithNoPasswordGroup2];

    [(CBAlternateNetworkViewController *)self setNetworkPassword:0];
  }
}

- (id)requiresPassword
{
  networkRequiresPassword = [(CBAlternateNetworkViewController *)self networkRequiresPassword];
  v3 = networkRequiresPassword;
  if (networkRequiresPassword)
  {
    v4 = networkRequiresPassword;
  }

  else
  {
    v4 = &off_1000811F8;
  }

  v5 = v4;

  return v4;
}

- (id)password
{
  networkPassword = [(CBAlternateNetworkViewController *)self networkPassword];
  v3 = networkPassword;
  if (networkPassword)
  {
    v4 = networkPassword;
  }

  else
  {
    v4 = &stru_10007EAB0;
  }

  v5 = v4;

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = CBAlternateNetworkViewController;
  pathCopy = path;
  v7 = [(CBAlternateNetworkViewController *)&v21 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(CBAlternateNetworkViewController *)self indexForIndexPath:pathCopy, v21.receiver, v21.super_class];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [v7 textField];
    v11 = textField;
    if (textField)
    {
      [textField addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];
    }

    identifier = [v9 identifier];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"OTHER_NETWORK_NAME" value:&stru_10007EAB0 table:0];
    v15 = [identifier isEqualToString:v14];

    if (v15)
    {
      [(CBAlternateNetworkViewController *)self setNetworkNameCell:v7];
      v16 = 32;
    }

    else
    {
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"PASSWORD" value:&stru_10007EAB0 table:0];
      v19 = [identifier isEqualToString:v18];

      if (!v19)
      {
LABEL_9:

        goto LABEL_10;
      }

      [(CBAlternateNetworkViewController *)self setPasswordCell:v7];
      v16 = 100;
    }

    [v11 setAutocorrectionType:1];
    [v11 setAutocapitalizationType:0];
    [v7 setCharacterLimit:v16];
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (void)_enableLeftBarButtonItem:(BOOL)item
{
  itemCopy = item;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"disabled";
    if (itemCopy)
    {
      v6 = @"enabled";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Left bar button is %@", &v9, 0xCu);
  }

  navigationItem = [(CBAlternateNetworkViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:itemCopy];
}

- (void)_enableRightBarButtonItem:(BOOL)item
{
  itemCopy = item;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"disabled";
    if (itemCopy)
    {
      v6 = @"enabled";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Right bar button is %@", &v9, 0xCu);
  }

  navigationItem = [(CBAlternateNetworkViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:itemCopy];
}

- (void)_setReturnKeyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enabling return key %d", v6, 8u);
  }

  v5 = +[UIKeyboard activeKeyboard];
  [v5 setReturnKeyEnabled:enabledCopy];
}

- (void)_enableUI:(BOOL)i
{
  iCopy = i;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = iCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enabling UI (%d)", v8, 8u);
  }

  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setUserInteractionEnabled:iCopy];
  [(CBAlternateNetworkViewController *)self _enableLeftBarButtonItem:iCopy];
  if (iCopy)
  {
    [(CBAlternateNetworkViewController *)self _updateReturnKey];
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "I'm bringing keyboard back", v8, 2u);
    }

    currentlyActiveTextField = [(CBAlternateNetworkViewController *)self currentlyActiveTextField];
    [currentlyActiveTextField becomeFirstResponder];
  }

  else
  {
    [(CBAlternateNetworkViewController *)self _enableRightBarButtonItem:0];
    [(CBAlternateNetworkViewController *)self _setReturnKeyEnabled:0];
  }
}

- (void)_updateReturnKey
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating [Return] key…", v20, 2u);
  }

  networkNameCell = [(CBAlternateNetworkViewController *)self networkNameCell];
  textField = [networkNameCell textField];

  passwordCell = [(CBAlternateNetworkViewController *)self passwordCell];
  textField2 = [passwordCell textField];

  if (textField)
  {
    text = [textField text];
    [(CBAlternateNetworkViewController *)self setName:text];
  }

  if (textField2)
  {
    text2 = [textField2 text];
    [(CBAlternateNetworkViewController *)self setPassword:text2];
  }

  _canAttemptJoin = [(CBAlternateNetworkViewController *)self _canAttemptJoin];
  if ([(CBAlternateNetworkViewController *)self otherNetworkViewActive])
  {
    networkName = [(CBAlternateNetworkViewController *)self networkName];
    if ([networkName length])
    {
      currentlyActiveTextField = [(CBAlternateNetworkViewController *)self currentlyActiveTextField];
      textInputTraits = [currentlyActiveTextField textInputTraits];
      if ([textInputTraits returnKeyType])
      {
        scanResult = [(CBAlternateNetworkViewController *)self scanResult];
        if ([scanResult isSecure])
        {
          _passwordIsValid = [(CBAlternateNetworkViewController *)self _passwordIsValid];
        }

        else
        {
          _passwordIsValid = 1;
        }
      }

      else
      {
        _passwordIsValid = 1;
      }
    }

    else
    {
      _passwordIsValid = 0;
    }
  }

  else
  {
    _passwordIsValid = [(CBAlternateNetworkViewController *)self _passwordIsValid];
  }

  [(CBAlternateNetworkViewController *)self _enableRightBarButtonItem:_canAttemptJoin];
  [(CBAlternateNetworkViewController *)self _setReturnKeyEnabled:_canAttemptJoin | _passwordIsValid];
  textInputTraits2 = [textField textInputTraits];
  scanResult2 = [(CBAlternateNetworkViewController *)self scanResult];
  if ([scanResult2 isSecure])
  {
    v18 = 0;
  }

  else
  {
    v18 = 3;
  }

  [textInputTraits2 setReturnKeyType:v18];

  textInputTraits3 = [textField2 textInputTraits];
  [textInputTraits3 setReturnKeyType:3];
}

- (void)_presentFailedAssociationAlertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting failed association alert", v13, 2u);
  }

  v9 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"DISMISS" value:&stru_10007EAB0 table:0];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [v9 addAction:v12];

  [(CBAlternateNetworkViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_checkoutAndPostAssociationCompletedNotificationWithError:(id)error
{
  errorCopy = error;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking out Alternate Network View Controller…", v8, 2u);
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = v5;
  if (errorCopy)
  {
    [v5 setObject:errorCopy forKeyedSubscript:@"CBWiFiManagerErrorKey"];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"CBWiFiNetworkAssociationCompletedNotification" object:0 userInfo:v6];
}

- (BOOL)_canAttemptJoin
{
  if ([(CBAlternateNetworkViewController *)self otherNetworkViewActive])
  {
    if ([(CBAlternateNetworkViewController *)self _networkNameIsValid])
    {
      scanResult = [(CBAlternateNetworkViewController *)self scanResult];
      if ([scanResult isSecure])
      {
        _passwordIsValid = [(CBAlternateNetworkViewController *)self _passwordIsValid];
      }

      else
      {
        _passwordIsValid = 1;
      }
    }

    else
    {
      _passwordIsValid = 0;
    }
  }

  else
  {
    _passwordIsValid = [(CBAlternateNetworkViewController *)self _passwordIsValid];
  }

  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = _passwordIsValid;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Allowing join %d", v7, 8u);
  }

  return _passwordIsValid;
}

- (BOOL)_networkNameIsValid
{
  networkName = [(CBAlternateNetworkViewController *)self networkName];
  v3 = [networkName length];

  v4 = CheckerBoardLogHandleForCategory();
  v5 = v3 - 1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v5 < 0x20;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Network name is valid %d", v7, 8u);
  }

  return v5 < 0x20;
}

- (BOOL)_passwordIsValid
{
  networkPassword = [(CBAlternateNetworkViewController *)self networkPassword];
  networkPassword2 = [(CBAlternateNetworkViewController *)self networkPassword];
  v5 = [networkPassword2 length];

  v6 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  invertedSet = [v6 invertedSet];

  v8 = [networkPassword rangeOfCharacterFromSet:invertedSet];
  scanResult = [(CBAlternateNetworkViewController *)self scanResult];
  if ([scanResult isWPA])
  {

LABEL_4:
    v13 = v5 == 64 && v8 == 0x7FFFFFFFFFFFFFFFLL;
    v14 = (v5 - 8) < 0x38 || v13;
    goto LABEL_14;
  }

  scanResult2 = [(CBAlternateNetworkViewController *)self scanResult];
  isWPA2 = [scanResult2 isWPA2];

  if (isWPA2)
  {
    goto LABEL_4;
  }

  v14 = v5 != 0;
LABEL_14:
  v15 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Password is valid %d", v17, 8u);
  }

  return v14;
}

@end