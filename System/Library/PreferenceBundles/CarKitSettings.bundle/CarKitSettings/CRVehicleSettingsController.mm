@interface CRVehicleSettingsController
- (CRVehicleSettingsController)init;
- (id)assetIdentifier;
- (id)assetPath;
- (id)assetVersion;
- (id)carPlayEnabled:(id)enabled;
- (id)detailTextForOptionsRow:(id)row;
- (id)enhancedIntegrationEnabled:(id)enabled;
- (id)internalNotes:(id)notes;
- (id)isUsingMobileAsset;
- (id)specifiers;
- (void)_updateEnabledGroupSpecifier:(id)specifier switchSpecifier:(id)switchSpecifier;
- (void)_updateOptionsRowVisibility:(BOOL)visibility;
- (void)dealloc;
- (void)deleteVehicle;
- (void)handlePairedVehiclesChanged:(id)changed;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setCarPlayEnabled:(id)enabled specifier:(id)specifier;
- (void)setEnhancedIntegrationEnabled:(id)enabled specifier:(id)specifier;
- (void)setInternalNotes:(id)notes forSpecifier:(id)specifier;
- (void)stopSession;
- (void)viewDidLoad;
@end

@implementation CRVehicleSettingsController

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRVehicleSettingsController;
  [(CRVehicleSettingsController *)&v4 dealloc];
}

- (CRVehicleSettingsController)init
{
  v6.receiver = self;
  v6.super_class = CRVehicleSettingsController;
  v2 = [(CRVehicleSettingsController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CRVehicleSettingsController *)v2 setSuppressNextReloadForPairedVehicleChanged:0];
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handlePairedVehiclesChanged:" name:CRPairedVehiclesDidChangeNotification object:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CRVehicleSettingsController;
  [(CRVehicleSettingsController *)&v5 viewDidLoad];
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  sessionStatus = [vehicleSettingManager sessionStatus];
  [sessionStatus addSessionObserver:self];
}

- (void)sessionDidConnect:(id)connect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_456C;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_45E8;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)deleteVehicle
{
  objc_initWeak(&location, self);
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_46D4;
  v4[3] = &unk_6E2E8;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [vehicleSettingManager removeVehicleWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)stopSession
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  sessionStatus = [vehicleSettingManager sessionStatus];
  currentSession = [sessionStatus currentSession];
  configuration = [currentSession configuration];
  sessionIdentifier = [configuration sessionIdentifier];

  CRStopSessionWithSessionIdentifier();
}

- (id)carPlayEnabled:(id)enabled
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicle isPaired]);

  return v5;
}

