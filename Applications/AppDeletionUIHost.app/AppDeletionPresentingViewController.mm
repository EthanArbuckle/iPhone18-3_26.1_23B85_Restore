@interface AppDeletionPresentingViewController
- (AppDeletionPresentingViewController)initWithAlertData:(id)data delegate:(id)delegate;
- (BOOL)_constructBulletedList:(id)list;
- (BOOL)constructAppDeletionController;
- (_NSRange)hyperLinkRangeForMessages;
- (double)presentationHeightForSheet;
- (id)_headerImage;
- (id)_localizedStringForKey:(id)key withFormatHint:(id)hint;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_addBlurredBackgroundToView:(id)view;
- (void)_addButtonTrayAndDismissButtonToController:(id)controller;
- (void)presentSheetViewController:(id)controller;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation AppDeletionPresentingViewController

- (AppDeletionPresentingViewController)initWithAlertData:(id)data delegate:(id)delegate
{
  dataCopy = data;
  delegateCopy = delegate;
  v46.receiver = self;
  v46.super_class = AppDeletionPresentingViewController;
  v8 = [(AppDeletionPresentingViewController *)&v46 init];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = [dataCopy objectForKey:kCFBundleIdentifierKey];
  if (!v9)
  {
    v10 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100004E2C();
    }

    goto LABEL_25;
  }

  v10 = v9;
  objc_storeStrong(&v8->_bundleID, v9);
  v11 = [dataCopy objectForKey:kCFBundleNameKey];
  if (!v11)
  {
    v12 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100004DAC();
    }

    goto LABEL_24;
  }

  v12 = v11;
  objc_storeStrong(&v8->_localizedName, v11);
  v13 = [dataCopy objectForKey:@"RelevantAppData"];
  v14 = [v13 objectForKeyedSubscript:@"TestCrash"];
  v15 = v14;
  if (v14)
  {
    LOBYTE(v14) = [v14 BOOLValue];
  }

  byte_100016CF0 = v14;
  v16 = [v13 objectForKey:@"SADAppType"];
  if (!v16)
  {

LABEL_23:
LABEL_24:

LABEL_25:
    v22 = 0;
    goto LABEL_42;
  }

  v44 = v16;
  v45 = v15;
  v8->_appType = [v16 unsignedIntegerValue];
  v17 = [v13 objectForKey:@"ShowArchiveOption"];
  v43 = v17;
  if (v17)
  {
    v8->_showArchiveOption = [v17 BOOLValue];
  }

  else
  {
    v8->_showArchiveOption = 1;
  }

  v18 = [v13 objectForKey:@"IsICloudOn"];
  v42 = v18;
  if (v18)
  {
    v8->_isICloudOn = [v18 BOOLValue];
  }

  else
  {
    v8->_isICloudOn = 0;
  }

  v19 = [v13 objectForKey:@"NumInstalledApps"];
  numAppsInstalled = v8->_numAppsInstalled;
  v8->_numAppsInstalled = v19;

  if (!v8->_numAppsInstalled && v8->_appType == 4)
  {
    v21 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100004D2C(&v8->_bundleID);
    }

    goto LABEL_23;
  }

  v23 = [v13 objectForKey:@"SharedMedia"];
  numMediaShared = v8->_numMediaShared;
  v8->_numMediaShared = v23;

  v25 = [v13 objectForKey:@"TestSOSAvailable"];
  v26 = v25;
  if (v25)
  {
    v8->_isSOSAvailable = [v25 BOOLValue];
  }

  else
  {
    v27 = +[AppDeletionUISOSState sharedInstance];
    v8->_isSOSAvailable = [v27 sosIsAvailable];
  }

  v28 = [v13 objectForKey:@"WatchIsPaired"];
  v41 = v28;
  v8->_isWatchPaired = v28 ? [v28 BOOLValue] : 0;
  v29 = +[LSApplicationWorkspace defaultWorkspace];
  v30 = v29;
  if (v29)
  {
    v39 = v26;
    v47 = 0;
    v31 = [v29 defaultApplicationForCategory:10 error:&v47];
    v40 = v47;
    v38 = v12;
    if (v31)
    {
      bundleIdentifier = [v31 bundleIdentifier];
      v33 = v31;
      LOBYTE(v31) = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];
    }

    else
    {
      bundleIdentifier = sub_100003D54(off_100016A30);
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v49 = "_MessagesIsTheDefaultTextApp";
        v50 = 2048;
        v51 = 10;
        v52 = 2112;
        v53 = v40;
        _os_log_impl(&_mh_execute_header, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "%s: Unexpectedly got a nil record for category %lu: %@", buf, 0x20u);
        LOBYTE(v31) = 0;
      }

      v33 = 0;
    }

    v12 = v38;
    v26 = v39;
  }

  else
  {
    LOBYTE(v31) = 1;
  }

  v8->_isMessagesTheDefaultTextApp = v31;
  v8->_hyperLinkRangeForMessages.location = 0;
  v8->_hyperLinkRangeForMessages.length = 0;
  objc_storeStrong(&v8->_delegate, delegate);
  obViewController = v8->_obViewController;
  v8->_obViewController = 0;

  textView = v8->_textView;
  v8->_textView = 0;

  constructAppDeletionController = [(AppDeletionPresentingViewController *)v8 constructAppDeletionController];
  v22 = 0;
  if (constructAppDeletionController)
  {
LABEL_41:
    v22 = v8;
  }

