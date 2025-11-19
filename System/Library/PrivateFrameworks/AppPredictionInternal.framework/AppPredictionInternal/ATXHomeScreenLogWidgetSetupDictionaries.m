@interface ATXHomeScreenLogWidgetSetupDictionaries
- (ATXHomeScreenLogWidgetSetupDictionaries)init;
- (id)dryRunResult;
- (void)_copyAllowedWidgetBundleIds;
- (void)_createNewWidgetSetupDictionaryForWidget:(id)a3 stackKind:(unint64_t)a4 stackLocation:(unint64_t)a5 rowCoordinate:(int64_t)a6 columnCoordinate:(int64_t)a7;
- (void)_createStackConfigStatisticsForWidget:(id)a3 stackKind:(unint64_t)a4;
- (void)_finalizeWidgetSetupDictionaries;
- (void)_persistStackConfigStatistics;
- (void)_removeAuxiliaryFieldsFromWidgetSetupDictionaries;
- (void)sendToCoreAnalytics;
- (void)updateTotalUnlockSessions:(unint64_t)a3;
- (void)updateWidgetLevelParentAppLaunches:(id)a3;
- (void)updateWidgetSetupSummaryForHomeScreenPages:(id)a3;
@end

@implementation ATXHomeScreenLogWidgetSetupDictionaries

- (ATXHomeScreenLogWidgetSetupDictionaries)init
{
  v10.receiver = self;
  v10.super_class = ATXHomeScreenLogWidgetSetupDictionaries;
  v2 = [(ATXHomeScreenLogWidgetSetupDictionaries *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetSetupDictionaries = v2->_widgetSetupDictionaries;
    v2->_widgetSetupDictionaries = v3;

    v5 = objc_opt_new();
    stackConfigDictionary = v2->_stackConfigDictionary;
    v2->_stackConfigDictionary = v5;

    v7 = [MEMORY[0x277CEB5C8] sharedInstance];
    informationStore = v2->_informationStore;
    v2->_informationStore = v7;
  }

  return v2;
}

- (void)updateWidgetSetupSummaryForHomeScreenPages:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__ATXHomeScreenLogWidgetSetupDictionaries_updateWidgetSetupSummaryForHomeScreenPages___block_invoke;
  v4[3] = &unk_27859F538;
  v4[4] = self;
  [a3 enumerateObjectsUsingBlock:v4];
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _persistStackConfigStatistics];
}

