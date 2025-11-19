@interface ATXModeFaceComplicationAppDataSource
- (id)provideComplicationsForSuggestedFaceType:(int64_t)a3 environment:(id)a4;
@end

@implementation ATXModeFaceComplicationAppDataSource

- (id)provideComplicationsForSuggestedFaceType:(int64_t)a3 environment:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v29 = objc_alloc_init(ATXSuggestedPagesAppAggregator);
  v6 = [(ATXSuggestedPagesAppAggregator *)v29 provideAppsForSuggestedPageType:ATXSuggestedPageTypeFromSuggestedFaceType(a3) candidateApps:0 environment:v5];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v28 = v9;
  v11 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_129];
  v12 = [v10 initWithArray:v11];

  v13 = [MEMORY[0x277CEB998] sharedInstance];
  v14 = [v13 complicationWidgetDescriptors];

  v27 = objc_alloc_init(MEMORY[0x277CEB568]);
  v15 = [v27 homeScreenWidgetPersonalities];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __93__ATXModeFaceComplicationAppDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_2;
  v37[3] = &unk_27859DFD0;
  v26 = v12;
  v38 = v26;
  v16 = v5;
  v39 = v16;
  v25 = v15;
  v40 = v25;
  v17 = [v14 _pas_filteredSetWithTest:v37];
  v18 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v33 + 1) + 8 * i) supportedFamilies];
        v31 = v16;
        v32 = v18;
        CHSWidgetFamilyMaskEnumerateFamilies();
      }

      v20 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __93__ATXModeFaceComplicationAppDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionIdentity];
  v5 = [v4 containerBundleIdentifier];

  if ([v5 length] && objc_msgSend(a1[4], "containsObject:", v5) && (objc_msgSend(a1[5], "appLaunchCounts"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v5), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "uniqueDaysLaunched"), v7, v6, v8 >= 0xA))
  {
    v11 = objc_alloc(MEMORY[0x277CEB9B0]);
    v12 = [v3 extensionBundleIdentifier];
    v13 = [v3 kind];
    v14 = [v11 initWithExtensionBundleId:v12 kind:v13];

    v9 = [a1[6] containsObject:v14];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __93__ATXModeFaceComplicationAppDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (CHSWidgetFamilyIsAccessory())
  {
    v6 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:*(a1 + 32) widgetFamily:a2 intent:0 source:4];
    [v6 setPredictionSource:@"App"];
    v4 = [v6 containerBundleIdentifier];
    [ATXModeFaceComplicationUtilities complicationScoreForAppLaunch:v4 environment:*(a1 + 40)];
    [v6 setScore:v5 * 0.2];

    [*(a1 + 48) addObject:v6];
  }
}

@end