LABEL_42:

  return v22;
}

- (id)_localizedStringForKey:(id)key withFormatHint:(id)hint
{
  keyCopy = key;
  hintCopy = hint;
  deletionStringsBundle = [(AppDeletionPresentingViewController *)self deletionStringsBundle];
  deletionStringsTableName = [(AppDeletionPresentingViewController *)self deletionStringsTableName];
  if (deletionStringsBundle)
  {
    v10 = CFBundleCopyLocalizedString(deletionStringsBundle, keyCopy, 0, deletionStringsTableName);
    v11 = v10;
    if (v10 == keyCopy)
    {

      v12 = sub_100003D54(off_100016A30);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        bundleID = [(AppDeletionPresentingViewController *)self bundleID];
        v15 = 136315906;
        v16 = "[AppDeletionPresentingViewController _localizedStringForKey:withFormatHint:]";
        v17 = 2112;
        v18 = keyCopy;
        v19 = 2112;
        v20 = deletionStringsTableName;
        v21 = 2112;
        v22 = bundleID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: A value for the custom deletion message key %@ was not found in the strings file named %@ for the current language in app %@; using default value instead", &v15, 0x2Au);
      }
    }

    else if (v10)
    {
      goto LABEL_9;
    }
  }

  v11 = hintCopy;
LABEL_9:

  return v11;
}

