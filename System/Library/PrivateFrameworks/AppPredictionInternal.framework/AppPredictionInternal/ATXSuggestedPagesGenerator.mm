@interface ATXSuggestedPagesGenerator
- (ATXSuggestedPagesGenerator)init;
- (ATXSuggestedPagesGenerator)initWithWidgetAggregator:(id)a3 appAggregator:(id)a4 descriptorCache:(id)a5;
- (id)_validatedWidgets:(id)a3 bundleIdsToLaunches:(id)a4;
- (id)generateSuggestedPagesForPageType:(int64_t)a3 layoutOptions:(id)a4;
- (unint64_t)_suggestAppsFromPool:(id)a3 forPage:(id)a4 type:(int64_t)a5 numberOfAppsNecessary:(unint64_t)a6;
- (unint64_t)_suggestShortcutsFromPool:(id)a3 forPage:(id)a4 type:(int64_t)a5 numberOfShortcutsNecessary:(unint64_t)a6;
- (unint64_t)_suggestStacksFromPool:(id)a3 forPage:(id)a4 type:(int64_t)a5 layout:(id)a6 numberOfColumns:(unint64_t)a7;
@end

@implementation ATXSuggestedPagesGenerator

- (ATXSuggestedPagesGenerator)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CEB998] sharedInstance];
  v6 = [(ATXSuggestedPagesGenerator *)self initWithWidgetAggregator:v3 appAggregator:v4 descriptorCache:v5];

  return v6;
}

- (ATXSuggestedPagesGenerator)initWithWidgetAggregator:(id)a3 appAggregator:(id)a4 descriptorCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = ATXSuggestedPagesGenerator;
  v12 = [(ATXSuggestedPagesGenerator *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_widgetAggregator, a3);
    objc_storeStrong(&v13->_appAggregator, a4);
    objc_storeStrong(&v13->_descriptorCache, a5);
    v14 = objc_opt_new();
    tunableConstants = v13->_tunableConstants;
    v13->_tunableConstants = v14;

    v16 = objc_alloc_init(MEMORY[0x277CEB388]);
    v17 = [v16 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    appLaunchCounts = v13->_appLaunchCounts;
    v13->_appLaunchCounts = v17;

    v19 = objc_alloc_init(MEMORY[0x277CEB568]);
    v29 = 0;
    v20 = [v19 loadHomeScreenPageConfigurationsIncludingHidden:0 error:&v29];
    v21 = v29;
    v22 = [v20 firstObject];

    if (!v22)
    {
      v23 = __atxlog_handle_modes();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [ATXSuggestedPagesGenerator initWithWidgetAggregator:v21 appAggregator:v23 descriptorCache:?];
      }
    }

    v24 = [v22 maxPortraitRows];
    v25 = 6;
    if (v24)
    {
      v25 = v24;
    }

    v13->_cachedHomeScreenRows = v25;
    v26 = [v22 maxPortraitColumns];
    v27 = 4;
    if (v26)
    {
      v27 = v26;
    }

    v13->_cachedHomeScreenColumns = v27;
  }

  return v13;
}

