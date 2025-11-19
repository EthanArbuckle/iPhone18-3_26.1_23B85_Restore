@interface ATXHomeScreenLogSystemChangeDictionary
+ (id)systemChangeDictionaryAccumulatorKeys;
- (ATXHomeScreenLogSystemChangeDictionary)init;
- (BOOL)_fetchHasHadWidgetsOnHomeScreenUserDefault;
- (BOOL)_suggestedWidgetWasExplicitlyDismissedWithEvent:(id)a3;
- (id)_createNewSystemChangeDictionary;
- (id)dryRunResult;
- (void)_logSuggestedWidgetDismissalWithEvent:(id)a3;
- (void)_logSuggestedWidgetExplicitDismissalWithEvent:(id)a3;
- (void)sendToCoreAnalytics;
- (void)updateSystemChangeSummaryForHomeScreenEvent:(id)a3;
- (void)updateSystemChangeSummaryForHomeScreenPages:(id)a3;
@end

@implementation ATXHomeScreenLogSystemChangeDictionary

- (ATXHomeScreenLogSystemChangeDictionary)init
{
  v7.receiver = self;
  v7.super_class = ATXHomeScreenLogSystemChangeDictionary;
  v2 = [(ATXHomeScreenLogSystemChangeDictionary *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(ATXHomeScreenLogSystemChangeDictionary *)v2 _createNewSystemChangeDictionary];
    systemChangeDictionary = v3->_systemChangeDictionary;
    v3->_systemChangeDictionary = v4;
  }

  return v3;
}

+ (id)systemChangeDictionaryAccumulatorKeys
{
  if (systemChangeDictionaryAccumulatorKeys_onceToken != -1)
  {
    +[ATXHomeScreenLogSystemChangeDictionary systemChangeDictionaryAccumulatorKeys];
  }

  v3 = systemChangeDictionaryAccumulatorKeys_array;

  return v3;
}

void __79__ATXHomeScreenLogSystemChangeDictionary_systemChangeDictionaryAccumulatorKeys__block_invoke()
{
  v3[15] = *MEMORY[0x277D85DE8];
  v3[0] = @"DefaultStacksCreated";
  v3[1] = @"ManualStacksCreated";
  v3[2] = @"StacksRemoved";
  v3[3] = @"WidgetsAddedViaAppList";
  v3[4] = @"WidgetsAddedViaGallery";
  v3[5] = @"WidgetsRemoved";
  v3[6] = @"WidgetsAddedToStackInGallerySuggestions";
  v3[7] = @"WidgetsAddedToStackNotInGallerySuggestions";
  v3[8] = @"WidgetsRemovedFromStack";
  v3[9] = @"WidgetsRemovedFromHomeScreen";
  v3[10] = @"WidgetsOnHomeScreen";
  v3[11] = @"SuggestedWidgetsRemovedFromStack";
  v3[12] = @"SuggestedWidgetsFrom3PAppsRemovedFromStack";
  v3[13] = @"SuggestedWidgetsDismissed";
  v3[14] = @"SuggestedWidgetsFrom3PAppsDismissed";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:15];
  v1 = systemChangeDictionaryAccumulatorKeys_array;
  systemChangeDictionaryAccumulatorKeys_array = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_createNewSystemChangeDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXHomeScreenLogSystemChangeDictionary _fetchHasHadWidgetsOnHomeScreenUserDefault](self, "_fetchHasHadWidgetsOnHomeScreenUserDefault")}];
  [v3 setObject:v4 forKeyedSubscript:@"HasHadWidgetsOnHomeScreen"];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [objc_opt_class() systemChangeDictionaryAccumulatorKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 setObject:&unk_283A55FD0 forKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)updateSystemChangeSummaryForHomeScreenPages:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = *MEMORY[0x277CEBAE8];
    v19 = *MEMORY[0x277CEBAE8];
    v20 = *v28;
    do
    {
      v8 = 0;
      v21 = v5;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        if ([v9 pageIndex] != v7)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = [v9 stacks];
          v11 = [v9 panels];
          v12 = [v10 arrayByAddingObjectsFromArray:v11];

          v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v23 + 1) + 8 * i) widgets];
                +[ATXHomeScreenLogUploaderUtilities add:toDictionary:forKey:](ATXHomeScreenLogUploaderUtilities, "add:toDictionary:forKey:", [v17 count], self->_systemChangeDictionary, @"WidgetsOnHomeScreen");
              }

              v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v14);
          }

          v7 = v19;
          v6 = v20;
          v5 = v21;
        }

        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_fetchHasHadWidgetsOnHomeScreenUserDefault
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 BOOLForKey:*MEMORY[0x277CEBD20]];

  return v4;
}