- (BOOL)_constructBulletedList:(id)list
{
  listCopy = list;
  appType = [(AppDeletionPresentingViewController *)self appType];
  if (appType > 2)
  {
    if (appType != 3)
    {
      if (appType == 4)
      {
        v15 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APP_MARKETPLACE_BODY" withFormatHint:@"%lu apps downloaded with “%@” will not receive updates."];
        numAppsInstalled = [(AppDeletionPresentingViewController *)self numAppsInstalled];
        unsignedIntegerValue = [numAppsInstalled unsignedIntegerValue];
        localizedName = [(AppDeletionPresentingViewController *)self localizedName];
        v7 = [NSString localizedStringWithFormat:v15, unsignedIntegerValue, localizedName];

        v19 = +[UIColor systemRedColor];
        [listCopy addBulletedListItemWithTitle:v7 description:&stru_1000105B8 symbolName:@"square.and.arrow.down.badge.xmark" tintColor:v19];

LABEL_34:
        v21 = 1;
        goto LABEL_35;
      }

      goto LABEL_11;
    }

    isMessagesTheDefaultTextApp = [(AppDeletionPresentingViewController *)self isMessagesTheDefaultTextApp];
    isSOSAvailable = [(AppDeletionPresentingViewController *)self isSOSAvailable];
    if ([(AppDeletionPresentingViewController *)self isICloudOn])
    {
      v27 = @"DELETION_SHEET_MESSAGES_BODY_FIRST";
      v28 = @"This app and all messages on this iPhone will be deleted. Messages stored in iCloud will not be deleted.";
    }

    else
    {
      v27 = @"DELETION_SHEET_MESSAGES_BODY_FIRST_SHORT_ICLOUD_OFF";
      v28 = @"This app and all messages on this iPhone will be deleted.";
    }

    v7 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:v27 withFormatHint:v28];
    v29 = +[UIColor systemRedColor];
    [listCopy addBulletedListItemWithTitle:v7 description:&stru_1000105B8 symbolName:@"trash" tintColor:v29];

    numMediaShared = [(AppDeletionPresentingViewController *)self numMediaShared];
    v13 = numMediaShared;
    if (numMediaShared && [numMediaShared unsignedIntegerValue])
    {
      v31 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_SECOND" withFormatHint:@"%ld photos and videos shared with you in “Messages” will be deleted and no longer appear in “Photos”."];
      v32 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v31, [v13 unsignedIntegerValue]);

      v33 = +[UIColor systemRedColor];
      [listCopy addBulletedListItemWithTitle:v32 description:&stru_1000105B8 symbolName:@"shared.with.you" tintColor:v33];
    }

    if (isMessagesTheDefaultTextApp)
    {
      v34 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_THIRD" withFormatHint:@"This iPhone will not be able to send or receive text messages, including verification codes used to confirm your identity for accounts."];
      v35 = +[UIColor systemRedColor];
      [listCopy addBulletedListItemWithTitle:v34 description:&stru_1000105B8 symbolName:@"exclamationmark.message" tintColor:v35];

      if (isSOSAvailable)
      {
        v36 = @"DELETION_SHEET_MESSAGES_BODY_FOURTH";
        v37 = @"Emergency SOS via satellite, government text alerts, and other emergency text services will not be available.";
      }

      else
      {
        v36 = @"DELETION_SHEET_MESSAGES_BODY_FOURTH_SOS_NOT_AVAILABLE";
        v37 = @"Government text alerts and other emergency text services will not be available.";
      }

      v38 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:v36 withFormatHint:v37];
    }

    else
    {
      if (!isSOSAvailable)
      {
LABEL_32:
        v14 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_FIFTH" withFormatHint:@"Cellular charges may still apply."];
        v40 = +[UIColor systemRedColor];
        [listCopy addBulletedListItemWithTitle:v14 description:&stru_1000105B8 symbolName:@"antenna.radiowaves.left.and.right" tintColor:v40];

LABEL_33:
        goto LABEL_34;
      }

      v38 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_FOURTH_MESSAGES_NOT_DEFAULT" withFormatHint:@"Emergency SOS via satellite will not be available."];
    }

    if (v38)
    {
      v39 = +[UIColor systemRedColor];
      [listCopy addBulletedListItemWithTitle:v38 description:&stru_1000105B8 symbolName:@"sos" tintColor:v39];
    }

    goto LABEL_32;
  }

  if (appType == 1)
  {
    if ([(AppDeletionPresentingViewController *)self isICloudOn])
    {
      v22 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_BEFORE_FIRST_ICLOUD_ON" withFormatHint:@"Photos and videos you take will continue to sync to iCloud."];
      [listCopy addBulletedListItemWithTitle:v22 description:&stru_1000105B8 symbolName:@"arrow.trianglehead.2.clockwise.rotate.90.icloud"];
    }

    v7 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_FIRST" withFormatHint:@"Access to your photo library will not be removed for apps. You'll still be able to manage access in Settings."];
    [listCopy addBulletedListItemWithTitle:v7 description:&stru_1000105B8 symbolName:@"photo.on.rectangle"];
    v13 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_SECOND" withFormatHint:@"Memories will not be available."];
    v23 = +[UIColor systemRedColor];
    [listCopy addBulletedListItemWithTitle:v13 description:&stru_1000105B8 symbolName:@"memories" tintColor:v23];

    v14 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_THIRD" withFormatHint:@"Hidden and recently deleted photos will not be available."];
    v24 = +[UIColor systemRedColor];
    [listCopy addBulletedListItemWithTitle:v14 description:&stru_1000105B8 symbolName:@"eye.slash" tintColor:v24];

    goto LABEL_33;
  }

  if (appType == 2)
  {
    numAppsInstalled2 = [(AppDeletionPresentingViewController *)self numAppsInstalled];
    v7 = numAppsInstalled2;
    if (numAppsInstalled2 && [numAppsInstalled2 unsignedIntegerValue])
    {
      v8 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APP_MARKETPLACE_BODY" withFormatHint:@"%lu apps you downloaded with “%@” will not receive updates."];
      unsignedIntegerValue2 = [v7 unsignedIntegerValue];
      localizedName2 = [(AppDeletionPresentingViewController *)self localizedName];
      v11 = [NSString localizedStringWithFormat:v8, unsignedIntegerValue2, localizedName2];

      v12 = +[UIColor systemRedColor];
      [listCopy addBulletedListItemWithTitle:v11 description:&stru_1000105B8 symbolName:@"square.and.arrow.down.badge.xmark" tintColor:v12];
    }

    v13 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APPSTORE_BODY_SECOND" withFormatHint:@"If you want to get built-in iPhone apps that you've already deleted, you'll need to reinstall “App Store”."];
    [listCopy addBulletedListItemWithTitle:v13 description:&stru_1000105B8 symbolName:@"appstore.app"];
    v14 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APPSTORE_BODY_THIRD" withFormatHint:@"You'll still be able to manage app subscriptions in Settings."];
    [listCopy addBulletedListItemWithTitle:v14 description:&stru_1000105B8 symbolName:@"plus.arrow.trianglehead.clockwise"];
    goto LABEL_33;
  }

