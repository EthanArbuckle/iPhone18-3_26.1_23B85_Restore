@interface COSTritiumDetailController
- (COSTritiumDetailController)init;
- (id)specifiers;
- (id)tritiumEnabled:(id)enabled;
- (id)tritiumPrivacyEnabled:(id)enabled;
- (void)_updatePrivacyRowVisibility;
- (void)dealloc;
- (void)setTritiumEnabled:(id)enabled specifier:(id)specifier;
- (void)setTritiumPrivacyEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation COSTritiumDetailController

- (COSTritiumDetailController)init
{
  v5.receiver = self;
  v5.super_class = COSTritiumDetailController;
  v2 = [(COSTritiumDetailController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000EACEC, @"NanoAlwaysOnTimePreferencesChangedNotification", 0, 1024);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = COSTritiumDetailController;
  [(COSTritiumDetailController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v47 = OBJC_IVAR___PSListController__specifiers;
    v46 = [(COSTritiumDetailController *)self loadSpecifiersFromPlistName:@"Tritium" target:self];
    v4 = [v46 specifierForID:@"TRITIUM_PRIVACY_GROUP_ID"];
    privacyGroupSpecifier = self->_privacyGroupSpecifier;
    self->_privacyGroupSpecifier = v4;

    v72[0] = PSTitleKey;
    v6 = PSTitleKey;
    v52 = PSTitleKey;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"APPS_COMPLICATIONS_PRIVACY_LABEL" value:&stru_10026E598 table:@"Tritium"];
    v73[0] = v8;
    v50 = PSTableCellClassKey;
    v73[1] = @"PSLinkCell";
    v72[1] = PSTableCellClassKey;
    v72[2] = PSBundlePathKey;
    v9 = PSBundlePathKey;
    v51 = PSBundlePathKey;
    v73[2] = @"NTKCTritiumSettings";
    v10 = PSBundleIsControllerKey;
    v73[3] = &__kCFBooleanTrue;
    v49 = PSSearchNanoSettingsBundlePath;
    v72[3] = PSBundleIsControllerKey;
    v72[4] = PSSearchNanoSettingsBundlePath;
    v73[4] = &__kCFBooleanTrue;
    v48 = BPSForbiddenWatchCapabilitiesKey;
    v72[5] = BPSForbiddenWatchCapabilitiesKey;
    v11 = BPSTinkerCapabilityKey;
    v71 = BPSTinkerCapabilityKey;
    v12 = [NSArray arrayWithObjects:&v71 count:1];
    v73[5] = v12;
    v53 = PSAllowMultilineTitleKey;
    v73[6] = &__kCFBooleanTrue;
    v54 = PSIDKey;
    v72[6] = PSAllowMultilineTitleKey;
    v72[7] = PSIDKey;
    v73[7] = @"SHOW_COMPLICATIONS_DATA_ID";
    v56 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:8];

    v69[0] = v6;
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"APPS_LIVE_ACTIVITIES_PRIVACY_LABEL" value:&stru_10026E598 table:@"Tritium"];
    v70[0] = v14;
    v70[1] = @"PSLinkCell";
    v69[1] = v50;
    v69[2] = v9;
    v70[2] = @"CompanionAppBacklightPrivacySettings";
    v70[3] = &__kCFBooleanTrue;
    v45 = v10;
    v69[3] = v10;
    v69[4] = v49;
    v69[5] = v48;
    v70[4] = &__kCFBooleanTrue;
    v15 = v11;
    v68 = v11;
    v16 = [NSArray arrayWithObjects:&v68 count:1];
    v70[5] = v16;
    v70[6] = @"activities";
    v69[6] = @"CSLPRFAppBacklightPrivacyType";
    v69[7] = v53;
    v69[8] = v54;
    v70[7] = &__kCFBooleanTrue;
    v70[8] = @"SHOW_LIVE_ACTIVITIES_ID";
    v55 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:9];

    v66[0] = v52;
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"APPS_APPS_PRIVACY_LABEL" value:&stru_10026E598 table:@"Tritium"];
    v67[0] = v18;
    v67[1] = @"PSLinkCell";
    v66[1] = v50;
    v66[2] = v51;
    v67[2] = @"CompanionAppBacklightPrivacySettings";
    v67[3] = &__kCFBooleanTrue;
    v67[4] = &__kCFBooleanTrue;
    v66[3] = v10;
    v66[4] = v49;
    v66[5] = v48;
    v65 = v15;
    v19 = [NSArray arrayWithObjects:&v65 count:1];
    v67[5] = v19;
    v67[6] = @"apps";
    v66[6] = @"CSLPRFAppBacklightPrivacyType";
    v66[7] = v53;
    v66[8] = v54;
    v67[7] = &__kCFBooleanTrue;
    v67[8] = @"SHOW_APPS_ID";
    v20 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:9];

    v63[0] = v52;
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"APPS_NOTIFICATIONS_PRIVACY_LABEL" value:&stru_10026E598 table:@"Tritium"];
    v64[0] = v22;
    v64[1] = @"PSLinkCell";
    v63[1] = v50;
    v63[2] = v51;
    v64[2] = @"CompanionAppBacklightPrivacySettings";
    v64[3] = &__kCFBooleanTrue;
    v64[4] = &__kCFBooleanTrue;
    v63[3] = v45;
    v63[4] = v49;
    v63[5] = v48;
    v62 = v15;
    v23 = [NSArray arrayWithObjects:&v62 count:1];
    v64[5] = v23;
    v64[6] = @"notifications";
    v63[6] = @"CSLPRFAppBacklightPrivacyType";
    v63[7] = v53;
    v63[8] = v54;
    v64[7] = &__kCFBooleanTrue;
    v64[8] = @"SHOW_NOTIFICATIONS_ID";
    v24 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:9];

    v59[3] = v20;
    v60 = @"items";
    v59[0] = v56;
    v59[1] = v55;
    v59[2] = v24;
    v25 = [NSArray arrayWithObjects:v59 count:4];
    v61 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v27 = +[NSBundle mainBundle];
    v28 = SpecifiersFromPlist();

    v29 = [v28 objectAtIndex:{0, 0}];
    complicationsPrivacySpecifier = self->_complicationsPrivacySpecifier;
    self->_complicationsPrivacySpecifier = v29;

    v31 = [v28 objectAtIndex:1];
    liveActivitiesPrivacySpecifier = self->_liveActivitiesPrivacySpecifier;
    self->_liveActivitiesPrivacySpecifier = v31;

    v33 = [v28 objectAtIndex:2];
    appsPrivacySpecifier = self->_appsPrivacySpecifier;
    self->_appsPrivacySpecifier = v33;

    v35 = [v28 objectAtIndex:3];
    notificationsPrivacySpecifier = self->_notificationsPrivacySpecifier;
    self->_notificationsPrivacySpecifier = v35;

    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AOTEnabled", @"com.apple.system.prefs", &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat || AppBooleanValue)
    {
      v39 = self->_liveActivitiesPrivacySpecifier;
      v40 = self->_notificationsPrivacySpecifier;
      v58[0] = self->_complicationsPrivacySpecifier;
      v58[1] = v39;
      v41 = self->_appsPrivacySpecifier;
      v58[2] = v40;
      v58[3] = v41;
      v42 = [NSArray arrayWithObjects:v58 count:4];
      v38 = v46;
      [v46 addObjectsFromArray:v42];
    }

    else
    {
      v38 = v46;
      [v46 removeObject:self->_privacyGroupSpecifier];
    }

    v43 = *&self->BPSListController_opaque[v47];
    *&self->BPSListController_opaque[v47] = v38;

    v3 = *&self->BPSListController_opaque[v47];
  }

  return v3;
}