- (void)updateSystemChangeSummaryForHomeScreenEvent:(id)a3
{
  v20 = a3;
  v4 = [v20 eventTypeString];
  if ([v4 isEqualToString:@"Unknown"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"HomeScreenPageShown") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"HomeScreenDisappeared") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"StackChanged") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"WidgetTapped") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"WidgetLongLook"))
  {
    goto LABEL_7;
  }

  if (([v4 isEqualToString:@"WidgetUserFeedback"] & 1) == 0)
  {
    if (([v4 isEqualToString:@"UserStackConfigChanged"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"DeviceLocked") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"DeviceUnlocked") & 1) == 0)
    {
      if ([v4 isEqualToString:@"PinnedWidgetAdded"])
      {

        v5 = [v20 metadata];
        v6 = [v5 isSuggestionInAddWidgetSheet];
        v7 = [v6 BOOLValue];

        systemChangeDictionary = self->_systemChangeDictionary;
        if (v7)
        {
          v9 = @"WidgetsAddedViaGallery";
        }

        else
        {
          v9 = @"WidgetsAddedViaAppList";
        }

LABEL_25:
        [ATXHomeScreenLogUploaderUtilities incrementDictionary:systemChangeDictionary forKey:v9];
        goto LABEL_8;
      }

      if ([v4 isEqualToString:@"PinnedWidgetDeleted"])
      {

        v5 = [v20 metadata];
        [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"WidgetsRemoved"];
        goto LABEL_22;
      }

      if (([v4 isEqualToString:@"SpecialPageAppeared"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"SpecialPageDisappeared") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"StackDisappeared") & 1) == 0)
      {
        if ([v4 isEqualToString:@"StackCreated"])
        {

          v5 = [v20 metadata];
          v10 = [v5 isSuggestionInAddWidgetSheet];
          v11 = [v10 BOOLValue];

          v12 = self->_systemChangeDictionary;
          if (v11)
          {
            [ATXHomeScreenLogUploaderUtilities incrementDictionary:v12 forKey:@"DefaultStacksCreated"];
            v13 = [v5 widgetsInStack];
            v14 = [v13 count];
            v15 = self->_systemChangeDictionary;
            v16 = @"WidgetsAddedToStackInGallerySuggestions";
          }

          else
          {
            [ATXHomeScreenLogUploaderUtilities incrementDictionary:v12 forKey:@"ManualStacksCreated"];
            v13 = [v5 widgetsInStack];
            v14 = [v13 count];
            v15 = self->_systemChangeDictionary;
            v16 = @"WidgetsAddedToStackNotInGallerySuggestions";
          }
        }

        else
        {
          if (([v4 isEqualToString:@"StackDeleted"] & 1) == 0)
          {
            if ([v4 isEqualToString:@"WidgetAddedToStack"])
            {

              v5 = [v20 metadata];
              v18 = [v5 isSuggestionInAddWidgetSheet];
              v19 = [v18 BOOLValue];

              systemChangeDictionary = self->_systemChangeDictionary;
              if (v19)
              {
                v9 = @"WidgetsAddedToStackInGallerySuggestions";
              }

              else
              {
                v9 = @"WidgetsAddedToStackNotInGallerySuggestions";
              }

              goto LABEL_25;
            }

            if (([v4 isEqualToString:@"WidgetRemovedFromStack"] & 1) == 0)
            {
              if (([v4 isEqualToString:@"StackVisibilityChanged"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"AppAdded") & 1) == 0)
              {
                [v4 isEqualToString:@"AppRemoved"];
              }

              goto LABEL_7;
            }

            v5 = [v20 metadata];
            [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"WidgetsRemovedFromStack"];
            [(ATXHomeScreenLogSystemChangeDictionary *)self _logSuggestedWidgetDismissalWithEvent:v20];
LABEL_22:
            [v20 stackLocation];
            if (!ATXStackLocationIsHomeScreen())
            {
              goto LABEL_8;
            }

            systemChangeDictionary = self->_systemChangeDictionary;
            v9 = @"WidgetsRemovedFromHomeScreen";
            goto LABEL_25;
          }

          v5 = [v20 metadata];
          [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"StacksRemoved"];
          v17 = [v5 widgetsInStack];
          +[ATXHomeScreenLogUploaderUtilities add:toDictionary:forKey:](ATXHomeScreenLogUploaderUtilities, "add:toDictionary:forKey:", [v17 count], self->_systemChangeDictionary, @"WidgetsRemovedFromStack");

          [v20 stackLocation];
          if (!ATXStackLocationIsHomeScreen())
          {
            goto LABEL_8;
          }

          v13 = [v5 widgetsInStack];
          v14 = [v13 count];
          v15 = self->_systemChangeDictionary;
          v16 = @"WidgetsRemovedFromHomeScreen";
        }

        [ATXHomeScreenLogUploaderUtilities add:v14 toDictionary:v15 forKey:v16];

        goto LABEL_8;
      }
    }