void __86__ATXHomeScreenLogWidgetSetupDictionaries_updateWidgetSetupSummaryForHomeScreenPages___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = ATXStackLocationForPageAndIndex();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 stacks];
  v17 = v3;
  v5 = [v3 panels];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  obj = v6;
  v20 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v20)
  {
    v19 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = ATXStackKindForStack();
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v8 widgets];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              [*(a1 + 32) _createNewWidgetSetupDictionaryForWidget:v15 stackKind:v9 stackLocation:v22 rowCoordinate:objc_msgSend(v8 columnCoordinate:{"coordinateRow"), objc_msgSend(v8, "coordinateColumn")}];
              [*(a1 + 32) _createStackConfigStatisticsForWidget:v15 stackKind:v9];
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        ++v7;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_persistStackConfigStatistics
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMutableDictionary *)self->_stackConfigDictionary allKeys];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D420D8]);
        v10 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v8];
        v11 = [v9 initWithBuilder:v10];

        if (([(ATXInformationStore *)self->_informationStore addStackConfigStatistics:v11]& 1) == 0)
        {
          v12 = __atxlog_handle_timeline();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_error_impl(&dword_2263AA000, v12, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogWidgetSetupDictionaries: unable to persist stack config statistics for timeline (%@)", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_createStackConfigStatisticsForWidget:(id)a3 stackKind:(unint64_t)a4
{
  v19 = a3;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v19 extensionBundleId];
  v8 = [v19 widgetKind];
  [v19 size];
  v9 = ATXStringForStackLayoutSize();
  v10 = [v19 appBundleId];
  v11 = [v6 initWithFormat:@"%@:%@:%@:%@", v7, v8, v9, v10];

  v12 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277D420E0]);
    v14 = [v19 extensionBundleId];
    v15 = [v19 widgetKind];
    v16 = [v19 appBundleId];
    [v19 size];
    v17 = [v13 initWithWidgetBundleId:v14 widgetKind:v15 containerBundleIdentifier:v16 widgetFamily:CHSWidgetFamilyFromATXStackLayoutSize()];

    [(NSMutableDictionary *)self->_stackConfigDictionary setObject:v17 forKeyedSubscript:v11];
  }

  if (a4 <= 7)
  {
    if (((1 << a4) & 0x54) != 0)
    {
      v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
      [v18 setCountOfSmartStacksWithWidget:{objc_msgSend(v18, "countOfSmartStacksWithWidget") + 1}];
      goto LABEL_12;
    }

    if (((1 << a4) & 0xA8) != 0)
    {
      v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
      [v18 setCountOfNonSmartStacksWithWidget:{objc_msgSend(v18, "countOfNonSmartStacksWithWidget") + 1}];
      goto LABEL_12;
    }

    if (a4 == 1)
    {
      v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
      [v18 setCountOfStandaloneWidgets:{objc_msgSend(v18, "countOfStandaloneWidgets") + 1}];
      goto LABEL_12;
    }
  }

  if (a4)
  {
    goto LABEL_13;
  }

  v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
  [v18 setCountOfWidgetsWithUnknownStackKind:{objc_msgSend(v18, "countOfWidgetsWithUnknownStackKind") + 1}];
LABEL_12:

LABEL_13:
}

- (void)_createNewWidgetSetupDictionaryForWidget:(id)a3 stackKind:(unint64_t)a4 stackLocation:(unint64_t)a5 rowCoordinate:(int64_t)a6 columnCoordinate:(int64_t)a7
{
  v10 = a3;
  v11 = [v10 extensionBundleId];
  v12 = [v10 widgetKind];
  if ([v11 length] && objc_msgSend(v12, "length"))
  {
    v34 = a7;
    v13 = objc_opt_new();
    v14 = MEMORY[0x277CEB9B0];
    [v10 extensionBundleId];
    v15 = v35 = self;
    v16 = [v10 widgetKind];
    v17 = [v14 stringRepresentationForExtensionBundleId:v15 kind:v16];
    [v13 setObject:v17 forKeyedSubscript:@"WidgetBundleIdAndKind"];

    v18 = MEMORY[0x277CCABB0];
    v19 = [v10 extensionBundleId];
    v20 = [v18 numberWithBool:{+[ATXHomeScreenLogUploaderUtilities isFirstPartyApp:](ATXHomeScreenLogUploaderUtilities, "isFirstPartyApp:", v19)}];
    [v13 setObject:v20 forKeyedSubscript:@"widgetIsFirstParty"];

    [v10 size];
    v21 = ATXStringForStackLayoutSize();
    [v13 setObject:v21 forKeyedSubscript:@"widgetSize"];

    v22 = ATXStringForStackKind();
    [v13 setObject:v22 forKeyedSubscript:@"stackKind"];

    v23 = ATXStringForStackLocation();
    [v13 setObject:v23 forKeyedSubscript:@"stackLocation"];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    [v13 setObject:v24 forKeyedSubscript:@"stackLocationRowCoordinate"];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:v34];
    [v13 setObject:v25 forKeyedSubscript:@"stackLocationColumnCoordinate"];

    v26 = [v10 appBundleId];
    [v13 setObject:v26 forKeyedSubscript:@"ParentAppBundleId"];

    [v13 setObject:&unk_283A56F90 forKeyedSubscript:@"NumberOfLaunchesOfParentApp"];
    v27 = +[ATXHomeScreenLogUploaderUtilities abGroup];
    [v13 setObject:v27 forKeyedSubscript:@"abGroup"];

    v28 = MEMORY[0x277CCABB0];
    v29 = [v10 intent];
    v30 = [v28 numberWithInt:v29 != 0];
    [v13 setObject:v30 forKeyedSubscript:@"AcceptsIntent"];

    v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isOnboardingWidget")}];
    [v13 setObject:v31 forKeyedSubscript:@"isOnboarding"];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isSuggestedWidget")}];
    [v13 setObject:v32 forKeyedSubscript:@"isSuggestedWidget"];

    [(NSMutableArray *)v35->_widgetSetupDictionaries addObject:v13];
  }

  else
  {
    v33 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLogWidgetSetupDictionaries _createNewWidgetSetupDictionaryForWidget:v11 stackKind:v12 stackLocation:v33 rowCoordinate:? columnCoordinate:?];
    }
  }
}

