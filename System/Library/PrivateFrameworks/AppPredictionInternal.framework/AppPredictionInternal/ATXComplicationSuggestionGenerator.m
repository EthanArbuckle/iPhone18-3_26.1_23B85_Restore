@interface ATXComplicationSuggestionGenerator
- (ATXComplicationSet)inlineSet;
- (ATXComplicationSuggestionGenerator)init;
- (BOOL)_complicationIsAlreadyAdded:(id)a3 alreadyAddedComplications:(id)a4;
- (BOOL)_layoutIsValidGivenComplications:(id)a3 allowedComplicationPersonalities:(id)a4;
- (BOOL)_shouldAddComplication:(id)a3 andFilterFromAppsDisabledByAppProtection:(id)a4;
- (id)_circularComplicationFromComplications:(id)a3;
- (id)_complicationsFromFallbackSet:(id)a3 complicationDescriptors:(id)a4 alreadyAddedDescriptors:(id)a5 andFilterFromAppsDisabledByAppProtection:(id)a6;
- (id)_getComplicationsOfFamily:(int64_t)a3 descriptors:(id)a4 alreadyAddedDescriptors:(id)a5 presetComplications:(id)a6 limit:(unint64_t)a7;
- (id)_inlineSetDescriptors_ShouldRefresh:(BOOL)a3;
- (id)_landscapeModularFallbackSets;
- (id)_landscapeModularSetDescriptors_ShouldRefresh:(BOOL)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6;
- (id)_modularDescriptors_ShouldRefresh:(BOOL)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6;
- (id)_modularFallbackSets;
- (id)_modularLayoutTypesGivenRecentsLayoutType:(int64_t)a3;
- (id)_presetLandscapeComplicationsFromPortraitSet:(id)a3;
- (id)_recentInlineComplications;
- (id)_recentLandscapeComplicationsWithPresetDictionary:(id)a3;
- (id)_recentsComplications_unusedComplications:(id)a3;
- (id)_recentsSet_unusedComplications:(id)a3;
- (id)_rectangularComplicationFromComplications:(id)a3;
- (id)_scoredInlineComplicationDescriptors;
- (id)_scoredModularComplicationDescriptorsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5;
- (id)_setWithDesiredLayout:(int64_t)a3 complicationDescriptors:(id)a4 unusedRecentsComplications:(id)a5 alreadyAddedComplications:(id)a6;
- (id)descriptionForScoredSet:(id)a3;
- (id)inputDescriptionForComplicationSuggestionSignal:(id)a3;
- (id)landscapeModularSetsDictsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 portraitSets:(id)a6;
- (id)landscapeModularSetsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 presetPortraitComplications:(id)a6;
- (id)modularSetsWithDesiredLayouts:(id)a3 unusedRecentComplications:(id)a4 alreadyAddedComplications:(id)a5 widgetDescriptorsAdditionalData:(id)a6 aggregatedAppLaunchData:(id)a7 bundleIdToCompanionBundleId:(id)a8;
- (id)modularSetsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5;
- (id)scoredComplicationsDescription;
- (int64_t)_layoutTypeForSet:(id)a3;
- (void)refreshComplicationCache;
- (void)scoredComplicationsDescription;
@end

@implementation ATXComplicationSuggestionGenerator

- (ATXComplicationSuggestionGenerator)init
{
  v14.receiver = self;
  v14.super_class = ATXComplicationSuggestionGenerator;
  v2 = [(ATXComplicationSuggestionGenerator *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB998] sharedInstance];
    descriptorCache = v2->_descriptorCache;
    v2->_descriptorCache = v3;

    v5 = objc_opt_new();
    complicationSuggestionCache = v2->_complicationSuggestionCache;
    v2->_complicationSuggestionCache = v5;

    v7 = objc_opt_new();
    complicationScorer = v2->_complicationScorer;
    v2->_complicationScorer = v7;

    v9 = +[ATXComplicationSuggestionParameters sharedInstance];
    parameters = v2->_parameters;
    v2->_parameters = v9;

    v11 = +[ATXPosterConfigurationCache sharedInstance];
    posterConfigurationCache = v2->_posterConfigurationCache;
    v2->_posterConfigurationCache = v11;
  }

  return v2;
}

- (void)refreshComplicationCache
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not load accessory widget descriptors for complication refresh: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)_recentsSet_unusedComplications:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ATXComplicationSuggestionGenerator *)self _recentsComplications_unusedComplications:a3];
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * i) setSource:1];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v4];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_recentsComplications_unusedComplications:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v40 = [(ATXWidgetDescriptorCache *)self->_descriptorCache modularComplicationWidgetDescriptors];
  v46 = [v40 _pas_mappedSetWithTransform:&__block_literal_global_109];
  v4 = [(ATXPosterConfigurationCache *)self->_posterConfigurationCache configurations];
  v5 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v64;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v64 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v63 + 1) + 8 * v10);
      if ([v11 isSelected])
      {
        v12 = [v11 complications];
        if ([(ATXComplicationSuggestionGenerator *)self _layoutIsValidGivenComplications:v12 allowedComplicationPersonalities:v46])
        {
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_2;
          v61[3] = &unk_27859CFB8;
          v61[4] = self;
          v62 = v5;
          v13 = [v12 _pas_mappedArrayWithTransform:v61];

          if (v13)
          {
            goto LABEL_26;
          }

          goto LABEL_13;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v63 objects:v70 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_13:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v58;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v57 + 1) + 8 * i);
        if (([v19 isSelected] & 1) == 0)
        {
          v20 = [v19 complications];
          if ([(ATXComplicationSuggestionGenerator *)self _layoutIsValidGivenComplications:v20 allowedComplicationPersonalities:v46])
          {
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_3;
            v55[3] = &unk_27859CFB8;
            v55[4] = self;
            v56 = v5;
            v13 = [v20 _pas_mappedArrayWithTransform:v55];

            goto LABEL_25;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_25:

LABEL_26:
  v39 = v5;
  v21 = objc_alloc(MEMORY[0x277CBEB98]);
  v38 = v13;
  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v23 = [v21 initWithArray:v22];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v6;
  v43 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (v43)
  {
    v42 = *v52;
    do
    {
      v24 = 0;
      do
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v24;
        v25 = *(*(&v51 + 1) + 8 * v24);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v26 = [v25 complications];
        v27 = [v26 countByEnumeratingWithState:&v47 objects:v67 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v48;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v48 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v47 + 1) + 8 * j);
              v32 = objc_alloc(MEMORY[0x277CEB9B0]);
              v33 = [v31 extensionBundleIdentifier];
              v34 = [v31 kind];
              v35 = [v32 initWithExtensionBundleId:v33 kind:v34];

              if (([v23 containsObject:v31] & 1) == 0 && objc_msgSend(v46, "containsObject:", v35))
              {
                [v45 addObject:v31];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v47 objects:v67 count:16];
          }

          while (v28);
        }

        v24 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
    }

    while (v43);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v38;
}

