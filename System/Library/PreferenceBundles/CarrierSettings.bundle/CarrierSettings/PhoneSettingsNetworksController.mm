@interface PhoneSettingsNetworksController
- (BOOL)_isInAutomaticMode;
- (BOOL)_isInManualMode;
- (PSSpecifier)automaticSpecifier;
- (PSSpecifier)networksGroupSpecifier;
- (PSSpecifier)searchingSpecifier;
- (PSSpecifier)titleSpecifier;
- (PhoneSettingsNetworksController)init;
- (id)descriptionDictionary;
- (id)getAutomaticSwitchStateForSpecifier:(id)a3;
- (int)_currentNetworkSelectionState;
- (void)_autoSwitchTurnedOn;
- (void)_handleNetworkFetcherErrorNotification:(id)a3;
- (void)_handleNetworkFetcherStateChangedNotification:(id)a3;
- (void)_handleNetworkSettingsDisabledNotification:(id)a3;
- (void)_handleNetworksChangedNotification:(id)a3;
- (void)_handleRadioOffErrorNotification:(id)a3;
- (void)_handleSimChangedNotification:(id)a3;
- (void)_registerEventListeners;
- (void)_settingsResumed;
- (void)_updateCachedMobileIdentity;
- (void)dealloc;
- (void)listItemSelected:(id)a3;
- (void)setAutomaticSwitchState:(id)a3 forSpecifier:(id)a4;
- (void)setShowNetworkList:(BOOL)a3;
- (void)updateNetworkListSpecifierStates;
- (void)updateNetworkListSpecifiers;
- (void)viewDidLoad;
@end

@implementation PhoneSettingsNetworksController

