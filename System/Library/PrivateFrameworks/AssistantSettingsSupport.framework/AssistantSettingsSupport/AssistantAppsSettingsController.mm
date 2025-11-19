@interface AssistantAppsSettingsController
+ (id)bundle;
- (id)specifiers;
- (void)specifiers;
- (void)viewDidLoad;
@end

@implementation AssistantAppsSettingsController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle_4;
  if (!bundle_sAssistantBundle_4)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle_4;
    bundle_sAssistantBundle_4 = v3;

    v2 = bundle_sAssistantBundle_4;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AssistantAppsSettingsController;
  [(AssistantAppsSettingsController *)&v5 viewDidLoad];
  v3 = [objc_opt_class() bundle];
  v4 = [v3 localizedStringForKey:@"APPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  [(AssistantAppsSettingsController *)self setTitle:v4];
}

- (id)specifiers
{
  v53 = *MEMORY[0x277D85DE8];
  v35 = self;
  if (!self->_disabledSpotlightBundles)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v2 = getSPGetDisabledBundleSetSymbolLoc_ptr;
    v50 = getSPGetDisabledBundleSetSymbolLoc_ptr;
    if (!getSPGetDisabledBundleSetSymbolLoc_ptr)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getSPGetDisabledBundleSetSymbolLoc_block_invoke;
      v45 = &unk_278CD1658;
      v46 = &v47;
      v3 = SearchLibrary();
      v48[3] = dlsym(v3, "SPGetDisabledBundleSet");
      getSPGetDisabledBundleSetSymbolLoc_ptr = *(v46[1] + 24);
      v2 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v2)
    {
      [AssistantAppsSettingsController specifiers];
    }

    v4 = v2(1);
    disabledSpotlightBundles = v35->_disabledSpotlightBundles;
    v35->_disabledSpotlightBundles = v4;

    self = v35;
  }

  if (!self->_disabledSpotlightDomains)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v6 = getSPGetDisabledDomainSetSymbolLoc_ptr;
    v50 = getSPGetDisabledDomainSetSymbolLoc_ptr;
    if (!getSPGetDisabledDomainSetSymbolLoc_ptr)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getSPGetDisabledDomainSetSymbolLoc_block_invoke;
      v45 = &unk_278CD1658;
      v46 = &v47;
      v7 = SearchLibrary();
      v48[3] = dlsym(v7, "SPGetDisabledDomainSet");
      getSPGetDisabledDomainSetSymbolLoc_ptr = *(v46[1] + 24);
      v6 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v6)
    {
      [AssistantAppsSettingsController specifiers];
    }

    v8 = v6(1);
    disabledSpotlightDomains = v35->_disabledSpotlightDomains;
    v35->_disabledSpotlightDomains = v8;

    self = v35;
  }

  availableSuggestionAppsController = self->_availableSuggestionAppsController;
  if (!availableSuggestionAppsController)
  {
    v11 = [MEMORY[0x277CEF600] sharedController];
    v12 = v35->_availableSuggestionAppsController;
    v35->_availableSuggestionAppsController = v11;

    availableSuggestionAppsController = v35->_availableSuggestionAppsController;
  }

  v34 = [(ASFAvailableSuggestionAppsController *)availableSuggestionAppsController visibleBundleIds];
  if (![(NSSet *)v35->_appSettingsBundleIDs isEqual:v34])
  {
    objc_storeStrong(&v35->_appSettingsBundleIDs, v34);
    v13 = [v34 mutableCopy];
    v37 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v14)
    {
      v15 = *v39;
      v16 = *MEMORY[0x277D3FF08];
      v17 = *MEMORY[0x277D3FF38];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v19];
          v21 = PSApplicationSpecifierForAssistantSection();
          if (v21)
          {
            [v21 setProperty:objc_opt_class() forKey:v16];
            [v21 setIdentifier:v19];
            [v21 setDetailControllerClass:objc_opt_class()];
            [v21 setProperty:MEMORY[0x277CBEC38] forKey:v17];
            [v37 addObject:v21];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v14);
    }

    v22 = [MEMORY[0x277CBEA60] arrayWithArray:v37];
    allAppsSpecifiers = v35->_allAppsSpecifiers;
    v35->_allAppsSpecifiers = v22;
  }

  v24 = [(NSArray *)v35->_allAppsSpecifiers sortedArrayUsingComparator:&__block_literal_global_8];
  v25 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
  v51 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v27 = [v26 arrayByAddingObjectsFromArray:v24];
  v28 = *MEMORY[0x277D3FC48];
  v29 = *(&v35->super.super.super.super.super.isa + v28);
  *(&v35->super.super.super.super.super.isa + v28) = v27;

  v30 = *(&v35->super.super.super.super.super.isa + v28);
  v31 = v30;

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t __45__AssistantAppsSettingsController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)specifiers
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSMutableSet *PSSPGetDisabledBundleSet(BOOL)"];
  [v0 handleFailureInFunction:v1 file:@"AssistantAppsSettingsController.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

@end