LABEL_7:

    v5 = [v20 metadata];
    goto LABEL_8;
  }

  v5 = [v20 metadata];
  if ([(ATXHomeScreenLogSystemChangeDictionary *)self _suggestedWidgetWasExplicitlyDismissedWithEvent:v20])
  {
    [(ATXHomeScreenLogSystemChangeDictionary *)self _logSuggestedWidgetExplicitDismissalWithEvent:v20];
    [(ATXHomeScreenLogSystemChangeDictionary *)self _logSuggestedWidgetDismissalWithEvent:v20];
  }

LABEL_8:
}

- (BOOL)_suggestedWidgetWasExplicitlyDismissedWithEvent:(id)a3
{
  v3 = [a3 reason];
  v4 = NSStringForATXHomeScreenWidgetExplicitFeedback();
  v5 = v3 == v4;

  return v5;
}

- (void)_logSuggestedWidgetExplicitDismissalWithEvent:(id)a3
{
  v6 = a3;
  if ([v6 isSuggestedWidget])
  {
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"SuggestedWidgetsDismissed"];
    v4 = [v6 appBundleId];
    v5 = [ATXHomeScreenLogUploaderUtilities isFirstPartyApp:v4];

    if (!v5)
    {
      [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"SuggestedWidgetsFrom3PAppsDismissed"];
    }
  }
}

- (void)_logSuggestedWidgetDismissalWithEvent:(id)a3
{
  v8 = a3;
  if ([v8 isSuggestedWidget])
  {
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"SuggestedWidgetsRemovedFromStack"];
    v4 = [v8 appBundleId];
    if (v4)
    {
      v5 = v4;
      v6 = [v8 appBundleId];
      v7 = [ATXHomeScreenLogUploaderUtilities isFirstPartyApp:v6];

      if (!v7)
      {
        [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"SuggestedWidgetsFrom3PAppsRemovedFromStack"];
      }
    }
  }
}

- (void)sendToCoreAnalytics
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    systemChangeDictionary = self->_systemChangeDictionary;
    v7 = 138412290;
    v8 = systemChangeDictionary;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: System change dictionary: %@", &v7, 0xCu);
  }

  v5 = self->_systemChangeDictionary;
  AnalyticsSendEvent();
  v6 = *MEMORY[0x277D85DE8];
}

- (id)dryRunResult
{
  v7[1] = *MEMORY[0x277D85DE8];
  systemChangeDictionary = self->_systemChangeDictionary;
  v6 = @"System Change Dictionary";
  v7[0] = systemChangeDictionary;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end