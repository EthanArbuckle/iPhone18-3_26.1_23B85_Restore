@interface COSPairingDataSource
- (id)deviceUserAppleID:(id)d;
- (id)specifiersForSpecifier:(id)specifier observer:(id)observer;
- (void)confirmUnpairingForSpecifier:(id)specifier;
- (void)confirmUnpairingMissingForSpecifier:(id)specifier;
- (void)jumpToFindMyApp;
- (void)loadSpecifiers;
- (void)setDeviceUser:(id)user;
- (void)setEnableUnpairButtons:(BOOL)buttons;
- (void)tinkeriForgot;
@end

@implementation COSPairingDataSource

- (void)setDeviceUser:(id)user
{
  objc_storeStrong(&self->_deviceUser, user);
  if (self->_deviceUser)
  {

    [(COSPairingDataSource *)self reloadSpecifiers];
  }
}

- (void)setEnableUnpairButtons:(BOOL)buttons
{
  buttonsCopy = buttons;
  self->_enableUnpairButtons = buttons;
  specifiers = [(COSPairingDataSource *)self specifiers];
  v11 = [specifiers specifierForID:@"unpair"];

  specifiers2 = [(COSPairingDataSource *)self specifiers];
  v7 = [specifiers2 specifierForID:@"unpair-missing"];

  v8 = [NSNumber numberWithBool:buttonsCopy];
  v9 = PSEnabledKey;
  [v11 setProperty:v8 forKey:PSEnabledKey];

  v10 = [NSNumber numberWithBool:buttonsCopy];
  [v7 setProperty:v10 forKey:v9];

  [(COSPairingDataSource *)self reloadSpecifiers];
}

- (id)deviceUserAppleID:(id)d
{
  deviceUser = [(COSPairingDataSource *)self deviceUser];
  appleID = [deviceUser appleID];

  return appleID;
}

- (id)specifiersForSpecifier:(id)specifier observer:(id)observer
{
  observerCopy = observer;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:@"COSAssociatedDevice"];
  [(COSAboutDataSource *)self setDevice:v8];

  [(COSAboutDataSource *)self checkDeviceHasCellularCapability];
  v11.receiver = self;
  v11.super_class = COSPairingDataSource;
  v9 = [(COSAboutDataSource *)&v11 specifiersForSpecifier:specifierCopy observer:observerCopy];

  return v9;
}

