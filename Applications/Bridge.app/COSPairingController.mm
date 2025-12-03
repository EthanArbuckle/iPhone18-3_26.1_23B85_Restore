@interface COSPairingController
- (COSPairingController)init;
- (id)selectSpecifier:(id)specifier;
- (void)_startSpinnerInSpecifier:(id)specifier;
- (void)_stopSpinnerInActiveSpecifier;
- (void)cancelledUnpair;
- (void)confirmUnpairingForSpecifier:(id)specifier;
- (void)confirmUnpairingMissingForSpecifier:(id)specifier;
- (void)confirmedUnpairAndMarkAsMissing:(BOOL)missing;
- (void)enableDisableUnpairButton:(unint64_t)button;
- (void)handleUnpairNotification:(id)notification;
- (void)jumpToFindMyApp;
- (void)nanoRegistryStatusChanged:(id)changed;
- (void)setSpecifier:(id)specifier;
- (void)tinkeriForgot;
@end

@implementation COSPairingController

- (COSPairingController)init
{
  v6.receiver = self;
  v6.super_class = COSPairingController;
  v2 = [(COSPairingController *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"nanoRegistryStatusChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_applicationResumed:" name:UIApplicationResumedNotification object:0];
  }

  return v2;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [specifierCopy setProperty:v6 forKey:PSDataSourceClassKey];

  v24.receiver = self;
  v24.super_class = COSPairingController;
  [(COSPairingController *)&v24 setSpecifier:specifierCopy];
  v7 = [*&self->BPSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSAssociatedDevice"];
  device = self->_device;
  self->_device = v7;

  navigationItem = [(COSPairingController *)self navigationItem];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"TITLE" value:&stru_10026E598 table:@"Pairing"];
  [navigationItem setTitle:v11];

  device = [(COSPairingController *)self device];
  v13 = [device valueForProperty:NRDevicePropertyIsAltAccount];
  LODWORD(v11) = [v13 BOOLValue];

  if (v11)
  {
    aboutDataSource = [(COSPairingController *)self aboutDataSource];
    [aboutDataSource setTinkerDevice:1];

    device2 = [(COSPairingController *)self device];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001149C0;
    v23[3] = &unk_100269680;
    v23[4] = self;
    [BPSAppleIDDevices fetchFamilyMemberForDevice:device2 withCompletion:v23];
  }

  device3 = [(COSPairingController *)self device];
  if (sub_10002D18C(device3))
  {
    v17 = +[COSFindMyController isDeviceLocatorEnabled];

    if (!v17)
    {
      goto LABEL_7;
    }

    device4 = [(COSPairingController *)self device];
    device3 = [device4 valueForProperty:NRDevicePropertyUDID];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100114AAC;
    v22[3] = &unk_100269800;
    v22[4] = self;
    [COSFindMyController allowsMarkAsMissingForUDID:device3 completion:v22];
  }

LABEL_7:
  v19 = [specifierCopy propertyForKey:@"COSDeviceState"];
  integerValue = [v19 integerValue];

  if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    aboutDataSource2 = [(COSPairingController *)self aboutDataSource];
    [aboutDataSource2 setMigrationDevice:1];
  }
}

- (id)selectSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = COSPairingController;
  v4 = [(COSPairingController *)&v8 selectSpecifier:specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
    device = [(COSPairingController *)self device];
    [v5 setDevice:device];
  }

  return v4;
}

- (void)jumpToFindMyApp
{
  v4 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyUDID];
  v2 = [@"fmip1://bridgemissingdevice/device?id=" stringByAppendingString:v4];
  v3 = [NSURL URLWithString:v2];

  BPSOpenSensitiveURLAsync();
}

