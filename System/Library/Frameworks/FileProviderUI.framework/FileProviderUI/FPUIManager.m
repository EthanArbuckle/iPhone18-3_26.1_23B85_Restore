@interface FPUIManager
+ (BOOL)isAction:(id)a3 eligibleForItems:(id)a4;
+ (id)actionsForProviderDomain:(id)a3;
+ (id)authenticationActionForProviderDomain:(id)a3;
+ (id)extensionMatchingDictionaryForItems:(id)a3 fpProviderDomain:(id)a4;
+ (id)valueForKey:(id)a3 inActionPlist:(id)a4;
+ (void)getExtensionRecordsForUseCase:(unint64_t)a3 uiExtensionRecord:(id *)a4 nonUIExtensionRecord:(id *)a5 forProviderDomain:(id)a6;
@end

@implementation FPUIManager

+ (id)authenticationActionForProviderDomain:(id)a3
{
  v4 = a3;
  v14 = 0;
  [a1 getExtensionRecordsForUseCase:0 uiExtensionRecord:&v14 nonUIExtensionRecord:0 forProviderDomain:v4];
  v5 = v14;
  if (v5)
  {
    v6 = [v5 fpui_entitlementValueForKey:@"com.apple.private.fileproviderui.display-inline" ofClass:objc_opt_class()];
    v7 = [v6 BOOLValue];

    v8 = [v5 bundleIdentifier];
    v9 = [v4 providerID];
    v10 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    LOBYTE(v13) = 0;
    v11 = [FPUIManager createFPUIActionWithIdentifier:&stru_284B1A950 uiActionProviderIdentifier:v8 fileProviderIdentifier:v9 displayName:&stru_284B1A950 predicate:v10 displayInline:v7 isNonUIAction:v13 fpProviderDomain:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)valueForKey:(id)a3 inActionPlist:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging();
      v8 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FPUIManager valueForKey:v5 inActionPlist:v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)actionsForProviderDomain:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v3 = fpuiLogHandle;
  if (!fpuiLogHandle)
  {
    FPUIInitLogging();
    v3 = fpuiLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(FPUIManager *)v46 actionsForProviderDomain:v3];
  }

  v59 = 0;
  v60 = 0;
  [a1 getExtensionRecordsForUseCase:1 uiExtensionRecord:&v60 nonUIExtensionRecord:&v59 forProviderDomain:v46];
  v36 = v60;
  v43 = v59;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = v4;
  if (v36)
  {
    [v4 addObject:v36];
  }

  if (v43)
  {
    [v5 addObject:v43];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v39 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v39)
  {
    v38 = *v56;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v55 + 1) + 8 * i);
        v41 = [v44 fpui_extensionInfoForKey:@"NSExtensionFileProviderActions" ofClass:objc_opt_class()];
        if (v41)
        {
          v6 = [v44 URL];
          bundle = _CFBundleCreateUnique();

          if (bundle)
          {
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v45 = v41;
            v49 = [v45 countByEnumeratingWithState:&v51 objects:v61 count:16];
            if (!v49)
            {
              goto LABEL_55;
            }

            v47 = *v52;
            while (1)
            {
              v7 = 0;
              do
              {
                if (*v52 != v47)
                {
                  objc_enumerationMutation(v45);
                }

                v8 = *(*(&v51 + 1) + 8 * v7);
                v9 = [a1 valueForKey:@"NSExtensionFileProviderActionIdentifier" inActionPlist:v8];
                v10 = [a1 valueForKey:@"NSExtensionFileProviderActionName" inActionPlist:v8];
                v11 = [a1 valueForKey:@"NSExtensionFileProviderActionActivationRule" inActionPlist:v8];
                v12 = CFBundleCopyLocalizedString(bundle, v10, v10, @"Localizable");
                v13 = v12;
                if (v12)
                {
                  v14 = v12;
                }

                else
                {
                  v14 = v10;
                }

                v15 = v14;

                if (v9)
                {
                  v16 = v10 == 0;
                }

                else
                {
                  v16 = 1;
                }

                if (!v16 && v11 != 0)
                {
                  v18 = [MEMORY[0x277CCAC30] predicateWithValue:1];
                  if ([v11 length])
                  {
                    v19 = v11;
                    [v19 rangeOfString:@"%"];
                    if (v20)
                    {
                      goto LABEL_33;
                    }

                    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:v19];
                    if (!v21)
                    {
                      v27 = fpuiLogHandle;
                      if (!fpuiLogHandle)
                      {
                        FPUIInitLogging();
                        v27 = fpuiLogHandle;
                      }

                      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v63 = v19;
                        _os_log_error_impl(&dword_238356000, v27, OS_LOG_TYPE_ERROR, "couldn't get predicate from string: %@", buf, 0xCu);
                      }

LABEL_33:
                      v21 = 0;
                    }
                  }

                  else
                  {
                    v21 = v18;
                  }

                  if (v21)
                  {
                    v22 = [v44 bundleIdentifier];
                    v23 = [v46 providerID];
                    LOBYTE(v35) = v44 == v43;
                    v24 = [FPUIManager createFPUIActionWithIdentifier:v9 uiActionProviderIdentifier:v22 fileProviderIdentifier:v23 displayName:v15 predicate:v21 displayInline:0 isNonUIAction:v35 fpProviderDomain:v46];

                    [v42 addObject:v24];
                    v25 = fpuiLogHandle;
                    if (!fpuiLogHandle)
                    {
                      FPUIInitLogging();
                      v25 = fpuiLogHandle;
                    }

                    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v63 = v9;
                      _os_log_error_impl(&dword_238356000, v25, OS_LOG_TYPE_ERROR, "Found action for %{public}@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v26 = fpuiLogHandle;
                    if (!fpuiLogHandle)
                    {
                      FPUIInitLogging();
                      v26 = fpuiLogHandle;
                    }

                    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v63 = v9;
                      _os_log_error_impl(&dword_238356000, v26, OS_LOG_TYPE_ERROR, "Invalid activation rule for %{public}@", buf, 0xCu);
                    }
                  }
                }

                ++v7;
              }

              while (v49 != v7);
              v28 = [v45 countByEnumeratingWithState:&v51 objects:v61 count:16];
              v49 = v28;
              if (!v28)
              {
LABEL_55:

                CFRelease(bundle);
                goto LABEL_64;
              }
            }
          }

          v30 = fpuiLogHandle;
          if (!fpuiLogHandle)
          {
            FPUIInitLogging();
            v30 = fpuiLogHandle;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = v30;
            v32 = [v44 URL];
            *buf = 138543618;
            v63 = v46;
            v64 = 2112;
            v65 = v32;
            _os_log_error_impl(&dword_238356000, v31, OS_LOG_TYPE_ERROR, "No extension bundle found for domain: %{public}@ at url %@", buf, 0x16u);
          }
        }

        else
        {
          v29 = fpuiLogHandle;
          if (!fpuiLogHandle)
          {
            FPUIInitLogging();
            v29 = fpuiLogHandle;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v63 = v46;
            _os_log_error_impl(&dword_238356000, v29, OS_LOG_TYPE_ERROR, "No action plists found for domain: %{public}@", buf, 0xCu);
          }
        }

