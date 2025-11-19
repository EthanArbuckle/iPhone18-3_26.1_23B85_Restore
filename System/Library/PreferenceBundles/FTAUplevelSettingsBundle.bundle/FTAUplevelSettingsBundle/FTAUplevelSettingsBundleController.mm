@interface FTAUplevelSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (FTAUplevelSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)mainSwitchOn:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleSettingDidChangeNotification:(id)a3;
- (void)setMainSwitchOn:(id)a3 specifier:(id)a4;
@end

@implementation FTAUplevelSettingsBundleController

- (FTAUplevelSettingsBundleController)initWithParentListController:(id)a3
{
  v7.receiver = self;
  v7.super_class = FTAUplevelSettingsBundleController;
  v3 = [(FTAUplevelSettingsBundleController *)&v7 initWithParentListController:a3];
  if (v3)
  {
    v4 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v4;
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [(FTAUplevelSettingsBundleController *)self configurationProvider];
  v6 = [v5 isUplevelFTAAvailable];

  if (v6)
  {
    v7 = [(FTAUplevelSettingsBundleController *)self activeSpecifier];

    if (!v7)
    {
      v8 = objc_alloc_init(FTNUServiceNames);
      v9 = [FTAUplevelSettingsBundleController localizedStringForKey:@"FTA_AUTO_UPGRADE_TITLE_%@"];
      v10 = [v8 faceTimeAudioServiceName];
      v11 = [NSString stringWithFormat:v9, v10];

      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setMainSwitchOn:specifier:" get:"mainSwitchOn:" detail:0 cell:6 edit:0];
      v13 = [FTAUplevelSettingsBundleController localizedStringForKey:@"FTA_AUTO_UPGRADE_EXPLANATION_%@"];
      v14 = [v8 faceTimeAudioServiceName];
      v15 = [NSString stringWithFormat:v13, v14];

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

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_4190 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (id)mainSwitchOn:(id)a3
{
  v3 = [(FTAUplevelSettingsBundleController *)self configurationProvider];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isUplevelFTAEnabled]);

  return v4;
}

- (void)setMainSwitchOn:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(FTAUplevelSettingsBundleController *)self configurationProvider];
  [v6 setUplevelFTAEnabled:v5];
}

- (void)handleSettingDidChangeNotification:(id)a3
{
  v5 = [(FTAUplevelSettingsBundleController *)self parentListController];
  v4 = [(FTAUplevelSettingsBundleController *)self activeSpecifier];
  [v5 reloadSpecifier:v4];
}

@end