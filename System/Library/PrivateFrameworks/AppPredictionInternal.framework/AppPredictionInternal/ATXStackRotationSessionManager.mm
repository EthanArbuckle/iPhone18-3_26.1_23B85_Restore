@interface ATXStackRotationSessionManager
- (ATXStackRotationSessionManager)init;
- (ATXStackRotationSessionManager)initWithCoder:(id)a3;
- (ATXStackRotationSessionManager)initWithStackIdToStackRotationSessions:(id)a3 completedSessions:(id)a4 recentHomeScreenCachedSuggestions:(id)a5 nPlusOneSuggestionUUIDsWithFirstRotation:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXStackRotationSessionManager:(id)a3;
- (id)removeAllAndReturnCompletedSystemSuggestSessions;
- (id)removeAndReturnCompletedSessions;
- (id)uuidsOfNPlusOneSuggestionsFromCachedSuggestions:(id)a3;
- (void)_tryEndStackRotationSessionWithStackId:(id)a3 homeScreenEvent:(id)a4;
- (void)_tryPruneSessionsOverMaxLimit;
- (void)_tryStartStackRotationSessionWithStackId:(id)a3 homeScreenEvent:(id)a4;
- (void)_tryUpdateNPlusOneStatusForSession:(id)a3 stackId:(id)a4;
- (void)_tryUpdateStackRotationSessionWithSystemSuggestLayout:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithBlendingUICacheUpdate:(id)a3;
- (void)updateWithUIEvent:(id)a3;
@end

@implementation ATXStackRotationSessionManager

- (ATXStackRotationSessionManager)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXStackRotationSessionManager *)self initWithStackIdToStackRotationSessions:v3 completedSessions:v4 recentHomeScreenCachedSuggestions:v5 nPlusOneSuggestionUUIDsWithFirstRotation:v6];

  return v7;
}

- (ATXStackRotationSessionManager)initWithStackIdToStackRotationSessions:(id)a3 completedSessions:(id)a4 recentHomeScreenCachedSuggestions:(id)a5 nPlusOneSuggestionUUIDsWithFirstRotation:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXStackRotationSessionManager;
  v15 = [(ATXStackRotationSessionManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_stackIdToStackRotationSessions, a3);
    objc_storeStrong(&v16->_completedSessions, a4);
    objc_storeStrong(&v16->_recentHomeScreenCachedSuggestions, a5);
    objc_storeStrong(&v16->_nPlusOneSuggestionUUIDsWithFirstRotation, a6);
  }

  return v16;
}

- (void)_tryPruneSessionsOverMaxLimit
{
  v3 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions count];
  if (v3 > kATXStackRotationSessionManagerMaxConcurrentSessions)
  {
    [(NSMutableDictionary *)self->_stackIdToStackRotationSessions removeAllObjects];
  }

  v4 = [(NSMutableSet *)self->_nPlusOneSuggestionUUIDsWithFirstRotation count];
  if (v4 > kATXStackRotationSessionManagerMaxConcurrentNPlusOneSuggestions)
  {
    nPlusOneSuggestionUUIDsWithFirstRotation = self->_nPlusOneSuggestionUUIDsWithFirstRotation;

    [(NSMutableSet *)nPlusOneSuggestionUUIDsWithFirstRotation removeAllObjects];
  }
}