- (PhoneSettingsNetworksController)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PhoneSettingsNetworksController;
  v2 = [(PhoneSettingsNetworksController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(PhoneSettingsTelephony);
    telephonySettings = v2->_telephonySettings;
    v2->_telephonySettings = v3;

    [(PhoneSettingsNetworksController *)v2 _registerEventListeners];
    v5 = objc_alloc_init(PHNetworkFetcher);
    fetcher = v2->_fetcher;
    v2->_fetcher = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    networksSpecifiersArray = v2->_networksSpecifiersArray;
    v2->_networksSpecifiersArray = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [(PhoneSettingsNetworksController *)v2 titleSpecifier];
    [v9 addObject:v10];

    v11 = [(PhoneSettingsNetworksController *)v2 automaticSpecifier];
    [v9 addObject:v11];

    v12 = *MEMORY[0x277D3FC48];
    v13 = *(&v2->super.super.super.super.super.super.isa + v12);
    *(&v2->super.super.super.super.super.super.isa + v12) = v9;

    [(PhoneSettingsNetworksController *)v2 _updateCachedMobileIdentity];
    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(PhoneSettingsNetworksController *)v2 descriptionDictionary];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_23C12D000, v14, OS_LOG_TYPE_DEFAULT, "Initializing Phone Settings Network Controller: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PhoneSettingsNetworksController;
  [(PSListItemsController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PhoneSettingsNetworksController;
  [(PSListItemsController *)&v6 viewDidLoad];
  v3 = [(PhoneSettingsNetworksController *)self navigationItem];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Network Selection" value:&stru_284EE7748 table:@"Carrier"];
  [v3 setTitle:v5];
}

- (void)listItemSelected:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "IndexPath selected: %@", &v18, 0xCu);
  }

  if ([v4 section] == 1)
  {
    v6 = [v4 row];
    v7 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
    v8 = [(PhoneSettingsNetworksController *)self containsSpecifier:v7];

    v9 = v6 - v8;
    if (v9 < 0 || (-[PhoneSettingsNetworksController fetcher](self, "fetcher"), v10 = objc_claimAutoreleasedReturnValue(), [v10 networks], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9 >= v12))
    {
      v15 = PHDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(PhoneSettingsNetworksController *)v9 listItemSelected:v15];
      }
    }

    else
    {
      v13 = [(PhoneSettingsNetworksController *)self fetcher];
      v14 = [v13 networks];
      v15 = [v14 objectAtIndex:v9];

      v16 = [(PhoneSettingsNetworksController *)self fetcher];
      [v16 selectNetwork:v15];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleRadioOffErrorNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = [(PhoneSettingsNetworksController *)self descriptionDictionary];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v9, 0x16u);
  }

  [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSimChangedNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = [(PhoneSettingsNetworksController *)self descriptionDictionary];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v11, 0x16u);
  }

  v8 = [(PhoneSettingsNetworksController *)self telephonySettings];
  v9 = [v8 simIsPresent];

  if ((v9 & 1) == 0)
  {
    [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleNetworkSettingsDisabledNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = [(PhoneSettingsNetworksController *)self descriptionDictionary];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v9, 0x16u);
  }

  [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleNetworksChangedNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  [(PhoneSettingsNetworksController *)self updateNetworkListSpecifiers];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleNetworkFetcherStateChangedNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v15, 0xCu);
  }

  v7 = [(PhoneSettingsNetworksController *)self fetcher];
  if ([v7 state] == 1)
  {
    v8 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
    v9 = [(PhoneSettingsNetworksController *)self containsSpecifier:v8];

    if (v9)
    {
      v10 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
      [(PhoneSettingsNetworksController *)self removeSpecifier:v10 animated:1];
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = [(PhoneSettingsNetworksController *)self fetcher];
  if ([v10 state] != 2 || !-[PhoneSettingsNetworksController showNetworkList](self, "showNetworkList"))
  {
    goto LABEL_11;
  }

  v11 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
  v12 = [(PhoneSettingsNetworksController *)self containsSpecifier:v11];

  if ((v12 & 1) == 0)
  {
    v10 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
    v13 = [(PhoneSettingsNetworksController *)self networksGroupSpecifier];
    [(PhoneSettingsNetworksController *)self insertSpecifier:v10 afterSpecifier:v13];

    goto LABEL_11;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_autoSwitchTurnedOn
{
  if (![(PhoneSettingsNetworksController *)self _isInAutomaticMode])
  {
    v3 = [(PhoneSettingsNetworksController *)self telephonySettings];
    [v3 enableAutomaticNetworkSelection];
  }

  [(PhoneSettingsNetworksController *)self setShowNetworkList:0];
}

- (void)setShowNetworkList:(BOOL)a3
{
  if (self->_showNetworkList != a3)
  {
    v3 = a3;
    if (a3)
    {
      v5 = [(PhoneSettingsNetworksController *)self fetcher];
      [v5 fetchNetworkList];
    }

    [(PhoneSettingsNetworksController *)self updateNetworkListSpecifiers];
    [(PhoneSettingsNetworksController *)self updateNetworkListSpecifierStates];
    v12 = [MEMORY[0x277CBEB18] array];
    v6 = [(PhoneSettingsNetworksController *)self networksGroupSpecifier];
    [v12 addObject:v6];

    v7 = [(PhoneSettingsNetworksController *)self fetcher];
    v8 = [v7 state];

    if (v8 == 2)
    {
      v9 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
      [v12 addObject:v9];

      v10 = [(PSSpecifier *)self->_searchingSpecifier propertyForKey:*MEMORY[0x277D40148]];
      [v10 setLoading:1];
    }

    v11 = [(PhoneSettingsNetworksController *)self networksSpecifiersArray];
    [v12 addObjectsFromArray:v11];

    if (v3)
    {
      [(PhoneSettingsNetworksController *)self addSpecifiersFromArray:v12 animated:1];
    }

    else
    {
      [(PhoneSettingsNetworksController *)self removeContiguousSpecifiers:v12 animated:1];
    }

    self->_showNetworkList = v3;
  }
}

- (void)updateNetworkListSpecifiers
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = self;
  v4 = [(PhoneSettingsNetworksController *)self fetcher];
  v5 = [v4 networks];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x277D3FE58];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = MEMORY[0x277D3FAD8];
        v12 = [*(*(&v20 + 1) + 8 * i) displayName];
        v13 = [v11 preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

        [v13 setProperty:objc_opt_class() forKey:v9];
        [v3 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = PHDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&dword_23C12D000, v14, OS_LOG_TYPE_DEFAULT, "Updating Carrier Specifiers with list: %@", buf, 0xCu);
  }

  if ([(PhoneSettingsNetworksController *)v19 showNetworkList])
  {
    v15 = [(PhoneSettingsNetworksController *)v19 networksSpecifiersArray];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(PhoneSettingsNetworksController *)v19 networksSpecifiersArray];
      [(PhoneSettingsNetworksController *)v19 replaceContiguousSpecifiers:v17 withSpecifiers:v3];
    }

    else
    {
      [(PhoneSettingsNetworksController *)v19 addSpecifiersFromArray:v3 animated:1];
    }
  }

  [(PhoneSettingsNetworksController *)v19 setNetworksSpecifiersArray:v3];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateNetworkListSpecifierStates
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Updating list specifier states", buf, 2u);
  }

  v4 = [(PhoneSettingsNetworksController *)self fetcher];
  v5 = [v4 networks];
  v6 = [v5 count];

  if (v6)
  {
    v8 = 0;
    *&v7 = 138412290;
    v25 = v7;
    v9 = MEMORY[0x277D3FC60];
    do
    {
      v10 = [(PhoneSettingsNetworksController *)self fetcher];
      v11 = [v10 networks];
      v12 = [v11 objectAtIndexedSubscript:v8];

      v13 = PHDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v25;
        v27 = v12;
        _os_log_impl(&dword_23C12D000, v13, OS_LOG_TYPE_DEFAULT, "Updating list specifier for network: %@", buf, 0xCu);
      }

      v14 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
      v15 = [(PhoneSettingsNetworksController *)self containsSpecifier:v14];

      v16 = v8 + v15;
      v17 = *(&self->super.super.super.super.super.super.isa + *v9);
      v18 = 1;
      v19 = [MEMORY[0x277CCAA70] indexPathForRow:v16 inSection:1];
      v20 = [v17 cellForRowAtIndexPath:v19];

      if ([v12 state] != 3)
      {
        v18 = [v12 state] == 2;
      }

      [v20 setReallyChecked:v18];

      ++v8;
      v21 = [(PhoneSettingsNetworksController *)self fetcher];
      v22 = [v21 networks];
      v23 = [v22 count];
    }

    while (v23 > v8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleNetworkFetcherErrorNotification:(id)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v4 localizedStringForKey:@"LIST_LOAD_ERROR" value:&stru_284EE7748 table:@"Carrier"];

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v10 preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_284EE7748 table:@"Carrier"];
  v9 = [v6 actionWithTitle:v8 style:0 handler:0];
  [v5 addAction:v9];

  [(PhoneSettingsNetworksController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)descriptionDictionary
{
  v3 = [(PhoneSettingsNetworksController *)self telephonySettings];
  v4 = [v3 manuallySelectedNetworkDictionary];

  v5 = MEMORY[0x277CBEAC0];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"--Nil--";
  }

  v7 = MEMORY[0x277CCABB0];
  v8 = [(PhoneSettingsNetworksController *)self telephonySettings];
  v9 = [v7 numberWithInt:{objc_msgSend(v8, "networkSelectionMode")}];
  v10 = *MEMORY[0x277CBECE8];
  v11 = CTRegistrationCopyLocalizedOperatorName();
  v12 = [v5 dictionaryWithObjectsAndKeys:{v6, @"ManuallySelectedNetworkDictionary", v9, @"NetworkSelectionMode", v11, @"CTRegistrationCopyLocalizedOperatorName", CTRegistrationGetStatus(), @"CTRegistrationGetStatus", 0}];
  v13 = [v5 dictionaryWithObject:v12 forKey:@"PhoneSettingsNetworkState"];

  return v13;
}