LABEL_11:
  v20 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100004EAC();
  }

  v21 = 0;
LABEL_35:

  return v21;
}

- (id)_headerImage
{
  bundleID = [(AppDeletionPresentingViewController *)self bundleID];
  v4 = [UIImage imageNamed:@"AlertBadgeIcon"];
  v36 = [[UIImageView alloc] initWithImage:v4];
  v35 = objc_alloc_init(SBSHomeScreenService);
  homeScreenIconStyleConfiguration = [v35 homeScreenIconStyleConfiguration];
  if (!homeScreenIconStyleConfiguration)
  {
    leadingAnchor = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(leadingAnchor, OS_LOG_TYPE_ERROR))
    {
      sub_1000050A0();
    }

    v20 = 0;
    v19 = 0;
    v14 = 0;
    v6 = 0;
    goto LABEL_18;
  }

  v33 = v4;
  v34 = bundleID;
  v6 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorHomeScreen];
  tintColor = [homeScreenIconStyleConfiguration tintColor];
  cGColor = [tintColor CGColor];

  traitCollection = [(AppDeletionPresentingViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  [v6 setAppearance:{objc_msgSend(homeScreenIconStyleConfiguration, "iconServicesAppearanceUsingDarkInterfaceStyle:", userInterfaceStyle == 2)}];
  [v6 setAppearanceVariant:{objc_msgSend(homeScreenIconStyleConfiguration, "iconServicesAppearanceVariantUsingDarkInterfaceStyle:", userInterfaceStyle == 2)}];
  if (cGColor)
  {
    v11 = [[IFColor alloc] initWithCGColor:cGColor];
    [v6 setTintColor:v11];
  }

  bundleID = v34;
  v12 = [[ISIcon alloc] initWithBundleIdentifier:v34];
  if (!v12)
  {
    leadingAnchor = sub_100003D54(off_100016A30);
    v4 = v33;
    if (os_log_type_enabled(leadingAnchor, OS_LOG_TYPE_ERROR))
    {
      sub_100005024();
    }

    v20 = 0;
    v19 = 0;
    v14 = 0;
LABEL_18:
    v13 = 0;
    goto LABEL_24;
  }

  v13 = v12;
  v14 = [v12 imageForDescriptor:v6];
  v4 = v33;
  if ([v14 placeholder])
  {
    v15 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "[AppDeletionPresentingViewController _headerImage]";
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: IconServices returned a placeholder icon for bundle with identifer %@", buf, 0x16u);
    }

    v16 = [v13 prepareImageForDescriptor:v6];

    v14 = v16;
  }

  cGImage = [v14 CGImage];
  if (cGImage)
  {
    v18 = [[UIImage alloc] initWithCGImage:cGImage];
    if (v18)
    {
      v19 = v18;
      v20 = [[UIImageView alloc] initWithImage:v18];
      [v20 insertSubview:v36 atIndex:1];
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor = [v36 leadingAnchor];
      leadingAnchor2 = [v20 leadingAnchor];
      v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:66.0];
      v37[0] = v31;
      topAnchor = [v36 topAnchor];
      topAnchor2 = [v20 topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:56.0];
      v37[1] = v28;
      widthAnchor = [v36 widthAnchor];
      v26 = [widthAnchor constraintEqualToConstant:29.0];
      v37[2] = v26;
      widthAnchor2 = [v36 widthAnchor];
      v23 = [widthAnchor2 constraintEqualToConstant:29.0];
      v37[3] = v23;
      v24 = [NSArray arrayWithObjects:v37 count:4];
      [NSLayoutConstraint activateConstraints:v24];

      bundleID = v34;
      v4 = v33;

      goto LABEL_24;
    }

    leadingAnchor = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(leadingAnchor, OS_LOG_TYPE_ERROR))
    {
      sub_100004F2C();
    }
  }

  else
  {
    leadingAnchor = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(leadingAnchor, OS_LOG_TYPE_ERROR))
    {
      sub_100004FA8();
    }
  }

  v20 = 0;
  v19 = 0;
