@interface IntelligentCallScreeningSettingsBundleController
- (BOOL)getCallScreeningEnabled;
- (BOOL)isCurrentOption:(id)a3;
- (IntelligentCallScreeningSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)createSpecifierForMenuOption:(id)a3;
- (id)getCurrentlySelectedIntelligentCallScreeningSpecifier;
- (id)specifiersWithSpecifier:(id)a3;
- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForPhone;
- (void)refreshView:(id)a3;
- (void)setSelectedIntelligentCallScreeningOption:(id)a3;
@end

@implementation IntelligentCallScreeningSettingsBundleController

- (IntelligentCallScreeningSettingsBundleController)initWithParentListController:(id)a3
{
  v16.receiver = self;
  v16.super_class = IntelligentCallScreeningSettingsBundleController;
  v3 = [(IntelligentCallScreeningSettingsBundleController *)&v16 initWithParentListController:a3];
  if (v3)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v3->_featureFlags;
    v3->_featureFlags = v4;

    v6 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v6;

    v8 = objc_alloc_init(NSMutableArray);
    specifiers = v3->_specifiers;
    v3->_specifiers = v8;

    v10 = objc_alloc_init(NSMutableArray);
    intelligentCallScreeningMenuSpecifiers = v3->_intelligentCallScreeningMenuSpecifiers;
    v3->_intelligentCallScreeningMenuSpecifiers = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    intelligentCallScreeningOptionToSpecifierMap = v3->_intelligentCallScreeningOptionToSpecifierMap;
    v3->_intelligentCallScreeningOptionToSpecifierMap = v12;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"IntelligentCallScreeningSettingsUserDidModifySelectionNotification" object:0];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v25 = +[NSMutableArray array];
  v4 = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  v5 = [v4 isReceptionistAvailable];

  v6 = PHDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "INTELLIGENT CALL SCREENING SETTINGS: We are in Phone Settings with receptionist available, so we will show Intelligent Call Screening group", buf, 2u);
    }

    v24 = [IntelligentCallScreeningMenuCellOption localizedStringForKey:@"INTELLIGENT_CALL_SCREENING_MENU_TITLE"];
    v8 = [PSSpecifier groupSpecifierWithName:?];
    [v8 setIdentifier:@"INTELLIGENT_CALL_SCREENING_MENU_TITLE"];
    [(NSArray *)v25 addObject:v8];
    v23 = v8;
    [v8 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v9 = +[IntelligentCallScreeningMenuCellOption optionMenuItems];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [(IntelligentCallScreeningSettingsBundleController *)self createSpecifierForMenuOption:v14];
          if (v15)
          {
            [(NSArray *)v25 addObject:v15];
            [(NSMutableArray *)self->_intelligentCallScreeningMenuSpecifiers addObject:v15];
            v16 = [v14 optionID];
            v17 = [v16 integerValue];

            intelligentCallScreeningOptionToSpecifierMap = self->_intelligentCallScreeningOptionToSpecifierMap;
            v19 = [NSNumber numberWithInteger:v17];
            [(NSMutableDictionary *)intelligentCallScreeningOptionToSpecifierMap setObject:v15 forKey:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    specifiers = self->_specifiers;
    self->_specifiers = v25;
    v21 = v25;

    [(IntelligentCallScreeningSettingsBundleController *)self refreshView:0];
    v25 = [(NSArray *)self->_specifiers copy];

    v6 = v24;
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "INTELLIGENT CALL SCREENING SETTINGS: We are NOT in Phone Settings with receptionist available, so we will NOT show Intelligent Call Screening group, we must show Silence Unknown Callers toggle instead", buf, 2u);
  }

  return v25;
}