id __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB9B0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extensionBundleIdentifier];
  v6 = [v3 kind];

  v7 = [v4 initWithExtensionBundleId:v5 kind:v6];

  return v7;
}

id __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldAddComplication:v3 andFilterFromAppsDisabledByAppProtection:*(a1 + 40)])
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldAddComplication:v3 andFilterFromAppsDisabledByAppProtection:*(a1 + 40)])
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recentInlineComplications
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = objc_opt_new();
  v23 = objc_opt_new();
  v18 = [(ATXWidgetDescriptorCache *)self->_descriptorCache inlineComplicationWidgetDescriptors];
  v22 = [v18 _pas_mappedSetWithTransform:&__block_literal_global_31_0];
  v20 = self;
  v3 = [(ATXPosterConfigurationCache *)self->_posterConfigurationCache configurations];
  v21 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 inlineComplication];
        v11 = [v10 copy];

        v12 = objc_alloc(MEMORY[0x277CEB9B0]);
        v13 = [v11 extensionBundleIdentifier];
        v14 = [v11 kind];
        v15 = [v12 initWithExtensionBundleId:v13 kind:v14];

        if (v11 && ([v23 containsObject:v11] & 1) == 0 && objc_msgSend(v22, "containsObject:", v15) && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](v20, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v11, v21))
        {
          if ([v9 isSelected])
          {
            [v19 insertObject:v11 atIndex:0];
          }

          else
          {
            [v19 addObject:v11];
          }

          [v11 setSource:1];
          [v23 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v19;
}

id __64__ATXComplicationSuggestionGenerator__recentInlineComplications__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB9B0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extensionBundleIdentifier];
  v6 = [v3 kind];

  v7 = [v4 initWithExtensionBundleId:v5 kind:v6];

  return v7;
}

- (id)_recentLandscapeComplicationsWithPresetDictionary:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CEB1E0];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEB1E0]];
  v6 = [v5 complications];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v55 = v9;

  v10 = *MEMORY[0x277CEB1E8];
  v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEB1E8]];
  v12 = [v11 complications];
  v13 = [v12 mutableCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v54 = v15;

  v16 = *MEMORY[0x277CEB1F0];
  v17 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEB1F0]];
  v18 = [v17 complications];
  v19 = [v18 mutableCopy];
  v20 = v19;
  v47 = v4;
  v48 = v3;
  v46 = v16;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = objc_opt_new();
  }

  v53 = v21;

  v60 = objc_opt_new();
  v45 = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
  v59 = [v45 _pas_mappedSetWithTransform:&__block_literal_global_33];
  v22 = [(ATXPosterConfigurationCache *)self->_posterConfigurationCache configurations];
  v57 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v22;
  v51 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v51)
  {
    v50 = *v66;
    do
    {
      v23 = 0;
      do
      {
        if (*v66 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v23;
        v24 = *(*(&v65 + 1) + 8 * v23);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v56 = v24;
        v25 = [v24 landscapeComplications];
        v26 = [v25 countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v62;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v62 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v61 + 1) + 8 * i);
              [v30 setSource:1];
              v31 = objc_alloc(MEMORY[0x277CEB9B0]);
              v32 = [v30 extensionBundleIdentifier];
              v33 = [v30 kind];
              v34 = [v31 initWithExtensionBundleId:v32 kind:v33];

              if (v30 && ([v60 containsObject:v30] & 1) == 0 && objc_msgSend(v59, "containsObject:", v34) && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v30, v57))
              {
                v35 = [v30 widgetFamily];
                if (v35 == 1)
                {
                  if (![v56 isSelected])
                  {
                    v39 = v53;
                    goto LABEL_40;
                  }

                  v37 = v53;
                }

                else
                {
                  v36 = v35;
                  if (v35 != 11)
                  {
                    if (v35 == 10)
                    {
                      if ([v56 isSelected])
                      {
                        v37 = v55;
                        goto LABEL_33;
                      }

                      v39 = v55;
LABEL_40:
                      [v39 addObject:v30];
                    }

                    else
                    {
                      v38 = __atxlog_handle_lock_screen();
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        [(ATXComplicationSuggestionGenerator *)v69 _recentLandscapeComplicationsWithPresetDictionary:v36];
                      }
                    }

LABEL_41:
                    [v60 addObject:v30];
                    goto LABEL_42;
                  }

                  if (![v56 isSelected])
                  {
                    v39 = v54;
                    goto LABEL_40;
                  }

                  v37 = v54;
                }

LABEL_33:
                [v37 insertObject:v30 atIndex:0];
                goto LABEL_41;
              }

LABEL_42:
            }

            v27 = [v25 countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v27);
        }

        v23 = v52 + 1;
      }

      while (v52 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v51);
  }

  v40 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v53];
  [v48 setObject:v40 forKeyedSubscript:v46];

  v41 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v54];
  [v48 setObject:v41 forKeyedSubscript:v10];

  v42 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v55];
  [v48 setObject:v42 forKeyedSubscript:v47];

  v43 = *MEMORY[0x277D85DE8];

  return v48;
}

id __88__ATXComplicationSuggestionGenerator__recentLandscapeComplicationsWithPresetDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB9B0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extensionBundleIdentifier];
  v6 = [v3 kind];

  v7 = [v4 initWithExtensionBundleId:v5 kind:v6];

  return v7;
}

