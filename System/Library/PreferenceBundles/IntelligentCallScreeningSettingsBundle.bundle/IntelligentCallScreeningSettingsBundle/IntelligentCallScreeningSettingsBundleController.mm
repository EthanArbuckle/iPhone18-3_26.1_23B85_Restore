@interface IntelligentCallScreeningSettingsBundleController
- (BOOL)getCallScreeningEnabled;
- (BOOL)isCurrentOption:(id)option;
- (IntelligentCallScreeningSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)createSpecifierForMenuOption:(id)option;
- (id)getCurrentlySelectedIntelligentCallScreeningSpecifier;
- (id)specifiersWithSpecifier:(id)specifier;
- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForPhone;
- (void)refreshView:(id)view;
- (void)setSelectedIntelligentCallScreeningOption:(id)option;
@end

@implementation IntelligentCallScreeningSettingsBundleController

- (IntelligentCallScreeningSettingsBundleController)initWithParentListController:(id)controller
{
  v16.receiver = self;
  v16.super_class = IntelligentCallScreeningSettingsBundleController;
  v3 = [(IntelligentCallScreeningSettingsBundleController *)&v16 initWithParentListController:controller];
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

- (id)specifiersWithSpecifier:(id)specifier
{
  v25 = +[NSMutableArray array];
  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  isReceptionistAvailable = [configurationProvider isReceptionistAvailable];

  v6 = PHDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isReceptionistAvailable)
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
            optionID = [v14 optionID];
            integerValue = [optionID integerValue];

            intelligentCallScreeningOptionToSpecifierMap = self->_intelligentCallScreeningOptionToSpecifierMap;
            v19 = [NSNumber numberWithInteger:integerValue];
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

- (id)createSpecifierForMenuOption:(id)option
{
  optionCopy = option;
  v5 = objc_alloc_init(PSSpecifier);
  titleKey = [optionCopy titleKey];
  explanationKey = [optionCopy explanationKey];
  v8 = objc_opt_class();
  objc_storeWeak(&v5[OBJC_IVAR___PSSpecifier_target], self);
  *&v5[OBJC_IVAR___PSSpecifier_cellType] = 3;
  *&v5[OBJC_IVAR___PSSpecifier_getter] = 0;
  [v5 setProperty:titleKey forKey:PSTitleKey];
  [v5 setProperty:v8 forKey:PSCellClassKey];
  [v5 setButtonAction:"setSelectedIntelligentCallScreeningOption:"];
  v9 = NSStringFromSelector("setSelectedIntelligentCallScreeningOption:");
  [v5 setProperty:v9 forKey:PSButtonActionKey];

  v10 = NSStringFromSelector(0);
  [v5 setProperty:v10 forKey:PSGetterKey];

  [v5 setProperty:explanationKey forKey:PSTableCellSubtitleTextKey];
  optionID = [optionCopy optionID];

  [v5 setProperty:optionID forKey:PSIDKey];

  return v5;
}

- (BOOL)isCurrentOption:(id)option
{
  optionCopy = option;
  getSelectedIntelligentCallScreeningMenuOptionForPhone = [(IntelligentCallScreeningSettingsBundleController *)self getSelectedIntelligentCallScreeningMenuOptionForPhone];
  integerValue = [optionCopy integerValue];

  return getSelectedIntelligentCallScreeningMenuOptionForPhone == integerValue;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    viewCopy = [(IntelligentCallScreeningSettingsBundleController *)self getCurrentlySelectedIntelligentCallScreeningSpecifier];
  }

  [viewCopy setProperty:&__kCFBooleanTrue forKey:@"specifier-checked"];
  parentListController = [(IntelligentCallScreeningSettingsBundleController *)self parentListController];
  [parentListController reloadSpecifier:viewCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
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
        if (([v11 isEqualToSpecifier:viewCopy] & 1) == 0)
        {
          v12 = [v11 propertyForKey:@"specifier-checked"];
          v13 = [v12 isEqual:&__kCFBooleanTrue];

          if (v13)
          {
            [v11 setProperty:&__kCFBooleanFalse forKey:@"specifier-checked"];
            parentListController2 = [(IntelligentCallScreeningSettingsBundleController *)selfCopy parentListController];
            [parentListController2 reloadSpecifier:v11];
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
  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  getSelectedIntelligentCallScreeningMenuOptionForPhone = [configurationProvider getSelectedIntelligentCallScreeningMenuOptionForPhone];

  return getSelectedIntelligentCallScreeningMenuOptionForPhone;
}

- (id)getCurrentlySelectedIntelligentCallScreeningSpecifier
{
  getSelectedIntelligentCallScreeningMenuOptionForPhone = [(IntelligentCallScreeningSettingsBundleController *)self getSelectedIntelligentCallScreeningMenuOptionForPhone];
  intelligentCallScreeningOptionToSpecifierMap = self->_intelligentCallScreeningOptionToSpecifierMap;
  v5 = [NSNumber numberWithInteger:getSelectedIntelligentCallScreeningMenuOptionForPhone];
  v6 = [(NSMutableDictionary *)intelligentCallScreeningOptionToSpecifierMap objectForKey:v5];

  return v6;
}

- (void)setSelectedIntelligentCallScreeningOption:(id)option
{
  optionCopy = option;
  identifier = [optionCopy identifier];
  v6 = [(IntelligentCallScreeningSettingsBundleController *)self isCurrentOption:identifier];

  if ((v6 & 1) == 0)
  {
    [(IntelligentCallScreeningSettingsBundleController *)self refreshView:optionCopy];
    identifier2 = [optionCopy identifier];
    stringValue = [&off_8568 stringValue];
    if ([identifier2 isEqualToString:stringValue])
    {
      getCallScreeningEnabled = [(IntelligentCallScreeningSettingsBundleController *)self getCallScreeningEnabled];

      if (getCallScreeningEnabled)
      {
LABEL_9:
        v11 = dispatch_get_global_queue(33, 0);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_173C;
        v12[3] = &unk_8280;
        v13 = optionCopy;
        selfCopy = self;
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
      identifier2 = +[NSNotificationCenter defaultCenter];
      [identifier2 postNotificationName:@"TUCallScreeningSettingsChangedNotification" object:0];
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
  featureFlags = [(IntelligentCallScreeningSettingsBundleController *)self featureFlags];
  deviceExpertMigrationEnabled = [featureFlags deviceExpertMigrationEnabled];

  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  v6 = configurationProvider;
  if (deviceExpertMigrationEnabled)
  {
    isCallScreeningEnabled = [configurationProvider isCallScreeningEnabled];
  }

  else
  {
    isCallScreeningEnabled = [configurationProvider getSelectedIntelligentCallScreeningMenuOptionForPhone] != 0;
  }

  return isCallScreeningEnabled;
}

@end