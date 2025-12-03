@interface FTAUplevelSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (FTAUplevelSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)mainSwitchOn:(id)on;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)handleSettingDidChangeNotification:(id)notification;
- (void)setMainSwitchOn:(id)on specifier:(id)specifier;
@end

@implementation FTAUplevelSettingsBundleController

- (FTAUplevelSettingsBundleController)initWithParentListController:(id)controller
{
  v7.receiver = self;
  v7.super_class = FTAUplevelSettingsBundleController;
  v3 = [(FTAUplevelSettingsBundleController *)&v7 initWithParentListController:controller];
  if (v3)
  {
    v4 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v4;
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  configurationProvider = [(FTAUplevelSettingsBundleController *)self configurationProvider];
  isUplevelFTAAvailable = [configurationProvider isUplevelFTAAvailable];

  if (isUplevelFTAAvailable)
  {
    activeSpecifier = [(FTAUplevelSettingsBundleController *)self activeSpecifier];

    if (!activeSpecifier)
    {
      v8 = objc_alloc_init(FTNUServiceNames);
      v9 = [FTAUplevelSettingsBundleController localizedStringForKey:@"FTA_AUTO_UPGRADE_TITLE_%@"];
      faceTimeAudioServiceName = [v8 faceTimeAudioServiceName];
      v11 = [NSString stringWithFormat:v9, faceTimeAudioServiceName];

      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setMainSwitchOn:specifier:" get:"mainSwitchOn:" detail:0 cell:6 edit:0];
      v13 = [FTAUplevelSettingsBundleController localizedStringForKey:@"FTA_AUTO_UPGRADE_EXPLANATION_%@"];
      faceTimeAudioServiceName2 = [v8 faceTimeAudioServiceName];
      v15 = [NSString stringWithFormat:v13, faceTimeAudioServiceName2];

      [v12 setProperty:v15 forKey:PSTableCellSubtitleTextKey];
      [v12 setProperty:objc_opt_class() forKey:PSCellClassKey];
      if (v12)
      {
        [v12 setIdentifier:@"FTA_UPLEVEL"];
        [v4 addObject:v12];
      }
    }

    v16 = [v4 copy];
  }

  else
  {
    v16 = v4;
  }

  v17 = v16;

  return v17;
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_4190 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (id)mainSwitchOn:(id)on
{
  configurationProvider = [(FTAUplevelSettingsBundleController *)self configurationProvider];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configurationProvider isUplevelFTAEnabled]);

  return v4;
}

- (void)setMainSwitchOn:(id)on specifier:(id)specifier
{
  bOOLValue = [on BOOLValue];
  configurationProvider = [(FTAUplevelSettingsBundleController *)self configurationProvider];
  [configurationProvider setUplevelFTAEnabled:bOOLValue];
}

- (void)handleSettingDidChangeNotification:(id)notification
{
  parentListController = [(FTAUplevelSettingsBundleController *)self parentListController];
  activeSpecifier = [(FTAUplevelSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier];
}

@end