- (void)_registerEventListeners
{
  [(PhoneSettingsTelephony *)self->_telephonySettings startWatching];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleRadioOffErrorNotification_ name:@"SettingsTelephonyRadioModuleOffErrorNotification" object:self->_telephonySettings];
  [v3 addObserver:self selector:sel__handleSimChangedNotification_ name:@"SettingsTelephonySIMRemoved" object:self->_telephonySettings];
  [v3 addObserver:self selector:sel__handleNetworkSettingsDisabledNotification_ name:@"SettingsTelephonyNetworkSettingsDisabledNotification" object:self->_telephonySettings];
  [v3 addObserver:self selector:sel__handleNetworksChangedNotification_ name:@"PHNetworkFetcherNetworksChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleNetworkFetcherStateChangedNotification_ name:@"PHNetworkFetcherStateChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleNetworkFetcherNetworkSelectionStateChangedNotification_ name:@"PHNetworkFetcherNetworkSelectionChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleNetworkFetcherErrorNotification_ name:@"PHNetworkFetcherErrorNotification" object:0];
  [v3 addObserver:self selector:sel__settingsResumed name:*MEMORY[0x277D76758] object:0];
}

- (void)setAutomaticSwitchState:(id)a3 forSpecifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PhoneSettingsNetworksController *)self automaticSpecifier];

  if (v8 == v7)
  {
    v9 = [v6 BOOLValue];
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (v9)
      {
        v11 = @"YES";
      }

      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "Setting automatic switch to %@", &v13, 0xCu);
    }

    if (v9)
    {
      [(PhoneSettingsNetworksController *)self _autoSwitchTurnedOn];
    }

    else
    {
      [(PhoneSettingsNetworksController *)self _autoSwitchTurnedOff];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)getAutomaticSwitchStateForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PhoneSettingsNetworksController *)self automaticSpecifier];

  v6 = v5 == v4 && [(PhoneSettingsNetworksController *)self _isInAutomaticMode];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (BOOL)_isInAutomaticMode
{
  v2 = [(PhoneSettingsNetworksController *)self telephonySettings];
  v3 = [v2 networkSelectionMode];

  return v3 == 0;
}