- (void)confirmUnpairingMissingForSpecifier:(id)specifier
{
  objc_storeStrong(&self->_specifierBeingConfirmed, specifier);
  specifierCopy = specifier;
  v16 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyName];
  v5 = objc_alloc_init(PSConfirmationSpecifier);
  v18[0] = PSConfirmationTitleKey;
  v15 = +[NSBundle mainBundle];
  v14 = [v15 localizedStringForKey:@"UNPAIR_CONFIRMATION_TITLE_MISSING" value:&stru_10026E598 table:@"Pairing"];
  v6 = [NSString stringWithFormat:v14, v16];
  v19[0] = v6;
  v18[1] = PSConfirmationPromptKey;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"UNPAIR_CONFIRMATION_DESCRIPTION_MISSING" value:&stru_10026E598 table:@"Pairing"];
  v19[1] = v8;
  v18[2] = PSConfirmationOKKey;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"UNPAIR_CONFIRMATION_BUTTON_MISSING" value:&stru_10026E598 table:@"Pairing"];
  v19[2] = v10;
  v18[3] = PSConfirmationCancelKey;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"CANCEL_MISSING" value:&stru_10026E598 table:@"Pairing"];
  v19[3] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  [v5 setupWithDictionary:v13];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v5 setTarget:self];
  [v5 setConfirmationAction:"confirmedUnpairMissing"];
  [v5 setConfirmationCancelAction:"cancelledUnpair"];

  [(COSPairingController *)self showConfirmationViewForSpecifier:v5];
}

- (void)tinkeriForgot
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tinker iForgot flow", v13, 2u);
  }

  v4 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  aboutDataSource = [(COSPairingController *)self aboutDataSource];
  deviceUser = [aboutDataSource deviceUser];

  appleID = [deviceUser appleID];

  if (appleID)
  {
    appleID2 = [deviceUser appleID];
    [v4 setUsername:appleID2];
  }

  [v4 setIsUsernameEditable:1];
  [v4 setNeedsCredentialRecovery:1];
  [v4 setNeedsNewAppleID:0];
  [v4 setIsEphemeral:1];
  [v4 setPresentingViewController:self];
  authContext = self->_authContext;
  self->_authContext = v4;
  v10 = v4;

  v11 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = self->_authController;
  self->_authController = v11;

  [(AKAppleIDAuthenticationController *)self->_authController authenticateWithContext:self->_authContext completion:&stru_10026C430];
}

- (void)confirmedUnpairAndMarkAsMissing:(BOOL)missing
{
  missingCopy = missing;
  [(COSPairingController *)self _startSpinnerInSpecifier:self->_specifierBeingConfirmed];
  specifierBeingConfirmed = self->_specifierBeingConfirmed;
  self->_specifierBeingConfirmed = 0;

  view = [(COSPairingController *)self view];
  [view setUserInteractionEnabled:0];

  v7 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyIsPaired];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"handleUnpairNotification:" name:NRPairedDeviceRegistryUnmigratedDeviceDidUnpairNotification object:0];

  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001155E8;
  v24[3] = &unk_10026A0A8;
  objc_copyWeak(&v26, &location);
  v9 = v7;
  v25 = v9;
  v10 = objc_retainBlock(v24);
  aboutDataSource = [(COSPairingController *)self aboutDataSource];
  if ([aboutDataSource migrationDevice])
  {
  }

  else
  {
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      v13 = objc_alloc_init(COSUnpairActionsHelperContext);
      [(COSUnpairActionsHelperContext *)v13 setDevice:self->_device];
      [(COSUnpairActionsHelperContext *)v13 setMarkAsMissing:missingCopy];
      [(COSUnpairActionsHelperContext *)v13 setPresentingViewController:self];
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"CONFIRM_REMOVE_ACTIVATION_LOCK" value:&stru_10026E598 table:@"Pairing"];
      [(COSUnpairActionsHelperContext *)v13 setActivationLockRemovalTitle:v15];

      v16 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyName];
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"UNPAIR_FAILURE_MESSAGE" value:&stru_10026E598 table:@"Pairing"];
      v19 = [NSString stringWithFormat:v18, v16];
      [(COSUnpairActionsHelperContext *)v13 setFailureMessage:v19];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100115BDC;
      v22[3] = &unk_10026C480;
      v22[4] = self;
      v23 = v10;
      [COSUnpairActionsHelper applyUnpairActionsForContext:v13 withCompletion:v22];

      goto LABEL_8;
    }
  }

  v20 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue2 = [v9 BOOLValue];
    *buf = 67109120;
    v29 = bOOLValue2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Forgetting migration device. isPaired: %d", buf, 8u);
  }

  (v10[2])(v10, 0);
