@interface CSLPRFCompanionQuickSwitchSettingsController
- (CSLPRFCompanionQuickSwitchSettingsController)init;
- (CSLPRFCompanionQuickSwitchSettingsController)initWithSettingsModel:(id)model quickSwitchModel:(id)switchModel;
- (id)_isAppQuickSwitchEnabled:(id)enabled;
- (id)_isQuickSwitchEnabled:(id)enabled;
- (id)_makeQuickSwitchItemSpecifier:(id)specifier;
- (id)specifiers;
- (void)_setAppEnableQuickSwitch:(id)switch forSpecifier:(id)specifier;
- (void)_setEnableQuickSwitch:(id)switch forSpecifier:(id)specifier;
- (void)reloadSpecifiers;
- (void)viewDidLoad;
@end

@implementation CSLPRFCompanionQuickSwitchSettingsController

- (CSLPRFCompanionQuickSwitchSettingsController)init
{
  v3 = objc_alloc_init(CSLPRFStingSettingsModel);
  v4 = [[CSLPRFStingQuickSwitchModel alloc] initWithDelegate:self settingsModel:v3];
  v5 = [(CSLPRFCompanionQuickSwitchSettingsController *)self initWithSettingsModel:v3 quickSwitchModel:v4];

  return v5;
}

- (CSLPRFCompanionQuickSwitchSettingsController)initWithSettingsModel:(id)model quickSwitchModel:(id)switchModel
{
  modelCopy = model;
  switchModelCopy = switchModel;
  v12.receiver = self;
  v12.super_class = CSLPRFCompanionQuickSwitchSettingsController;
  v9 = [(CSLPRFCompanionQuickSwitchSettingsController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settingsModel, model);
    objc_storeStrong(&v10->_quickSwitchModel, switchModel);
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CSLPRFCompanionQuickSwitchSettingsController;
  [(CSLPRFCompanionQuickSwitchSettingsController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"QUICK_SWITCH" value:&stru_C380 table:@"LocalizableSettings-N199"];
  [(CSLPRFCompanionQuickSwitchSettingsController *)self setTitle:v4];
}

- (void)reloadSpecifiers
{
  [(CSLPRFCompanionQuickSwitchSettingsController *)self setSpecifiers:0];
  v3.receiver = self;
  v3.super_class = CSLPRFCompanionQuickSwitchSettingsController;
  [(CSLPRFCompanionQuickSwitchSettingsController *)&v3 reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v33 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"QUICK_SWITCH" value:&stru_C380 table:@"LocalizableSettings-N199"];
    v7 = [PSSpecifier groupSpecifierWithID:@"StingQuickSwitchToggleGroup" name:v6];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"QUICK_SWITCH_FOOTER" value:&stru_C380 table:@"LocalizableSettings-N199"];
    [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

    v32 = v7;
    [v4 addObject:v7];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"QUICK_SWITCH" value:&stru_C380 table:@"LocalizableSettings-N199"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setEnableQuickSwitch:forSpecifier:" get:"_isQuickSwitchEnabled:" detail:0 cell:6 edit:0];

    v31 = v12;
    [v4 addObject:v12];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"QUICK_SWITCH_APPS" value:&stru_C380 table:@"LocalizableSettings-N199"];
    v15 = [PSSpecifier groupSpecifierWithID:@"StingQuickSwitchAppGroup" name:v14];

    v30 = v15;
    [v4 addObject:v15];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allQuickSwitchItems = [(CSLPRFStingQuickSwitchModel *)self->_quickSwitchModel allQuickSwitchItems];
    v17 = [allQuickSwitchItems countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(allQuickSwitchItems);
          }

          v21 = [(CSLPRFCompanionQuickSwitchSettingsController *)self _makeQuickSwitchItemSpecifier:*(*(&v34 + 1) + 8 * i)];
          v22 = cslprf_sting_settings_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            quickSwitchModel = self->_quickSwitchModel;
            allQuickSwitchItems2 = [(CSLPRFStingQuickSwitchModel *)quickSwitchModel allQuickSwitchItems];
            *buf = 138412802;
            selfCopy2 = self;
            v40 = 2112;
            v41 = quickSwitchModel;
            v42 = 2112;
            v43 = allQuickSwitchItems2;
            _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%@: adding specifier %@ for quickSwitchItem %@", buf, 0x20u);
          }

          [v4 addObject:v21];
        }

        v18 = [allQuickSwitchItems countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v18);
    }

    v25 = [v4 copy];
    v26 = *&self->PSListController_opaque[v33];
    *&self->PSListController_opaque[v33] = v25;

    v27 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *&self->PSListController_opaque[v33];
      *buf = 138412546;
      selfCopy2 = self;
      v40 = 2112;
      v41 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%@: loaded specifiers %@", buf, 0x16u);
    }

    v3 = *&self->PSListController_opaque[v33];
  }

  return v3;
}

- (id)_makeQuickSwitchItemSpecifier:(id)specifier
{
  specifierCopy = specifier;
  settingsItem = [specifierCopy settingsItem];
  title = [settingsItem title];
  v7 = [PSSpecifier preferenceSpecifierNamed:title target:self set:"_setAppEnableQuickSwitch:forSpecifier:" get:"_isAppQuickSwitchEnabled:" detail:0 cell:6 edit:0];

  settingsItem2 = [specifierCopy settingsItem];
  assetName = [settingsItem2 assetName];

  if (assetName)
  {
    v10 = [UIImage _systemImageNamed:assetName];
    v11 = +[UIColor systemWhiteColor];
    v12 = [v10 imageWithTintColor:v11 renderingMode:1];

    if (v12)
    {
      [v7 setProperty:v12 forKey:PSIconImageKey];
    }
  }

  [v7 setProperty:specifierCopy forKey:@"kCSLPRFQuickSettingsModelKey"];

  return v7;
}

- (void)_setEnableQuickSwitch:(id)switch forSpecifier:(id)specifier
{
  switchCopy = switch;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CSLPRFStingQuickSwitchModel setQuickSwitchEnabled:](self->_quickSwitchModel, "setQuickSwitchEnabled:", [switchCopy BOOLValue]);
  }
}

- (id)_isQuickSwitchEnabled:(id)enabled
{
  isQuickSwitchEnabled = [(CSLPRFStingQuickSwitchModel *)self->_quickSwitchModel isQuickSwitchEnabled];

  return [NSNumber numberWithBool:isQuickSwitchEnabled];
}

- (void)_setAppEnableQuickSwitch:(id)switch forSpecifier:(id)specifier
{
  switchCopy = switch;
  v7 = [specifier propertyForKey:@"kCSLPRFQuickSettingsModelKey"];
  bOOLValue = [switchCopy BOOLValue];

  [v7 setAvailableForQuickSwitch:bOOLValue];
  v9 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@: changing %@", &v10, 0x16u);
  }
}

- (id)_isAppQuickSwitchEnabled:(id)enabled
{
  v3 = [enabled propertyForKey:@"kCSLPRFQuickSettingsModelKey"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isAvailableForQuickSwitch]);

  return v4;
}

@end