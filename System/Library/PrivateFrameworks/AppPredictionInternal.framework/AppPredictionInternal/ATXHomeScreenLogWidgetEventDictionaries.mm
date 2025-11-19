@interface ATXHomeScreenLogWidgetEventDictionaries
+ (id)widgetEventDictionaryAccumulatorSplitByLocationKeys;
- (ATXHomeScreenLogWidgetEventDictionaries)init;
- (id)_createNewWidgetEventDictionaryForBundleId:(id)a3 kind:(id)a4 size:(unint64_t)a5;
- (id)_widgetEventDictionaryForATXHomeScreenWidgetIdentifiable:(id)a3;
- (id)_widgetEventDictionaryForHomeScreenEvent:(id)a3;
- (id)_widgetEventDictionaryForWidgetId:(id)a3 widgetKind:(id)a4 widgetSize:(unint64_t)a5;
- (id)_widgetEventDictionaryKeyWithWidgetId:(id)a3 widgetKind:(id)a4 widgetSize:(unint64_t)a5;
- (id)dryRunResult;
- (void)sendToCoreAnalytics;
- (void)updateUnlockSessionsWithWidgetDwell:(id)a3;
- (void)updateWidgetLevelSummaryForHomeScreenEvent:(id)a3 lastStackEvent:(id)a4;
- (void)updateWidgetLevelSummaryForWidgetPseudoTapWithStackShownEvent:(id)a3;
@end

@implementation ATXHomeScreenLogWidgetEventDictionaries

- (ATXHomeScreenLogWidgetEventDictionaries)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenLogWidgetEventDictionaries;
  v2 = [(ATXHomeScreenLogWidgetEventDictionaries *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetEventDictionaries = v2->_widgetEventDictionaries;
    v2->_widgetEventDictionaries = v3;
  }

  return v2;
}

+ (id)widgetEventDictionaryAccumulatorSplitByLocationKeys
{
  if (widgetEventDictionaryAccumulatorSplitByLocationKeys_onceToken != -1)
  {
    +[ATXHomeScreenLogWidgetEventDictionaries widgetEventDictionaryAccumulatorSplitByLocationKeys];
  }

  v3 = widgetEventDictionaryAccumulatorSplitByLocationKeys_array;

  return v3;
}

void __94__ATXHomeScreenLogWidgetEventDictionaries_widgetEventDictionaryAccumulatorSplitByLocationKeys__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"NumberOfPinnedWidgetViewsOn";
  v3[1] = @"NumberOfPinnedWidgetPseudoTapsOn";
  v3[2] = @"NumberOfPinnedWidgetTapsOn";
  v3[3] = @"NumberOfLockUnlockSessionsWithWidgetDwellOn";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = widgetEventDictionaryAccumulatorSplitByLocationKeys_array;
  widgetEventDictionaryAccumulatorSplitByLocationKeys_array = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_widgetEventDictionaryKeyWithWidgetId:(id)a3 widgetKind:(id)a4 widgetSize:(unint64_t)a5
{
  v6 = [MEMORY[0x277CEB9B0] stringRepresentationForExtensionBundleId:a3 kind:a4];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%lu", v6, a5];

  return v7;
}

- (void)updateWidgetLevelSummaryForHomeScreenEvent:(id)a3 lastStackEvent:(id)a4
{
  v10 = a3;
  v5 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForHomeScreenEvent:?];
  if (!v5)
  {
    goto LABEL_47;
  }

  v6 = [v10 eventTypeString];
  if ([v6 isEqualToString:@"Unknown"])
  {
    v7 = 0;
  }

  else if ([v6 isEqualToString:@"HomeScreenPageShown"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToString:@"HomeScreenDisappeared"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToString:@"StackChanged"])
  {
    v7 = 3;
  }

  else if ([v6 isEqualToString:@"WidgetTapped"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToString:@"WidgetLongLook"])
  {
    v7 = 5;
  }

  else if ([v6 isEqualToString:@"WidgetUserFeedback"])
  {
    v7 = 6;
  }

  else if ([v6 isEqualToString:@"UserStackConfigChanged"])
  {
    v7 = 7;
  }

  else if ([v6 isEqualToString:@"DeviceLocked"])
  {
    v7 = 8;
  }

  else if ([v6 isEqualToString:@"DeviceUnlocked"])
  {
    v7 = 9;
  }

  else if ([v6 isEqualToString:@"PinnedWidgetAdded"])
  {
    v7 = 10;
  }

  else if ([v6 isEqualToString:@"PinnedWidgetDeleted"])
  {
    v7 = 11;
  }

  else if ([v6 isEqualToString:@"SpecialPageAppeared"])
  {
    v7 = 12;
  }

  else if ([v6 isEqualToString:@"SpecialPageDisappeared"])
  {
    v7 = 13;
  }

  else if ([v6 isEqualToString:@"StackShown"])
  {
    v7 = 14;
  }

  else if ([v6 isEqualToString:@"StackDisappeared"])
  {
    v7 = 15;
  }

  else if ([v6 isEqualToString:@"StackCreated"])
  {
    v7 = 16;
  }

  else if ([v6 isEqualToString:@"StackDeleted"])
  {
    v7 = 17;
  }

  else if ([v6 isEqualToString:@"WidgetAddedToStack"])
  {
    v7 = 18;
  }

  else
  {
    if ([v6 isEqualToString:@"WidgetRemovedFromStack"])
    {

      [ATXHomeScreenLogUploaderUtilities incrementDictionary:v5 forKey:@"NumberOfInstancesRemovedFromStack"];
      v7 = 19;
      goto LABEL_41;
    }

    if ([v6 isEqualToString:@"StackVisibilityChanged"])
    {
      v7 = 20;
    }

    else if ([v6 isEqualToString:@"AppAdded"])
    {
      v7 = 21;
    }

    else if ([v6 isEqualToString:@"AppRemoved"])
    {
      v7 = 22;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_41:
  if ([v10 stackKind] != 1)
  {
    goto LABEL_47;
  }

  if (v7 == 4)
  {
    v8 = @"NumberOfPinnedWidgetTapsOn";
  }

  else
  {
    if (v7 != 14)
    {
      goto LABEL_47;
    }

    v8 = @"NumberOfPinnedWidgetViewsOn";
  }

  v9 = +[ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:withLocation:](ATXHomeScreenLogUploaderUtilities, "keyByConcatenatingAccumulatorKey:withLocation:", v8, [v10 stackLocation]);
  [ATXHomeScreenLogUploaderUtilities incrementDictionary:v5 forKey:v9];

LABEL_47:
}

- (id)_widgetEventDictionaryForATXHomeScreenWidgetIdentifiable:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionBundleId];
  v6 = [v4 widgetKind];
  v7 = [v4 size];

  v8 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForWidgetId:v5 widgetKind:v6 widgetSize:v7];

  return v8;
}

