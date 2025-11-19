@interface BuddyProximityPasscodeValidationController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_shouldSetPasscode;
- (BOOL)_sourceHasAppleID;
- (BuddyProximityPasscodeValidationController)init;
- (void)_footerButtonTapped:(id)a3;
- (void)_nextButtonTapped;
- (void)_updateActions;
- (void)_validatePasscode:(id)a3;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)passcodeInput:(id)a3 willChangeContents:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v104 = self;
  v103 = a2;
  v102.receiver = self;
  v102.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v102 viewDidLoad];
  v2 = [(BuddyProximityPasscodeValidationController *)v104 headerView];
  LODWORD(v3) = 1045220557;
  [v2 setTitleHyphenationFactor:v3];

  v4 = [(BuddyProximityPasscodeValidationController *)v104 proximitySetupController];
  v101 = [(ProximitySetupController *)v4 deviceClass];

  v5 = [(BuddyProximityPasscodeValidationController *)v104 headerView];
  v6 = +[NSBundle mainBundle];
  v7 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_TITLE" deviceClass:v101];
  v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
  [v5 setTitle:v8];

  location = 0;
  if ([(BuddyProximityPasscodeValidationController *)v104 _sourceHasAppleID])
  {
    objc_storeStrong(&location, @"PROXIMITY_PASSCODE_VALIDATION_DESCRIPTION_START_APPLEID");
  }

  else
  {
    objc_storeStrong(&location, @"PROXIMITY_PASSCODE_VALIDATION_DESCRIPTION_START");
  }

  v9 = +[NSBundle mainBundle];
  v10 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:location deviceClass:v101];
  v99 = [(NSBundle *)v9 localizedStringForKey:v10 value:&stru_10032F900 table:@"Localizable"];

  v97 = 0;
  v11 = 0;
  if ([(BuddyProximityPasscodeValidationController *)v104 _shouldSetPasscode])
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

  v21 = [(BuddyProximityPasscodeValidationController *)v104 headerView];
  [v21 setDetailText:v99];

  v22 = +[NSBundle mainBundle];
  v23 = [(NSBundle *)v22 localizedStringForKey:@"PROXIMITY_PASSCODE_VALIDATION_FOOTER_BUTTON" value:&stru_10032F900 table:@"Localizable"];
  v24 = [(BuddyProximityPasscodeValidationController *)v104 proximitySetupController];
  v25 = [(ProximitySetupController *)v24 deviceName];
  v96[0] = [NSString localizedStringWithFormat:v23, v25];

  v95 = [BuddyMultilineButton buttonWithType:1];
  [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v95 titleLabel];
  v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v26 setFont:v27];

  v28 = [v95 titleLabel];
  [v28 setNumberOfLines:0];

  if (([(BuddyFeatureFlags *)v104->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    v29 = [v95 titleLabel];
    [v29 setTextAlignment:4];
  }

  else
  {
    v29 = [v95 titleLabel];
    [v29 setTextAlignment:1];
  }

  *&v93 = sub_100226EA4();
  *(&v93 + 1) = v30;
  *&v94 = v31;
  *(&v94 + 1) = v32;
  v92 = v94;
  v91 = v93;
  [v95 setContentEdgeInsets:{*&v93, v30, v31, v32}];
  [v95 setTitle:v96[0] forState:0];
  [v95 addTarget:v104 action:"_footerButtonTapped:" forEvents:64];
  v33 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
  [v33 addSubview:v95];

  v90 = 0;
  if (([(BuddyFeatureFlags *)v104->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    v34 = [v95 trailingAnchor];
    v35 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
    v36 = [v35 trailingAnchor];
    v37 = [v34 constraintLessThanOrEqualToAnchor:v36];
  }

  else
  {
    v34 = [v95 widthAnchor];
    v35 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
    v36 = [v35 widthAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 multiplier:1.0];
  }

  v38 = v90;
  v90 = v37;

  v39 = [v95 leadingAnchor];
  v40 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
  v41 = [v40 leadingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  v106[0] = v42;
  v106[1] = v90;
  v43 = [v95 bottomAnchor];
  v44 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
  v45 = [v44 bottomAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  v106[2] = v46;
  v47 = [NSArray arrayWithObjects:v106 count:3];
  [NSLayoutConstraint activateConstraints:v47];

  v89 = [OBPrivacyLinkController linkWithBundleIdentifier:BYPrivacyAppleIDIdentifier];
  [v89 setModalPresentationStyle:2];
  [v89 setDisplayCaptionText:0];
  [v89 setDisplayLargeIcon:0];
  v48 = [(BuddyProximityPasscodeValidationController *)v104 buttonTray];
  [v48 setPrivacyLinkController:v89];

  v49 = [(BuddyProximityPasscodeValidationController *)v104 proximitySetupController];
  v50 = [(ProximitySetupController *)v49 handshake];
  v51 = [(SASProximityHandshake *)v50 unlockType];

  v88 = v51;
  v52 = [(BuddyProximityPasscodeValidationController *)v104 proximitySetupController];
  v53 = [(ProximitySetupController *)v52 handshake];
  v54 = [(SASProximityHandshake *)v53 simplePasscodeType];

  if (v88)
  {
    v57 = [[BuddyComplexPasscodeInputView alloc] initWithFrame:v88 == 1 numericOnly:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(BuddyProximityPasscodeValidationController *)v104 setPasscodeInputView:v57];
  }

  else
  {
    if (v54)
    {
      v55 = 6;
    }

    else
    {
      v55 = 4;
    }

    v56 = [[BuddySimplePasscodeInputView alloc] initWithFrame:v55 numberOfEntryFields:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(BuddyProximityPasscodeValidationController *)v104 setPasscodeInputView:v56];
  }

  v58 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputView];
  [(BuddyPasscodeInputView *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];

  v59 = v104;
  v60 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputView];
  [(BuddyPasscodeInputView *)v60 setDelegate:v59];

  v61 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
  v62 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputView];
  [v61 addSubview:v62];

  v63 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputView];
  v64 = [(BuddyPasscodeInputView *)v63 leadingAnchor];
  v65 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
  v66 = [v65 leadingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];
  [v67 setActive:1];

  v68 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputView];
  v69 = [(BuddyPasscodeInputView *)v68 trailingAnchor];
  v70 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
  v71 = [v70 trailingAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];
  [v72 setActive:1];

  v73 = +[UIApplication sharedApplication];
  [BuddyPasscodeBaseViewController _passcodeInputVerticalPaddingForOrientation:[(UIApplication *)v73 activeInterfaceOrientation]];
  v75 = v74;

  v76 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputView];
  v77 = [(BuddyPasscodeInputView *)v76 topAnchor];
  v78 = [(BuddyProximityPasscodeValidationController *)v104 contentView];
  v79 = [v78 topAnchor];
  v80 = [v77 constraintEqualToAnchor:v79 constant:v75];
  [(BuddyProximityPasscodeValidationController *)v104 setContentViewTopConstraint:v80];

  v81 = [v95 topAnchor];
  v82 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputView];
  v83 = [(BuddyPasscodeInputView *)v82 bottomAnchor];
  v84 = [v81 constraintEqualToAnchor:v83 constant:v75];
  [(BuddyProximityPasscodeValidationController *)v104 setPasscodeInputViewBottomConstraint:v84];

  v85 = [(BuddyProximityPasscodeValidationController *)v104 contentViewTopConstraint];
  v105[0] = v85;
  v86 = [(BuddyProximityPasscodeValidationController *)v104 passcodeInputViewBottomConstraint];
  v105[1] = v86;
  v87 = [NSArray arrayWithObjects:v105 count:2];
  [NSLayoutConstraint activateConstraints:v87];

  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(v96, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v101, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v13 viewWillAppear:a3];
  v3 = [(BuddyProximityPasscodeValidationController *)v16 passcodeInputView];
  [(BuddyPasscodeInputView *)v3 becomeFirstResponder];

  v4 = [(BuddyProximityPasscodeValidationController *)v16 proximitySetupController];
  v5 = [(ProximitySetupController *)v4 handshake];
  v6 = [(SASProximityHandshake *)v5 unlockType];

  if (v6)
  {
    v8 = [UIBarButtonItem alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v12 = [v8 initWithTitle:v10 style:2 target:v16 action:"_nextButtonTapped"];

    v11 = [(BuddyProximityPasscodeValidationController *)v16 navigationItem];
    [v11 setRightBarButtonItem:v12 animated:v14];

    objc_storeStrong(&v12, 0);
  }

  else
  {
    v7 = [(BuddyProximityPasscodeValidationController *)v16 navigationItem];
    [v7 setRightBarButtonItem:0 animated:v14];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v4 viewWillDisappear:a3];
  v3 = [(BuddyProximityPasscodeValidationController *)v7 passcodeInputView];
  [(BuddyPasscodeInputView *)v3 resignFirstResponder];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v14 = a3;
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v11.receiver = v13;
  v11.super_class = BuddyProximityPasscodeValidationController;
  [(BuddyProximityPasscodeValidationController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:v14.width, v14.height];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100227274;
  v9 = &unk_10032D9E8;
  v10 = v13;
  [v4 animateAlongsideTransition:&v5 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateActions
{
  v2 = [(BuddyProximityPasscodeValidationController *)self passcodeInputView];
  v3 = [(BuddyPasscodeInputView *)v2 passcode];
  v4 = [v3 length] != 0;

  v5 = [(BuddyProximityPasscodeValidationController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:v4];

  v7 = +[UIKeyboard activeKeyboard];
  [v7 setReturnKeyEnabled:v4];
}

- (void)_nextButtonTapped
{
  v3 = [(BuddyProximityPasscodeValidationController *)self passcodeInputView:a2];
  v4 = [(BuddyPasscodeInputView *)v3 passcode];
  [(BuddyProximityPasscodeValidationController *)self _validatePasscode:v4];
}

- (void)_validatePasscode:(id)a3
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityPasscodeValidationController *)v42 proximitySetupController];
  v4 = [(ProximitySetupController *)v3 hasConnection];

  if (v4)
  {
    v18 = [(BuddyProximityPasscodeValidationController *)v42 view];
    v19 = [v18 window];
    [v19 setUserInteractionEnabled:0];

    v20 = [(BuddyProximityPasscodeValidationController *)v42 navigationController];
    v21 = [v20 topViewController];
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v21 identifier:@"BUDDY_PROXIMITY_PASSCODE_VALIDATION_CONTROLLER"];

    v22 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_100227AA4;
    v27 = &unk_10032B838;
    v28 = v42;
    v29 = location[0];
    dispatch_async(v22, &block);

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    v30 = 0;
  }

  else
  {
    v5 = [(BuddyProximityPasscodeValidationController *)v42 proximitySetupController];
    v40 = [(ProximitySetupController *)v5 deviceClass];

    v6 = +[NSBundle mainBundle];
    v7 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_LOST_CONNECT_ALERT_TITLE" deviceClass:v40];
    v39 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];

    v38 = 0;
    if ([(BuddyProximityPasscodeValidationController *)v42 _sourceHasAppleID])
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
    v36 = v42;
    v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v31];
    [v14 addAction:v17];

    [(BuddyProximityPasscodeValidationController *)v42 presentViewController:v37 animated:1 completion:0];
    v30 = 1;
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldSetPasscode
{
  v2 = [(BuddyProximityPasscodeValidationController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 isPasscodeSet];

  v8 = v3 & 1;
  v4 = +[BuddyCloudConfigManager sharedManager];
  v5 = [v4 hasCloudConfiguration];

  v6 = 0;
  if ((v8 & 1) == 0)
  {
    return !(v5 & 1);
  }

  return v6;
}

- (BOOL)_sourceHasAppleID
{
  v2 = [(BuddyProximityPasscodeValidationController *)self proximitySetupController:a2];
  v3 = [(ProximitySetupController *)v2 information];
  v4 = [(SASProximityInformation *)v3 appleID];
  v5 = v4 != 0;

  return v5;
}

- (void)_footerButtonTapped:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityPasscodeValidationController *)v40 proximitySetupController];
  v38 = [(ProximitySetupController *)v3 deviceClass];

  v4 = +[NSBundle mainBundle];
  v5 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_FORGOT_ALERT_TITLE" deviceClass:v38];
  v37 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

  v36 = 0;
  v35 = 0;
  if ([(BuddyProximityPasscodeValidationController *)v40 _sourceHasAppleID])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_PASSCODE_VALIDATION_FORGOT_ALERT_DESCRIPTION_APPLEID" deviceClass:v38];
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
    v15 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:v14 deviceClass:v38];
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
  v33 = v40;
  v27 = [UIAlertAction actionWithTitle:v35 style:0 handler:&v28];
  [v26 addAction:v27];

  [(BuddyProximityPasscodeValidationController *)v40 presentViewController:v34 animated:1 completion:0];
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityPasscodeValidationController *)v15 proximitySetupController];
  v4 = ![(ProximitySetupController *)v3 hasConnection];

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
    v5 = [(BuddyProximityPasscodeValidationController *)v15 proximitySetupController];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100228A68;
    v10 = &unk_10032BB88;
    v11 = v15;
    v12 = location[0];
    [(ProximitySetupController *)v5 waitForIntent:&v6];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)a3 willChangeContents:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyProximityPasscodeValidationController *)v7 _updateActions];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [location[0] passcodeField];
  [v5 forceDisplayIfNeeded];

  [(BuddyProximityPasscodeValidationController *)v8 _validatePasscode:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end