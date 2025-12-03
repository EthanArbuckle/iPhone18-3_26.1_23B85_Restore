@interface BuddyProximityPasscodeValidationController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_shouldSetPasscode;
- (BOOL)_sourceHasAppleID;
- (BuddyProximityPasscodeValidationController)init;
- (void)_footerButtonTapped:(id)tapped;
- (void)_nextButtonTapped;
- (void)_updateActions;
- (void)_validatePasscode:(id)passcode;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)passcodeInput:(id)input willChangeContents:(id)contents;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BuddyProximityPasscodeValidationController

- (BuddyProximityPasscodeValidationController)init
{
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyProximityPasscodeValidationController;
  v2 = [(BuddyProximityPasscodeValidationController *)&v7 initWithTitle:&stru_10032F900 detailText:0 icon:0];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    v3 = objc_alloc_init(BuddyFeatureFlags);
    v4 = *(location + 1);
    *(location + 1) = v3;
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v103 = a2;
  v102.receiver = self;
  v102.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v102 viewDidLoad];
  headerView = [(BuddyProximityPasscodeValidationController *)selfCopy headerView];
  LODWORD(v3) = 1045220557;
  [headerView setTitleHyphenationFactor:v3];

  proximitySetupController = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  deviceClass = [(ProximitySetupController *)proximitySetupController deviceClass];

  headerView2 = [(BuddyProximityPasscodeValidationController *)selfCopy headerView];
  v6 = +[NSBundle mainBundle];
  v7 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_TITLE" deviceClass:deviceClass];
  v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
  [headerView2 setTitle:v8];

  location = 0;
  if ([(BuddyProximityPasscodeValidationController *)selfCopy _sourceHasAppleID])
  {
    objc_storeStrong(&location, @"PROXIMITY_PASSCODE_VALIDATION_DESCRIPTION_START_APPLEID");
  }

  else
  {
    objc_storeStrong(&location, @"PROXIMITY_PASSCODE_VALIDATION_DESCRIPTION_START");
  }

  v9 = +[NSBundle mainBundle];
  v10 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:location deviceClass:deviceClass];
  v99 = [(NSBundle *)v9 localizedStringForKey:v10 value:&stru_10032F900 table:@"Localizable"];

  v97 = 0;
  v11 = 0;
  if ([(BuddyProximityPasscodeValidationController *)selfCopy _shouldSetPasscode])
  {
    v98 = +[UIScreen mainScreen];
    v97 = 1;
    [v98 bounds];
    v96[2] = v12;
    v96[1] = v13;
    v96[4] = v14;
    v96[3] = v15;
    v11 = *&v14 > 568.01;
  }

  if (v97)
  {
  }

  if (v11)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_DESCRIPTION_END"];
    v18 = [(NSBundle *)v16 localizedStringForKey:v17 value:&stru_10032F900 table:@"Localizable"];
    v19 = [NSString localizedStringWithFormat:@"%@\n\n%@", v99, v18];
    v20 = v99;
    v99 = v19;
  }

  headerView3 = [(BuddyProximityPasscodeValidationController *)selfCopy headerView];
  [headerView3 setDetailText:v99];

  v22 = +[NSBundle mainBundle];
  v23 = [(NSBundle *)v22 localizedStringForKey:@"PROXIMITY_PASSCODE_VALIDATION_FOOTER_BUTTON" value:&stru_10032F900 table:@"Localizable"];
  proximitySetupController2 = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  deviceName = [(ProximitySetupController *)proximitySetupController2 deviceName];
  v96[0] = [NSString localizedStringWithFormat:v23, deviceName];

  v95 = [BuddyMultilineButton buttonWithType:1];
  [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [v95 titleLabel];
  v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [titleLabel setFont:v27];

  titleLabel2 = [v95 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    titleLabel3 = [v95 titleLabel];
    [titleLabel3 setTextAlignment:4];
  }

  else
  {
    titleLabel3 = [v95 titleLabel];
    [titleLabel3 setTextAlignment:1];
  }

  *&v93 = sub_100226EA4();
  *(&v93 + 1) = v30;
  *&v94 = v31;
  *(&v94 + 1) = v32;
  v92 = v94;
  v91 = v93;
  [v95 setContentEdgeInsets:{*&v93, v30, v31, v32}];
  [v95 setTitle:v96[0] forState:0];
  [v95 addTarget:selfCopy action:"_footerButtonTapped:" forEvents:64];
  contentView = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
  [contentView addSubview:v95];

  v90 = 0;
  if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    trailingAnchor = [v95 trailingAnchor];
    contentView2 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v37 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  }

  else
  {
    trailingAnchor = [v95 widthAnchor];
    contentView2 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
    trailingAnchor2 = [contentView2 widthAnchor];
    v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 multiplier:1.0];
  }

  v38 = v90;
  v90 = v37;

  leadingAnchor = [v95 leadingAnchor];
  contentView3 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v106[0] = v42;
  v106[1] = v90;
  bottomAnchor = [v95 bottomAnchor];
  contentView4 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v106[2] = v46;
  v47 = [NSArray arrayWithObjects:v106 count:3];
  [NSLayoutConstraint activateConstraints:v47];

  v89 = [OBPrivacyLinkController linkWithBundleIdentifier:BYPrivacyAppleIDIdentifier];
  [v89 setModalPresentationStyle:2];
  [v89 setDisplayCaptionText:0];
  [v89 setDisplayLargeIcon:0];
  buttonTray = [(BuddyProximityPasscodeValidationController *)selfCopy buttonTray];
  [buttonTray setPrivacyLinkController:v89];

  proximitySetupController3 = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  handshake = [(ProximitySetupController *)proximitySetupController3 handshake];
  unlockType = [(SASProximityHandshake *)handshake unlockType];

  v88 = unlockType;
  proximitySetupController4 = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  handshake2 = [(ProximitySetupController *)proximitySetupController4 handshake];
  simplePasscodeType = [(SASProximityHandshake *)handshake2 simplePasscodeType];

  if (v88)
  {
    v57 = [[BuddyComplexPasscodeInputView alloc] initWithFrame:v88 == 1 numericOnly:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(BuddyProximityPasscodeValidationController *)selfCopy setPasscodeInputView:v57];
  }

  else
  {
    if (simplePasscodeType)
    {
      v55 = 6;
    }

    else
    {
      v55 = 4;
    }

    v56 = [[BuddySimplePasscodeInputView alloc] initWithFrame:v55 numberOfEntryFields:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(BuddyProximityPasscodeValidationController *)selfCopy setPasscodeInputView:v56];
  }

  passcodeInputView = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  [(BuddyPasscodeInputView *)passcodeInputView setTranslatesAutoresizingMaskIntoConstraints:0];

  v59 = selfCopy;
  passcodeInputView2 = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  [(BuddyPasscodeInputView *)passcodeInputView2 setDelegate:v59];

  contentView5 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
  passcodeInputView3 = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  [contentView5 addSubview:passcodeInputView3];

  passcodeInputView4 = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  leadingAnchor3 = [(BuddyPasscodeInputView *)passcodeInputView4 leadingAnchor];
  contentView6 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
  leadingAnchor4 = [contentView6 leadingAnchor];
  v67 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v67 setActive:1];

  passcodeInputView5 = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  trailingAnchor3 = [(BuddyPasscodeInputView *)passcodeInputView5 trailingAnchor];
  contentView7 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
  trailingAnchor4 = [contentView7 trailingAnchor];
  v72 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v72 setActive:1];

  v73 = +[UIApplication sharedApplication];
  [BuddyPasscodeBaseViewController _passcodeInputVerticalPaddingForOrientation:[(UIApplication *)v73 activeInterfaceOrientation]];
  v75 = v74;

  passcodeInputView6 = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  topAnchor = [(BuddyPasscodeInputView *)passcodeInputView6 topAnchor];
  contentView8 = [(BuddyProximityPasscodeValidationController *)selfCopy contentView];
  topAnchor2 = [contentView8 topAnchor];
  v80 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v75];
  [(BuddyProximityPasscodeValidationController *)selfCopy setContentViewTopConstraint:v80];

  topAnchor3 = [v95 topAnchor];
  passcodeInputView7 = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  bottomAnchor3 = [(BuddyPasscodeInputView *)passcodeInputView7 bottomAnchor];
  v84 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:v75];
  [(BuddyProximityPasscodeValidationController *)selfCopy setPasscodeInputViewBottomConstraint:v84];

  contentViewTopConstraint = [(BuddyProximityPasscodeValidationController *)selfCopy contentViewTopConstraint];
  v105[0] = contentViewTopConstraint;
  passcodeInputViewBottomConstraint = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputViewBottomConstraint];
  v105[1] = passcodeInputViewBottomConstraint;
  v87 = [NSArray arrayWithObjects:v105 count:2];
  [NSLayoutConstraint activateConstraints:v87];

  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(v96, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&deviceClass, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v15 = a2;
  appearCopy = appear;
  v13.receiver = self;
  v13.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v13 viewWillAppear:appear];
  passcodeInputView = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  [(BuddyPasscodeInputView *)passcodeInputView becomeFirstResponder];

  proximitySetupController = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  handshake = [(ProximitySetupController *)proximitySetupController handshake];
  unlockType = [(SASProximityHandshake *)handshake unlockType];

  if (unlockType)
  {
    v8 = [UIBarButtonItem alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v12 = [v8 initWithTitle:v10 style:2 target:selfCopy action:"_nextButtonTapped"];

    navigationItem = [(BuddyProximityPasscodeValidationController *)selfCopy navigationItem];
    [navigationItem setRightBarButtonItem:v12 animated:appearCopy];

    objc_storeStrong(&v12, 0);
  }

  else
  {
    navigationItem2 = [(BuddyProximityPasscodeValidationController *)selfCopy navigationItem];
    [navigationItem2 setRightBarButtonItem:0 animated:appearCopy];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v4 viewWillDisappear:disappear];
  passcodeInputView = [(BuddyProximityPasscodeValidationController *)selfCopy passcodeInputView];
  [(BuddyPasscodeInputView *)passcodeInputView resignFirstResponder];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v11.receiver = selfCopy;
  v11.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100227274;
  v9 = &unk_10032D9E8;
  v10 = selfCopy;
  [v4 animateAlongsideTransition:&v5 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateActions
{
  passcodeInputView = [(BuddyProximityPasscodeValidationController *)self passcodeInputView];
  passcode = [(BuddyPasscodeInputView *)passcodeInputView passcode];
  v4 = [passcode length] != 0;

  navigationItem = [(BuddyProximityPasscodeValidationController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];

  v7 = +[UIKeyboard activeKeyboard];
  [v7 setReturnKeyEnabled:v4];
}

- (void)_nextButtonTapped
{
  v3 = [(BuddyProximityPasscodeValidationController *)self passcodeInputView:a2];
  passcode = [(BuddyPasscodeInputView *)v3 passcode];
  [(BuddyProximityPasscodeValidationController *)self _validatePasscode:passcode];
}

- (void)_validatePasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  proximitySetupController = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];

  if (hasConnection)
  {
    view = [(BuddyProximityPasscodeValidationController *)selfCopy view];
    window = [view window];
    [window setUserInteractionEnabled:0];

    navigationController = [(BuddyProximityPasscodeValidationController *)selfCopy navigationController];
    topViewController = [navigationController topViewController];
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:topViewController identifier:@"BUDDY_PROXIMITY_PASSCODE_VALIDATION_CONTROLLER"];

    v22 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_100227AA4;
    v27 = &unk_10032B838;
    v28 = selfCopy;
    v29 = location[0];
    dispatch_async(v22, &block);

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    v30 = 0;
  }

  else
  {
    proximitySetupController2 = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
    deviceClass = [(ProximitySetupController *)proximitySetupController2 deviceClass];

    v6 = +[NSBundle mainBundle];
    v7 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_LOST_CONNECT_ALERT_TITLE" deviceClass:deviceClass];
    v39 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];

    v38 = 0;
    if ([(BuddyProximityPasscodeValidationController *)selfCopy _sourceHasAppleID])
    {
      v8 = +[NSBundle mainBundle];
      v9 = [(NSBundle *)v8 localizedStringForKey:@"PROXIMITY_PASSCODE_VALIDATION_LOST_CONNECT_ALERT_DESCRIPTION_APPLEID" value:&stru_10032F900 table:@"Localizable"];
      v10 = v38;
      v38 = v9;
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_LOST_CONNECT_ALERT_DESCRIPTION"];
      v12 = [(NSBundle *)v8 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
      v13 = v38;
      v38 = v12;
    }

    v37 = [UIAlertController alertControllerWithTitle:v39 message:v38 preferredStyle:1];
    v14 = v37;
    v15 = +[NSBundle mainBundle];
    v16 = [(NSBundle *)v15 localizedStringForKey:@"PROXIMITY_PASSCODE_VALIDATION_LOST_CONNECT_ALERT_BUTTON_CONTINUE" value:&stru_10032F900 table:@"Localizable"];
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_100227A34;
    v35 = &unk_10032B598;
    v36 = selfCopy;
    v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v31];
    [v14 addAction:v17];

    [(BuddyProximityPasscodeValidationController *)selfCopy presentViewController:v37 animated:1 completion:0];
    v30 = 1;
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&deviceClass, 0);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldSetPasscode
{
  managedConfiguration = [(BuddyProximityPasscodeValidationController *)self managedConfiguration];
  isPasscodeSet = [(MCProfileConnection *)managedConfiguration isPasscodeSet];

  v8 = isPasscodeSet & 1;
  v4 = +[BuddyCloudConfigManager sharedManager];
  hasCloudConfiguration = [v4 hasCloudConfiguration];

  v6 = 0;
  if ((v8 & 1) == 0)
  {
    return !(hasCloudConfiguration & 1);
  }

  return v6;
}

