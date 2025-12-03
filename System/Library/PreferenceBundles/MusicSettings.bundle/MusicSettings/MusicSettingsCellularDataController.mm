@interface MusicSettingsCellularDataController
- (BOOL)cellularDataEnabled;
- (BOOL)cellularHighDataModeEnabled;
- (BOOL)cellularSettingsAvailable;
- (BOOL)wifiDataEnabled;
- (MusicSettingsCellularDataController)init;
- (NSNumber)appCellularDataModificationDisabled;
- (NSNumber)systemAllowCellularEnabled;
- (NSString)cellularDataStateDescription;
- (id)systemAllowMusicCellularDataEnabledForSpecifier:(id)specifier;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setSystemAllowMusicCellularDataEnabled:(id)enabled forSpecifier:(id)specifier;
@end

@implementation MusicSettingsCellularDataController

- (MusicSettingsCellularDataController)init
{
  v21.receiver = self;
  v21.super_class = MusicSettingsCellularDataController;
  v2 = [(MusicSettingsCellularDataController *)&v21 init];
  if (v2)
  {
    v3 = +[MCProfileConnection sharedConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    [(MCProfileConnection *)v2->_connection addObserver:v2];
    v5 = [(MusicSettingsCellularDataController *)v2 loadSpecifiersFromPlistName:@"MusicSettingsCellularData" target:v2];
    v6 = [v5 mutableCopy];

    v7 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.Music"];
    appPolicy = v2->_appPolicy;
    v2->_appPolicy = v7;

    v9 = [(PSSystemPolicyForApp *)v2->_appPolicy specifiersForPolicyOptions:0x8000 force:0];
    lastObject = [v9 lastObject];
    musicCellularDataSpecifier = v2->_musicCellularDataSpecifier;
    v2->_musicCellularDataSpecifier = lastObject;

    v12 = v2->_musicCellularDataSpecifier;
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained((v12 + OBJC_IVAR___PSSpecifier_target));
      objc_storeWeak(&v2->_musicCellularDataSpecifierTarget, WeakRetained);

      v2->_musicCellularDataSpecifierSetter = *(v2->_musicCellularDataSpecifier + OBJC_IVAR___PSSpecifier_setter);
      v2->_musicCellularDataSpecifierGetter = *(v2->_musicCellularDataSpecifier + OBJC_IVAR___PSSpecifier_getter);
      objc_storeWeak((v2->_musicCellularDataSpecifier + OBJC_IVAR___PSSpecifier_target), v2);
      *(v2->_musicCellularDataSpecifier + OBJC_IVAR___PSSpecifier_getter) = "systemAllowMusicCellularDataEnabledForSpecifier:";
      *(v2->_musicCellularDataSpecifier + OBJC_IVAR___PSSpecifier_setter) = "setSystemAllowMusicCellularDataEnabled:forSpecifier:";
      appCellularDataModificationDisabled = [(MusicSettingsCellularDataController *)v2 appCellularDataModificationDisabled];
      bOOLValue = [appCellularDataModificationDisabled BOOLValue];

      if (bOOLValue)
      {
        [(PSSpecifier *)v2->_musicCellularDataSpecifier setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
      }

      [v6 insertObject:v2->_musicCellularDataSpecifier atIndex:{objc_msgSend(v6, "indexOfSpecifierWithID:", @"com.apple.Music:SystemCellularGroup"}];
      v16 = objc_alloc_init(CoreTelephonyClient);
      ctClient = v2->_ctClient;
      v2->_ctClient = v16;

      v18 = [(CoreTelephonyClient *)v2->_ctClient getCurrentDataServiceDescriptorSync:0];
      serviceDescriptor = v2->_serviceDescriptor;
      v2->_serviceDescriptor = v18;
    }

    [(MusicSettingsCellularDataController *)v2 setAllSpecifiers:v6];
  }

  return v2;
}

- (void)dealloc
{
  [(MCProfileConnection *)self->_connection removeObserver:self];
  v3.receiver = self;
  v3.super_class = MusicSettingsCellularDataController;
  [(MusicSettingsCellularDataController *)&v3 dealloc];
}

- (BOOL)cellularSettingsAvailable
{
  v2 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:0x8000 force:0];
  lastObject = [v2 lastObject];

  return lastObject != 0;
}

- (BOOL)cellularDataEnabled
{
  v2 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:0x8000 force:0];
  lastObject = [v2 lastObject];

  music_getValue = [lastObject music_getValue];
  v5 = sub_3F54(music_getValue);
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)wifiDataEnabled
{
  v2 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:0x8000 force:0];
  lastObject = [v2 lastObject];

  music_getValue = [lastObject music_getValue];
  v5 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v5 sf_isChinaRegionCellularDevice];

  v7 = &__kCFBooleanTrue;
  if (sf_isChinaRegionCellularDevice && ([music_getValue intValue] & 1) == 0)
  {
    v7 = &__kCFBooleanFalse;
  }

  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)cellularHighDataModeEnabled
{
  v3 = [(CoreTelephonyClient *)self->_ctClient isHighDataModeSupported:self->_serviceDescriptor error:0];
  v4 = [(CoreTelephonyClient *)self->_ctClient interfaceCostExpensive:self->_serviceDescriptor error:0];
  return v3 & ((v4 | [(CoreTelephonyClient *)self->_ctClient lowDataMode:self->_serviceDescriptor error:0]) ^ 1);
}

- (NSString)cellularDataStateDescription
{
  cellularDataEnabled = [(MusicSettingsCellularDataController *)self cellularDataEnabled];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (cellularDataEnabled)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_25A88 table:@"MusicSettings"];

  return v6;
}

- (void)setSystemAllowMusicCellularDataEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  if (self->_musicCellularDataSpecifierSetter)
  {
    musicCellularDataSpecifierSetter = self->_musicCellularDataSpecifierSetter;
  }

  WeakRetained = objc_loadWeakRetained(&self->_musicCellularDataSpecifierTarget);
  v9 = MusicSettingsPerformSelector2();

  v10 = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [v10 reloadSpecifiers];

  [(MusicSettingsCellularDataController *)self updateVisibleSpecifiers];
}

- (id)systemAllowMusicCellularDataEnabledForSpecifier:(id)specifier
{
  if (self->_musicCellularDataSpecifierGetter)
  {
    musicCellularDataSpecifierGetter = self->_musicCellularDataSpecifierGetter;
  }

  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_musicCellularDataSpecifierTarget);
  v7 = MusicSettingsPerformSelector();

  return v7;
}

- (NSNumber)systemAllowCellularEnabled
{
  music_getValue = [(PSSpecifier *)self->_musicCellularDataSpecifier music_getValue];
  v3 = sub_3F54(music_getValue);

  return v3;
}

- (NSNumber)appCellularDataModificationDisabled
{
  v2 = [(MCProfileConnection *)self->_connection effectiveBoolValueForSetting:MCFeatureAppCellularDataModificationAllowed]== 2;

  return [NSNumber numberWithBool:v2];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_44A4;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end