- (void)loadSpecifiers
{
  v87.receiver = self;
  v87.super_class = COSPairingDataSource;
  [(COSAboutDataSource *)&v87 loadSpecifiers];
  specifiers = [(COSPairingDataSource *)self specifiers];
  v4 = BPSRemoteUISetupStyle_ptr;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"GIZMO_HEADER" value:&stru_10026E598 table:@"Pairing"];
  v7 = [PSSpecifier groupSpecifierWithID:@"PairingGroup" name:v6];

  v82 = v7;
  [specifiers insertObject:v7 atIndex:0];
  v8 = sub_100009AB4();
  v9 = [v8 count];

  v10 = &selRef_applicationShouldRequestHealthAuthorization_;
  if ((v9 || self->_migrationDevice) && (+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 status], v11, v12 == 2))
  {
    v81 = 1;
  }

  else
  {
    v13 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [NSNumber numberWithInt:v9 != 0];
      v15 = +[NRPairedDeviceRegistry sharedInstance];
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 status]);
      v17 = +[NRPairedDeviceRegistry sharedInstance];
      v18 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v17 compatibilityState]);
      migrationDevice = self->_migrationDevice;
      *buf = 136316162;
      v89 = "[COSPairingDataSource loadSpecifiers]";
      v90 = 2112;
      v91 = v14;
      v92 = 2112;
      v93 = v16;
      v94 = 2112;
      v95 = v18;
      v96 = 1024;
      v97 = migrationDevice;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unpair Buttons Disabled (%s) IsPaired: %@ / NR Status %@ / NR Compatibility State %@ MigrationDevice: %{BOOL}d", buf, 0x30u);

      v4 = BPSRemoteUISetupStyle_ptr;
    }

    v81 = 0;
  }

  if (self->_tinkerDevice)
  {
    v20 = +[NSFileManager defaultManager];
    v21 = [v20 fileExistsAtPath:@"/System/Library/NanoPreferenceBundles/General/SchoolTimePhoneSettings.bundle"];

    v22 = +[PSSpecifier emptyGroupSpecifier];
    v23 = v22;
    if (v21)
    {
      v83 = v22;
      v24 = specifiers;
      v25 = [NSBundle bundleWithPath:@"/System/Library/NanoPreferenceBundles/General/SchoolTimePhoneSettings.bundle"];
      if (([v25 isLoaded] & 1) == 0)
      {
        [v25 load];
      }

      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"SCHOOLTIME" value:&stru_10026E598 table:@"Localizable-tinker"];
      v28 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v27, self, 0, 0, [v25 principalClass], 2, 0);

      v4 = BPSRemoteUISetupStyle_ptr;
      [v28 setIdentifier:@"SCHOOLTIME"];
      device = [(COSAboutDataSource *)self device];
      [v28 setProperty:device forKey:@"COSAssociatedDevice"];

      specifiers = v24;
      v23 = v83;
      [v24 addObject:v83];
      v86 = v28;
      [v24 addObject:v28];

      v10 = &selRef_applicationShouldRequestHealthAuthorization_;
    }

    else
    {
      v86 = 0;
    }
  }

  else
  {
    v86 = 0;
    v23 = 0;
  }

  if (+[COSFindMyController isDeviceLocatorEnabled])
  {
    device2 = [(COSAboutDataSource *)self device];
    HasCapabilityForString = BPSDeviceHasCapabilityForString();

    if (HasCapabilityForString)
    {
      v84 = v23;
      v32 = [PSSpecifier groupSpecifierWithID:@"FIND_MY_WATCH_GROUP_ID"];
      v33 = +[NSBundle mainBundle];
      [v33 localizedStringForKey:@"FIND_MY_WATCH_GROUP_FOOTER" value:&stru_10026E598 table:@"Pairing"];
      v35 = v34 = specifiers;
      [v32 setProperty:v35 forKey:PSFooterTextGroupKey];

      [v34 addObject:v32];
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"FIND_MY_WATCH" value:&stru_10026E598 table:@"Pairing"];
      v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v38 setButtonAction:"jumpToFindMyApp"];
LABEL_18:
      [v34 addObject:v38];

      specifiers = v34;
      v4 = BPSRemoteUISetupStyle_ptr;
      v23 = v84;
      goto LABEL_22;
    }

    if (self->_allowsMarkAsMissing)
    {
      device3 = [(COSAboutDataSource *)self device];
      v40 = BPSDeviceHasCapabilityForString();

      if (v40)
      {
        v84 = v23;
        v32 = [PSSpecifier groupSpecifierWithID:@"UNPAIR_MISSING_GROUP_ID"];
        [specifiers addObject:v32];
        v41 = +[NSBundle mainBundle];
        [v41 localizedStringForKey:@"UNPAIR_MISSING" value:&stru_10026E598 table:@"Pairing"];
        v42 = v34 = specifiers;
        v38 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:0 get:0 detail:0 cell:1 edit:0];

        [v38 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v38 setProperty:&__kCFBooleanTrue forKey:PSHidesDisclosureIndicatorKey];
        [v38 setControllerLoadAction:"confirmUnpairingMissingForSpecifier:"];
        v43 = [NSNumber numberWithBool:v81];
        [v38 setProperty:v43 forKey:PSEnabledKey];

        [v38 setIdentifier:@"unpair-missing"];
        goto LABEL_18;
      }
    }
  }

