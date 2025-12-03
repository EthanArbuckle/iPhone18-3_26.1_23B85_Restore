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
    v4 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v3->_featureFlags;
    v3->_featureFlags = v4;

    v6 = objc_alloc_init(MEMORY[0x277D6EE48]);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    specifiers = v3->_specifiers;
    v3->_specifiers = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    intelligentCallScreeningMenuSpecifiers = v3->_intelligentCallScreeningMenuSpecifiers;
    v3->_intelligentCallScreeningMenuSpecifiers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    intelligentCallScreeningOptionToSpecifierMap = v3->_intelligentCallScreeningOptionToSpecifierMap;
    v3->_intelligentCallScreeningOptionToSpecifierMap = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_handleSettingDidChangeNotification_ name:@"IntelligentCallScreeningSettingsUserDidModifySelectionNotification" object:0];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v33 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  isReceptionistAvailable = [configurationProvider isReceptionistAvailable];

  v6 = PHDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isReceptionistAvailable)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_23C144000, v6, OS_LOG_TYPE_DEFAULT, "INTELLIGENT CALL SCREENING SETTINGS: We are in Phone Settings with receptionist available, so we will show Intelligent Call Screening group", buf, 2u);
    }

    v25 = [IntelligentCallScreeningMenuCellOption localizedStringForKey:@"INTELLIGENT_CALL_SCREENING_MENU_TITLE"];
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:?];
    [v8 setIdentifier:@"INTELLIGENT_CALL_SCREENING_MENU_TITLE"];
    [(NSArray *)array addObject:v8];
    v24 = v8;
    [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v9 = +[IntelligentCallScreeningMenuCellOption optionMenuItems];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [(IntelligentCallScreeningSettingsBundleController *)self createSpecifierForMenuOption:v14];
          if (v15)
          {
            [(NSArray *)array addObject:v15];
            [(NSMutableArray *)self->_intelligentCallScreeningMenuSpecifiers addObject:v15];
            optionID = [v14 optionID];
            integerValue = [optionID integerValue];

            intelligentCallScreeningOptionToSpecifierMap = self->_intelligentCallScreeningOptionToSpecifierMap;
            v19 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
            [(NSMutableDictionary *)intelligentCallScreeningOptionToSpecifierMap setObject:v15 forKey:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    specifiers = self->_specifiers;
    self->_specifiers = array;
    v21 = array;

    [(IntelligentCallScreeningSettingsBundleController *)self refreshView:0];
    array = [(NSArray *)self->_specifiers copy];

    v6 = v25;
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_23C144000, v6, OS_LOG_TYPE_DEFAULT, "INTELLIGENT CALL SCREENING SETTINGS: We are NOT in Phone Settings with receptionist available, so we will NOT show Intelligent Call Screening group, we must show Silence Unknown Callers toggle instead", buf, 2u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)createSpecifierForMenuOption:(id)option
{
  v4 = MEMORY[0x277D3FAD8];
  optionCopy = option;
  v6 = objc_alloc_init(v4);
  titleKey = [optionCopy titleKey];
  explanationKey = [optionCopy explanationKey];
  v9 = objc_opt_class();
  objc_storeWeak(&v6[*MEMORY[0x277D3FCB8]], self);
  *&v6[*MEMORY[0x277D3FC90]] = 3;
  *&v6[*MEMORY[0x277D3FCA8]] = 0;
  [v6 setProperty:titleKey forKey:*MEMORY[0x277D40170]];
  [v6 setProperty:v9 forKey:*MEMORY[0x277D3FE58]];
  [v6 setButtonAction:sel_setSelectedIntelligentCallScreeningOption_];
  v10 = NSStringFromSelector(sel_setSelectedIntelligentCallScreeningOption_);
  [v6 setProperty:v10 forKey:*MEMORY[0x277D3FE10]];

  v11 = NSStringFromSelector(0);
  [v6 setProperty:v11 forKey:*MEMORY[0x277D3FF98]];

  [v6 setProperty:explanationKey forKey:*MEMORY[0x277D40160]];
  optionID = [optionCopy optionID];

  [v6 setProperty:optionID forKey:*MEMORY[0x277D3FFB8]];

  return v6;
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
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));

  return WeakRetained;
}

- (void)refreshView:(id)view
{
  v23 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (!viewCopy)
  {
    viewCopy = [(IntelligentCallScreeningSettingsBundleController *)self getCurrentlySelectedIntelligentCallScreeningSpecifier];
  }

  [viewCopy setProperty:MEMORY[0x277CBEC38] forKey:@"specifier-checked"];
  parentListController = [(IntelligentCallScreeningSettingsBundleController *)self parentListController];
  [parentListController reloadSpecifier:viewCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v6 = self->_specifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (([v12 isEqualToSpecifier:viewCopy] & 1) == 0)
        {
          v13 = [v12 propertyForKey:@"specifier-checked"];
          v14 = [v13 isEqual:v10];

          if (v14)
          {
            [v12 setProperty:MEMORY[0x277CBEC28] forKey:@"specifier-checked"];
            parentListController2 = [(IntelligentCallScreeningSettingsBundleController *)selfCopy parentListController];
            [parentListController2 reloadSpecifier:v12];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
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
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:getSelectedIntelligentCallScreeningMenuOptionForPhone];
  v6 = [(NSMutableDictionary *)intelligentCallScreeningOptionToSpecifierMap objectForKey:v5];

  return v6;
}

- (void)setSelectedIntelligentCallScreeningOption:(id)option
{
  optionCopy = option;
  identifier = [optionCopy identifier];
  v6 = [(IntelligentCallScreeningSettingsBundleController *)self isCurrentOption:identifier];

  if (!v6)
  {
    [(IntelligentCallScreeningSettingsBundleController *)self refreshView:optionCopy];
    identifier2 = [optionCopy identifier];
    stringValue = [&unk_284EEBF60 stringValue];
    if ([identifier2 isEqualToString:stringValue])
    {
      getCallScreeningEnabled = [(IntelligentCallScreeningSettingsBundleController *)self getCallScreeningEnabled];

      if (getCallScreeningEnabled)
      {
LABEL_9:
        v11 = dispatch_get_global_queue(33, 0);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __94__IntelligentCallScreeningSettingsBundleController_setSelectedIntelligentCallScreeningOption___block_invoke;
        v12[3] = &unk_278BB3588;
        v13 = optionCopy;
        selfCopy = self;
        dispatch_async(v11, v12);

        goto LABEL_10;
      }

      v10 = PHDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C144000, v10, OS_LOG_TYPE_DEFAULT, "Turning on Live Voicemail due to Receptionist turning on", buf, 2u);
      }

      [(IntelligentCallScreeningSettingsBundleController *)self setCallScreeningEnabled:1];
      identifier2 = [MEMORY[0x277CCAB98] defaultCenter];
      [identifier2 postNotificationName:@"TUCallScreeningSettingsChangedNotification" object:0];
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __94__IntelligentCallScreeningSettingsBundleController_setSelectedIntelligentCallScreeningOption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 integerValue];

  v4 = [*(a1 + 40) configurationProvider];
  [v4 setSelectedIntelligentCallScreeningMenuOptionForPhone:v3];
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