- (id)modularSetsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(ATXComplicationSuggestionParameters *)self->_parameters alwaysUseFallbackSets])
  {
    v11 = [(ATXComplicationSuggestionGenerator *)self _modularFallbackSets];
  }

  else
  {
    v28 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v14 = [(ATXComplicationSuggestionGenerator *)self _recentsSet_unusedComplications:v13];
    v30 = v8;
    if (v14)
    {
      [v28 addObject:v14];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = [v14 complications];
      v16 = [v15 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v32;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v12 addObject:{*(*(&v31 + 1) + 8 * i), v28}];
          }

          v17 = [v15 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v17);
      }

      v8 = v30;
    }

    v20 = [(ATXComplicationSuggestionGenerator *)self _modularLayoutTypesGivenRecentsLayoutType:[(ATXComplicationSuggestionGenerator *)self _layoutTypeForSet:v14, v28]];
    v21 = [(ATXComplicationSuggestionGenerator *)self modularSetsWithDesiredLayouts:v20 unusedRecentComplications:v13 alreadyAddedComplications:v12 widgetDescriptorsAdditionalData:v8 aggregatedAppLaunchData:v9 bundleIdToCompanionBundleId:v10];
    v22 = [v21 count];
    v23 = __atxlog_handle_lock_screen();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        *buf = 138412290;
        v36 = v21;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Received modular sets: %@. Returning.", buf, 0xCu);
      }

      v25 = v29;
      [v29 addObjectsFromArray:v21];
      v11 = v29;
    }

    else
    {
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "No modular sets receiving. Returning fallback sets.", buf, 2u);
      }

      v11 = [(ATXComplicationSuggestionGenerator *)self _modularFallbackSets];
      v25 = v29;
    }

    v8 = v30;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)modularSetsWithDesiredLayouts:(id)a3 unusedRecentComplications:(id)a4 alreadyAddedComplications:(id)a5 widgetDescriptorsAdditionalData:(id)a6 aggregatedAppLaunchData:(id)a7 bundleIdToCompanionBundleId:(id)a8
{
  v39 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [(ATXComplicationSuggestionGenerator *)self _modularDescriptors_ShouldRefresh:0 widgetDescriptorsAdditionalData:a6 aggregatedAppLaunchData:a7 bundleIdToCompanionBundleId:a8];
  v18 = objc_opt_new();
  if ([v14 count])
  {
    v19 = [v14 objectAtIndexedSubscript:0];
    v20 = -[ATXComplicationSuggestionGenerator _setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:](self, "_setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:", [v19 longValue], v17, v15, v16);

    v21 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v20;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Set 1 complications: %@", buf, 0xCu);
    }

    if ([v20 count])
    {
      v22 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v20];
      [v18 addObject:v22];
      if ([v14 count] > 1)
      {
        v24 = [v14 objectAtIndexedSubscript:1];
        v25 = -[ATXComplicationSuggestionGenerator _setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:](self, "_setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:", [v24 longValue], v17, v15, v16);

        v26 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v25;
          _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "Set 2 complications: %@", buf, 0xCu);
        }

        if ([v25 count])
        {
          v27 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v25];
          [v18 addObject:v27];
          if ([v14 count] > 2)
          {
            v35 = v27;
            v28 = [v14 objectAtIndexedSubscript:2];
            v36 = -[ATXComplicationSuggestionGenerator _setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:](self, "_setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:", [v28 longValue], v17, v15, v16);

            v29 = __atxlog_handle_lock_screen();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = v25;
              _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Set 3 complications: %@", buf, 0xCu);
            }

            if ([v36 count])
            {
              v34 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v36];
              [v18 addObject:?];
              v27 = v35;
              if ([v14 count] >= 4)
              {
                v30 = __atxlog_handle_lock_screen();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  [ATXComplicationSuggestionGenerator modularSetsWithDesiredLayouts:v30 unusedRecentComplications:? alreadyAddedComplications:? widgetDescriptorsAdditionalData:? aggregatedAppLaunchData:? bundleIdToCompanionBundleId:?];
                }
              }

              v23 = v18;
            }

            else
            {
              v31 = __atxlog_handle_lock_screen();
              v27 = v35;
              v34 = v31;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "Showing fallback sets since we couldn't fill Set 3", buf, 2u);
              }

              v23 = 0;
            }
          }

          else
          {
            v23 = v18;
          }
        }

        else
        {
          v27 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "Showing fallback sets since we couldn't fill Set 2", buf, 2u);
          }

          v23 = 0;
        }
      }

      else
      {
        v23 = v18;
      }
    }

    else
    {
      v22 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Showing fallback sets since we couldn't fill Set 1", buf, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = v18;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_modularDescriptors_ShouldRefresh:(BOOL)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache fetchModularSetComplicationDescriptors];
  v14 = v13;
  if (a3 || ![v13 count])
  {
    v16 = [(ATXWidgetDescriptorCache *)self->_descriptorCache modularComplicationWidgetDescriptors];
    v15 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer complicationDescriptorsForModularSetGivenComplicationDescriptors:v16 widgetDescriptorsAdditionalData:v10 aggregatedAppLaunchData:v11 bundleIdToCompanionBundleId:v12];
    if (![(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache writeComplicationsModularSetCache:v15])
    {
      v17 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Error while writing complication cache for set 2", v19, 2u);
      }
    }
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (id)_scoredModularComplicationDescriptorsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5
{
  descriptorCache = self->_descriptorCache;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(ATXWidgetDescriptorCache *)descriptorCache modularComplicationWidgetDescriptors];
  v13 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer scoredComplicationDescriptorsForModularSetGivenComplicationDescriptors:v12 widgetDescriptorsAdditionalData:v11 aggregatedAppLaunchData:v10 bundleIdToCompanionBundleId:v9 checkEligibility:0];

  return v13;
}