- (void)setCarPlayEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  bOOLValue = [enabledCopy BOOLValue];
  v11 = bOOLValue;
  if (bOOLValue)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  [vehicle setPairingStatus:v12];
  [(CRVehicleSettingsController *)self setSuppressNextReloadForPairedVehicleChanged:1];
  objc_initWeak(&location, self);
  vehicleSettingManager2 = [(CRVehicleSettingsController *)self vehicleSettingManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_4A98;
  v14[3] = &unk_6E330;
  objc_copyWeak(&v15, &location);
  v16 = v11;
  [vehicleSettingManager2 saveVehicleWithCompletion:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_updateEnabledGroupSpecifier:(id)specifier switchSpecifier:(id)switchSpecifier
{
  specifierCopy = specifier;
  switchSpecifierCopy = switchSpecifier;
  v7 = MGGetBoolAnswer();
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  isPaired = [vehicle isPaired];
  supportsWirelessCarPlay = [vehicle supportsWirelessCarPlay];
  supportsUSBCarPlay = [vehicle supportsUSBCarPlay];
  vehicleSettingManager2 = [(CRVehicleSettingsController *)self vehicleSettingManager];
  isCarPlayUltraSupported = [vehicleSettingManager2 isCarPlayUltraSupported];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = v15;
  if (isCarPlayUltraSupported)
  {
    v17 = [v15 localizedStringForKey:@"CARPLAY_SWITCH" value:&stru_6FD90 table:@"Localizable"];
    [switchSpecifierCopy setName:v17];

LABEL_20:
    goto LABEL_21;
  }

  if (supportsWirelessCarPlay)
  {
    v18 = [v15 localizedStringForKey:@"CARPLAY_SWITCH" value:&stru_6FD90 table:@"Localizable"];
    [switchSpecifierCopy setName:v18];

    if (isPaired)
    {
      if (!supportsUSBCarPlay)
      {
        goto LABEL_21;
      }

      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"CARPLAY_FOOTER_TEXT_WIRED_AND_WIRELESS_ON_TOUCHID";
      v22 = @"CARPLAY_FOOTER_TEXT_WIRED_AND_WIRELESS_ON_FACEID";
    }

    else
    {
      if (!supportsUSBCarPlay)
      {
        goto LABEL_21;
      }

      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"CARPLAY_FOOTER_TEXT_WIRED_AND_WIRELESS_OFF_TOUCHID";
      v22 = @"CARPLAY_FOOTER_TEXT_WIRED_AND_WIRELESS_OFF_FACEID";
    }

    if (v7)
    {
      v26 = v22;
    }

    else
    {
      v26 = v21;
    }
  }

  else
  {
    v23 = [v15 localizedStringForKey:@"ALLOW_LOCKED_CARPLAY_SWITCH" value:&stru_6FD90 table:@"Localizable"];
    [switchSpecifierCopy setName:v23];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = v19;
    if (isPaired)
    {
      v24 = @"CARPLAY_FOOTER_TEXT_WIRED_ON_TOUCHID";
      v25 = @"CARPLAY_FOOTER_TEXT_WIRED_ON_FACEID";
    }

    else
    {
      v24 = @"CARPLAY_FOOTER_TEXT_WIRED_OFF_TOUCHID";
      v25 = @"CARPLAY_FOOTER_TEXT_WIRED_OFF_FACEID";
    }

    if (v7)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }
  }

  v16 = [v19 localizedStringForKey:v26 value:&stru_6FD90 table:@"Localizable"];

  if (v16)
  {
    [specifierCopy setProperty:v16 forKey:PSFooterTextGroupKey];
    goto LABEL_20;
  }

LABEL_21:
}

- (id)detailTextForOptionsRow:(id)row
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  isCarPlayUltraEnabled = [vehicleSettingManager isCarPlayUltraEnabled];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (isCarPlayUltraEnabled)
  {
    v7 = @"CARPLAY_OPTIONS_CARPLAY_ULTRA_SUMMARY";
  }

  else
  {
    v7 = @"CARPLAY_OPTIONS_CARPLAY_SUMMARY";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_6FD90 table:@"Localizable"];

  return v8;
}

- (void)_updateOptionsRowVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  optionsSpecifier = [(CRVehicleSettingsController *)self optionsSpecifier];
  if (optionsSpecifier)
  {
    v7 = optionsSpecifier;
    if (visibilityCopy && ([(CRVehicleSettingsController *)self specifierForID:@"CARPLAY_OPTIONS_LINK"], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      [(CRVehicleSettingsController *)self insertSpecifier:v7 afterSpecifierID:@"CARPLAY_SWITCH" animated:1];
    }

    else
    {
      [(CRVehicleSettingsController *)self removeSpecifier:v7 animated:1];
    }

    optionsSpecifier = v7;
  }
}

- (id)enhancedIntegrationEnabled:(id)enabled
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicle isEnhancedIntegrationEnabled]);

  return v5;
}