- (void)_updatePrivacyRowVisibility
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AOTEnabled", @"com.apple.system.prefs", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v7 = 0;
    v5 = CFPreferencesGetAppBooleanValue(@"AOTEnabled", @"com.apple.system.prefs", &v7);
    if (v7 && !v5 && [(COSTritiumDetailController *)self containsSpecifier:self->_privacyGroupSpecifier])
    {
      [(COSTritiumDetailController *)self removeSpecifier:self->_privacyGroupSpecifier animated:1];
      [(COSTritiumDetailController *)self removeSpecifier:self->_complicationsPrivacySpecifier animated:1];
      [(COSTritiumDetailController *)self removeSpecifier:self->_liveActivitiesPrivacySpecifier animated:1];
      [(COSTritiumDetailController *)self removeSpecifier:self->_notificationsPrivacySpecifier animated:1];
      [(COSTritiumDetailController *)self removeSpecifier:self->_appsPrivacySpecifier animated:1];
    }
  }

  else if (([(COSTritiumDetailController *)self containsSpecifier:self->_privacyGroupSpecifier]& 1) == 0)
  {
    [(COSTritiumDetailController *)self addSpecifier:self->_privacyGroupSpecifier animated:1];
    [(COSTritiumDetailController *)self addSpecifier:self->_complicationsPrivacySpecifier animated:1];
    [(COSTritiumDetailController *)self addSpecifier:self->_liveActivitiesPrivacySpecifier animated:1];
    [(COSTritiumDetailController *)self addSpecifier:self->_notificationsPrivacySpecifier animated:1];
    [(COSTritiumDetailController *)self addSpecifier:self->_appsPrivacySpecifier animated:1];
  }
}

- (void)setTritiumEnabled:(id)enabled specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"AOTEnabled", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [enabled BOOLValue]), @"com.apple.system.prefs");
  CFPreferencesAppSynchronize(@"com.apple.system.prefs");
  v5 = objc_opt_new();
  v8 = @"AOTEnabled";
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = [NSSet setWithArray:v6];
  [v5 synchronizeUserDefaultsDomain:@"com.apple.system.prefs" keys:v7];

  [(COSTritiumDetailController *)self _updatePrivacyRowVisibility];
}

- (id)tritiumEnabled:(id)enabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"AOTEnabled", @"com.apple.system.prefs", &keyExistsAndHasValidFormat))
  {
    v3 = 1;
  }

  else
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  v4 = v3;
  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (void)setTritiumPrivacyEnabled:(id)enabled specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"AOTPrivacyEnabled", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [enabled BOOLValue]), @"com.apple.system.prefs");
  CFPreferencesAppSynchronize(@"com.apple.system.prefs");
  v4 = objc_opt_new();
  v7 = @"AOTPrivacyEnabled";
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [NSSet setWithArray:v5];
  [v4 synchronizeUserDefaultsDomain:@"com.apple.system.prefs" keys:v6];
}

- (id)tritiumPrivacyEnabled:(id)enabled
{
  v3 = CFPreferencesGetAppBooleanValue(@"AOTPrivacyEnabled", @"com.apple.system.prefs", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

@end