- (id)landscapeModularSetsDictsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 portraitSets:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [(ATXComplicationSuggestionGenerator *)self _presetLandscapeComplicationsFromPortraitSet:*(*(&v25 + 1) + 8 * i)];
        v19 = [v18 mutableCopy];
        v20 = [(ATXComplicationSuggestionGenerator *)self landscapeModularSetsWithWidgetDescriptorsAdditionalData:v24 aggregatedAppLaunchData:v10 bundleIdToCompanionBundleId:v11 presetPortraitComplications:v19];

        [v13 addObject:v20];
      }

      v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)landscapeModularSetsWithWidgetDescriptorsAdditionalData:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 presetPortraitComplications:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  if ([(ATXComplicationSuggestionParameters *)self->_parameters alwaysUseFallbackSets])
  {
    v15 = [(ATXComplicationSuggestionGenerator *)self _landscapeModularFallbackSets];
    goto LABEL_14;
  }

  v51 = v14;
  v16 = objc_opt_new();
  v57 = [(ATXComplicationSuggestionGenerator *)self _landscapeModularSetDescriptors_ShouldRefresh:0 widgetDescriptorsAdditionalData:v10 aggregatedAppLaunchData:v11 bundleIdToCompanionBundleId:v12];
  v55 = v10;
  v56 = objc_opt_new();
  v53 = v12;
  v54 = v11;
  v52 = v13;
  if (v13)
  {
    v17 = [(ATXComplicationSuggestionGenerator *)self _recentLandscapeComplicationsWithPresetDictionary:v13];
  }

  else
  {
    v18 = objc_opt_new();
    v17 = [(ATXComplicationSuggestionGenerator *)self _recentLandscapeComplicationsWithPresetDictionary:v18];
  }

  v19 = objc_alloc(MEMORY[0x277CEB418]);
  v20 = *MEMORY[0x277CEB1F0];
  v49 = *MEMORY[0x277CEB1F0];
  v21 = [v17 objectForKeyedSubscript:*MEMORY[0x277CEB1F0]];
  v22 = [v21 complications];
  v23 = [(ATXComplicationSuggestionGenerator *)self _getComplicationsOfFamily:1 descriptors:v57 alreadyAddedDescriptors:v56 presetComplications:v22 limit:2];
  v24 = [v19 initWithComplications:v23];
  [v16 setObject:v24 forKeyedSubscript:v20];

  v25 = objc_alloc(MEMORY[0x277CEB418]);
  v26 = *MEMORY[0x277CEB1E8];
  v27 = [v17 objectForKeyedSubscript:*MEMORY[0x277CEB1E8]];
  v28 = [v27 complications];
  [(ATXComplicationSuggestionGenerator *)self _getComplicationsOfFamily:11 descriptors:v57 alreadyAddedDescriptors:v56 presetComplications:v28 limit:2];
  v30 = v29 = v16;
  v31 = [v25 initWithComplications:v30];
  v48 = v26;
  [v29 setObject:v31 forKeyedSubscript:v26];

  v32 = objc_alloc(MEMORY[0x277CEB418]);
  v33 = *MEMORY[0x277CEB1E0];
  v50 = v17;
  v34 = [v17 objectForKeyedSubscript:*MEMORY[0x277CEB1E0]];
  v35 = [v34 complications];
  v36 = [(ATXComplicationSuggestionGenerator *)self _getComplicationsOfFamily:10 descriptors:v57 alreadyAddedDescriptors:v56 presetComplications:v35 limit:4];
  v37 = [v32 initWithComplications:v36];
  [v29 setObject:v37 forKeyedSubscript:v33];

  v38 = v29;
  v39 = [v29 objectForKeyedSubscript:v49];
  v40 = [v39 complications];
  if ([v40 count] != 2)
  {
    goto LABEL_11;
  }

  v41 = [v29 objectForKeyedSubscript:v48];
  v42 = [v41 complications];
  if ([v42 count] != 2)
  {

LABEL_11:
    goto LABEL_12;
  }

  v43 = [v29 objectForKeyedSubscript:v33];
  v44 = [v43 complications];
  v45 = [v44 count];

  v38 = v29;
  if (v45 != 4)
  {
LABEL_12:
    v46 = [(ATXComplicationSuggestionGenerator *)self _landscapeModularFallbackSets];
    goto LABEL_13;
  }

  v46 = [v29 copy];
LABEL_13:
  v15 = v46;
  v11 = v54;
  v10 = v55;
  v13 = v52;
  v12 = v53;

  v14 = v51;
LABEL_14:
  objc_autoreleasePoolPop(v14);

  return v15;
}

- (id)_landscapeModularSetDescriptors_ShouldRefresh:(BOOL)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache fetchLandscapeModularSetComplicationDescriptors];
  v14 = v13;
  if (a3 || ![v13 count])
  {
    v16 = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
    v15 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer complicationDescriptorsForModularSetGivenComplicationDescriptors:v16 widgetDescriptorsAdditionalData:v10 aggregatedAppLaunchData:v11 bundleIdToCompanionBundleId:v12];
    if (![(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache writeComplicationsInlineSetCache:v15])
    {
      v17 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Error while writing complication cache for inline set", v19, 2u);
      }
    }
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (id)_getComplicationsOfFamily:(int64_t)a3 descriptors:(id)a4 alreadyAddedDescriptors:(id)a5 presetComplications:(id)a6 limit:(unint64_t)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v36 = a4;
  v11 = a5;
  v12 = a6;
  v38 = objc_opt_new();
  v42 = objc_opt_new();
  v40 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v49 != v15)
      {
        objc_enumerationMutation(obj);
      }

      if (!a7)
      {
        goto LABEL_21;
      }

      v17 = *(*(&v48 + 1) + 8 * v16);
      v18 = [v17 widgetDescriptor];
      if (([v11 containsObject:v18] & 1) == 0)
      {
        break;
      }

LABEL_19:

      if (v14 == ++v16)
      {
        v14 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }

    v19 = [v17 containerBundleIdentifier];
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = [v17 extensionBundleIdentifier];
      if (!v20)
      {
        v21 = 1;
        goto LABEL_14;
      }
    }

    if ([v42 containsObject:v20])
    {
LABEL_18:

      goto LABEL_19;
    }

    v21 = 0;
LABEL_14:
    if ([(ATXComplicationSuggestionGenerator *)self _shouldAddComplication:v17 andFilterFromAppsDisabledByAppProtection:v40])
    {
      [v38 addObject:v17];
      [v11 addObject:v18];
      if ((v21 & 1) == 0)
      {
        [v42 addObject:v20];
      }

      --a7;
    }

    goto LABEL_18;
  }