LABEL_24:

  return v20;
}

- (void)_addButtonTrayAndDismissButtonToController:(id)controller
{
  controllerCopy = controller;
  v5 = +[OBBoldTrayButton boldButton];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100002964;
  v35[3] = &unk_100010350;
  v35[4] = self;
  v6 = [UIAction actionWithHandler:v35];
  [v5 addAction:v6 forControlEvents:64];

  v7 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_DELETE_BUTTON" withFormatHint:@"Delete App"];
  [v5 setTitle:v7 forState:0];
  v8 = +[UIColor systemRedColor];
  [v5 setTintColor:v8];

  buttonTray = [controllerCopy buttonTray];
  [buttonTray addButton:v5];

  if ([(AppDeletionPresentingViewController *)self showArchiveOption])
  {
    v10 = +[OBLinkTrayButton linkButton];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000029AC;
    v34[3] = &unk_100010350;
    v34[4] = self;
    v11 = [UIAction actionWithHandler:v34];
    [v10 addAction:v11 forControlEvents:64];

    v12 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_REMOVE_FROM_HOME_SCREEN_BUTTON" withFormatHint:@"Remove from Home Screen"];
    [v10 setTitle:v12 forState:0];
    buttonTray2 = [controllerCopy buttonTray];
    [buttonTray2 addButton:v10];
  }

  buttonTray3 = [controllerCopy buttonTray];
  buttonViewBottomConstraint = [buttonTray3 buttonViewBottomConstraint];

  if (buttonViewBottomConstraint)
  {
    buttonTray4 = [controllerCopy buttonTray];
    buttonViewBottomConstraint2 = [buttonTray4 buttonViewBottomConstraint];

    [buttonViewBottomConstraint2 setActive:0];
    LODWORD(buttonTray4) = [(AppDeletionPresentingViewController *)self showArchiveOption];
    [buttonViewBottomConstraint2 firstItem];
    v32 = v5;
    v18 = controllerCopy;
    v20 = v19 = v7;
    firstAttribute = [buttonViewBottomConstraint2 firstAttribute];
    relation = [buttonViewBottomConstraint2 relation];
    secondItem = [buttonViewBottomConstraint2 secondItem];
    secondAttribute = [buttonViewBottomConstraint2 secondAttribute];
    v25 = 8.0;
    if (!buttonTray4)
    {
      v25 = 32.0;
    }

    v26 = [NSLayoutConstraint constraintWithItem:v20 attribute:firstAttribute relatedBy:relation toItem:secondItem attribute:secondAttribute multiplier:1.0 constant:v25];

    v7 = v19;
    controllerCopy = v18;
    v5 = v32;
    v36 = v26;
    v27 = [NSArray arrayWithObjects:&v36 count:1];
    [NSLayoutConstraint activateConstraints:v27];
  }

  v28 = [UIBarButtonItem alloc];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000029F4;
  v33[3] = &unk_100010350;
  v33[4] = self;
  v29 = [UIAction actionWithHandler:v33];
  v30 = [v28 initWithBarButtonSystemItem:24 primaryAction:v29];
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setRightBarButtonItem:v30];
}