- (void)_tryEndStackRotationSessionWithStackId:(id)a3 homeScreenEvent:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      [v9 finalizeWithEndingStackChangeEvent:v8];
      [(NSMutableDictionary *)self->_stackIdToStackRotationSessions removeObjectForKey:v6];
      [(NSMutableArray *)self->_completedSessions addObject:v10];
      v11 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ATXStackRotationSessionManager _tryEndStackRotationSessionWithStackId:homeScreenEvent:];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138412802;
      v16 = v14;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_2263AA000, v10, OS_LOG_TYPE_ERROR, "%@ - could not end session because of missing fields, stackId: %@, homeScreenEvent: %@", &v15, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_tryStartStackRotationSessionWithStackId:(id)a3 homeScreenEvent:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7 && ([v7 reason], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    [(ATXStackRotationSessionManager *)self _tryPruneSessionsOverMaxLimit];
    v10 = [[ATXStackRotationSession alloc] initWithStartingStackChangeEvent:v8];
    [(ATXStackRotationSessionManager *)self _tryUpdateStackRotationSessionWithSystemSuggestLayout:v10];
    [(ATXStackRotationSessionManager *)self _tryUpdateNPlusOneStatusForSession:v10 stackId:v6];
    [(NSMutableDictionary *)self->_stackIdToStackRotationSessions setValue:v10 forKey:v6];
    v11 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXStackRotationSessionManager _tryStartStackRotationSessionWithStackId:homeScreenEvent:];
    }
  }

  else
  {
    v10 = __atxlog_handle_metrics();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v8 reason];
      v16 = 138413058;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v8;
      _os_log_error_impl(&dword_2263AA000, &v10->super, OS_LOG_TYPE_ERROR, "%@ - could not start session because of missing fields, stackId: %@, reason: %@, homeScreenEvent: %@", &v16, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:(id)a3
{
  v4 = [a3 homeScreenEvent];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 eventTypeString];
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

    else if ([v6 isEqualToString:@"WidgetRemovedFromStack"])
    {
      v7 = 19;
    }

    else if ([v6 isEqualToString:@"StackVisibilityChanged"])
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

    v8 = [v5 stackId];
    if (!v8)
    {
      goto LABEL_87;
    }

    if (v7 > 13)
    {
      switch(v7)
      {
        case 14:
          v9 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:v8];
          if (!v9)
          {
            goto LABEL_86;
          }

          v15 = [v5 widgetUniqueId];
          v16 = [v9 widgetUniqueId];
          v17 = [v15 isEqualToString:v16];

          if (!v17)
          {
            goto LABEL_86;
          }

          v18 = [v5 date];
          [v9 markStackShownAtDate:v18];

          v11 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
        case 15:
          v9 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:v8];
          if (!v9)
          {
            goto LABEL_86;
          }

          v22 = [v5 widgetUniqueId];
          v23 = [v9 widgetUniqueId];
          v24 = [v22 isEqualToString:v23];

          if (!v24)
          {
            goto LABEL_86;
          }

          v25 = [v5 date];
          [v9 markStackHiddenAtDate:v25];

          v11 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
        case 17:
          v9 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:v8];
          if (!v9)
          {
LABEL_86:

            break;
          }

          [(ATXStackRotationSessionManager *)self _tryEndStackRotationSessionWithStackId:v8 homeScreenEvent:v5];
          v11 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          [(ATXStackRotationSessionManager *)self _tryEndStackRotationSessionWithStackId:v8 homeScreenEvent:v5];
          [(ATXStackRotationSessionManager *)self _tryStartStackRotationSessionWithStackId:v8 homeScreenEvent:v5];
          break;
        case 4:
          v9 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:v8];
          if (!v9)
          {
            goto LABEL_86;
          }

          v19 = [v5 widgetUniqueId];
          v20 = [v9 widgetUniqueId];
          v21 = [v19 isEqualToString:v20];

          if (!v21)
          {
            goto LABEL_86;
          }

          [v9 markStackTapped];
          v11 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
        case 6:
          v9 = [v5 reason];
          v10 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:v8];
          v11 = v10;
          if (!v9 || !v10)
          {
            goto LABEL_85;
          }

          v12 = NSStringForATXHomeScreenWidgetExplicitFeedback();
          v13 = [v9 isEqualToString:v12];

          if (v13)
          {
            [v11 markAddedToStack];
            v14 = __atxlog_handle_metrics();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [ATXStackRotationSessionManager updateWithUIEvent:];
            }

LABEL_84:

            goto LABEL_85;
          }

          v26 = NSStringForATXHomeScreenWidgetExplicitFeedback();
          v27 = [v9 isEqualToString:v26];

          if (v27)
          {
            [v11 markRejectedRotationDismissOnce];
            v14 = __atxlog_handle_metrics();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [ATXStackRotationSessionManager updateWithUIEvent:];
            }

            goto LABEL_84;
          }

          v28 = NSStringForATXHomeScreenWidgetExplicitFeedback();
          v29 = [v9 isEqualToString:v28];

          if (v29)
          {
            [v11 markRejectedRotationNeverShowAgain];
            v14 = __atxlog_handle_metrics();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [ATXStackRotationSessionManager updateWithUIEvent:];
            }

            goto LABEL_84;
          }

