@interface PHSettingsRootListController
- (BOOL)shouldShowSpecifier:(id)a3;
- (BOOL)showVoicemailPassword;
- (PHSettingsRootListController)init;
- (id)specifiers;
- (void)addBlocklistSpecifiers:(id)a3;
- (void)changeVoicemailPassword:(id)a3;
- (void)emitNavigationEvent;
- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)a3;
- (void)telephonyController:(id)a3 didChangeSubscriptions:(id)a4;
@end

@implementation PHSettingsRootListController

- (PHSettingsRootListController)init
{
  v20.receiver = self;
  v20.super_class = PHSettingsRootListController;
  v2 = [(PHSettingsRootListController *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.calls.queue.%@.%p", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_alloc_init(MEMORY[0x277D6ED50]);
    telephonyController = v2->_telephonyController;
    v2->_telephonyController = v8;

    v10 = objc_alloc_init(MEMORY[0x277D79778]);
    voicemailManager = v2->_voicemailManager;
    v2->_voicemailManager = v10;

    v12 = objc_alloc(MEMORY[0x277CEC670]);
    v13 = [v12 initWithApplicationBundleIdentifier:*MEMORY[0x277D6EF90]];
    systemSettingsSpecifierProvider = v2->_systemSettingsSpecifierProvider;
    v2->_systemSettingsSpecifierProvider = v13;

    objc_initWeak(&location, v2);
    v15 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PHSettingsRootListController_init__block_invoke;
    block[3] = &unk_278BB35D0;
    objc_copyWeak(&v18, &location);
    dispatch_async(v15, block);
    [(TPSTelephonyController *)v2->_telephonyController addDelegate:v2 queue:v2->_queue];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __36__PHSettingsRootListController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained telephonyController];
    v3 = [v2 subscriptions];
    [v4 setSubscriptions:v3];

    WeakRetained = v4;
  }
}

- (void)emitNavigationEvent
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/", @"com.apple.mobilephone"];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v5 = TUResolvedPhoneResource();
  v6 = objc_alloc(MEMORY[0x277CCAEB8]);
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 bundleURL];
  v10 = [v6 initWithKey:@"Apps" table:0 locale:v7 bundleURL:v9];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(PHSettingsRootListController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilephone" title:v5 localizedNavigationComponents:v11 deepLink:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&v2->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(PHSettingsRootListController *)v2 systemSettingsSpecifierProvider];
    v21 = [v6 specifiers];

    if (v21)
    {
      v7 = [(PHSettingsRootListController *)v2 systemSettingsSpecifierProvider];
      [v7 setDelegate:v2];

      [v5 addObjectsFromArray:v21];
    }

    [(PHSettingsRootListController *)v2 loadSpecifiersFromPlistName:@"Phone" target:v2];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v8 = v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([(PHSettingsRootListController *)v2 shouldShowSpecifier:v12])
          {
            [v5 addObject:v12];
          }

          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:@"CLASSIFICATION_AND_REPORTING"];

          if (v14)
          {
            [(PHSettingsRootListController *)v2 addBlocklistSpecifiers:v5];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v15 = [v5 copy];
    v16 = *(&v2->super.super.super.super.super.isa + v3);
    *(&v2->super.super.super.super.super.isa + v3) = v15;

    v17 = TUResolvedPhoneString();
    [(PHSettingsRootListController *)v2 setTitle:v17];

    v4 = *(&v2->super.super.super.super.super.isa + v3);
  }

  v18 = v4;
  objc_sync_exit(v2);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23C144000, v4, OS_LOG_TYPE_DEFAULT, "PHONE SETTINGS > DEFAULT APP: Calling systemSettingsSpecifiersProviderDidReloadSpecifiers", v5, 2u);
  }

  [(PHSettingsRootListController *)self reloadSpecifiers];
}

- (void)changeVoicemailPassword:(id)a3
{
  v4 = [VMPasscodeChangeViewController alloc];
  v5 = [(PHSettingsRootListController *)self voicemailManager];
  v6 = [(VMNavigationController *)v4 initWithManager:v5];

  [(PHSettingsRootListController *)self presentViewController:v6 animated:1 completion:0];
}

- (BOOL)showVoicemailPassword
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PHSettingsRootListController *)self voicemailManager];
  v4 = [v3 accounts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isProvisioned])
        {
          v11 = [(PHSettingsRootListController *)self voicemailManager];
          v12 = [v10 UUID];
          v13 = [v11 isPasscodeChangeSupportedForAccountUUID:v12];

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)telephonyController:(id)a3 didChangeSubscriptions:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PHSettingsRootListController *)self subscriptions];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_23C144000, v6, OS_LOG_TYPE_DEFAULT, "Changing telephony subscriptions from\n %@ to\n %@.", buf, 0x16u);
  }

  [(PHSettingsRootListController *)self setSubscriptions:v5];
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PHSettingsRootListController_telephonyController_didChangeSubscriptions___block_invoke;
  block[3] = &unk_278BB35D0;
  objc_copyWeak(&v10, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __75__PHSettingsRootListController_telephonyController_didChangeSubscriptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained popRecursivelyToRootController];
    WeakRetained = v2;
  }
}

- (void)addBlocklistSpecifiers:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v11 = [v4 groupSpecifierWithID:&stru_284EEA450 name:&stru_284EEA450];
  v6 = MEMORY[0x277D3FAD8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BLOCKED_CONTACTS" value:&stru_284EEA450 table:@"Phone"];
  v9 = [v6 preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:2 edit:0];

  v10 = PSBundlePathForPreferenceBundle();
  [v9 setProperty:v10 forKey:*MEMORY[0x277D40000]];

  [v9 setProperty:@"PHBlocklistSettingsListController" forKey:*MEMORY[0x277D3FF08]];
  [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE00]];
  [v9 setControllerLoadAction:sel_lazyLoadBundle_];
  [v5 addObject:v11];
  [v5 addObject:v9];
}

- (BOOL)shouldShowSpecifier:(id)a3
{
  v4 = 1;
  v14 = 1;
  v5 = [a3 propertyForKey:@"shouldShowSelector"];
  if ([(NSString *)v5 length])
  {
    v6 = NSSelectorFromString(v5);
    if (v6)
    {
      v7 = v6;
      if (objc_opt_respondsToSelector())
      {
        v8 = self;
        if (v8)
        {
          v9 = v8;
          v10 = MEMORY[0x277CBEAE8];
          v11 = [(PHSettingsRootListController *)v8 methodSignatureForSelector:v7];
          v12 = [v10 invocationWithMethodSignature:v11];

          [v12 setTarget:v9];
          [v12 setSelector:v7];
          [v12 invoke];
          [v12 getReturnValue:&v14];
        }
      }

      v4 = v14;
    }
  }

  return v4 & 1;
}

@end