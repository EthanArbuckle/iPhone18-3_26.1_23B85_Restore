@interface ATXHomeScreenLogWidgetAddSheetDictionaries
+ (id)rankKeysSplitBySize;
- (ATXHomeScreenLogWidgetAddSheetDictionaries)init;
- (id)_createNewWidgetAddSheetDictionaryForBundleId:(id)a3 kind:(id)a4;
- (id)_widgetAddSheetDictionaryForDescriptor:(id)a3;
- (id)_widgetAddSheetDictionaryForWidgetId:(id)a3 widgetKind:(id)a4;
- (id)dryRunResult;
- (void)_updateWidgetAddSheetDictionariesForStack:(id)a3 suggestedSize:(unint64_t)a4;
- (void)_updateWidgetAddSheetDictionariesWithDictionary:(id)a3 suggestedSize:(unint64_t)a4 inStack:(BOOL)a5 rank:(unint64_t)a6;
- (void)sendToCoreAnalytics;
- (void)updateWidgetAddSheetSummaryForDefaultStack:(id)a3;
- (void)updateWidgetAddSheetSummaryForSuggestions:(id)a3;
@end

@implementation ATXHomeScreenLogWidgetAddSheetDictionaries

- (ATXHomeScreenLogWidgetAddSheetDictionaries)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenLogWidgetAddSheetDictionaries;
  v2 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetAddSheetDictionaries = v2->_widgetAddSheetDictionaries;
    v2->_widgetAddSheetDictionaries = v3;
  }

  return v2;
}

+ (id)rankKeysSplitBySize
{
  if (rankKeysSplitBySize__pasOnceToken7 != -1)
  {
    +[ATXHomeScreenLogWidgetAddSheetDictionaries rankKeysSplitBySize];
  }

  v3 = rankKeysSplitBySize__pasExprOnceResult;

  return v3;
}

void __65__ATXHomeScreenLogWidgetAddSheetDictionaries_rankKeysSplitBySize__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v4[0] = @"RankInGallery";
  v4[1] = @"RankInStack";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = rankKeysSplitBySize__pasExprOnceResult;
  rankKeysSplitBySize__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_createNewWidgetAddSheetDictionaryForBundleId:(id)a3 kind:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v19 = v6;
  v8 = [MEMORY[0x277CEB9B0] stringRepresentationForExtensionBundleId:v5 kind:v6];
  [v7 setObject:v8 forKeyedSubscript:@"WidgetBundleIdAndKind"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [objc_opt_class() rankKeysSplitBySize];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = 0;
        v15 = *(*(&v20 + 1) + 8 * i);
        do
        {
          v16 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v15 withSize:v14];
          [v7 setObject:&unk_283A56DF8 forKeyedSubscript:v16];

          ++v14;
        }

        while (v14 != 3);
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)updateWidgetAddSheetSummaryForSuggestions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        ++v7;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _widgetAddSheetDictionaryForStack];
          v13 = [v11 suggestedSize];

          [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesWithDictionary:v12 suggestedSize:v13 inStack:0 rank:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForDescriptor:v10 inStack:0 rank:v7];
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateWidgetAddSheetSummaryForDefaultStack:(id)a3
{
  v4 = a3;
  v5 = [v4 smallDefaultStack];
  [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForStack:v5 suggestedSize:0];

  v6 = [v4 mediumDefaultStack];
  [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForStack:v6 suggestedSize:1];

  v7 = [v4 largeDefaultStack];

  [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForStack:v7 suggestedSize:2];
}

- (void)_updateWidgetAddSheetDictionariesForStack:(id)a3 suggestedSize:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForDescriptor:*(*(&v12 + 1) + 8 * v10++) inStack:1 rank:++v8];
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateWidgetAddSheetDictionariesWithDictionary:(id)a3 suggestedSize:(unint64_t)a4 inStack:(BOOL)a5 rank:(unint64_t)a6
{
  v7 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
    v12 = ATXCAStringForStackLayoutSize();
    v17 = 138413058;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2048;
    v22 = a6;
    v23 = 1024;
    v24 = v7;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: suggested: %@ of size %{public}@ in pos %lu in stack? %d", &v17, 0x26u);
  }

  if (v9)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    if (v7)
    {
      v14 = @"RankInStack";
    }

    else
    {
      v14 = @"RankInGallery";
    }

    v15 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v14 withSize:a4];
    [v9 setObject:v13 forKeyedSubscript:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_widgetAddSheetDictionaryForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionBundleIdForMetrics];
  v6 = [v4 widgetKind];

  v7 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _widgetAddSheetDictionaryForWidgetId:v5 widgetKind:v6];

  return v7;
}

- (id)_widgetAddSheetDictionaryForWidgetId:(id)a3 widgetKind:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self widgetAddSheetDictionaryKeyWithWidgetId:v6 widgetKind:v7];
    v9 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _createNewWidgetAddSheetDictionaryForBundleId:v6 kind:v7];
      [(NSMutableDictionary *)self->_widgetAddSheetDictionaries setObject:v10 forKeyedSubscript:v8];
    }

    v11 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:v8];
  }

  else
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenLogWidgetAddSheetDictionaries *)v6 _widgetAddSheetDictionaryForWidgetId:v7 widgetKind:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (id)dryRunResult
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_widgetAddSheetDictionaries;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:v9];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Widget Add Sheet Dictionary For %@", v9];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)sendToCoreAnalytics
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_widgetAddSheetDictionaries;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
        AnalyticsSendEvent();

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_widgetAddSheetDictionaryForWidgetId:(os_log_t)log widgetKind:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: unable to get widget add sheet dictionary because missing widgetId (%@) or kind (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end