LABEL_85:

          goto LABEL_86;
      }
    }

LABEL_87:
  }
}

- (void)updateWithBlendingUICacheUpdate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uiCache];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = [v4 uiCache];
  v8 = [v7 cachedTopOfStackLayouts];
  if ([v8 count])
  {

LABEL_5:
    [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions addObject:v7];
    goto LABEL_6;
  }

  v9 = [v7 cachedSuggestedWidgetsLayouts];
  v10 = [v9 count];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ([(NSMutableArray *)self->_recentHomeScreenCachedSuggestions count]>= 3)
  {
    do
    {
      [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions removeObjectAtIndex:0];
    }

    while ([(NSMutableArray *)self->_recentHomeScreenCachedSuggestions count]> 2);
  }

  v11 = [(ATXStackRotationSessionManager *)self uuidsOfNPlusOneSuggestionsFromCachedSuggestions:v7];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(NSMutableSet *)self->_nPlusOneSuggestionUUIDsWithFirstRotation copy];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (([v11 containsObject:v17] & 1) == 0)
        {
          [(NSMutableSet *)self->_nPlusOneSuggestionUUIDsWithFirstRotation removeObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ATXStackRotationSessionManager updateWithBlendingUICacheUpdate:];
  }

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)removeAndReturnCompletedSessions
{
  if ([(NSMutableArray *)self->_completedSessions count])
  {
    v3 = [(NSMutableArray *)self->_completedSessions copy];
    [(NSMutableArray *)self->_completedSessions removeAllObjects];
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)removeAllAndReturnCompletedSystemSuggestSessions
{
  v2 = [(ATXStackRotationSessionManager *)self removeAndReturnCompletedSessions];
  v3 = [v2 _pas_filteredArrayWithTest:&__block_literal_global_167];

  return v3;
}

uint64_t __82__ATXStackRotationSessionManager_removeAllAndReturnCompletedSystemSuggestSessions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 rotationReason];
  v3 = NSStringForATXHomeScreenStackChangeReason();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_tryUpdateNPlusOneStatusForSession:(id)a3 stackId:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) cachedSuggestedWidgetsLayouts];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke;
        v14[3] = &unk_27859F360;
        v15 = v6;
        v16 = self;
        v17 = &v30;
        v18 = &v26;
        v19 = v24;
        [v11 enumerateKeysAndObjectsUsingBlock:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
    }

    while (v8);
  }

  [v6 updateIsNPlusOneRotation:*(v31 + 24) isFirstNPlusOneRotation:*(v27 + 24)];
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = *v23;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      v12 = [v11 widgetUniqueId];
      v13 = [*(a1 + 32) widgetUniqueId];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v15 = [v11 allSuggestionsInLayout];
        v16 = [v15 firstObject];

        if (v16)
        {
          v17 = *(*(a1 + 40) + 32);
          v18 = [v16 uuid];
          LOBYTE(v17) = [v17 containsObject:v18];

          if (v17)
          {
LABEL_16:
            *(*(*(a1 + 64) + 8) + 24) = 1;

            goto LABEL_17;
          }

          *(*(*(a1 + 56) + 8) + 24) = 1;
          v19 = *(*(a1 + 40) + 32);
          v20 = [v16 uuid];
          [v19 addObject:v20];
        }

        else
        {
          v20 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke_cold_1();
          }
        }

        goto LABEL_16;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_17:

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_tryUpdateStackRotationSessionWithSystemSuggestLayout:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 rotationReason];
  v6 = NSStringForATXHomeScreenStackChangeReason();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * v12) cachedTopOfStackLayouts];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __88__ATXStackRotationSessionManager__tryUpdateStackRotationSessionWithSystemSuggestLayout___block_invoke;
          v15[3] = &unk_27859EA98;
          v16 = v4;
          [v13 enumerateKeysAndObjectsUsingBlock:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __88__ATXStackRotationSessionManager__tryUpdateStackRotationSessionWithSystemSuggestLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 widgetUniqueId];
  v5 = [*(a1 + 32) widgetUniqueId];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [*(a1 + 32) updateWithSystemSuggestSuggestionLayout:v7];
  }
}

