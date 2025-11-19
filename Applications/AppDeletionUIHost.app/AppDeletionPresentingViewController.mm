@interface AppDeletionPresentingViewController
- (AppDeletionPresentingViewController)initWithAlertData:(id)a3 delegate:(id)a4;
- (BOOL)_constructBulletedList:(id)a3;
- (BOOL)constructAppDeletionController;
- (_NSRange)hyperLinkRangeForMessages;
- (double)presentationHeightForSheet;
- (id)_headerImage;
- (id)_localizedStringForKey:(id)a3 withFormatHint:(id)a4;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_addBlurredBackgroundToView:(id)a3;
- (void)_addButtonTrayAndDismissButtonToController:(id)a3;
- (void)presentSheetViewController:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation AppDeletionPresentingViewController

- (AppDeletionPresentingViewController)initWithAlertData:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = AppDeletionPresentingViewController;
  v8 = [(AppDeletionPresentingViewController *)&v46 init];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = [v6 objectForKey:kCFBundleIdentifierKey];
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
  v11 = [v6 objectForKey:kCFBundleNameKey];
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
  v13 = [v6 objectForKey:@"RelevantAppData"];
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
      v32 = [v31 bundleIdentifier];
      v33 = v31;
      LOBYTE(v31) = [v32 isEqualToString:@"com.apple.MobileSMS"];
    }

    else
    {
      v32 = sub_100003D54(off_100016A30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v49 = "_MessagesIsTheDefaultTextApp";
        v50 = 2048;
        v51 = 10;
        v52 = 2112;
        v53 = v40;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s: Unexpectedly got a nil record for category %lu: %@", buf, 0x20u);
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
  objc_storeStrong(&v8->_delegate, a4);
  obViewController = v8->_obViewController;
  v8->_obViewController = 0;

  textView = v8->_textView;
  v8->_textView = 0;

  v36 = [(AppDeletionPresentingViewController *)v8 constructAppDeletionController];
  v22 = 0;
  if (v36)
  {
LABEL_41:
    v22 = v8;
  }

LABEL_42:

  return v22;
}

- (id)_localizedStringForKey:(id)a3 withFormatHint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AppDeletionPresentingViewController *)self deletionStringsBundle];
  v9 = [(AppDeletionPresentingViewController *)self deletionStringsTableName];
  if (v8)
  {
    v10 = CFBundleCopyLocalizedString(v8, v6, 0, v9);
    v11 = v10;
    if (v10 == v6)
    {

      v12 = sub_100003D54(off_100016A30);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(AppDeletionPresentingViewController *)self bundleID];
        v15 = 136315906;
        v16 = "[AppDeletionPresentingViewController _localizedStringForKey:withFormatHint:]";
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: A value for the custom deletion message key %@ was not found in the strings file named %@ for the current language in app %@; using default value instead", &v15, 0x2Au);
      }
    }

    else if (v10)
    {
      goto LABEL_9;
    }
  }

  v11 = v7;
LABEL_9:

  return v11;
}