- (id)createSpecifierForMenuOption:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PSSpecifier);
  v6 = [v4 titleKey];
  v7 = [v4 explanationKey];
  v8 = objc_opt_class();
  objc_storeWeak(&v5[OBJC_IVAR___PSSpecifier_target], self);
  *&v5[OBJC_IVAR___PSSpecifier_cellType] = 3;
  *&v5[OBJC_IVAR___PSSpecifier_getter] = 0;
  [v5 setProperty:v6 forKey:PSTitleKey];
  [v5 setProperty:v8 forKey:PSCellClassKey];
  [v5 setButtonAction:"setSelectedIntelligentCallScreeningOption:"];
  v9 = NSStringFromSelector("setSelectedIntelligentCallScreeningOption:");
  [v5 setProperty:v9 forKey:PSButtonActionKey];

  v10 = NSStringFromSelector(0);
  [v5 setProperty:v10 forKey:PSGetterKey];

  [v5 setProperty:v7 forKey:PSTableCellSubtitleTextKey];
  v11 = [v4 optionID];

  [v5 setProperty:v11 forKey:PSIDKey];

  return v5;
}

- (BOOL)isCurrentOption:(id)a3
{
  v4 = a3;
  v5 = [(IntelligentCallScreeningSettingsBundleController *)self getSelectedIntelligentCallScreeningMenuOptionForPhone];
  v6 = [v4 integerValue];

  return v5 == v6;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(IntelligentCallScreeningSettingsBundleController *)self getCurrentlySelectedIntelligentCallScreeningSpecifier];
  }

  [v4 setProperty:&__kCFBooleanTrue forKey:@"specifier-checked"];
  v5 = [(IntelligentCallScreeningSettingsBundleController *)self parentListController];
  [v5 reloadSpecifier:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = self;
  v6 = self->_specifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (([v11 isEqualToSpecifier:v4] & 1) == 0)
        {
          v12 = [v11 propertyForKey:@"specifier-checked"];
          v13 = [v12 isEqual:&__kCFBooleanTrue];

          if (v13)
          {
            [v11 setProperty:&__kCFBooleanFalse forKey:@"specifier-checked"];
            v14 = [(IntelligentCallScreeningSettingsBundleController *)v15 parentListController];
            [v14 reloadSpecifier:v11];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForPhone
{
  v2 = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  v3 = [v2 getSelectedIntelligentCallScreeningMenuOptionForPhone];

  return v3;
}

- (id)getCurrentlySelectedIntelligentCallScreeningSpecifier
{
  v3 = [(IntelligentCallScreeningSettingsBundleController *)self getSelectedIntelligentCallScreeningMenuOptionForPhone];
  intelligentCallScreeningOptionToSpecifierMap = self->_intelligentCallScreeningOptionToSpecifierMap;
  v5 = [NSNumber numberWithInteger:v3];
  v6 = [(NSMutableDictionary *)intelligentCallScreeningOptionToSpecifierMap objectForKey:v5];

  return v6;
}

- (void)setSelectedIntelligentCallScreeningOption:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(IntelligentCallScreeningSettingsBundleController *)self isCurrentOption:v5];

  if ((v6 & 1) == 0)
  {
    [(IntelligentCallScreeningSettingsBundleController *)self refreshView:v4];
    v7 = [v4 identifier];
    v8 = [&off_8568 stringValue];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(IntelligentCallScreeningSettingsBundleController *)self getCallScreeningEnabled];

      if (v9)
      {
LABEL_9:
        v11 = dispatch_get_global_queue(33, 0);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_173C;
        v12[3] = &unk_8280;
        v13 = v4;
        v14 = self;
        dispatch_async(v11, v12);

        goto LABEL_10;
      }

      v10 = PHDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Turning on Live Voicemail due to Receptionist turning on", buf, 2u);
      }

      [(IntelligentCallScreeningSettingsBundleController *)self setCallScreeningEnabled:1];
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 postNotificationName:@"TUCallScreeningSettingsChangedNotification" object:0];
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (BOOL)getCallScreeningEnabled
{
  v3 = [(IntelligentCallScreeningSettingsBundleController *)self featureFlags];
  v4 = [v3 deviceExpertMigrationEnabled];

  v5 = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 isCallScreeningEnabled];
  }

  else
  {
    v7 = [v5 getSelectedIntelligentCallScreeningMenuOptionForPhone] != 0;
  }

  return v7;
}

@end