- (BOOL)constructAppDeletionController
{
  bundleID = [(AppDeletionPresentingViewController *)self bundleID];
  appType = [(AppDeletionPresentingViewController *)self appType];
  v5 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v76 = "[AppDeletionPresentingViewController constructAppDeletionController]";
    v77 = 2112;
    v78 = bundleID;
    v79 = 2048;
    v80 = appType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Attempting to construct the deletion sheet for %@ with type %lu", buf, 0x20u);
  }

  v6 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_TITLE_DELETE_WITH_NAME" withFormatHint:@"Delete “%@”?"];
  localizedName = [(AppDeletionPresentingViewController *)self localizedName];
  v8 = [NSString localizedStringWithFormat:v6, localizedName];

  if (appType > 2)
  {
    if (appType == 3)
    {
      if ([(AppDeletionPresentingViewController *)self isWatchPaired])
      {
        v18 = @"DELETION_SHEET_MESSAGES_TITLE_BODY";
        v19 = @"Deleting this app will limit iPhone and Apple Watch functionality.";
      }

      else
      {
        v18 = @"DELETION_SHEET_MESSAGES_TITLE_BODY_WATCH_NOT_PAIRED";
        v19 = @"Deleting this app will limit iPhone functionality.";
      }

      v20 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:v18 withFormatHint:v19];
      v14 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_TITLE_BODY_LEARN_MORE" withFormatHint:@"Learn more…"];
      v16 = [NSString stringWithFormat:@"%@ %@", v20, v14];

      goto LABEL_20;
    }

    if (appType == 4)
    {
      v9 = @"DELETION_SHEET_ALTERNATE_APP_MARKETPLACE_FIRST";
      goto LABEL_10;
    }

LABEL_11:
    v11 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100005120();
    }

    _headerImage = 0;
    v13 = 0;
    v14 = 0;
    detailLabel = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_30;
  }

  if (appType == 1)
  {
    v9 = @"DELETION_SHEET_PHOTOS_TITLE_BODY";
    v10 = @"Deleting this app will not delete your photos and videos.";
    goto LABEL_15;
  }

  if (appType != 2)
  {
    goto LABEL_11;
  }

  v9 = @"DELETION_SHEET_APPSTORE_TITLE_BODY";
LABEL_10:
  v10 = @"Deleting this app will not delete the apps you downloaded with it.";
LABEL_15:
  v16 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:v9 withFormatHint:v10];
  v14 = 0;