- (id)generateSuggestedPagesForPageType:(int64_t)a3 layoutOptions:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v58 = a4;
  v6 = __atxlog_handle_modes();
  v7 = os_signpost_id_generate(v6);

  v8 = __atxlog_handle_modes();
  v9 = v8;
  spid = v7;
  v57 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = NSStringFromATXSuggestedPageType();
    *buf = 136446210;
    v72 = [v10 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "generateSuggestedHomeScreenPage", "Type=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v63 = objc_opt_new();
  v70[0] = v63;
  obja = objc_opt_new();
  v70[1] = obja;
  v59 = objc_opt_new();
  v70[2] = v59;
  v11 = objc_opt_new();
  v70[3] = v11;
  v12 = objc_opt_new();
  v70[4] = v12;
  v13 = objc_opt_new();
  v70[5] = v13;
  v14 = objc_opt_new();
  v70[6] = v14;
  v15 = objc_opt_new();
  v70[7] = v15;
  v16 = objc_opt_new();
  v70[8] = v16;
  v17 = objc_opt_new();
  v70[9] = v17;
  v18 = objc_opt_new();
  v70[10] = v18;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:11];

  v19 = objc_opt_new();
  appAggregator = self->_appAggregator;
  v21 = [v58 candidateApps];
  v22 = [(ATXSuggestedPagesAppAggregator *)appAggregator provideAppsForSuggestedPageType:a3 candidateApps:v21 environment:self];

  v23 = objc_alloc(MEMORY[0x277CBEB98]);
  v60 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  v25 = [v23 initWithArray:v24];
  suggestedApps = self->_suggestedApps;
  self->_suggestedApps = v25;

  v27 = [(ATXSuggestedPagesWidgetAggregator *)self->_widgetAggregator provideWidgetsForPageType:a3 environment:self];
  v64 = [(ATXSuggestedPagesGenerator *)self _validatedWidgets:v27 bundleIdsToLaunches:self->_appLaunchCounts];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v56;
  v28 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v66;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v66 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v65 + 1) + 8 * i);
        v33 = objc_alloc_init(MEMORY[0x277CEB588]);
        [v33 setSuggestedPageType:a3];
        [v33 setPageIndex:{objc_msgSend(v19, "count")}];
        v34 = [MEMORY[0x277CCAD78] UUID];
        v35 = [v34 UUIDString];
        [v33 setUniqueIdentifier:v35];

        cachedHomeScreenRows = self->_cachedHomeScreenRows;
        cachedHomeScreenColumns = self->_cachedHomeScreenColumns;
        v38 = [(ATXSuggestedPagesGenerator *)self _suggestStacksFromPool:v64 forPage:v33 type:a3 layout:v32 numberOfColumns:cachedHomeScreenColumns];
        if (v38 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = cachedHomeScreenColumns * cachedHomeScreenRows - v38;
          v40 = [v32 maxAppRowsForPageType:a3];
          if (v40)
          {
            v41 = self->_cachedHomeScreenColumns * v40 >= v39 ? v39 : self->_cachedHomeScreenColumns * v40;
          }

          else
          {
            v41 = v39;
          }

          v42 = [(ATXSuggestedPagesGenerator *)self _suggestAppsFromPool:v60 forPage:v33 type:a3 numberOfAppsNecessary:v41];
          v43 = [(ATXSuggestedPagesGenerator *)self _suggestShortcutsFromPool:MEMORY[0x277CBEBF8] forPage:v33 type:a3 numberOfShortcutsNecessary:v39 - v42]+ v42;
          if (v43 >= [v32 minNecessaryLeafIconsForPageType:a3])
          {
            v44 = [v33 leafIcons];
            if ([v44 count])
            {
            }

            else
            {
              v45 = [v33 stacks];
              v46 = [v45 count];

              if (!v46)
              {
                goto LABEL_23;
              }
            }

            [v19 addObject:v33];
          }
        }

LABEL_23:
      }

      v29 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v29);
  }

  v47 = [v19 count];
  if (v47 > [(ATXSuggestedPagesTunableConstants *)self->_tunableConstants maxSuggestedPages])
  {
    [v19 removeObjectsInRange:{-[ATXSuggestedPagesTunableConstants maxSuggestedPages](self->_tunableConstants, "maxSuggestedPages") - 1, objc_msgSend(v19, "count") - -[ATXSuggestedPagesTunableConstants maxSuggestedPages](self->_tunableConstants, "maxSuggestedPages")}];
  }

  v48 = self->_suggestedApps;
  self->_suggestedApps = 0;

  v49 = __atxlog_handle_modes();
  v50 = v49;
  if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    v51 = NSStringFromATXSuggestedPageType();
    v52 = [v51 UTF8String];
    *buf = 136446210;
    v72 = v52;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v50, OS_SIGNPOST_INTERVAL_END, spid, "generateSuggestedHomeScreenPage", "Type=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v53 = *MEMORY[0x277D85DE8];

  return v19;
}