- (BOOL)_constructBulletedList:(id)a3
{
  v4 = a3;
  v5 = [(AppDeletionPresentingViewController *)self appType];
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        v15 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APP_MARKETPLACE_BODY" withFormatHint:@"%lu apps downloaded with “%@” will not receive updates."];
        v16 = [(AppDeletionPresentingViewController *)self numAppsInstalled];
        v17 = [v16 unsignedIntegerValue];
        v18 = [(AppDeletionPresentingViewController *)self localizedName];
        v7 = [NSString localizedStringWithFormat:v15, v17, v18];

        v19 = +[UIColor systemRedColor];
        [v4 addBulletedListItemWithTitle:v7 description:&stru_1000105B8 symbolName:@"square.and.arrow.down.badge.xmark" tintColor:v19];

LABEL_34:
        v21 = 1;
        goto LABEL_35;
      }

      goto LABEL_11;
    }

    v25 = [(AppDeletionPresentingViewController *)self isMessagesTheDefaultTextApp];
    v26 = [(AppDeletionPresentingViewController *)self isSOSAvailable];
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
    [v4 addBulletedListItemWithTitle:v7 description:&stru_1000105B8 symbolName:@"trash" tintColor:v29];

    v30 = [(AppDeletionPresentingViewController *)self numMediaShared];
    v13 = v30;
    if (v30 && [v30 unsignedIntegerValue])
    {
      v31 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_SECOND" withFormatHint:@"%ld photos and videos shared with you in “Messages” will be deleted and no longer appear in “Photos”."];
      v32 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v31, [v13 unsignedIntegerValue]);

      v33 = +[UIColor systemRedColor];
      [v4 addBulletedListItemWithTitle:v32 description:&stru_1000105B8 symbolName:@"shared.with.you" tintColor:v33];
    }

    if (v25)
    {
      v34 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_THIRD" withFormatHint:@"This iPhone will not be able to send or receive text messages, including verification codes used to confirm your identity for accounts."];
      v35 = +[UIColor systemRedColor];
      [v4 addBulletedListItemWithTitle:v34 description:&stru_1000105B8 symbolName:@"exclamationmark.message" tintColor:v35];

      if (v26)
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
      if (!v26)
      {
LABEL_32:
        v14 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_FIFTH" withFormatHint:@"Cellular charges may still apply."];
        v40 = +[UIColor systemRedColor];
        [v4 addBulletedListItemWithTitle:v14 description:&stru_1000105B8 symbolName:@"antenna.radiowaves.left.and.right" tintColor:v40];

LABEL_33:
        goto LABEL_34;
      }

      v38 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_MESSAGES_BODY_FOURTH_MESSAGES_NOT_DEFAULT" withFormatHint:@"Emergency SOS via satellite will not be available."];
    }

    if (v38)
    {
      v39 = +[UIColor systemRedColor];
      [v4 addBulletedListItemWithTitle:v38 description:&stru_1000105B8 symbolName:@"sos" tintColor:v39];
    }

    goto LABEL_32;
  }

  if (v5 == 1)
  {
    if ([(AppDeletionPresentingViewController *)self isICloudOn])
    {
      v22 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_BEFORE_FIRST_ICLOUD_ON" withFormatHint:@"Photos and videos you take will continue to sync to iCloud."];
      [v4 addBulletedListItemWithTitle:v22 description:&stru_1000105B8 symbolName:@"arrow.trianglehead.2.clockwise.rotate.90.icloud"];
    }

    v7 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_FIRST" withFormatHint:@"Access to your photo library will not be removed for apps. You'll still be able to manage access in Settings."];
    [v4 addBulletedListItemWithTitle:v7 description:&stru_1000105B8 symbolName:@"photo.on.rectangle"];
    v13 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_SECOND" withFormatHint:@"Memories will not be available."];
    v23 = +[UIColor systemRedColor];
    [v4 addBulletedListItemWithTitle:v13 description:&stru_1000105B8 symbolName:@"memories" tintColor:v23];

    v14 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_PHOTOS_BODY_THIRD" withFormatHint:@"Hidden and recently deleted photos will not be available."];
    v24 = +[UIColor systemRedColor];
    [v4 addBulletedListItemWithTitle:v14 description:&stru_1000105B8 symbolName:@"eye.slash" tintColor:v24];

    goto LABEL_33;
  }

  if (v5 == 2)
  {
    v6 = [(AppDeletionPresentingViewController *)self numAppsInstalled];
    v7 = v6;
    if (v6 && [v6 unsignedIntegerValue])
    {
      v8 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APP_MARKETPLACE_BODY" withFormatHint:@"%lu apps you downloaded with “%@” will not receive updates."];
      v9 = [v7 unsignedIntegerValue];
      v10 = [(AppDeletionPresentingViewController *)self localizedName];
      v11 = [NSString localizedStringWithFormat:v8, v9, v10];

      v12 = +[UIColor systemRedColor];
      [v4 addBulletedListItemWithTitle:v11 description:&stru_1000105B8 symbolName:@"square.and.arrow.down.badge.xmark" tintColor:v12];
    }

    v13 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APPSTORE_BODY_SECOND" withFormatHint:@"If you want to get built-in iPhone apps that you've already deleted, you'll need to reinstall “App Store”."];
    [v4 addBulletedListItemWithTitle:v13 description:&stru_1000105B8 symbolName:@"appstore.app"];
    v14 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_APPSTORE_BODY_THIRD" withFormatHint:@"You'll still be able to manage app subscriptions in Settings."];
    [v4 addBulletedListItemWithTitle:v14 description:&stru_1000105B8 symbolName:@"plus.arrow.trianglehead.clockwise"];
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
  v3 = [(AppDeletionPresentingViewController *)self bundleID];
  v4 = [UIImage imageNamed:@"AlertBadgeIcon"];
  v36 = [[UIImageView alloc] initWithImage:v4];
  v35 = objc_alloc_init(SBSHomeScreenService);
  v5 = [v35 homeScreenIconStyleConfiguration];
  if (!v5)
  {
    v21 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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
  v34 = v3;
  v6 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v7 = [v5 tintColor];
  v8 = [v7 CGColor];

  v9 = [(AppDeletionPresentingViewController *)self traitCollection];
  v10 = [v9 userInterfaceStyle];

  [v6 setAppearance:{objc_msgSend(v5, "iconServicesAppearanceUsingDarkInterfaceStyle:", v10 == 2)}];
  [v6 setAppearanceVariant:{objc_msgSend(v5, "iconServicesAppearanceVariantUsingDarkInterfaceStyle:", v10 == 2)}];
  if (v8)
  {
    v11 = [[IFColor alloc] initWithCGColor:v8];
    [v6 setTintColor:v11];
  }

  v3 = v34;
  v12 = [[ISIcon alloc] initWithBundleIdentifier:v34];
  if (!v12)
  {
    v21 = sub_100003D54(off_100016A30);
    v4 = v33;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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

  v17 = [v14 CGImage];
  if (v17)
  {
    v18 = [[UIImage alloc] initWithCGImage:v17];
    if (v18)
    {
      v19 = v18;
      v20 = [[UIImageView alloc] initWithImage:v18];
      [v20 insertSubview:v36 atIndex:1];
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = [v36 leadingAnchor];
      v32 = [v20 leadingAnchor];
      v31 = [v21 constraintEqualToAnchor:v32 constant:66.0];
      v37[0] = v31;
      v30 = [v36 topAnchor];
      v29 = [v20 topAnchor];
      v28 = [v30 constraintEqualToAnchor:v29 constant:56.0];
      v37[1] = v28;
      v27 = [v36 widthAnchor];
      v26 = [v27 constraintEqualToConstant:29.0];
      v37[2] = v26;
      v22 = [v36 widthAnchor];
      v23 = [v22 constraintEqualToConstant:29.0];
      v37[3] = v23;
      v24 = [NSArray arrayWithObjects:v37 count:4];
      [NSLayoutConstraint activateConstraints:v24];

      v3 = v34;
      v4 = v33;

      goto LABEL_24;
    }

    v21 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100004F2C();
    }
  }

  else
  {
    v21 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100004FA8();
    }
  }

  v20 = 0;
  v19 = 0;
LABEL_24:

  return v20;
}

