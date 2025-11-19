@interface IntentsUtilities
+ (BOOL)isIntentsEnabledForAppId:(id)a3;
+ (id)_displayNameForApp:(id)a3;
+ (id)fetchEnabledAppIds;
+ (void)intentsAppsWithCompletion:(id)a3;
+ (void)setAccess:(BOOL)a3 appID:(id)a4;
@end

@implementation IntentsUtilities

+ (void)intentsAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = MEMORY[0x277CCA9C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__IntentsUtilities_intentsAppsWithCompletion___block_invoke;
  v9[3] = &unk_278CD1F08;
  v10 = v5;
  v11 = v4;
  v12 = a1;
  v7 = v5;
  v8 = v4;
  [v6 _intents_findSiriEntitledAppsContainingAnIntentsExtensionWithCompletion:v9];
}

void __46__IntentsUtilities_intentsAppsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = [a3 localizedDescription];
    NSLog(&cfstr_ErrorLoadingIn.isa, v6);

    v7 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_7];
    v9 = [v5 filteredArrayUsingPredicate:v8];

    if ([v9 count])
    {
      v25 = v5;
      v10 = [*(a1 + 48) fetchEnabledAppIds];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 applicationIdentifier];
            v18 = [IntentsApp alloc];
            v19 = [*(a1 + 48) _displayNameForApp:v16];
            v20 = -[IntentsApp initWithAppId:displayName:accessGranted:](v18, "initWithAppId:displayName:accessGranted:", v17, v19, [v10 containsObject:v17]);

            [*(a1 + 32) addObject:v20];
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }

      v21 = *(a1 + 40);
      if (v21)
      {
        v22 = [*(a1 + 32) sortedArrayUsingSelector:sel_compareWithIntentsApp_];
        (*(v21 + 16))(v21, v22);
      }

      v5 = v25;
    }

    else
    {
      v23 = *(a1 + 32);
      (*(*(a1 + 40) + 16))();
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __46__IntentsUtilities_intentsAppsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 applicationType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CC1E30]];

  return v3 ^ 1u;
}

+ (id)fetchEnabledAppIds
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "+[IntentsUtilities fetchEnabledAppIds]";
    _os_log_impl(&dword_2413B9000, v2, OS_LOG_TYPE_DEFAULT, "%s Fetching enabled app TCC ids", buf, 0xCu);
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v4 = *MEMORY[0x277D6C210];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = TCCAccessCopyInformation();
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = MEMORY[0x277D6C0C8];
    v10 = MEMORY[0x277D6C0D0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 objectForKey:{*v9, v18}];
        v14 = [v12 objectForKey:*v10];
        if ([v14 BOOLValue])
        {
          v15 = CFBundleGetIdentifier(v13);
          [v3 addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)isIntentsEnabledForAppId:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"com.apple.Home", @"com.apple.MobileSMS", 0}];
  v5 = +[IntentsUtilities fetchEnabledAppIds];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 containsObject:v3];
    v10 = @"disabled";
    v15 = "+[IntentsUtilities isIntentsEnabledForAppId:]";
    *buf = 136315650;
    v16 = 2112;
    if (v9)
    {
      v10 = @"enabled";
    }

    v17 = v10;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_2413B9000, v8, OS_LOG_TYPE_DEFAULT, "%s Intent is %@ for app id: %@", buf, 0x20u);
  }

  v11 = [v6 containsObject:v3];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)setAccess:(BOOL)a3 appID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:v4];
  v6 = CFBundleCreate(0, [v5 bundleURL]);
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x277D6C210];
    if (TCCAccessSetForBundle())
    {
      notify_post("com.apple.assistant.siri_settings_did_change");
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "+[IntentsUtilities setAccess:appID:]";
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_2413B9000, v9, OS_LOG_TYPE_DEFAULT, "%s Successfully set TCC access for app %@", buf, 0x16u);
      }
    }

    else
    {
      NSLog(&cfstr_FailedToSetTcc.isa, v4);
    }

    CFRelease(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_displayNameForApp:(id)a3
{
  v3 = a3;
  v4 = [v3 localizedNameForContext:0];
  v5 = [v3 bundleIdentifier];

  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(v5);
  if (![v4 length])
  {
    v7 = CFBundleGetInfoDictionary(BundleWithIdentifier);
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBEC40]];

    if (![v8 length])
    {
      v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBED50]];

      if ([v9 length])
      {
        v8 = v9;
      }

      else
      {
        v10 = CFBundleCopyBundleURL(BundleWithIdentifier);
        v11 = [(__CFURL *)v10 lastPathComponent];
        v8 = [v11 stringByDeletingPathExtension];
      }
    }

    v4 = v8;
  }

  return v4;
}

@end