- (unint64_t)_suggestStacksFromPool:(id)a3 forPage:(id)a4 type:(int64_t)a5 layout:(id)a6 numberOfColumns:(unint64_t)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = [v13 makeStacksFromWidgets:a3 pageType:a5 environment:self];
  if (v14)
  {
    [v13 layOutStacks:v14 numberOfColumns:a7 forPageType:a5];
    [v12 setStacks:v14];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v18 += [*(*(&v23 + 1) + 8 * i) numberOfLeafIconSpots];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)_suggestShortcutsFromPool:(id)a3 forPage:(id)a4 type:(int64_t)a5 numberOfShortcutsNecessary:(unint64_t)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    v12 = [v10 count];
    if (v12 >= a6)
    {
      v13 = a6;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v10 subarrayWithRange:{0, v13}];
    v15 = [v11 leafIcons];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    v20 = v18;

    v21 = [v14 count];
    if (v21 == [v10 count])
    {
      [v20 addObjectsFromArray:v14];
    }

    else
    {
      v22 = [v14 count];
      if (v22 >= [v10 count])
      {
        [ATXSuggestedPagesGenerator _suggestShortcutsFromPool:a2 forPage:self type:? numberOfShortcutsNecessary:?];
      }

      v23 = [v14 subarrayWithRange:{0, objc_msgSend(v14, "count") - 1}];
      [v20 addObjectsFromArray:v23];
      v24 = [v10 subarrayWithRange:{objc_msgSend(v23, "count"), objc_msgSend(v10, "count") - objc_msgSend(v23, "count")}];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"SHORTCUTS_FOLDER_TITLE" value:&stru_2839A6058 table:0];

      v27 = [objc_alloc(MEMORY[0x277CEB580]) initWithContents:v24];
      v28 = objc_alloc(MEMORY[0x277CEB578]);
      v33[0] = v27;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v30 = [v28 initWithFolderPages:v29 name:v26];

      [v20 addObject:v30];
    }

    [v11 setLeafIcons:v20];
    v19 = [v14 count];
  }

  else
  {
    v19 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

- (unint64_t)_suggestAppsFromPool:(id)a3 forPage:(id)a4 type:(int64_t)a5 numberOfAppsNecessary:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [v10 leafIcons];

  if (v12)
  {
    [ATXSuggestedPagesGenerator _suggestAppsFromPool:a2 forPage:self type:? numberOfAppsNecessary:?];
  }

  [v10 setCandidateApps:v11];
  v13 = [v11 count];
  if (v13 >= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v11 subarrayWithRange:{0, v14}];

  [v10 setLeafIcons:v15];
  v16 = [v10 leafIcons];

  v17 = [v16 count];
  return v17;
}

- (id)_validatedWidgets:(id)a3 bundleIdsToLaunches:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v23 = @"com.apple.Fitness";
  v7 = MEMORY[0x277CEB340];
  v8 = a3;
  v9 = [[v7 alloc] initWithRawLaunchCount:0 uniqueDaysLaunched:0];
  v24[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v11 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__ATXSuggestedPagesGenerator__validatedWidgets_bundleIdsToLaunches___block_invoke;
  v18[3] = &unk_27859B578;
  v19 = v11;
  v20 = self;
  v21 = v10;
  v22 = v6;
  v12 = v6;
  v13 = v10;
  v14 = v11;
  v15 = [v8 _pas_filteredArrayWithTest:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __68__ATXSuggestedPagesGenerator__validatedWidgets_bundleIdsToLaunches___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 appBundleId];
  if (![v4 length])
  {
    goto LABEL_6;
  }

  if ((ATXBundleIdIsFakeContainerBundleId() & 1) == 0)
  {
    if (![MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v4] || (objc_msgSend(*(a1 + 32), "bundleIdIsLockedOrHiddenByUserPreference:", v4) & 1) != 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    v8 = [*(*(a1 + 40) + 24) homeScreenDescriptorForWidget:v3];
    v9 = v8;
    if (v8 && ([v8 disfavoredFamiliesForLocation:0], objc_msgSend(v3, "size"), CHSWidgetFamilyFromATXStackLayoutSize(), CHSWidgetFamilyMaskContainsFamily()))
    {
      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v4;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesGenerator: not allowing widget for %@ because it is disfavored for home screen", &v19, 0xCu);
      }

      v5 = 0;
    }

    else
    {
      if (![v3 requiresAppLaunch])
      {
        v5 = 1;
LABEL_27:

        goto LABEL_7;
      }

      v11 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:1 uniqueDaysLaunched:0];
      }

      v10 = v13;

      v14 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:0 uniqueDaysLaunched:0];
      }

      v17 = v16;

      v5 = [v17 isGreaterThanOrEqualToData:v10];
      if ((v5 & 1) == 0)
      {
        v18 = __atxlog_handle_modes();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412802;
          v20 = v4;
          v21 = 2114;
          v22 = v17;
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesGenerator: not allowing widget for %@ because %{public}@ is not greater than or equal to: %{public}@", &v19, 0x20u);
        }
      }
    }

    goto LABEL_27;
  }

  v5 = 1;
LABEL_7:

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)initWithWidgetAggregator:(uint64_t)a1 appAggregator:(NSObject *)a2 descriptorCache:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not load Home Screen config to find layout info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_suggestShortcutsFromPool:(uint64_t)a1 forPage:(uint64_t)a2 type:numberOfShortcutsNecessary:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesGenerator.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"shortcutsThatFit.count < shortcuts.count"}];
}

- (void)_suggestAppsFromPool:(uint64_t)a1 forPage:(uint64_t)a2 type:numberOfAppsNecessary:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesGenerator.m" lineNumber:223 description:@"Leaf icons should be nil by now"];
}

@end