- (void)updateTotalUnlockSessions:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_widgetSetupDictionaries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a3, v12}];
        [v9 setObject:v10 forKeyedSubscript:@"NumberOfLockUnlockSessions"];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateWidgetLevelParentAppLaunches:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_widgetSetupDictionaries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"ParentAppBundleId", v15}];
        if ([v11 length])
        {
          v12 = [v4 objectForKeyedSubscript:v11];

          if (v12)
          {
            v13 = [v4 objectForKeyedSubscript:v11];
            [v10 setObject:v13 forKeyedSubscript:@"NumberOfLaunchesOfParentApp"];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendToCoreAnalytics
{
  v21 = *MEMORY[0x277D85DE8];
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _finalizeWidgetSetupDictionaries];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_widgetSetupDictionaries;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
          *buf = 138412546;
          v17 = v10;
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: Widget Setup dictionary for %@: %@", buf, 0x16u);
        }

        AnalyticsSendEvent();
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeWidgetSetupDictionaries
{
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _removeAuxiliaryFieldsFromWidgetSetupDictionaries];

  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _copyAllowedWidgetBundleIds];
}

- (void)_copyAllowedWidgetBundleIds
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_widgetSetupDictionaries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = MEMORY[0x277CEB9B0];
        v11 = [v9 objectForKeyedSubscript:{@"WidgetBundleIdAndKind", v15}];
        v12 = [v10 widgetBundleIdForWidgetPersonalityStringRepresentation:v11];

        if ([v3 logUploadAllowedForWidgetBundleId:v12])
        {
          v13 = [v9 objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
          [v9 setObject:v13 forKeyedSubscript:@"AllowedWidgetBundleIdAndKind"];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_removeAuxiliaryFieldsFromWidgetSetupDictionaries
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_widgetSetupDictionaries;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeObjectForKey:{@"ParentAppBundleId", v8}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)dryRunResult
{
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _finalizeWidgetSetupDictionaries];
  v3 = objc_opt_new();
  widgetSetupDictionaries = self->_widgetSetupDictionaries;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ATXHomeScreenLogWidgetSetupDictionaries_dryRunResult__block_invoke;
  v7[3] = &unk_27859F560;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)widgetSetupDictionaries enumerateObjectsUsingBlock:v7];

  return v5;
}

void __55__ATXHomeScreenLogWidgetSetupDictionaries_dryRunResult__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 alloc];
  v10 = [v6 objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
  v8 = [v6 objectForKeyedSubscript:@"stackLocation"];
  v9 = [v7 initWithFormat:@"Widget Setup Dictionary (%lu) for %@, location:%@", a3, v10, v8];
  [v4 setObject:v6 forKeyedSubscript:v9];
}

- (void)_createNewWidgetSetupDictionaryForWidget:(os_log_t)log stackKind:stackLocation:rowCoordinate:columnCoordinate:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: unable to get widget setup dictionary because missing widgetId (%@) or kind (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end