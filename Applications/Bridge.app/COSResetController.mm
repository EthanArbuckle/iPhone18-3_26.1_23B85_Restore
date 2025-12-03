@interface COSResetController
- (COSResetController)init;
- (id)specifiers;
- (void)_eraseCellularPlans;
- (void)confirmationSpecifierConfirmed:(id)confirmed;
- (void)didAcceptEnteredPIN;
- (void)eraseSettingsAndContent:(BOOL)content;
- (void)onEraseConfirmationAction:(id)action;
- (void)presentPasscodePrompt;
- (void)resetAppLayoutConfirmed:(id)confirmed;
- (void)resetCalendarSyncState:(id)state;
- (void)resetCellularPlans:(id)plans;
- (void)resetContactsSyncState:(id)state;
- (void)resetSyncState:(id)state;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSResetController

- (COSResetController)init
{
  v8.receiver = self;
  v8.super_class = COSResetController;
  v2 = [(COSResetController *)&v8 init];
  if (v2)
  {
    v3 = sub_10000DB38();
    device = v2->_device;
    v2->_device = v3;

    v5 = objc_alloc_init(HKHealthStore);
    v6 = [[HKNanoSyncControl alloc] initWithHealthStore:v5];
    [v6 forceLastChanceNanoSyncWithCompletion:&stru_10026BAE0];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = COSResetController;
  [(COSResetController *)&v13 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"RESET" table:@"General" locale:v6 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [v8 initWithKey:@"GENERAL" table:@"Settings" locale:v9 bundleURL:bundleURL];

  v14 = v10;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=RESET_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [(COSResetController *)self loadSpecifiersFromPlistName:@"Reset" target:self];
    v7 = [v5 initWithArray:v6];

    activeWatch = [UIApp activeWatch];
    v9 = [[NSUUID alloc] initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
    v10 = [activeWatch supportsCapability:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v7 specifierForID:@"RESET_CELLULAR_GROUP_ID"];
      [v7 removeObject:v11];

      v12 = [v7 specifierForID:@"RESET_CELLULAR_PLANS_ID"];
      [v7 removeObject:v12];
    }

    if (BPSDeviceHasCapabilityForString())
    {
      v13 = [v7 specifierForID:@"RESET_APP_LAYOUT_GROUP_ID"];
      [v7 removeObject:v13];

      v14 = [v7 specifierForID:@"RESET_APP_LAYOUT_ID"];
      [v7 removeObject:v14];

      v15 = [v7 specifierForID:@"RESET_ALL_SYNC_STATE_GROUP_ID"];
      [v7 removeObject:v15];

      v16 = [v7 specifierForID:@"RESET_ALL_SYNC_STATE_ID"];
      [v7 removeObject:v16];
    }

    v17 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v7;
    v18 = v7;

    v19 = objc_opt_new();
    manager = self->_manager;
    self->_manager = v19;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)confirmationSpecifierConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  v14 = [PSConfirmationSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FULL_ERASE_CONFIRMATION_CANCEL" value:&stru_10026E598 table:@"Reset"];
  [v14 setCancelButton:v6];

  [v14 setProperty:kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  identifier = [confirmedCopy identifier];

  LODWORD(confirmedCopy) = [identifier isEqualToString:@"FULL_ERASE_CELL_ID"];
  if (confirmedCopy)
  {
    [v14 setConfirmationAction:"onEraseConfirmationAction:"];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FULL_ERASE_CONFIRMATION_ACCEPT" value:&stru_10026E598 table:@"Reset"];
    [v14 setOkButton:v9];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"FULL_ERASE_TITLE" value:&stru_10026E598 table:@"Reset"];
    [v14 setTitle:v11];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"FULL_ERASE_MSG_2" value:&stru_10026E598 table:@"Reset"];
    [v14 setPrompt:v13];
  }

  [(COSResetController *)self showConfirmationViewForSpecifier:v14];
}

- (void)onEraseConfirmationAction:(id)action
{
  v4 = objc_alloc_init(COSUnpairActionsHelperContext);
  [(COSUnpairActionsHelperContext *)v4 setDevice:self->_device];
  [(COSUnpairActionsHelperContext *)v4 setPresentingViewController:self];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FULL_ERASE_CONFIRMATION_ACCEPT" value:&stru_10026E598 table:@"Reset"];
  [(COSUnpairActionsHelperContext *)v4 setActivationLockRemovalTitle:v6];

  v7 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyName];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"RESET_FAILURE_MESSAGE" value:&stru_10026E598 table:@"Reset"];
  v10 = [NSString stringWithFormat:v9, v7];
  [(COSUnpairActionsHelperContext *)v4 setFailureMessage:v10];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F5F24;
  v11[3] = &unk_10026BB08;
  v11[4] = self;
  [COSUnpairActionsHelper applyUnpairActionsForContext:v4 withCompletion:v11];
}