- (BOOL)_sourceHasAppleID
{
  v2 = [(BuddyProximityPasscodeValidationController *)self proximitySetupController:a2];
  information = [(ProximitySetupController *)v2 information];
  appleID = [(SASProximityInformation *)information appleID];
  v5 = appleID != 0;

  return v5;
}

- (void)_footerButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  proximitySetupController = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  deviceClass = [(ProximitySetupController *)proximitySetupController deviceClass];

  v4 = +[NSBundle mainBundle];
  v5 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_FORGOT_ALERT_TITLE" deviceClass:deviceClass];
  v37 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

  v36 = 0;
  v35 = 0;
  if ([(BuddyProximityPasscodeValidationController *)selfCopy _sourceHasAppleID])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_FORGOT_ALERT_DESCRIPTION_APPLEID" deviceClass:deviceClass];
    v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
    v9 = v36;
    v36 = v8;

    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizedStringForKey:@"PROXIMITY_PASSCODE_VALIDATION_FORGOT_ALERT_BUTTON_SIGN_IN_MANUALLY" value:&stru_10032F900 table:@"Localizable"];
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    v14 = SFLocalizableWAPIStringKeyForKey();
    v15 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:v14 deviceClass:deviceClass];
    v16 = [(NSBundle *)v13 localizedStringForKey:v15 value:&stru_10032F900 table:@"Localizable"];
    v17 = v36;
    v36 = v16;

    v18 = +[NSBundle mainBundle];
    v19 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_FORGOT_ALERT_DESCRIPTION_END"];
    v20 = [(NSBundle *)v18 localizedStringForKey:v19 value:&stru_10032F900 table:@"Localizable"];
    v21 = [NSString localizedStringWithFormat:@"%@%@", v36, v20];
    v22 = v36;
    v36 = v21;

    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizedStringForKey:0x10033A000 value:&stru_10032F900 table:@"Localizable"];
  }

  v12 = v35;
  v35 = v11;

  v34 = [UIAlertController alertControllerWithTitle:v37 message:v36 preferredStyle:1];
  v23 = +[NSBundle mainBundle];
  v24 = [(NSBundle *)v23 localizedStringForKey:@"PROXIMITY_PASSCODE_VALIDATION_FORGOT_ALERT_BUTTON_TRY" value:&stru_10032F900 table:@"Localizable"];
  v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:0];
  [v34 addAction:v25];

  v26 = v34;
  v28 = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_100228750;
  v32 = &unk_10032B598;
  v33 = selfCopy;
  v27 = [UIAlertAction actionWithTitle:v35 style:0 handler:&v28];
  [v26 addAction:v27];

  [(BuddyProximityPasscodeValidationController *)selfCopy presentViewController:v34 animated:1 completion:0];
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&deviceClass, 0);
  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  proximitySetupController = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
  v4 = ![(ProximitySetupController *)proximitySetupController hasConnection];

  if (v4)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0);
    }

    v13 = 1;
  }

  else
  {
    proximitySetupController2 = [(BuddyProximityPasscodeValidationController *)selfCopy proximitySetupController];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100228A68;
    v10 = &unk_10032BB88;
    v11 = selfCopy;
    v12 = location[0];
    [(ProximitySetupController *)proximitySetupController2 waitForIntent:&v6];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)input willChangeContents:(id)contents
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v5 = 0;
  objc_storeStrong(&v5, contents);
  [(BuddyProximityPasscodeValidationController *)selfCopy _updateActions];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v6 = 0;
  objc_storeStrong(&v6, passcode);
  passcodeField = [location[0] passcodeField];
  [passcodeField forceDisplayIfNeeded];

  [(BuddyProximityPasscodeValidationController *)selfCopy _validatePasscode:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end