- (void)_addButtonTrayAndDismissButtonToController:(id)a3
{
  v4 = a3;
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

  v9 = [v4 buttonTray];
  [v9 addButton:v5];

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
    v13 = [v4 buttonTray];
    [v13 addButton:v10];
  }

  v14 = [v4 buttonTray];
  v15 = [v14 buttonViewBottomConstraint];

  if (v15)
  {
    v16 = [v4 buttonTray];
    v17 = [v16 buttonViewBottomConstraint];

    [v17 setActive:0];
    LODWORD(v16) = [(AppDeletionPresentingViewController *)self showArchiveOption];
    [v17 firstItem];
    v32 = v5;
    v18 = v4;
    v20 = v19 = v7;
    v21 = [v17 firstAttribute];
    v22 = [v17 relation];
    v23 = [v17 secondItem];
    v24 = [v17 secondAttribute];
    v25 = 8.0;
    if (!v16)
    {
      v25 = 32.0;
    }

    v26 = [NSLayoutConstraint constraintWithItem:v20 attribute:v21 relatedBy:v22 toItem:v23 attribute:v24 multiplier:1.0 constant:v25];

    v7 = v19;
    v4 = v18;
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
  v31 = [v4 navigationItem];
  [v31 setRightBarButtonItem:v30];
}