LABEL_22:
  v44 = *(v10 + 241);
  if (self->super.PSSpecifierDataSource_opaque[v44] == 1 && v23)
  {
    [v86 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  if (self->_tinkerDevice)
  {
    v85 = v23;
    deviceUser = [(COSPairingDataSource *)self deviceUser];

    v46 = v4[378];
    if (deviceUser)
    {
      v47 = +[NSBundle mainBundle];
      v48 = [v47 localizedStringForKey:@"TINKER_IFORGOT_HEADER" value:&stru_10026E598 table:@"Localizable-tinker"];
      v80 = [v46 groupSpecifierWithID:@"TinkeriForgotGroup" name:v48];

      v49 = +[NSBundle mainBundle];
      v50 = [v49 localizedStringForKey:@"TINKER_IFORGOT_FOOTER" value:&stru_10026E598 table:@"Localizable-tinker"];
      [(COSPairingDataSource *)self deviceUser];
      v51 = v44;
      v53 = v52 = v4;
      [v53 firstName];
      v55 = v54 = specifiers;
      capitalizedString = [v55 capitalizedString];
      v57 = [NSString stringWithFormat:v50, capitalizedString];

      specifiers = v54;
      v58 = v80;

      v4 = v52;
      v44 = v51;
      v59 = v57;

      [v80 setProperty:v57 forKey:PSFooterTextGroupKey];
      [specifiers addObject:v80];
      v60 = v4[378];
      deviceUser2 = [(COSPairingDataSource *)self deviceUser];
      fullName = [deviceUser2 fullName];
      v63 = [v60 preferenceSpecifierNamed:fullName target:self set:0 get:"deviceUserAppleID:" detail:0 cell:4 edit:0];

      [v63 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [specifiers addObject:v63];
      v64 = v4[378];
      v65 = +[NSBundle mainBundle];
      v66 = [v65 localizedStringForKey:@"TINKER_IFORGOT_DEVICE" value:&stru_10026E598 table:@"Localizable-tinker"];
      v67 = [v64 preferenceSpecifierNamed:v66 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v67 setButtonAction:"tinkeriForgot"];
      [v67 setIdentifier:@"tinker-iforgot"];
      [specifiers addObject:v67];
    }

    else
    {
      v58 = [v4[378] groupSpecifierWithID:@"TinkeriForgotGroup"];
      [specifiers addObject:v58];
      v68 = v4[378];
      v69 = +[NSBundle mainBundle];
      v70 = [v69 localizedStringForKey:@"TINKER_IFORGOT_DEVICE_NO_MEMBER_FOUND" value:&stru_10026E598 table:@"Localizable-tinker"];
      v59 = [v68 preferenceSpecifierNamed:v70 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v59 setButtonAction:"tinkeriForgot"];
      [v59 setIdentifier:@"tinker-iforgot"];
      [specifiers addObject:v59];
    }

    v23 = v85;
  }

  if (PBStoreDemoContentIsFrozen())
  {
    v71 = pbb_bridge_log();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Hiding Unpairing Options for Retail Better Together device", buf, 2u);
    }
  }

  else
  {
    v71 = [v4[378] groupSpecifierWithID:@"UnpairGroup"];
    [specifiers addObject:v71];
    v72 = v4[378];
    v73 = self->super.PSSpecifierDataSource_opaque[v44];
    v74 = +[NSBundle mainBundle];
    v75 = v74;
    if (v73)
    {
      v76 = @"FORGET_MIGRATION_DEVICE";
    }

    else
    {
      v76 = @"UNPAIR";
    }

    v77 = [v74 localizedStringForKey:v76 value:&stru_10026E598 table:@"Pairing"];
    v78 = [v72 preferenceSpecifierNamed:v77 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v78 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v78 setProperty:&__kCFBooleanTrue forKey:PSHidesDisclosureIndicatorKey];
    [v78 setControllerLoadAction:"confirmUnpairingForSpecifier:"];
    v79 = [NSNumber numberWithBool:v81];
    [v78 setProperty:v79 forKey:PSEnabledKey];

    [v78 setIdentifier:@"unpair"];
    [specifiers addObject:v78];
  }
}

- (void)jumpToFindMyApp
{
  v2 = sub_1001865B4(self);
  [v2 jumpToFindMyApp];
}

- (void)tinkeriForgot
{
  v2 = sub_1001865B4(self);
  [v2 tinkeriForgot];
}

- (void)confirmUnpairingMissingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = sub_1001865B4(self);
  [v5 confirmUnpairingMissingForSpecifier:specifierCopy];
}

- (void)confirmUnpairingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = sub_1001865B4(self);
  [v5 confirmUnpairingForSpecifier:specifierCopy];
}

@end