- (void)setEnhancedIntegrationEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  if ([enabledCopy BOOLValue])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [vehicle setEnhancedIntegrationStatus:v10];
  [(CRVehicleSettingsController *)self setSuppressNextReloadForPairedVehicleChanged:1];
  objc_initWeak(&location, self);
  vehicleSettingManager2 = [(CRVehicleSettingsController *)self vehicleSettingManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5178;
  v13[3] = &unk_6E358;
  objc_copyWeak(&v15, &location);
  v12 = vehicle;
  v14 = v12;
  [vehicleSettingManager2 saveVehicleWithCompletion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)handlePairedVehiclesChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5314;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v89 = OBJC_IVAR___PSListController__specifiers;
    vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];

    if (!vehicleSettingManager)
    {
      specifier = [(CRVehicleSettingsController *)self specifier];
      userInfo = [specifier userInfo];
      [(CRVehicleSettingsController *)self setVehicleSettingManager:userInfo];
    }

    vehicleSettingManager2 = [(CRVehicleSettingsController *)self vehicleSettingManager];
    vehicle = [vehicleSettingManager2 vehicle];

    v96 = objc_alloc_init(NSMutableArray);
    displayName = [vehicle displayName];
    [(CRVehicleSettingsController *)self setTitle:displayName];
    supportsEnhancedIntegration = [vehicle supportsEnhancedIntegration];
    v91 = [PSSpecifier groupSpecifierWithID:@"SWITCH_GROUP"];
    v95 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setCarPlayEnabled:specifier:" get:"carPlayEnabled:" detail:0 cell:6 edit:0];
    [v95 setIdentifier:@"CARPLAY_SWITCH"];
    [(CRVehicleSettingsController *)self _updateEnabledGroupSpecifier:v91 switchSpecifier:v95];
    v112[0] = v91;
    v112[1] = v95;
    v9 = [NSArray arrayWithObjects:v112 count:2];
    [v96 addObjectsFromArray:v9];

    v10 = [(CRVehicleSettingsController *)self carPlayEnabled:v95];

    vehicleSettingManager3 = [(CRVehicleSettingsController *)self vehicleSettingManager];
    LODWORD(v9) = [vehicleSettingManager3 isCarPlayUltraSupported];

    if (v9)
    {
      v12 = v10 == 0;
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"CARPLAY_OPTIONS_ROW_TITLE" value:&stru_6FD90 table:@"Localizable"];
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"detailTextForOptionsRow:" detail:objc_opt_class() cell:2 edit:0];

      [v15 setIdentifier:@"CARPLAY_OPTIONS_LINK"];
      vehicleSettingManager4 = [(CRVehicleSettingsController *)self vehicleSettingManager];
      [v15 setUserInfo:vehicleSettingManager4];

      if (!v12)
      {
        [v96 addObject:v15];
      }

      optionsSpecifier = self->_optionsSpecifier;
      self->_optionsSpecifier = v15;

      supportsEnhancedIntegration = 0;
    }

    vehicleSettingManager5 = [(CRVehicleSettingsController *)self vehicleSettingManager];
    sessionStatus = [vehicleSettingManager5 sessionStatus];
    currentSession = [sessionStatus currentSession];

    configuration = [currentSession configuration];
    LODWORD(sessionStatus) = [configuration transportType] == &dword_0 + 3;

    if (sessionStatus)
    {
      v21 = currentSession;
      if (currentSession)
      {
        configuration2 = [currentSession configuration];
        supportedStopSessionDisconnectReasons = [configuration2 supportedStopSessionDisconnectReasons];
        v24 = [supportedStopSessionDisconnectReasons containsObject:&off_70D48];

        v21 = currentSession;
      }

      else
      {
        v24 = 0;
      }

      mFiCertificateSerialNumber = [v21 MFiCertificateSerialNumber];
      certificateSerialNumber = [vehicle certificateSerialNumber];
      v27 = [mFiCertificateSerialNumber isEqualToData:certificateSerialNumber];

      if ((v24 & v27) == 1)
      {
        v28 = [PSSpecifier groupSpecifierWithID:@"DISCONNECT_GROUP"];
        v29 = [NSBundle bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"DISCONNECT" value:&stru_6FD90 table:@"Localizable"];
        v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v31 setIdentifier:@"DISCONNECT_BUTTON"];
        [v31 setProperty:&off_70D60 forKey:PSAlignmentKey];
        [v31 setButtonAction:"stopSession"];
        v32 = [NSBundle bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"DISCONNECT_FOOTER" value:&stru_6FD90 table:@"Localizable"];
        [v28 setProperty:v33 forKey:PSFooterTextGroupKey];

        v111[0] = v28;
        v111[1] = v31;
        v34 = [NSArray arrayWithObjects:v111 count:2];
        [v96 addObjectsFromArray:v34];
      }
    }

    v35 = [NSBundle bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"CUSTOMIZE_SECTION_TITLE" value:&stru_6FD90 table:@"Localizable"];
    v90 = [PSSpecifier groupSpecifierWithID:@"CUSTOMIZE_GROUP" name:v36];

    objc_initWeak(&location, self);
    v37 = [_TtC14CarKitSettings16CarPlaySpecifier alloc];
    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:@"CUSTOMIZE_HOME_SCREENS_ICONS_TITLE" value:&stru_6FD90 table:@"Localizable"];
    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_6508;
    v101[3] = &unk_6E3C0;
    objc_copyWeak(&v102, &location);
    v101[4] = self;
    v94 = [(CarPlaySpecifier *)v37 initWithName:v39 setAction:0 getAction:&stru_6E398 detail:0 cell:1 edit:0 buttonAction:v101];

    [(CarPlaySpecifier *)v94 setUserInfo:vehicle];
    v110[0] = v90;
    v110[1] = v94;
    v40 = [NSArray arrayWithObjects:v110 count:2];
    [v96 addObjectsFromArray:v40];

    if ([PSListController shouldShowWidgetSettingsSpecifierFor:vehicle])
    {
      objc_initWeak(&from, self);
      v41 = [_TtC14CarKitSettings16CarPlaySpecifier alloc];
      v42 = [NSBundle bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"CUSTOMIZE_WIDGETS_TITLE" value:&stru_6FD90 table:@"Localizable"];
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_658C;
      v98[3] = &unk_6E3C0;
      objc_copyWeak(&v99, &from);
      v98[4] = self;
      v44 = [(CarPlaySpecifier *)v41 initWithName:v43 setAction:0 getAction:&stru_6E3E0 detail:0 cell:1 edit:0 buttonAction:v98];

      [(CarPlaySpecifier *)v44 setUserInfo:vehicle];
      v109 = v44;
      v45 = [NSArray arrayWithObjects:&v109 count:1];
      [v96 addObjectsFromArray:v45];

      objc_destroyWeak(&v99);
      objc_destroyWeak(&from);
    }

    if (supportsEnhancedIntegration)
    {
      v46 = [PSSpecifier groupSpecifierWithID:@"INTEGRATION_GROUP"];
      v47 = [NSBundle bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"CARPLAY_ENHANCED_INTEGRATION_FOOTER" value:&stru_6FD90 table:@"Localizable"];
      [v46 setProperty:v48 forKey:PSFooterTextGroupKey];

      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"CARPLAY_ENHANCED_INTEGRATION_SWITCH" value:&stru_6FD90 table:@"Localizable"];
      v51 = [PSSpecifier preferenceSpecifierNamed:v50 target:self set:"setEnhancedIntegrationEnabled:specifier:" get:"enhancedIntegrationEnabled:" detail:0 cell:6 edit:0];

      [v51 setIdentifier:@"INTEGRATION_SWITCH"];
      v108[0] = v46;
      v108[1] = v51;
      v52 = [NSArray arrayWithObjects:v108 count:2];
      [v96 addObjectsFromArray:v52];
    }

    v88 = [PSSpecifier groupSpecifierWithID:@"FORGET_GROUP"];
    v53 = [NSBundle bundleForClass:objc_opt_class()];
    v54 = [v53 localizedStringForKey:@"FORGET_BUTTON" value:&stru_6FD90 table:@"Localizable"];
    v55 = [PSConfirmationSpecifier preferenceSpecifierNamed:v54 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v55 setIdentifier:@"FORGET_BUTTON"];
    [v55 setProperty:&off_70D60 forKey:PSAlignmentKey];
    [v55 setProperty:objc_opt_class() forKey:PSCellClassKey];
    if ([vehicle supportsWirelessCarPlay])
    {
      v56 = [NSBundle bundleForClass:objc_opt_class()];
      [v56 localizedStringForKey:@"FORGET_CONFIRMATION_BLUETOOTH_TITLE_FORMAT" value:&stru_6FD90 table:@"Localizable"];
    }

    else
    {
      v56 = [NSBundle bundleForClass:objc_opt_class()];
      [v56 localizedStringForKey:@"FORGET_CONFIRMATION_WIRED_TITLE_FORMAT" value:&stru_6FD90 table:@"Localizable"];
    }
    v57 = ;
    displayName2 = [vehicle displayName];
    v87 = [NSString stringWithFormat:v57, displayName2];

    v107[0] = v87;
    v106[0] = PSConfirmationPromptKey;
    v106[1] = PSConfirmationTitleKey;
    v59 = [NSBundle bundleForClass:objc_opt_class()];
    v60 = [v59 localizedStringForKey:@"FORGET_CONFIRMATION_FORGET" value:&stru_6FD90 table:@"Localizable"];
    v107[1] = v60;
    v106[2] = PSConfirmationCancelKey;
    v61 = [NSBundle bundleForClass:objc_opt_class()];
    v62 = [v61 localizedStringForKey:@"FORGET_CONFIRMATION_CANCEL" value:&stru_6FD90 table:@"Localizable"];
    v107[2] = v62;
    v63 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:3];

    [v55 setupWithDictionary:v63];
    [v55 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
    [v55 setConfirmationAction:"deleteVehicle"];
    v105[0] = v88;
    v105[1] = v55;
    v64 = [NSArray arrayWithObjects:v105 count:2];
    [v96 addObjectsFromArray:v64];

    if (CRIsInternalInstall())
    {
      v65 = [NSBundle bundleForClass:objc_opt_class()];
      v66 = [v65 localizedStringForKey:@"DNL_INTERNAL_ONLY" value:&stru_6FD90 table:@"Localizable"];
      v86 = [PSSpecifier groupSpecifierWithName:v66];

      v67 = [NSBundle bundleForClass:objc_opt_class()];
      v68 = [v67 localizedStringForKey:@"DNL_INTERNAL_NOTES_FOOTER" value:&stru_6FD90 table:@"Localizable"];
      v69 = PSFooterTextGroupKey;
      [v86 setProperty:v68 forKey:PSFooterTextGroupKey];

      v70 = [NSBundle bundleForClass:objc_opt_class()];
      v71 = [v70 localizedStringForKey:@"DNL_INTERNAL_NOTES" value:&stru_6FD90 table:@"Localizable"];
      v72 = [PSSpecifier preferenceSpecifierNamed:v71 target:self set:"setInternalNotes:forSpecifier:" get:"internalNotes:" detail:objc_opt_class() cell:2 edit:0];

      v104[0] = v86;
      v104[1] = v72;
      v73 = [NSArray arrayWithObjects:v104 count:2];
      [v96 addObjectsFromArray:v73];

      supportsThemeAssets = [vehicle supportsThemeAssets];
      LODWORD(v70) = [supportsThemeAssets BOOLValue];

      if (v70)
      {
        v75 = [PSSpecifier groupSpecifierWithName:@"Asset Information"];
        [v75 setIdentifier:@"AssetInfo"];
        [v96 addObject:v75];
        v76 = [PSSpecifier preferenceSpecifierNamed:@"AssetID" target:self set:0 get:"assetIdentifier" detail:0 cell:4 edit:0];
        [v96 addObject:v76];
        v85 = v76;
        v77 = [PSSpecifier preferenceSpecifierNamed:@"AssetVersion" target:self set:0 get:"assetVersion" detail:0 cell:4 edit:0];
        [v96 addObject:v77];
        v78 = v69;
        v79 = [PSSpecifier preferenceSpecifierNamed:@"Using MobileAsset?" target:self set:0 get:"isUsingMobileAsset" detail:0 cell:4 edit:0];
        [v96 addObject:v79];
        v80 = [PSSpecifier preferenceSpecifierNamed:@"AssetPath" target:self set:0 get:"assetPath" detail:0 cell:0 edit:0];
        assetPath = [(CRVehicleSettingsController *)self assetPath];
        [v80 setProperty:assetPath forKey:v78];

        [v96 addObject:v80];
      }
    }

    v82 = [NSArray arrayWithArray:v96];
    v83 = *&self->PSListController_opaque[v89];
    *&self->PSListController_opaque[v89] = v82;

    objc_destroyWeak(&v102);
    objc_destroyWeak(&location);

    v3 = *&self->PSListController_opaque[v89];
  }

  return v3;
}