LABEL_21:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = v36;
  v23 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v45;
    v37 = v22;
LABEL_23:
    v26 = 0;
    while (1)
    {
      if (*v45 != v25)
      {
        objc_enumerationMutation(v22);
      }

      if (!a7)
      {
        goto LABEL_45;
      }

      v27 = *(*(&v44 + 1) + 8 * v26);
      if (([v11 containsObject:v27] & 1) == 0)
      {
        break;
      }

LABEL_43:
      if (v24 == ++v26)
      {
        v24 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_45;
      }
    }

    v28 = [v27 extensionIdentity];
    v29 = [v28 containerBundleIdentifier];
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = [v27 extensionBundleIdentifier];

      if (!v30)
      {
        v31 = 1;
        goto LABEL_34;
      }
    }

    if ([v42 containsObject:{v30, v37}])
    {
LABEL_42:

      goto LABEL_43;
    }

    v31 = 0;
LABEL_34:
    [v27 disfavoredFamiliesForLocation:{1, v37}];
    [v27 supportedFamilies];
    if (CHSWidgetFamilyMaskContainsFamily() && (CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
    {
      v32 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v27 widgetFamily:a3 intent:0 source:2];
      [v38 addObject:v32];
      [v11 addObject:v27];
      if ((v31 & 1) == 0)
      {
        [v42 addObject:v30];
      }

      --a7;
      v22 = v37;
    }

    else
    {
      v32 = __atxlog_handle_lock_screen();
      v22 = v37;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "Incorrect complication descriptor received", buf, 2u);
      }
    }

    goto LABEL_42;
  }

LABEL_45:

  v33 = [v38 copy];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_presetLandscapeComplicationsFromPortraitSet:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v3 complications];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 widgetFamily];
        if (v13 == 1)
        {
          v15 = v6;
          goto LABEL_12;
        }

        v14 = v13;
        if (v13 == 11)
        {
          v15 = v5;
          goto LABEL_12;
        }

        if (v13 == 10)
        {
          v15 = v4;
LABEL_12:
          [v15 addObject:v12];
          continue;
        }

        v16 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(ATXComplicationSuggestionGenerator *)v27 _recentLandscapeComplicationsWithPresetDictionary:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v6];
  [v22 setObject:v17 forKeyedSubscript:*MEMORY[0x277CEB1F0]];

  v18 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v5];
  [v22 setObject:v18 forKeyedSubscript:*MEMORY[0x277CEB1E8]];

  v19 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v4];
  [v22 setObject:v19 forKeyedSubscript:*MEMORY[0x277CEB1E0]];

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (ATXComplicationSet)inlineSet
{
  v51 = *MEMORY[0x277D85DE8];
  v38 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v3 = objc_opt_new();
  v37 = self;
  v4 = [(ATXComplicationSuggestionGenerator *)self _recentInlineComplications];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 count];
    if (v6 >= 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 subarrayWithRange:{0, v7}];
    v9 = [v8 mutableCopy];

    v3 = v9;
  }

  v10 = [v3 count];
  if (v10 != 3)
  {
    v11 = v10;
    v35 = v5;
    v12 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v3;
    v13 = v3;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          v19 = [v18 containerBundleIdentifier];
          if (v19)
          {
            v20 = [v18 containerBundleIdentifier];
            [v12 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v15);
    }

    [(ATXComplicationSuggestionGenerator *)v37 _inlineSetDescriptors_ShouldRefresh:0];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v21 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 3 - v11;
      v24 = *v42;
LABEL_18:
      v25 = 0;
      while (1)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(obj);
        }

        if (!v23)
        {
          break;
        }

        v26 = *(*(&v41 + 1) + 8 * v25);
        v27 = [v26 extensionIdentity];
        v28 = [v27 containerBundleIdentifier];
        if (v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = [v26 extensionBundleIdentifier];

          if (!v29)
          {
            v30 = 1;
LABEL_28:
            [v26 disfavoredFamiliesForLocation:1];
            [v26 supportedFamilies];
            if (CHSWidgetFamilyMaskContainsFamily() && (CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
            {
              v31 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v26 widgetFamily:12 intent:0 source:2];
              if ([(ATXComplicationSuggestionGenerator *)v37 _shouldAddComplication:v31 andFilterFromAppsDisabledByAppProtection:v38])
              {
                [v13 addObject:v31];
                if ((v30 & 1) == 0)
                {
                  [v12 addObject:v29];
                }

                --v23;
              }
            }

            else
            {
              v31 = __atxlog_handle_lock_screen();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "Non inline complication descriptor received", buf, 2u);
              }
            }

            goto LABEL_37;
          }
        }

        if (([v12 containsObject:v29] & 1) == 0)
        {
          v30 = 0;
          goto LABEL_28;
        }

LABEL_37:

        if (v22 == ++v25)
        {
          v22 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v22)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    v5 = v35;
    v3 = v36;
  }

  if (v3)
  {
    v32 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v3];
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_inlineSetDescriptors_ShouldRefresh:(BOOL)a3
{
  v5 = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache fetchInlineSetComplicationDescriptors];
  v6 = v5;
  if (a3 || ![v5 count])
  {
    v8 = [(ATXWidgetDescriptorCache *)self->_descriptorCache inlineComplicationWidgetDescriptors];
    v7 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer complicationDescriptorsForInlineSetGivenComplicationDescriptors:v8];
    if (![(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache writeComplicationsInlineSetCache:v7])
    {
      v9 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Error while writing complication cache for inline set", v11, 2u);
      }
    }
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)_scoredInlineComplicationDescriptors
{
  v3 = [(ATXWidgetDescriptorCache *)self->_descriptorCache inlineComplicationWidgetDescriptors];
  v4 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer scoredComplicationDescriptorsForInlineSetGivenComplicationDescriptors:v3];

  return v4;
}

