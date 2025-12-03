@interface PHSettingsRootListController
- (BOOL)shouldShowSpecifier:(id)specifier;
- (BOOL)showVoicemailPassword;
- (PHSettingsRootListController)init;
- (id)specifiers;
- (void)addBlocklistSpecifiers:(id)specifiers;
- (void)changeVoicemailPassword:(id)password;
- (void)emitNavigationEvent;
- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)specifiers;
- (void)telephonyController:(id)controller didChangeSubscriptions:(id)subscriptions;
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
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v8 bundleURL];
  v10 = [v6 initWithKey:@"Apps" table:0 locale:currentLocale bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(PHSettingsRootListController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilephone" title:v5 localizedNavigationComponents:v11 deepLink:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&selfCopy->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    systemSettingsSpecifierProvider = [(PHSettingsRootListController *)selfCopy systemSettingsSpecifierProvider];
    specifiers = [systemSettingsSpecifierProvider specifiers];

    if (specifiers)
    {
      systemSettingsSpecifierProvider2 = [(PHSettingsRootListController *)selfCopy systemSettingsSpecifierProvider];
      [systemSettingsSpecifierProvider2 setDelegate:selfCopy];

      [v5 addObjectsFromArray:specifiers];
    }

    [(PHSettingsRootListController *)selfCopy loadSpecifiersFromPlistName:@"Phone" target:selfCopy];
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
          if ([(PHSettingsRootListController *)selfCopy shouldShowSpecifier:v12])
          {
            [v5 addObject:v12];
          }

          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:@"CLASSIFICATION_AND_REPORTING"];

          if (v14)
          {
            [(PHSettingsRootListController *)selfCopy addBlocklistSpecifiers:v5];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v15 = [v5 copy];
    v16 = *(&selfCopy->super.super.super.super.super.isa + v3);
    *(&selfCopy->super.super.super.super.super.isa + v3) = v15;

    v17 = TUResolvedPhoneString();
    [(PHSettingsRootListController *)selfCopy setTitle:v17];

    v4 = *(&selfCopy->super.super.super.super.super.isa + v3);
  }

  v18 = v4;
  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)specifiers
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23C144000, v4, OS_LOG_TYPE_DEFAULT, "PHONE SETTINGS > DEFAULT APP: Calling systemSettingsSpecifiersProviderDidReloadSpecifiers", v5, 2u);
  }

  [(PHSettingsRootListController *)self reloadSpecifiers];
}

- (void)changeVoicemailPassword:(id)password
{
  v4 = [VMPasscodeChangeViewController alloc];
  voicemailManager = [(PHSettingsRootListController *)self voicemailManager];
  v6 = [(VMNavigationController *)v4 initWithManager:voicemailManager];

  [(PHSettingsRootListController *)self presentViewController:v6 animated:1 completion:0];
}

- (BOOL)showVoicemailPassword
{
  v22 = *MEMORY[0x277D85DE8];
  voicemailManager = [(PHSettingsRootListController *)self voicemailManager];
  accounts = [voicemailManager accounts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = accounts;
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
          voicemailManager2 = [(PHSettingsRootListController *)self voicemailManager];
          uUID = [v10 UUID];
          v13 = [voicemailManager2 isPasscodeChangeSupportedForAccountUUID:uUID];

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

- (void)telephonyController:(id)controller didChangeSubscriptions:(id)subscriptions
{
  v15 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    subscriptions = [(PHSettingsRootListController *)self subscriptions];
    *buf = 138412546;
    v12 = subscriptions;
    v13 = 2112;
    v14 = subscriptionsCopy;
    _os_log_impl(&dword_23C144000, v6, OS_LOG_TYPE_DEFAULT, "Changing telephony subscriptions from\n %@ to\n %@.", buf, 0x16u);
  }

  [(PHSettingsRootListController *)self setSubscriptions:subscriptionsCopy];
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

- (void)addBlocklistSpecifiers:(id)specifiers
{
  v4 = MEMORY[0x277D3FAD8];
  specifiersCopy = specifiers;
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
  [specifiersCopy addObject:v11];
  [specifiersCopy addObject:v9];
}

- (BOOL)shouldShowSpecifier:(id)specifier
{
  v4 = 1;
  v14 = 1;
  v5 = [specifier propertyForKey:@"shouldShowSelector"];
  if ([(NSString *)v5 length])
  {
    v6 = NSSelectorFromString(v5);
    if (v6)
    {
      v7 = v6;
      if (objc_opt_respondsToSelector())
      {
        selfCopy = self;
        if (selfCopy)
        {
          v9 = selfCopy;
          v10 = MEMORY[0x277CBEAE8];
          v11 = [(PHSettingsRootListController *)selfCopy methodSignatureForSelector:v7];
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