LABEL_20:
  _headerImage = [(AppDeletionPresentingViewController *)self _headerImage];
  if (!_headerImage)
  {
    v13 = 0;
    detailLabel = 0;
    v17 = 0;
    goto LABEL_33;
  }

  selfCopy = self;
  v54 = appType;
  v69 = bundleID;
  v68 = v8;
  v71 = v16;
  v21 = [[OBWelcomeController alloc] initWithTitle:v8 detailText:v16 icon:0 contentLayout:2];
  headerView = [v21 headerView];
  customIconContainerView = [headerView customIconContainerView];
  [customIconContainerView addSubview:_headerImage];

  [_headerImage setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [_headerImage widthAnchor];
  v63 = [widthAnchor constraintEqualToConstant:80.0];
  v74[0] = v63;
  heightAnchor = [_headerImage heightAnchor];
  v59 = [heightAnchor constraintEqualToConstant:80.0];
  v74[1] = v59;
  centerXAnchor = [_headerImage centerXAnchor];
  headerView2 = [v21 headerView];
  customIconContainerView2 = [headerView2 customIconContainerView];
  centerXAnchor2 = [customIconContainerView2 centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v74[2] = v26;
  v67 = _headerImage;
  [_headerImage centerYAnchor];
  v27 = v70 = v14;
  headerView3 = [v21 headerView];
  customIconContainerView3 = [headerView3 customIconContainerView];
  centerYAnchor = [customIconContainerView3 centerYAnchor];
  v31 = [v27 constraintEqualToAnchor:centerYAnchor];
  v74[3] = v31;
  v32 = [NSArray arrayWithObjects:v74 count:4];
  [NSLayoutConstraint activateConstraints:v32];

  _headerImage = v21;
  v14 = v70;

  headerView4 = [v21 headerView];
  LODWORD(v34) = 1148846080;
  [headerView4 setContentCompressionResistancePriority:1 forAxis:v34];

  headerView5 = [v21 headerView];
  detailLabel = [headerView5 detailLabel];

  if (detailLabel && v70)
  {
    v36 = objc_alloc_init(UITextView);
    v66 = v21;
    headerView6 = [v21 headerView];
    [headerView6 insertSubview:v36 atIndex:1];

    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [v36 leadingAnchor];
    leadingAnchor2 = [detailLabel leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v73[0] = v60;
    trailingAnchor = [v36 trailingAnchor];
    trailingAnchor2 = [detailLabel trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v73[1] = v38;
    topAnchor = [v36 topAnchor];
    topAnchor2 = [detailLabel topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v73[2] = v41;
    bottomAnchor = [v36 bottomAnchor];
    bottomAnchor2 = [detailLabel bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v73[3] = v44;
    v45 = [NSArray arrayWithObjects:v73 count:4];
    [NSLayoutConstraint activateConstraints:v45];

    v14 = v70;
    [(AppDeletionPresentingViewController *)selfCopy _addBlurredBackgroundToView:v36];
    v46 = [[NSMutableAttributedString alloc] initWithString:v71];
    string = [v46 string];
    v48 = [string localizedStandardRangeOfString:v70];
    v50 = v49;

    if (v48 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(AppDeletionPresentingViewController *)selfCopy setHyperLinkRangeForMessages:v48, v50];
      [v46 addAttribute:NSLinkAttributeName value:@"https://support.apple.com/121327?cid=mc-ols-apps-article_121327-settings_ui-09262024" range:{v48, v50}];
      [v36 setAttributedText:v46];
      [v36 setEditable:0];
      [v36 setDelegate:selfCopy];
      [(AppDeletionPresentingViewController *)selfCopy setTextView:v36];
      [detailLabel setAlpha:0.0];
    }

    _headerImage = v66;
  }

  bundleID = v69;
  if (![(AppDeletionPresentingViewController *)selfCopy _constructBulletedList:_headerImage])
  {
    v17 = 0;
    v13 = v67;
    v8 = v68;
    v16 = v71;
    goto LABEL_33;
  }

  v17 = 1;
  [_headerImage setModalPresentationStyle:1];
  [(AppDeletionPresentingViewController *)selfCopy _addButtonTrayAndDismissButtonToController:_headerImage];
  [(AppDeletionPresentingViewController *)selfCopy setObViewController:_headerImage];
  obViewController = [(AppDeletionPresentingViewController *)selfCopy obViewController];
  view = [obViewController view];
  [view layoutIfNeeded];

  v11 = sub_100003D54(off_100016A30);
  v13 = v67;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v76 = "[AppDeletionPresentingViewController constructAppDeletionController]";
    v77 = 2112;
    v78 = v69;
    v79 = 2048;
    v80 = v54;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Successfully configured the deletion sheet for %@ with type %lu", buf, 0x20u);
    v17 = 1;
  }

  v8 = v68;
  v16 = v71;
LABEL_30:

LABEL_33:
  return v17;
}

- (void)presentSheetViewController:(id)controller
{
  controllerCopy = controller;
  [AppDeletionPresentingViewController presentViewController:"presentViewController:animated:completion:" animated:? completion:?];
  if (byte_100016CF0 == 1)
  {
    v4 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "[AppDeletionPresentingViewController presentSheetViewController:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Exiting, assuming this is a test for validating crash behavior", buf, 0xCu);
    }

    exit(1);
  }
}

- (void)_addBlurredBackgroundToView:(id)view
{
  viewCopy = view;
  v4 = +[UIColor clearColor];
  [viewCopy setBackgroundColor:v4];

  v6 = [UIBlurEffect effectWithStyle:9];
  v5 = [[UIVisualEffectView alloc] initWithEffect:v6];
  [viewCopy bounds];
  [v5 setFrame:?];
  [viewCopy insertSubview:v5 atIndex:0];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = AppDeletionPresentingViewController;
  [(AppDeletionPresentingViewController *)&v24 viewDidLoad];
  obViewController = [(AppDeletionPresentingViewController *)self obViewController];
  view = [obViewController view];
  [(AppDeletionPresentingViewController *)self _addBlurredBackgroundToView:view];

  textView = [(AppDeletionPresentingViewController *)self textView];
  headerView = [obViewController headerView];
  detailLabel = [headerView detailLabel];

  font = [detailLabel font];
  [textView setFont:font];

  textColor = [detailLabel textColor];
  [textView setTextColor:textColor];

  [textView setTextAlignment:{objc_msgSend(detailLabel, "textAlignment")}];
  textContainer = [textView textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [textView setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  numberOfLines = [detailLabel numberOfLines];
  textContainer2 = [textView textContainer];
  [textContainer2 setMaximumNumberOfLines:numberOfLines];

  [textView setShowsVerticalScrollIndicator:0];
  [textView setShowsHorizontalScrollIndicator:0];
  [textView bounds];
  [textView setContentSize:{v13, v14}];
  headerView2 = [obViewController headerView];
  customIconContainerView = [headerView2 customIconContainerView];

  v17 = +[UIColor blackColor];
  cGColor = [v17 CGColor];
  layer = [customIconContainerView layer];
  [layer setShadowColor:cGColor];

  layer2 = [customIconContainerView layer];
  LODWORD(v21) = 1031127695;
  [layer2 setShadowOpacity:v21];

  layer3 = [customIconContainerView layer];
  [layer3 setShadowOffset:{0.0, 8.0}];

  layer4 = [customIconContainerView layer];
  [layer4 setShadowRadius:14.0];

  [customIconContainerView setClipsToBounds:0];
}

- (double)presentationHeightForSheet
{
  view = [(AppDeletionPresentingViewController *)self view];
  [view layoutIfNeeded];

  view2 = [(AppDeletionPresentingViewController *)self view];
  [view2 frame];
  v6 = v5;

  showArchiveOption = [(AppDeletionPresentingViewController *)self showArchiveOption];
  appType = [(AppDeletionPresentingViewController *)self appType];
  if (appType > 2)
  {
    if (appType == 4)
    {
      v11 = 0.625;
    }

    else
    {
      if (appType != 3)
      {
LABEL_9:
        v11 = 0.735;
        goto LABEL_16;
      }

      numMediaShared = [(AppDeletionPresentingViewController *)self numMediaShared];
      v13 = [numMediaShared unsignedIntegerValue] == 0;

      v14 = dbl_100007C70[v13];
      if ([(AppDeletionPresentingViewController *)self isMessagesTheDefaultTextApp])
      {
        v11 = v14 + 0.325;
      }

      else
      {
        isSOSAvailable = [(AppDeletionPresentingViewController *)self isSOSAvailable];
        v11 = v14 + 0.15;
        if (!isSOSAvailable)
        {
          v11 = v14;
        }
      }
    }
  }

  else
  {
    if (appType != 1)
    {
      if (appType == 2)
      {
        numAppsInstalled = [(AppDeletionPresentingViewController *)self numAppsInstalled];
        v10 = [numAppsInstalled unsignedIntegerValue] == 0;

        v11 = dbl_100007C60[v10];
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    isICloudOn = [(AppDeletionPresentingViewController *)self isICloudOn];
    v11 = 0.725;
    if (isICloudOn)
    {
      v11 = 0.8;
    }
  }

LABEL_16:
  v17 = 0.9;
  if (showArchiveOption)
  {
    v17 = 1.0;
  }

  return v6 * v17 * v11;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(AppDeletionPresentingViewController *)self delegate];
  [delegate communicateButtonPressWithButtonDisposition:4];
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  if (![item contentType])
  {
    v6 = [NSURL URLWithString:@"https://support.apple.com/121327?cid=mc-ols-apps-article_121327-settings_ui-09262024"];
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000039BC;
    v10[3] = &unk_100010378;
    v11 = v6;
    selfCopy = self;
    v8 = v6;
    [v7 openURL:v8 configuration:0 completionHandler:v10];
  }

  return 0;
}

- (_NSRange)hyperLinkRangeForMessages
{
  p_hyperLinkRangeForMessages = &self->_hyperLinkRangeForMessages;
  location = self->_hyperLinkRangeForMessages.location;
  length = p_hyperLinkRangeForMessages->length;
  result.length = length;
  result.location = location;
  return result;
}

@end