- (id)uuidsOfNPlusOneSuggestionsFromCachedSuggestions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 cachedSuggestedWidgetsLayouts];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__ATXStackRotationSessionManager_uuidsOfNPlusOneSuggestionsFromCachedSuggestions___block_invoke;
  v9[3] = &unk_278599A48;
  v10 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __82__ATXStackRotationSessionManager_uuidsOfNPlusOneSuggestionsFromCachedSuggestions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) allSuggestionsInLayout];
        v10 = [v9 firstObject];

        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = [v10 uuid];
          [v11 addObject:v12];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXStackRotationSessionManager *)self isEqualToATXStackRotationSessionManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXStackRotationSessionManager:(id)a3
{
  v4 = a3;
  v5 = self->_stackIdToStackRotationSessions;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSMutableDictionary *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_completedSessions;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableArray *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  stackIdToStackRotationSessions = self->_stackIdToStackRotationSessions;
  v5 = a3;
  [v5 encodeObject:stackIdToStackRotationSessions forKey:@"mapping"];
  [v5 encodeObject:self->_completedSessions forKey:@"completedSessions"];
  [v5 encodeObject:self->_recentHomeScreenCachedSuggestions forKey:@"recentHomeScreenCachedSuggestions"];
  [v5 encodeObject:self->_nPlusOneSuggestionUUIDsWithFirstRotation forKey:@"nPlusOneRotationStatus"];
}

- (ATXStackRotationSessionManager)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x277D42620];
  v11 = __atxlog_handle_metrics();
  v12 = [v10 robustDecodeObjectOfClasses:v9 forKey:@"mapping" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v11];

  if (v12 && ([v4 error], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v15 = MEMORY[0x277D42620];
    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc(MEMORY[0x277CBEB98]);
    v18 = objc_opt_class();
    v19 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v16);
    v20 = __atxlog_handle_metrics();
    v21 = [v15 robustDecodeObjectOfClasses:v19 forKey:@"completedSessions" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v20];

    if (v21 && ([v4 error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
    {
      v23 = objc_autoreleasePoolPush();
      v41 = objc_alloc(MEMORY[0x277CBEB98]);
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = [v41 initWithObjects:{v24, v25, v26, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v23);

      v28 = MEMORY[0x277D42620];
      v29 = __atxlog_handle_metrics();
      v30 = [v28 robustDecodeObjectOfClasses:v27 forKey:@"recentHomeScreenCachedSuggestions" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v29];

      if (v30 && ([v4 error], v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
      {
        v32 = objc_autoreleasePoolPush();
        v33 = objc_alloc(MEMORY[0x277CBEB98]);
        v34 = objc_opt_class();
        v35 = [v33 initWithObjects:{v34, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(v32);

        v36 = MEMORY[0x277D42620];
        v37 = __atxlog_handle_metrics();
        v38 = [v36 robustDecodeObjectOfClasses:v35 forKey:@"nPlusOneRotationStatus" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v37];

        if (v38 && ([v4 error], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
        {
          self = [(ATXStackRotationSessionManager *)self initWithStackIdToStackRotationSessions:v12 completedSessions:v21 recentHomeScreenCachedSuggestions:v30 nPlusOneSuggestionUUIDsWithFirstRotation:v38];
          v14 = self;
        }

        else
        {
          v14 = 0;
        }

        v27 = v35;
      }

      else
      {
        v14 = 0;
      }

      v9 = v27;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_tryEndStackRotationSessionWithStackId:homeScreenEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - marked stack rotation status as completed: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tryStartStackRotationSessionWithStackId:homeScreenEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - starting stack rotation session: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled stack delete for session %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled N+1 rotation never show again for session %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled N+1 rotation dismissed once for session %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled N+1 added to stack for session %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:.cold.5()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled tap for session %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:.cold.6()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - updated dwell end date for session %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:.cold.7()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - updated dwell start date for session %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithBlendingUICacheUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v10 = *v0;
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v3, v4, "%@ N+1: _nPlusOneSuggestionUUIDsWithFirstRotation: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 40);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_14();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "%@ N+1 - could not find suggestion in stack rotation layout: %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end