- (id)internalNotes:(id)notes
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  internalNotes = [vehicle internalNotes];

  return internalNotes;
}

- (void)setInternalNotes:(id)notes forSpecifier:(id)specifier
{
  notesCopy = notes;
  specifierCopy = specifier;
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  [vehicle setInternalNotes:notesCopy];
  objc_initWeak(&location, self);
  vehicleSettingManager2 = [(CRVehicleSettingsController *)self vehicleSettingManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_67AC;
  v12[3] = &unk_6E358;
  objc_copyWeak(&v14, &location);
  v11 = specifierCopy;
  v13 = v11;
  [vehicleSettingManager2 saveVehicleWithCompletion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)assetIdentifier
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];
  clusterAssetIdentifier = [vehicle clusterAssetIdentifier];

  return clusterAssetIdentifier;
}

- (id)assetVersion
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];
  clusterAssetVersion = [vehicle clusterAssetVersion];

  vehicleSettingManager2 = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle2 = [vehicleSettingManager2 vehicle];
  stagedClusterAssetVersion = [vehicle2 stagedClusterAssetVersion];

  if (clusterAssetVersion && [clusterAssetVersion intValue] >= 1)
  {
    stringValue = [clusterAssetVersion stringValue];
LABEL_7:
    v10 = stringValue;
    goto LABEL_9;
  }

  if (stagedClusterAssetVersion && [stagedClusterAssetVersion intValue] >= 1)
  {
    stringValue = [NSString stringWithFormat:@"%@ (Staged)", stagedClusterAssetVersion];
    goto LABEL_7;
  }

  v10 = @"–";
LABEL_9:

  return v10;
}

- (id)assetPath
{
  vehicleSettingManager = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];
  clusterAssetURL = [vehicle clusterAssetURL];

  vehicleSettingManager2 = [(CRVehicleSettingsController *)self vehicleSettingManager];
  vehicle2 = [vehicleSettingManager2 vehicle];
  stagedClusterAssetURL = [vehicle2 stagedClusterAssetURL];

  if (clusterAssetURL)
  {
    absoluteString = [clusterAssetURL absoluteString];
LABEL_5:
    v10 = absoluteString;
    goto LABEL_6;
  }

  if (stagedClusterAssetURL)
  {
    absoluteString = [NSString stringWithFormat:@"%@ (Staged)", stagedClusterAssetURL];
    goto LABEL_5;
  }

  v10 = @"–";
LABEL_6:

  return v10;
}

- (id)isUsingMobileAsset
{
  assetPath = [(CRVehicleSettingsController *)self assetPath];
  [assetPath containsString:@"/private/var/MobileAsset"];
  v3 = NSStringFromBOOL();

  return v3;
}

@end