@interface ASFAvailableSuggestionAppsController
+ (id)sharedController;
- (ASFAvailableSuggestionAppsController)init;
- (ASFAvailableSuggestionAppsController)initWithApplicationSupplier:(id)supplier;
- (id)_allVisibleAppBundleIds;
- (id)visibleApps;
- (id)visibleBundleIds;
- (uint64_t)_allVisibleAppBundleIds;
@end

@implementation ASFAvailableSuggestionAppsController

+ (id)sharedController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "+[ASFAvailableSuggestionAppsController sharedController]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ASFAvailableSuggestionAppsController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v4 = sharedController_sharedController;
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __56__ASFAvailableSuggestionAppsController_sharedController__block_invoke(uint64_t a1)
{
  sharedController_sharedController = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (ASFAvailableSuggestionAppsController)init
{
  v3 = objc_alloc_init(ASFApplicationSupplier);
  v4 = [(ASFAvailableSuggestionAppsController *)self initWithApplicationSupplier:v3];

  return v4;
}

- (ASFAvailableSuggestionAppsController)initWithApplicationSupplier:(id)supplier
{
  supplierCopy = supplier;
  v9.receiver = self;
  v9.super_class = ASFAvailableSuggestionAppsController;
  v6 = [(ASFAvailableSuggestionAppsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationSupplier, supplier);
  }

  return v7;
}

- (id)visibleApps
{
  v18 = *MEMORY[0x277D85DE8];
  visibleBundleIds = [(ASFAvailableSuggestionAppsController *)self visibleBundleIds];
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = visibleBundleIds;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(ASFApplicationSupplier *)self->_applicationSupplier applicationForBundleId:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)visibleBundleIds
{
  _allVisibleAppBundleIds = [(ASFAvailableSuggestionAppsController *)self _allVisibleAppBundleIds];
  v3 = [_allVisibleAppBundleIds mutableCopy];
  [v3 addObject:@"com.apple.iCloudDriveApp"];

  return v3;
}

- (id)_allVisibleAppBundleIds
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
  v10 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
  if (!getSBSCopyDisplayIdentifiersSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke;
    v6[3] = &unk_278CD0368;
    v6[4] = &v7;
    __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    _allVisibleAppBundleIds = [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(_allVisibleAppBundleIds);
  }

  v3 = v2();

  return v3;
}

- (uint64_t)_allVisibleAppBundleIds
{
  dlerror();
  v0 = abort_report_np();
  return +[(ASFAssistantMetrics *)v0];
}

@end