LABEL_64:
      }

      v39 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v39);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v42;
}

+ (BOOL)isAction:(id)a3 eligibleForItems:(id)a4
{
  v20 = a1;
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  v6 = [v5 predicate];
  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v21;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = *v23;
      v10 = 0x278A51000uLL;
      while (2)
      {
        v11 = 0;
        v12 = *(v10 + 3752);
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * v11);
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 isKnownByTheProvider] || (objc_msgSend(v5, "fileProviderIdentifier", v20), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "providerID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, !v16))
          {
            v17 = 0;
            goto LABEL_15;
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v10 = 0x278A51000;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v7 = [v20 extensionMatchingDictionaryForItems:v7 fpProviderDomain:0];
    v17 = [v6 evaluateWithObject:v7];
LABEL_15:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (void)getExtensionRecordsForUseCase:(unint64_t)a3 uiExtensionRecord:(id *)a4 nonUIExtensionRecord:(id *)a5 forProviderDomain:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = [v9 providerID];
  v11 = [v10 isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];

  if (v11 || ([v9 providerID], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider"), v12, v13))
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CC1E50] fpui_extensionRecordForIdentifier:@"com.apple.CloudDocs.MobileDocumentsFileProviderUI" useCase:a3 isUIExtension:1];
    }
  }

  else
  {
    v14 = MEMORY[0x277CC1E50];
    v15 = [v9 extensionBundleURL];
    v16 = [v14 fpui_extensionRecordForURL:v15 useCase:a3 isUIExtension:0];

    if (v16)
    {
      if (a5)
      {
        v17 = v16;
        *a5 = v16;
      }

      v18 = [v9 providerID];
      v19 = [v18 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];

      if (v19)
      {
        if (a4)
        {
          *a4 = [MEMORY[0x277CC1E50] fpui_extensionRecordForIdentifier:@"com.apple.FileProviderUI.ServerAuthUIExtension" useCase:a3 isUIExtension:1];
        }
      }

      else
      {
        v20 = [v16 fpui_containingApplicationRecord];
        if (v20)
        {
          v32 = v20;
          v31 = a4;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          obj = [v20 applicationExtensionRecords];
          v21 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v35;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v35 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v34 + 1) + 8 * i);
                v26 = [v25 fpui_extensionInfoForKey:@"NSExtensionPointIdentifier" ofClass:objc_opt_class()];
                if ([v26 isEqualToString:@"com.apple.fileprovider-actionsui"])
                {
                  v27 = [MEMORY[0x277CC1E50] fpui_extensionRecordByFiltering:v25 useCase:a3 isUIExtension:1];
                  if (v27)
                  {
                    v28 = v27;
                    if (v31)
                    {
                      v29 = v25;
                      *v31 = v25;
                    }

                    goto LABEL_25;
                  }
                }
              }

              v22 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:

          v20 = v32;
        }
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

+ (id)extensionMatchingDictionaryForItems:(id)a3 fpProviderDomain:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = FPExtensionMatchingDictionaryForItem();
        [v7 addObject:{v15, v19}];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = objc_opt_new();
  [v16 setObject:v7 forKey:@"fileproviderItems"];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)valueForKey:(uint64_t)a1 inActionPlist:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = objc_opt_class();
  _os_log_error_impl(&dword_238356000, v3, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ got %{public}@ expected string", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)actionsForProviderDomain:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_238356000, a2, OS_LOG_TYPE_DEBUG, "Getting actionsForProviderDomain: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isAction:(os_log_t)log eligibleForItems:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_238356000, log, OS_LOG_TYPE_ERROR, "Predicate evaluation threw an exception. Predicate: %@, Exception: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end