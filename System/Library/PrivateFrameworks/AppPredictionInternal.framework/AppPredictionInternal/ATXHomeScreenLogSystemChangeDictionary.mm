@interface ATXHomeScreenLogSystemChangeDictionary
+ (id)systemChangeDictionaryAccumulatorKeys;
- (ATXHomeScreenLogSystemChangeDictionary)init;
- (BOOL)_fetchHasHadWidgetsOnHomeScreenUserDefault;
- (BOOL)_suggestedWidgetWasExplicitlyDismissedWithEvent:(id)event;
- (id)_createNewSystemChangeDictionary;
- (id)dryRunResult;
- (void)_logSuggestedWidgetDismissalWithEvent:(id)event;
- (void)_logSuggestedWidgetExplicitDismissalWithEvent:(id)event;
- (void)sendToCoreAnalytics;
- (void)updateSystemChangeSummaryForHomeScreenEvent:(id)event;
- (void)updateSystemChangeSummaryForHomeScreenPages:(id)pages;
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
    _createNewSystemChangeDictionary = [(ATXHomeScreenLogSystemChangeDictionary *)v2 _createNewSystemChangeDictionary];
    systemChangeDictionary = v3->_systemChangeDictionary;
    v3->_systemChangeDictionary = _createNewSystemChangeDictionary;
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
  systemChangeDictionaryAccumulatorKeys = [objc_opt_class() systemChangeDictionaryAccumulatorKeys];
  v6 = [systemChangeDictionaryAccumulatorKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(systemChangeDictionaryAccumulatorKeys);
        }

        [v3 setObject:&unk_283A55FD0 forKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [systemChangeDictionaryAccumulatorKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)updateSystemChangeSummaryForHomeScreenPages:(id)pages
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = pages;
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
          stacks = [v9 stacks];
          panels = [v9 panels];
          v12 = [stacks arrayByAddingObjectsFromArray:panels];

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

                widgets = [*(*(&v23 + 1) + 8 * i) widgets];
                +[ATXHomeScreenLogUploaderUtilities add:toDictionary:forKey:](ATXHomeScreenLogUploaderUtilities, "add:toDictionary:forKey:", [widgets count], self->_systemChangeDictionary, @"WidgetsOnHomeScreen");
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

- (void)updateSystemChangeSummaryForHomeScreenEvent:(id)event
{
  eventCopy = event;
  eventTypeString = [eventCopy eventTypeString];
  if ([eventTypeString isEqualToString:@"Unknown"] & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"HomeScreenPageShown") & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"HomeScreenDisappeared") & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"StackChanged") & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetTapped") & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetLongLook"))
  {
    goto LABEL_7;
  }

  if (([eventTypeString isEqualToString:@"WidgetUserFeedback"] & 1) == 0)
  {
    if (([eventTypeString isEqualToString:@"UserStackConfigChanged"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"DeviceLocked") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"DeviceUnlocked") & 1) == 0)
    {
      if ([eventTypeString isEqualToString:@"PinnedWidgetAdded"])
      {

        metadata = [eventCopy metadata];
        isSuggestionInAddWidgetSheet = [metadata isSuggestionInAddWidgetSheet];
        bOOLValue = [isSuggestionInAddWidgetSheet BOOLValue];

        systemChangeDictionary = self->_systemChangeDictionary;
        if (bOOLValue)
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

      if ([eventTypeString isEqualToString:@"PinnedWidgetDeleted"])
      {

        metadata = [eventCopy metadata];
        [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"WidgetsRemoved"];
        goto LABEL_22;
      }

      if (([eventTypeString isEqualToString:@"SpecialPageAppeared"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"SpecialPageDisappeared") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackDisappeared") & 1) == 0)
      {
        if ([eventTypeString isEqualToString:@"StackCreated"])
        {

          metadata = [eventCopy metadata];
          isSuggestionInAddWidgetSheet2 = [metadata isSuggestionInAddWidgetSheet];
          bOOLValue2 = [isSuggestionInAddWidgetSheet2 BOOLValue];

          v12 = self->_systemChangeDictionary;
          if (bOOLValue2)
          {
            [ATXHomeScreenLogUploaderUtilities incrementDictionary:v12 forKey:@"DefaultStacksCreated"];
            widgetsInStack = [metadata widgetsInStack];
            v14 = [widgetsInStack count];
            v15 = self->_systemChangeDictionary;
            v16 = @"WidgetsAddedToStackInGallerySuggestions";
          }

          else
          {
            [ATXHomeScreenLogUploaderUtilities incrementDictionary:v12 forKey:@"ManualStacksCreated"];
            widgetsInStack = [metadata widgetsInStack];
            v14 = [widgetsInStack count];
            v15 = self->_systemChangeDictionary;
            v16 = @"WidgetsAddedToStackNotInGallerySuggestions";
          }
        }

        else
        {
          if (([eventTypeString isEqualToString:@"StackDeleted"] & 1) == 0)
          {
            if ([eventTypeString isEqualToString:@"WidgetAddedToStack"])
            {

              metadata = [eventCopy metadata];
              isSuggestionInAddWidgetSheet3 = [metadata isSuggestionInAddWidgetSheet];
              bOOLValue3 = [isSuggestionInAddWidgetSheet3 BOOLValue];

              systemChangeDictionary = self->_systemChangeDictionary;
              if (bOOLValue3)
              {
                v9 = @"WidgetsAddedToStackInGallerySuggestions";
              }

              else
              {
                v9 = @"WidgetsAddedToStackNotInGallerySuggestions";
              }

              goto LABEL_25;
            }

            if (([eventTypeString isEqualToString:@"WidgetRemovedFromStack"] & 1) == 0)
            {
              if (([eventTypeString isEqualToString:@"StackVisibilityChanged"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"AppAdded") & 1) == 0)
              {
                [eventTypeString isEqualToString:@"AppRemoved"];
              }

              goto LABEL_7;
            }

            metadata = [eventCopy metadata];
            [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"WidgetsRemovedFromStack"];
            [(ATXHomeScreenLogSystemChangeDictionary *)self _logSuggestedWidgetDismissalWithEvent:eventCopy];
LABEL_22:
            [eventCopy stackLocation];
            if (!ATXStackLocationIsHomeScreen())
            {
              goto LABEL_8;
            }

            systemChangeDictionary = self->_systemChangeDictionary;
            v9 = @"WidgetsRemovedFromHomeScreen";
            goto LABEL_25;
          }

          metadata = [eventCopy metadata];
          [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"StacksRemoved"];
          widgetsInStack2 = [metadata widgetsInStack];
          +[ATXHomeScreenLogUploaderUtilities add:toDictionary:forKey:](ATXHomeScreenLogUploaderUtilities, "add:toDictionary:forKey:", [widgetsInStack2 count], self->_systemChangeDictionary, @"WidgetsRemovedFromStack");

          [eventCopy stackLocation];
          if (!ATXStackLocationIsHomeScreen())
          {
            goto LABEL_8;
          }

          widgetsInStack = [metadata widgetsInStack];
          v14 = [widgetsInStack count];
          v15 = self->_systemChangeDictionary;
          v16 = @"WidgetsRemovedFromHomeScreen";
        }

        [ATXHomeScreenLogUploaderUtilities add:v14 toDictionary:v15 forKey:v16];

        goto LABEL_8;
      }
    }

LABEL_7:

    metadata = [eventCopy metadata];
    goto LABEL_8;
  }

  metadata = [eventCopy metadata];
  if ([(ATXHomeScreenLogSystemChangeDictionary *)self _suggestedWidgetWasExplicitlyDismissedWithEvent:eventCopy])
  {
    [(ATXHomeScreenLogSystemChangeDictionary *)self _logSuggestedWidgetExplicitDismissalWithEvent:eventCopy];
    [(ATXHomeScreenLogSystemChangeDictionary *)self _logSuggestedWidgetDismissalWithEvent:eventCopy];
  }

LABEL_8:
}

- (BOOL)_suggestedWidgetWasExplicitlyDismissedWithEvent:(id)event
{
  reason = [event reason];
  v4 = NSStringForATXHomeScreenWidgetExplicitFeedback();
  v5 = reason == v4;

  return v5;
}

- (void)_logSuggestedWidgetExplicitDismissalWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isSuggestedWidget])
  {
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"SuggestedWidgetsDismissed"];
    appBundleId = [eventCopy appBundleId];
    v5 = [ATXHomeScreenLogUploaderUtilities isFirstPartyApp:appBundleId];

    if (!v5)
    {
      [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"SuggestedWidgetsFrom3PAppsDismissed"];
    }
  }
}

- (void)_logSuggestedWidgetDismissalWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isSuggestedWidget])
  {
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemChangeDictionary forKey:@"SuggestedWidgetsRemovedFromStack"];
    appBundleId = [eventCopy appBundleId];
    if (appBundleId)
    {
      v5 = appBundleId;
      appBundleId2 = [eventCopy appBundleId];
      v7 = [ATXHomeScreenLogUploaderUtilities isFirstPartyApp:appBundleId2];

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