- (id)scoredComplicationsDescription
{
  v3 = objc_opt_new();
  [v3 appendString:@"Modular Set Scores:\n"];
  descriptorCache = self->_descriptorCache;
  v18 = 0;
  v5 = [(ATXWidgetDescriptorCache *)descriptorCache fetchAccessoryWidgetDescriptorMetadataWithError:&v18];
  v6 = v18;
  v7 = v5;
  if (!v5)
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXComplicationSuggestionGenerator *)v6 scoredComplicationsDescription];
    }

    v7 = MEMORY[0x277CBEC10];
  }

  v9 = objc_alloc_init(MEMORY[0x277CEB388]);
  v10 = [v9 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  v11 = [v10 allKeys];
  v12 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:v11];
  v13 = [(ATXComplicationSuggestionGenerator *)self _scoredModularComplicationDescriptorsWithWidgetDescriptorsAdditionalData:v7 aggregatedAppLaunchData:v10 bundleIdToCompanionBundleId:v12];
  v14 = [(ATXComplicationSuggestionGenerator *)self descriptionForScoredSet:v13];

  [v3 appendString:v14];
  [v3 appendString:@"\nInline Set Scores:\n"];
  v15 = [(ATXComplicationSuggestionGenerator *)self _scoredInlineComplicationDescriptors];
  v16 = [(ATXComplicationSuggestionGenerator *)self descriptionForScoredSet:v15];

  [v3 appendString:v16];

  return v3;
}

- (id)inputDescriptionForComplicationSuggestionSignal:(id)a3
{
  descriptorCache = self->_descriptorCache;
  v5 = a3;
  v6 = [(ATXWidgetDescriptorCache *)descriptorCache complicationWidgetDescriptors];
  v7 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer inputDescriptionForSignal:v5 complicationDescriptors:v6];

  return v7;
}