- (BOOL)constructAppDeletionController
{
  v3 = [(AppDeletionPresentingViewController *)self bundleID];
  v4 = [(AppDeletionPresentingViewController *)self appType];
  v5 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v76 = "[AppDeletionPresentingViewController constructAppDeletionController]";
    v77 = 2112;
    v78 = v3;
    v79 = 2048;
    v80 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Attempting to construct the deletion sheet for %@ with type %lu", buf, 0x20u);
  }

  v6 = [(AppDeletionPresentingViewController *)self _localizedStringForKey:@"DELETION_SHEET_TITLE_DELETE_WITH_NAME" withFormatHint:@"Delete “%@”?"];
  v7 = [(AppDeletionPresentingViewController *)self localizedName];
  v8 = [NSString localizedStringWithFormat:v6, v7];

  if (v4 > 2)
  {
    if (v4 == 3)
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

    if (v4 == 4)
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

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_30;
  }

  if (v4 == 1)
  {
    v9 = @"DELETION_SHEET_PHOTOS_TITLE_BODY";
    v10 = @"Deleting this app will not delete your photos and videos.";
    goto LABEL_15;
  }

  if (v4 != 2)
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
  v12 = [(AppDeletionPresentingViewController *)self _headerImage];
  if (!v12)
  {
    v13 = 0;
    v15 = 0;
    v17 = 0;
    goto LABEL_33;
  }

  v72 = self;
  v54 = v4;
  v69 = v3;
  v68 = v8;
  v71 = v16;
  v21 = [[OBWelcomeController alloc] initWithTitle:v8 detailText:v16 icon:0 contentLayout:2];
  v22 = [v21 headerView];
  v23 = [v22 customIconContainerView];
  [v23 addSubview:v12];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = [v12 widthAnchor];
  v63 = [v65 constraintEqualToConstant:80.0];
  v74[0] = v63;
  v61 = [v12 heightAnchor];
  v59 = [v61 constraintEqualToConstant:80.0];
  v74[1] = v59;
  v55 = [v12 centerXAnchor];
  v57 = [v21 headerView];
  v24 = [v57 customIconContainerView];
  v25 = [v24 centerXAnchor];
  v26 = [v55 constraintEqualToAnchor:v25];
  v74[2] = v26;
  v67 = v12;
  [v12 centerYAnchor];
  v27 = v70 = v14;
  v28 = [v21 headerView];
  v29 = [v28 customIconContainerView];
  v30 = [v29 centerYAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];
  v74[3] = v31;
  v32 = [NSArray arrayWithObjects:v74 count:4];
  [NSLayoutConstraint activateConstraints:v32];

  v12 = v21;
  v14 = v70;

  v33 = [v21 headerView];
  LODWORD(v34) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v34];

  v35 = [v21 headerView];
  v15 = [v35 detailLabel];

  if (v15 && v70)
  {
    v36 = objc_alloc_init(UITextView);
    v66 = v21;
    v37 = [v21 headerView];
    [v37 insertSubview:v36 atIndex:1];

    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v64 = [v36 leadingAnchor];
    v62 = [v15 leadingAnchor];
    v60 = [v64 constraintEqualToAnchor:v62];
    v73[0] = v60;
    v58 = [v36 trailingAnchor];
    v56 = [v15 trailingAnchor];
    v38 = [v58 constraintEqualToAnchor:v56];
    v73[1] = v38;
    v39 = [v36 topAnchor];
    v40 = [v15 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v73[2] = v41;
    v42 = [v36 bottomAnchor];
    v43 = [v15 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v73[3] = v44;
    v45 = [NSArray arrayWithObjects:v73 count:4];
    [NSLayoutConstraint activateConstraints:v45];

    v14 = v70;
    [(AppDeletionPresentingViewController *)v72 _addBlurredBackgroundToView:v36];
    v46 = [[NSMutableAttributedString alloc] initWithString:v71];
    v47 = [v46 string];
    v48 = [v47 localizedStandardRangeOfString:v70];
    v50 = v49;

    if (v48 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(AppDeletionPresentingViewController *)v72 setHyperLinkRangeForMessages:v48, v50];
      [v46 addAttribute:NSLinkAttributeName value:@"https://support.apple.com/121327?cid=mc-ols-apps-article_121327-settings_ui-09262024" range:{v48, v50}];
      [v36 setAttributedText:v46];
      [v36 setEditable:0];
      [v36 setDelegate:v72];
      [(AppDeletionPresentingViewController *)v72 setTextView:v36];
      [v15 setAlpha:0.0];
    }

    v12 = v66;
  }

  v3 = v69;
  if (![(AppDeletionPresentingViewController *)v72 _constructBulletedList:v12])
  {
    v17 = 0;
    v13 = v67;
    v8 = v68;
    v16 = v71;
    goto LABEL_33;
  }

  v17 = 1;
  [v12 setModalPresentationStyle:1];
  [(AppDeletionPresentingViewController *)v72 _addButtonTrayAndDismissButtonToController:v12];
  [(AppDeletionPresentingViewController *)v72 setObViewController:v12];
  v51 = [(AppDeletionPresentingViewController *)v72 obViewController];
  v52 = [v51 view];
  [v52 layoutIfNeeded];

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

- (void)presentSheetViewController:(id)a3
{
  v5 = a3;
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

- (void)_addBlurredBackgroundToView:(id)a3
{
  v3 = a3;
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v6 = [UIBlurEffect effectWithStyle:9];
  v5 = [[UIVisualEffectView alloc] initWithEffect:v6];
  [v3 bounds];
  [v5 setFrame:?];
  [v3 insertSubview:v5 atIndex:0];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = AppDeletionPresentingViewController;
  [(AppDeletionPresentingViewController *)&v24 viewDidLoad];
  v3 = [(AppDeletionPresentingViewController *)self obViewController];
  v4 = [v3 view];
  [(AppDeletionPresentingViewController *)self _addBlurredBackgroundToView:v4];

  v5 = [(AppDeletionPresentingViewController *)self textView];
  v6 = [v3 headerView];
  v7 = [v6 detailLabel];

  v8 = [v7 font];
  [v5 setFont:v8];

  v9 = [v7 textColor];
  [v5 setTextColor:v9];

  [v5 setTextAlignment:{objc_msgSend(v7, "textAlignment")}];
  v10 = [v5 textContainer];
  [v10 setLineFragmentPadding:0.0];

  [v5 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v11 = [v7 numberOfLines];
  v12 = [v5 textContainer];
  [v12 setMaximumNumberOfLines:v11];

  [v5 setShowsVerticalScrollIndicator:0];
  [v5 setShowsHorizontalScrollIndicator:0];
  [v5 bounds];
  [v5 setContentSize:{v13, v14}];
  v15 = [v3 headerView];
  v16 = [v15 customIconContainerView];

  v17 = +[UIColor blackColor];
  v18 = [v17 CGColor];
  v19 = [v16 layer];
  [v19 setShadowColor:v18];

  v20 = [v16 layer];
  LODWORD(v21) = 1031127695;
  [v20 setShadowOpacity:v21];

  v22 = [v16 layer];
  [v22 setShadowOffset:{0.0, 8.0}];

  v23 = [v16 layer];
  [v23 setShadowRadius:14.0];

  [v16 setClipsToBounds:0];
}

- (double)presentationHeightForSheet
{
  v3 = [(AppDeletionPresentingViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(AppDeletionPresentingViewController *)self view];
  [v4 frame];
  v6 = v5;

  v7 = [(AppDeletionPresentingViewController *)self showArchiveOption];
  v8 = [(AppDeletionPresentingViewController *)self appType];
  if (v8 > 2)
  {
    if (v8 == 4)
    {
      v11 = 0.625;
    }

    else
    {
      if (v8 != 3)
      {
LABEL_9:
        v11 = 0.735;
        goto LABEL_16;
      }

      v12 = [(AppDeletionPresentingViewController *)self numMediaShared];
      v13 = [v12 unsignedIntegerValue] == 0;

      v14 = dbl_100007C70[v13];
      if ([(AppDeletionPresentingViewController *)self isMessagesTheDefaultTextApp])
      {
        v11 = v14 + 0.325;
      }

      else
      {
        v16 = [(AppDeletionPresentingViewController *)self isSOSAvailable];
        v11 = v14 + 0.15;
        if (!v16)
        {
          v11 = v14;
        }
      }
    }
  }

  else
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v9 = [(AppDeletionPresentingViewController *)self numAppsInstalled];
        v10 = [v9 unsignedIntegerValue] == 0;

        v11 = dbl_100007C60[v10];
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v15 = [(AppDeletionPresentingViewController *)self isICloudOn];
    v11 = 0.725;
    if (v15)
    {
      v11 = 0.8;
    }
  }

LABEL_16:
  v17 = 0.9;
  if (v7)
  {
    v17 = 1.0;
  }

  return v6 * v17 * v11;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(AppDeletionPresentingViewController *)self delegate];
  [v3 communicateButtonPressWithButtonDisposition:4];
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  if (![a4 contentType])
  {
    v6 = [NSURL URLWithString:@"https://support.apple.com/121327?cid=mc-ols-apps-article_121327-settings_ui-09262024"];
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000039BC;
    v10[3] = &unk_100010378;
    v11 = v6;
    v12 = self;
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