LABEL_8:

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)_startSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy && !self->_activelyLoadingSpecifierIdentifier)
  {
    v9 = specifierCopy;
    v5 = [specifierCopy propertyForKey:PSTableCellKey];
    if (v5)
    {
      v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v6 startAnimating];
      [v5 setAccessoryView:v6];
      identifier = [v9 identifier];
      activelyLoadingSpecifierIdentifier = self->_activelyLoadingSpecifierIdentifier;
      self->_activelyLoadingSpecifierIdentifier = identifier;
    }

    specifierCopy = v9;
  }
}

- (void)handleUnpairNotification:(id)notification
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100115EE8;
  v3[3] = &unk_100268430;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_stopSpinnerInActiveSpecifier
{
  if (self->_activelyLoadingSpecifierIdentifier)
  {
    v6 = [(COSPairingController *)self specifierForID:?];
    v3 = [v6 propertyForKey:PSTableCellKey];
    if (v3)
    {
      v4 = [v6 propertyForKey:PSControlKey];
      [v3 setAccessoryView:v4];
    }

    activelyLoadingSpecifierIdentifier = self->_activelyLoadingSpecifierIdentifier;
    self->_activelyLoadingSpecifierIdentifier = 0;
  }
}

- (void)cancelledUnpair
{
  specifierBeingConfirmed = self->_specifierBeingConfirmed;
  self->_specifierBeingConfirmed = 0;
}

- (void)confirmUnpairingForSpecifier:(id)specifier
{
  objc_storeStrong(&self->_specifierBeingConfirmed, specifier);
  specifierCopy = specifier;
  v6 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyName];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"UNPAIR_CONFIRMATION_TITLE" value:&stru_10026E598 table:@"Pairing"];
  v9 = [NSString stringWithFormat:v8, v6];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"UNPAIR_CONFIRMATION_DESCRIPTION" value:&stru_10026E598 table:@"Pairing"];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"UNPAIR_CONFIRMATION_BUTTON" value:&stru_10026E598 table:@"Pairing"];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Pairing"];

  v16 = objc_alloc_init(PSConfirmationSpecifier);
  v18[0] = PSConfirmationTitleKey;
  v18[1] = PSConfirmationPromptKey;
  v19[0] = v9;
  v19[1] = v11;
  v18[2] = PSConfirmationOKKey;
  v18[3] = PSConfirmationCancelKey;
  v19[2] = v13;
  v19[3] = v15;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  [v16 setupWithDictionary:v17];

  [v16 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v16 setTarget:self];
  [v16 setConfirmationAction:"confirmedUnpair"];
  [v16 setConfirmationCancelAction:"cancelledUnpair"];

  [(COSPairingController *)self showConfirmationViewForSpecifier:v16];
}

- (void)enableDisableUnpairButton:(unint64_t)button
{
  v5 = sub_100009AB4();
  v6 = [v5 count];

  v7 = button != 2 || v6 == 0;
  v8 = !v7;
  if (v7)
  {
    v9 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithInt:v6 != 0];
      v11 = +[NRPairedDeviceRegistry sharedInstance];
      [v11 status];
      v12 = NRPairedDeviceRegistryStatusCodeString();
      v13 = +[NRPairedDeviceRegistry sharedInstance];
      v14 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v13 compatibilityState]);
      v16 = 136315906;
      v17 = "[COSPairingController enableDisableUnpairButton:]";
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unpair Buttons Disabled (%s) IsPaired: %@ / NR Status %@ / NR Compatibility State %@", &v16, 0x2Au);
    }
  }

  aboutDataSource = [(COSPairingController *)self aboutDataSource];
  [aboutDataSource setEnableUnpairButtons:v8];
}

- (void)nanoRegistryStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy)
  {
    userInfo = [changedCopy userInfo];
    v7 = [userInfo objectForKey:NRPairedDeviceRegistryStatusKey];
    unsignedLongValue = [v7 unsignedLongValue];
  }

  else
  {
    userInfo = +[NRPairedDeviceRegistry sharedInstance];
    unsignedLongValue = [userInfo status];
  }

  v9 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = unsignedLongValue;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NR Status Changed to %lu", &v10, 0xCu);
  }

  if (unsignedLongValue)
  {
    [(COSPairingController *)self enableDisableUnpairButton:unsignedLongValue];
  }
}

@end