- (id)descriptionForScoredSet:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v28 = v3;
  [v3 keysSortedByValueUsingComparator:&__block_literal_global_45];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = &unk_283A56078;
    v25 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v28 objectForKeyedSubscript:v10];
        v12 = [v11 isEqual:v8];

        if ((v12 & 1) == 0)
        {
          v13 = MEMORY[0x277CCACA8];
          v27 = [v10 extensionIdentity];
          v14 = [v27 containerBundleIdentifier];
          v15 = [v10 extensionBundleIdentifier];
          v16 = [v10 kind];
          [v10 supportedFamilies];
          CHSWidgetFamilyMaskDescription();
          v17 = v6;
          v18 = v8;
          v20 = v19 = v7;
          v21 = [v28 objectForKeyedSubscript:v10];
          v22 = [v13 stringWithFormat:@"\nContainer: %@\nExtension: %@\nKind: %@\nFamilies:%@\nScore: %@\n", v14, v15, v16, v20, v21];

          v7 = v19;
          v8 = v18;
          v6 = v17;

          v4 = v25;
          [v25 appendString:v22];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  [v4 appendString:@"--------------------------------------------"];

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int64_t)_layoutTypeForSet:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v5 = [v3 complications];
  v6 = [v5 count];

  v7 = [v4 complications];
  v8 = v7;
  if (v6 != 4)
  {
    v18 = [v7 count];

    v19 = [v4 complications];
    v8 = v19;
    if (v18 == 3)
    {
      v9 = [v19 objectAtIndexedSubscript:0];
      if ([v9 widgetFamily] == 11)
      {
        v10 = [v4 complications];
        v11 = [v10 objectAtIndexedSubscript:1];
        if ([v11 widgetFamily] == 10)
        {
          v20 = [v4 complications];
          v21 = [v20 objectAtIndexedSubscript:2];
          v22 = [v21 widgetFamily];

          if (v22 == 10)
          {
            v17 = 3;
            goto LABEL_22;
          }

LABEL_21:
          v17 = 4;
          goto LABEL_22;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v23 = [v19 count];

      if (v23 != 2)
      {
        goto LABEL_21;
      }

      v8 = [v4 complications];
      v9 = [v8 objectAtIndexedSubscript:0];
      if ([v9 widgetFamily] == 11)
      {
        v24 = [v4 complications];
        v17 = 1;
        v25 = [v24 objectAtIndexedSubscript:1];
        v26 = [v25 widgetFamily];

        if (v26 == 11)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v9 = [v7 objectAtIndexedSubscript:0];
  if ([v9 widgetFamily] != 10)
  {
    goto LABEL_20;
  }

  v10 = [v4 complications];
  v11 = [v10 objectAtIndexedSubscript:1];
  if ([v11 widgetFamily] != 10)
  {
LABEL_19:

    goto LABEL_20;
  }

  v12 = [v4 complications];
  v13 = [v12 objectAtIndexedSubscript:2];
  if ([v13 widgetFamily] != 10)
  {

    goto LABEL_19;
  }

  v14 = [v4 complications];
  v15 = [v14 objectAtIndexedSubscript:3];
  v16 = [v15 widgetFamily];

  if (v16 != 10)
  {
    goto LABEL_21;
  }

  v17 = 2;
LABEL_22:

  return v17;
}

- (id)_modularLayoutTypesGivenRecentsLayoutType:(int64_t)a3
{
  if (a3 > 4)
  {
    return &unk_283A58010;
  }

  else
  {
    return qword_27859CFD8[a3];
  }
}

- (id)_modularFallbackSets
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
  v5 = objc_opt_new();
  v6 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v7 = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetsForSet1];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v7, "count"))}];
    v10 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v9 complicationDescriptors:v4 alreadyAddedDescriptors:v5 andFilterFromAppsDisabledByAppProtection:v6];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v10];
      [v3 addObject:v11];
    }
  }

  v12 = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetsForSet2];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v12, "count"))}];
    v15 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v14 complicationDescriptors:v4 alreadyAddedDescriptors:v5 andFilterFromAppsDisabledByAppProtection:v6];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v15];
      [v3 addObject:v16];
    }
  }

  v17 = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetsForSet3];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v17, "count"))}];
    v20 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v19 complicationDescriptors:v4 alreadyAddedDescriptors:v5 andFilterFromAppsDisabledByAppProtection:v6];

    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v20];
      [v3 addObject:v21];
    }
  }

  v22 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v3;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Fallback Sets: %@", &v26, 0xCu);
  }

  v23 = [v3 copy];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_landscapeModularFallbackSets
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v5 = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
  v6 = objc_opt_new();
  v7 = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetForLandscape];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v7, "count"))}];
    v30 = v6;
    v31 = v5;
    v32 = v4;
    v10 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v9 complicationDescriptors:v5 alreadyAddedDescriptors:v6 andFilterFromAppsDisabledByAppProtection:v4];

    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = [v19 widgetFamily];
          v21 = v11;
          if (v20 != 10)
          {
            v22 = [v19 widgetFamily];
            v21 = v12;
            if (v22 != 11)
            {
              v23 = [v19 widgetFamily];
              v21 = v13;
              if (v23 != 1)
              {
                continue;
              }
            }
          }

          [v21 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    v24 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v11];
    [v3 setObject:v24 forKeyedSubscript:*MEMORY[0x277CEB1E0]];

    v25 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v12];
    [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x277CEB1E8]];

    v26 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v13];
    [v3 setObject:v26 forKeyedSubscript:*MEMORY[0x277CEB1F0]];

    v5 = v31;
    v4 = v32;
    v6 = v30;
  }

  v27 = [v3 copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_setWithDesiredLayout:(int64_t)a3 complicationDescriptors:(id)a4 unusedRecentsComplications:(id)a5 alreadyAddedComplications:(id)a6
{
  v9 = a4;
  v32 = a5;
  v10 = a6;
  v29 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v11 = objc_opt_new();
  v12 = 0;
  v13 = &unk_283A58040;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_47;
    }

    if (a3 == 1)
    {
      v13 = &unk_283A58088;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        goto LABEL_47;
      case 3:
        v13 = &unk_283A58070;
        break;
      case 2:
        v13 = &unk_283A58058;
        break;
    }
  }

  if (![v9 count])
  {
LABEL_42:
    v26 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "Not enough complications available on device to fill layout", buf, 2u);
    }

    v12 = 0;
    goto LABEL_47;
  }

  v28 = v11;
  v30 = v10;
  v14 = 0;
  v15 = 0;
  v16 = 4;
  do
  {
    v17 = [v9 objectAtIndexedSubscript:v15];
    v18 = v17;
    if (!v16)
    {

      v10 = v30;
      v11 = v28;
      goto LABEL_46;
    }

    [v17 supportedFamilies];
    [v18 disfavoredFamiliesForLocation:1];
    v19 = [v13 objectAtIndexedSubscript:v14];
    v20 = [v19 unsignedIntValue];

    if (v20 == 1)
    {
      v21 = [(ATXComplicationSuggestionGenerator *)self _rectangularComplicationFromComplications:v32];
      [v21 setSource:1];
      if (v21)
      {
        if (([v30 containsObject:v21] & 1) != 0 || !-[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v21, v29))
        {
          goto LABEL_24;
        }

        [v28 addObject:v21];
        [v30 addObject:v21];
        v16 -= 2;
LABEL_23:
        ++v14;
LABEL_24:
        [v32 removeObject:v21];

        goto LABEL_40;
      }

      if (CHSWidgetFamilyMaskContainsFamily() && (CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
      {
        v24 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v18 widgetFamily:11 intent:0 source:2];
        v25 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v18 widgetFamily:10 intent:0 source:2];
        if (([v30 containsObject:v24] & 1) == 0 && (objc_msgSend(v30, "containsObject:", v25) & 1) == 0 && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v24, v29))
        {
          [v28 addObject:v24];
          [v30 addObject:v24];
          v16 -= 2;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v22 = [v13 objectAtIndexedSubscript:v14];
      v23 = [v22 unsignedIntValue];

      if (v23)
      {
        goto LABEL_40;
      }

      v21 = [(ATXComplicationSuggestionGenerator *)self _circularComplicationFromComplications:v32];
      [v21 setSource:1];
      if (v21)
      {
        if (([v30 containsObject:v21] & 1) != 0 || !-[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v21, v29))
        {
          goto LABEL_24;
        }

        [v28 addObject:v21];
        [v30 addObject:v21];
        --v16;
        goto LABEL_23;
      }

      if (CHSWidgetFamilyMaskContainsFamily() && (CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
      {
        v24 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v18 widgetFamily:10 intent:0 source:2];
        v25 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v18 widgetFamily:11 intent:0 source:2];
        if (([v30 containsObject:v24] & 1) == 0 && (objc_msgSend(v30, "containsObject:", v25) & 1) == 0 && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v24, v29))
        {
          [v28 addObject:v24];
          [v30 addObject:v24];
          --v16;
LABEL_37:
          ++v14;
        }

LABEL_38:
      }
    }

    ++v15;
LABEL_40:
  }

  while (v15 < [v9 count]);
  v10 = v30;
  v11 = v28;
  if (v16)
  {
    goto LABEL_42;
  }

LABEL_46:
  v12 = v11;
LABEL_47:

  return v12;
}

- (id)_rectangularComplicationFromComplications:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 widgetFamily] == 11)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_circularComplicationFromComplications:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 widgetFamily] == 10)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_complicationsFromFallbackSet:(id)a3 complicationDescriptors:(id)a4 alreadyAddedDescriptors:(id)a5 andFilterFromAppsDisabledByAppProtection:(id)a6
{
  v83 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v64 = a6;
  if (!v9)
  {
    v43 = 0;
    goto LABEL_64;
  }

  v12 = MEMORY[0x277CBEB18];
  v13 = [v10 allObjects];
  v14 = [v12 arrayWithArray:v13];

  v52 = v14;
  [v14 shuffle];
  v15 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v9;
  v57 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (!v57)
  {
    goto LABEL_55;
  }

  v56 = *v75;
  v55 = *MEMORY[0x277CEB1E0];
  v50 = *MEMORY[0x277CEB1E8];
  v49 = *MEMORY[0x277CEB1F0];
  v53 = v10;
  v54 = v9;
  v61 = v15;
  v62 = v11;
LABEL_4:
  v16 = 0;
  while (1)
  {
    if (*v75 != v56)
    {
      objc_enumerationMutation(obj);
    }

    v17 = [*(*(&v74 + 1) + 8 * v16) componentsSeparatedByString:@":"];
    if ([v17 count] != 3)
    {
      v18 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v17 count];
        *buf = 134217984;
        v81 = v44;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Complication set is invalid. Components count: %lu", buf, 0xCu);
      }

      goto LABEL_62;
    }

    v18 = [v17 objectAtIndexedSubscript:0];
    v65 = [v17 objectAtIndexedSubscript:1];
    if ([MEMORY[0x277D42590] isiPad] && -[NSObject isEqualToString:](v18, "isEqualToString:", @"com.apple.Fitness.FitnessWidget"))
    {

      v65 = @"MentalHealthLauncherComplication";
      v18 = @"com.apple.Health.HealthMentalHealthWidgetExtension";
    }

    v19 = [v17 objectAtIndexedSubscript:2];
    v20 = [v19 isEqualToString:v55];

    v58 = v16;
    v59 = v17;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = 10;