- (id)_widgetEventDictionaryForHomeScreenEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 widgetBundleId];
  v6 = [v4 widgetKind];
  v7 = [v4 widgetSize];

  v8 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForWidgetId:v5 widgetKind:v6 widgetSize:v7];

  return v8;
}

- (id)_widgetEventDictionaryForWidgetId:(id)a3 widgetKind:(id)a4 widgetSize:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v10 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryKeyWithWidgetId:v8 widgetKind:v9 widgetSize:a5];
    v11 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _createNewWidgetEventDictionaryForBundleId:v8 kind:v9 size:a5];
      [(NSMutableDictionary *)self->_widgetEventDictionaries setObject:v12 forKeyedSubscript:v10];
    }

    v13 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v10];
  }

  else
  {
    v14 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLogWidgetEventDictionaries _widgetEventDictionaryForWidgetId:v8 widgetKind:v9 widgetSize:v14];
    }

    v13 = 0;
  }

  return v13;
}

- (id)_createNewWidgetEventDictionaryForBundleId:(id)a3 kind:(id)a4 size:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v21 = v7;
  v9 = [MEMORY[0x277CEB9B0] stringRepresentationForExtensionBundleId:v6 kind:v7];
  [v8 setObject:v9 forKeyedSubscript:@"WidgetBundleIdAndKind"];

  v10 = ATXStringForStackLayoutSize();
  [v8 setObject:v10 forKeyedSubscript:@"widgetSize"];

  [v8 setObject:&unk_283A577D0 forKeyedSubscript:@"NumberOfInstancesRemovedFromStack"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [objc_opt_class() widgetEventDictionaryAccumulatorSplitByLocationKeys];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = 0;
        v17 = *(*(&v22 + 1) + 8 * i);
        do
        {
          v18 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v17 withLocation:v16];
          [v8 setObject:&unk_283A577D0 forKeyedSubscript:v18];

          ++v16;
        }

        while (v16 != 6);
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)updateWidgetLevelSummaryForWidgetPseudoTapWithStackShownEvent:(id)a3
{
  v6 = a3;
  if ([v6 stackKind] == 1)
  {
    v4 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForHomeScreenEvent:v6];
    if (v4)
    {
      v5 = +[ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:withLocation:](ATXHomeScreenLogUploaderUtilities, "keyByConcatenatingAccumulatorKey:withLocation:", @"NumberOfPinnedWidgetPseudoTapsOn", [v6 stackLocation]);
      [ATXHomeScreenLogUploaderUtilities incrementDictionary:v4 forKey:v5];
    }
  }
}

- (void)updateUnlockSessionsWithWidgetDwell:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForHomeScreenEvent:v9];
        if (v10)
        {
          v11 = +[ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:withLocation:](ATXHomeScreenLogUploaderUtilities, "keyByConcatenatingAccumulatorKey:withLocation:", @"NumberOfLockUnlockSessionsWithWidgetDwellOn", [v9 stackLocation]);
          [ATXHomeScreenLogUploaderUtilities incrementDictionary:v10 forKey:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendToCoreAnalytics
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_widgetEventDictionaries;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138412546;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v9, v13, v14];
        v11 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = v13;
          v19 = v9;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: Widget level dictionary for %@: %@", buf, 0x16u);
        }

        AnalyticsSendEvent();
      }

      v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)dryRunResult
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_widgetEventDictionaries;
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
        v10 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v9];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Widget Level Dictionary For %@", v9];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_widgetEventDictionaryForWidgetId:(uint64_t)a1 widgetKind:(uint64_t)a2 widgetSize:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: unable to get widget event dictionary because missing widgetId (%@) or kind (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end