- (void)eraseSettingsAndContent:(BOOL)content
{
  contentCopy = content;
  v5 = [(COSResetController *)self specifierForID:@"FULL_ERASE_CELL_ID"];
  [v5 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  [(COSResetController *)self reloadSpecifier:v5];
  v6 = +[UIApplication sharedApplication];
  [v6 setNetworkActivityIndicatorVisible:1];

  manager = self->_manager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F6108;
  v9[3] = &unk_100269278;
  v10 = v5;
  selfCopy = self;
  v8 = v5;
  [(NSSManager *)manager obliterateGizmoPreservingeSIM:contentCopy completionHandler:v9];
}

- (void)resetAppLayoutConfirmed:(id)confirmed
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/NanoPreferenceBundles/Customization/CarouselLayoutSettings.bundle"];
  v4 = pbb_bridge_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found Layout Bundle!", buf, 2u);
    }

    v4 = objc_alloc_init([v3 principalClass]);
    if (objc_opt_respondsToSelector())
    {
      [v4 resetIconPositions];
    }

    else
    {
      v6 = pbb_bridge_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset Layout Method Not Found!", v8, 2u);
      }
    }
  }

  else if (v5)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did Not Find Layout Bundle!", v7, 2u);
  }
}

- (void)resetSyncState:(id)state
{
  stateCopy = state;
  [(COSResetController *)self resetContactsSyncState:stateCopy];
  [(COSResetController *)self resetCalendarSyncState:stateCopy];
}

- (void)resetCellularPlans:(id)plans
{
  v4 = +[MCProfileConnection sharedConnection];
  isPasscodeSet = [v4 isPasscodeSet];

  if (isPasscodeSet)
  {

    [(COSResetController *)self presentPasscodePrompt];
  }

  else
  {

    [(COSResetController *)self _eraseCellularPlans];
  }
}

- (void)resetContactsSyncState:(id)state
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posted Contacts fullsync", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.addressbooksync.fullsync", 0, 0, 0);
}

- (void)resetCalendarSyncState:(id)state
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posted Calendar fullsync", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.eventkitsync.fullsync", 0, 0, 0);
}

- (void)presentPasscodePrompt
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Present Passcode Prompt", v13, 2u);
  }

  v4 = objc_alloc_init(PSSpecifier);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:PSSetupCustomClassKey];

  [v4 setEditPaneClass:objc_opt_class()];
  [v4 setProperty:&off_100281DC8 forKey:@"mode"];
  [v4 setProperty:self forKey:kDevicePINControllerDelegate];
  [(COSResetController *)self showPINSheet:v4];
  v7 = +[UIApplication sharedApplication];
  windows = [v7 windows];
  firstObject = [windows firstObject];
  rootViewController = [firstObject rootViewController];

  presentedViewController = [rootViewController presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationBar = [presentedViewController navigationBar];
    BPSApplyStyleToNavBar();
  }
}

- (void)_eraseCellularPlans
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_1002BD658;
  v9 = qword_1002BD658;
  if (!qword_1002BD658)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F69EC;
    v5[3] = &unk_1002680D0;
    v5[4] = &v6;
    sub_1000F69EC(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  sharedManager = [v2 sharedManager];
  [sharedManager eraseAllRemotePlansWithCompletion:&stru_10026BB28];
}

- (void)didAcceptEnteredPIN
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did Accept Entered PIN", v4, 2u);
  }

  [(COSResetController *)self _eraseCellularPlans];
}

@end