LABEL_17:
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v26 = v10;
    v27 = [v26 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v27)
    {
      v28 = v27;
      v60 = 0;
      v29 = *v71;
      while (1)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v71 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v70 + 1) + 8 * i);
          [v31 disfavoredFamiliesForLocation:1];
          v32 = [v31 extensionBundleIdentifier];
          if ([v32 isEqualToString:v18])
          {
            v33 = [v31 kind];
            if ([v33 isEqualToString:v65] && (objc_msgSend(v31, "supportedFamilies"), (CHSWidgetFamilyMaskContainsFamily() & 1) != 0))
            {
              v34 = CHSWidgetFamilyMaskContainsFamily();

              if (v34)
              {
                continue;
              }

              if ([v62 containsObject:v31])
              {
                goto LABEL_33;
              }

              v32 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v31 widgetFamily:v21 intent:0 source:3];
              if ([(ATXComplicationSuggestionGenerator *)self _shouldAddComplication:v32 andFilterFromAppsDisabledByAppProtection:v64])
              {
                [v61 addObject:v32];
                [v62 addObject:v31];
                v60 = 1;
              }
            }

            else
            {
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (!v28)
        {
LABEL_33:

          v11 = v62;
          if (v60)
          {
            goto LABEL_53;
          }

          goto LABEL_36;
        }
      }
    }

LABEL_36:
    v35 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "Fallback complication not found while searching descriptors. Filling in a random one.", buf, 2u);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v36 = v52;
    v37 = [v36 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v67;
      while (2)
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v67 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v66 + 1) + 8 * j);
          if (([v11 containsObject:v41] & 1) == 0)
          {
            [v41 disfavoredFamiliesForLocation:1];
            [v41 supportedFamilies];
            if (CHSWidgetFamilyMaskContainsFamily())
            {
              if ((CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
              {
                v42 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v41 widgetFamily:v21 intent:0 source:3];
                if ([(ATXComplicationSuggestionGenerator *)self _shouldAddComplication:v42 andFilterFromAppsDisabledByAppProtection:v64])
                {
                  [v61 addObject:v42];
                  [v11 addObject:v41];

                  goto LABEL_52;
                }
              }
            }
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

LABEL_52:

LABEL_53:
    v16 = v58 + 1;
    v10 = v53;
    v9 = v54;
    v15 = v61;
    if (v58 + 1 == v57)
    {
      v57 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (!v57)
      {
LABEL_55:

        v43 = v15;
        goto LABEL_63;
      }

      goto LABEL_4;
    }
  }

  v22 = [v17 objectAtIndexedSubscript:2];
  v23 = [v22 isEqualToString:v50];

  if (v23)
  {
    v21 = 11;
    goto LABEL_17;
  }

  v24 = [v17 objectAtIndexedSubscript:2];
  v25 = [v24 isEqualToString:v49];

  if (v25)
  {
    v21 = 1;
    goto LABEL_17;
  }

  v45 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [v17 objectAtIndexedSubscript:2];
    *buf = 138412290;
    v81 = v46;
    _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_DEFAULT, "Unknown complication family: %@", buf, 0xCu);
  }

LABEL_62:
  v43 = 0;
LABEL_63:

LABEL_64:
  v47 = *MEMORY[0x277D85DE8];

  return v43;
}

- (BOOL)_layoutIsValidGivenComplications:(id)a3 allowedComplicationPersonalities:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = 4;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CEB9B0]);
        v15 = [v13 extensionBundleIdentifier];
        v16 = [v13 kind];
        v17 = [v14 initWithExtensionBundleId:v15 kind:v16];

        if (![v6 containsObject:v17] || -[ATXComplicationSuggestionGenerator _complicationIsAlreadyAdded:alreadyAddedComplications:](self, "_complicationIsAlreadyAdded:alreadyAddedComplications:", v13, v7))
        {
LABEL_15:

          v19 = 0;
          goto LABEL_17;
        }

        if ([v13 widgetFamily] == 10)
        {
          v18 = -1;
        }

        else
        {
          if ([v13 widgetFamily] != 11)
          {
            goto LABEL_15;
          }

          v18 = -2;
        }

        v11 += v18;
        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v19 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 1;
    v11 = 4;
  }

LABEL_17:

  if (v11)
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_complicationIsAlreadyAdded:(id)a3 alreadyAddedComplications:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v5 isEqual:{v10, v18}])
        {
          v11 = [v5 intent];
          if (v11)
          {
          }

          else
          {
            v12 = [v10 intent];

            if (!v12)
            {
              goto LABEL_14;
            }
          }

          v13 = [v5 intent];
          v14 = [v10 intent];
          v15 = [v13 atx_isEqualToIntent:v14];

          if (v15)
          {
LABEL_14:
            LOBYTE(v7) = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_shouldAddComplication:(id)a3 andFilterFromAppsDisabledByAppProtection:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 containerBundleIdentifier];
  if (v7 && (v8 = v7, [v5 containerBundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "containsObject:", v9), v9, v8, v10))
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 containerBundleIdentifier];
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXComplicationSuggestionGenerator: Complication: %@ is not eligible for suggestion. Reason: %@ is locked or hidden by user preference.", &v16, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_recentLandscapeComplicationsWithPresetDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  v4 = NSStringFromWidgetFamily();
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_4_1(&dword_2263AA000, v5, v6, "Unexpected complication type, %@");
}

- (void)scoredComplicationsDescription
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not load accessory widget descriptors for scored complications description: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end