- (BOOL)_isInManualMode
{
  v2 = [(PhoneSettingsNetworksController *)self telephonySettings];
  v3 = [v2 networkSelectionMode];

  return v3 == 1;
}

- (int)_currentNetworkSelectionState
{
  v2 = [(PhoneSettingsNetworksController *)self telephonySettings];
  v3 = [v2 currentNetworkSelectionState];

  return v3;
}

- (void)_settingsResumed
{
  v4 = [(NSString *)self->_cachedMobileIdentity copy];
  v3 = [(PhoneSettingsNetworksController *)self _updateCachedMobileIdentity];
  if (v4)
  {
    v3 = [v4 isEqualToString:self->_cachedMobileIdentity];
    if ((v3 & 1) == 0)
    {
      v3 = [(PhoneSettingsNetworksController *)self isViewLoaded];
      if (v3)
      {
        v3 = [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
      }
    }
  }

  MEMORY[0x2821F96F8](v3);
}

- (void)_updateCachedMobileIdentity
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = _CTServerConnectionCreate();
  cachedMobileIdentity = self->_cachedMobileIdentity;
  self->_cachedMobileIdentity = 0;

  if (v4)
  {
    _CTServerConnectionCopyMobileEquipmentInfo();
    CFRelease(v4);
  }
}

- (PSSpecifier)titleSpecifier
{
  titleSpecifier = self->_titleSpecifier;
  if (!titleSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CARRIER_LIST_TITLE" value:&stru_284EE7748 table:@"Carrier"];
    v7 = [v4 groupSpecifierWithName:v6];
    v8 = self->_titleSpecifier;
    self->_titleSpecifier = v7;

    [(PSSpecifier *)self->_titleSpecifier setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    titleSpecifier = self->_titleSpecifier;
  }

  return titleSpecifier;
}

- (PSSpecifier)automaticSpecifier
{
  automaticSpecifier = self->_automaticSpecifier;
  if (!automaticSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Automatic" value:&stru_284EE7748 table:@"Carrier"];
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:sel_setAutomaticSwitchState_forSpecifier_ get:sel_getAutomaticSwitchStateForSpecifier_ detail:0 cell:6 edit:0];
    v8 = self->_automaticSpecifier;
    self->_automaticSpecifier = v7;

    automaticSpecifier = self->_automaticSpecifier;
  }

  return automaticSpecifier;
}

- (PSSpecifier)searchingSpecifier
{
  searchingSpecifier = self->_searchingSpecifier;
  if (!searchingSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SEARCHING" value:&stru_284EE7748 table:@"Carrier"];
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:4 edit:0];
    v8 = self->_searchingSpecifier;
    self->_searchingSpecifier = v7;

    [(PSSpecifier *)self->_searchingSpecifier setProperty:*MEMORY[0x277CBED10] forKey:*MEMORY[0x277D3FF38]];
    [(PSSpecifier *)self->_searchingSpecifier setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    searchingSpecifier = self->_searchingSpecifier;
  }

  return searchingSpecifier;
}

- (PSSpecifier)networksGroupSpecifier
{
  networksGroupSpecifier = self->_networksGroupSpecifier;
  if (!networksGroupSpecifier)
  {
    v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v5 = self->_networksGroupSpecifier;
    self->_networksGroupSpecifier = v4;

    networksGroupSpecifier = self->_networksGroupSpecifier;
  }

  return networksGroupSpecifier;
}

- (void)listItemSelected:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_23C12D000, a2, OS_LOG_TYPE_ERROR, "No network found at index %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end