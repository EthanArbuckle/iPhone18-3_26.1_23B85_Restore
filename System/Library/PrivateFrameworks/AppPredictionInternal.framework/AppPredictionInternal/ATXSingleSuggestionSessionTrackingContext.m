@interface ATXSingleSuggestionSessionTrackingContext
- (ATXSingleSuggestionSessionTrackingContext)init;
- (ATXSingleSuggestionSessionTrackingContext)initWithCoder:(id)a3;
- (ATXSingleSuggestionSessionTrackingContext)initWithMostRecentlySeenHomescreenBlendingCacheUUID:(id)a3 mostRecentAppSpotlightBlendingCacheUUID:(id)a4 mostRecentActionSpotlightBlendingCacheUUID:(id)a5 suggestionsWidgetIds:(id)a6 appPredictionPanelIds:(id)a7 mostRecentClientCacheUpdateUUIDByClientModelId:(id)a8 currentlyTrackedSessions:(id)a9 completedSessions:(id)a10;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSingleSuggestionSessionTrackingContext:(id)a3;
- (id)_persistentIdentifierForSuggestion:(id)a3;
- (id)clientModelIdsToConsider;
- (id)description;
- (id)removeStoredCompletedSessionsAndReturnCompletedSessionsCopy;
- (unint64_t)hash;
- (void)_tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate:(id)a3;
- (void)_tryPruneSingleSuggestionSessionsIfOverMaxNum;
- (void)_updateCurrentlyTrackedSessionsWithSessionStatus:(unint64_t)a3 consumerSubType:(unsigned __int8)a4 suggestionUUIDs:(id)a5 blendingCacheUUID:(id)a6;
- (void)_updateSingleSuggestionSessionsWithHomeScreenUIEvent:(id)a3;
- (void)_updateSingleSuggestionSessionsWithSpotlightUIEvent:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithBlendingUICacheUpdate:(id)a3;
- (void)updateWithClientModelCacheUpdate:(id)a3;
- (void)updateWithUIEvent:(id)a3;
@end

@implementation ATXSingleSuggestionSessionTrackingContext

- (ATXSingleSuggestionSessionTrackingContext)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [(ATXSingleSuggestionSessionTrackingContext *)self initWithMostRecentlySeenHomescreenBlendingCacheUUID:0 mostRecentAppSpotlightBlendingCacheUUID:0 mostRecentActionSpotlightBlendingCacheUUID:0 suggestionsWidgetIds:v3 appPredictionPanelIds:v4 mostRecentClientCacheUpdateUUIDByClientModelId:v5 currentlyTrackedSessions:v6 completedSessions:v7];

  return v8;
}

- (ATXSingleSuggestionSessionTrackingContext)initWithMostRecentlySeenHomescreenBlendingCacheUUID:(id)a3 mostRecentAppSpotlightBlendingCacheUUID:(id)a4 mostRecentActionSpotlightBlendingCacheUUID:(id)a5 suggestionsWidgetIds:(id)a6 appPredictionPanelIds:(id)a7 mostRecentClientCacheUpdateUUIDByClientModelId:(id)a8 currentlyTrackedSessions:(id)a9 completedSessions:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = ATXSingleSuggestionSessionTrackingContext;
  v19 = [(ATXSingleSuggestionSessionTrackingContext *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_mostRecentHomescreenBlendingCacheUUID, a3);
    objc_storeStrong(&v20->_mostRecentAppSpotlightBlendingCacheUUID, a4);
    objc_storeStrong(&v20->_mostRecentActionSpotlightBlendingCacheUUID, a5);
    objc_storeStrong(&v20->_suggestionsWidgetIds, a6);
    objc_storeStrong(&v20->_appPredictionPanelIds, a7);
    objc_storeStrong(&v20->_mostRecentClientCacheUpdateUUIDByClientModelId, a8);
    objc_storeStrong(&v20->_currentlyTrackedSessions, a9);
    objc_storeStrong(&v20->_completedSessions, a10);
  }

  return v20;
}

- (id)removeStoredCompletedSessionsAndReturnCompletedSessionsCopy
{
  v3 = [(NSMutableArray *)self->_completedSessions copy];
  [(NSMutableArray *)self->_completedSessions removeAllObjects];

  return v3;
}

- (id)clientModelIdsToConsider
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:1];
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:23];
  v5 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:13];
  v6 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v7 = [v2 initWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

- (id)_persistentIdentifierForSuggestion:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 clientModelSpecification];
  v7 = [v6 clientModelId];
  v8 = [v4 executableSpecification];

  v9 = [v8 executableIdentifier];
  v10 = [v5 initWithFormat:@"%@-%@", v7, v9];

  return v10;
}

- (void)updateWithClientModelCacheUpdate:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ATXSingleSuggestionSessionTrackingContext *)self _tryPruneSingleSuggestionSessionsIfOverMaxNum];
  v5 = [v4 clientModelId];
  if (v5)
  {
    v6 = [(ATXSingleSuggestionSessionTrackingContext *)self clientModelIdsToConsider];
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      v34 = v5;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = [v4 suggestions];
      v8 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v8)
      {
        v10 = v8;
        v11 = *v38;
        *&v9 = 138412802;
        v33 = v9;
        do
        {
          v12 = 0;
          v35 = v10;
          do
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v37 + 1) + 8 * v12);
            v14 = [(ATXSingleSuggestionSessionTrackingContext *)self _persistentIdentifierForSuggestion:v13, v33];
            v15 = [(NSMutableDictionary *)self->_currentlyTrackedSessions objectForKey:v14];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 associatedClientModelCacheUUIDs];
              v18 = [v4 uuid];
              [v17 addObject:v18];

              v19 = __atxlog_handle_metrics();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v20 = objc_opt_class();
                v21 = NSStringFromClass(v20);
                *buf = v33;
                v42 = v21;
                v43 = 2112;
                v44 = v34;
                v45 = 2112;
                v46 = v16;
                _os_log_debug_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEBUG, "%@ - updated existing suggestion session with new clientModelId: %@, %@", buf, 0x20u);
              }
            }

            else
            {
              v22 = v11;
              v23 = [ATXSingleSuggestionSession alloc];
              v24 = [v4 uuid];
              v25 = [v4 feedbackMetadata];
              v19 = [(ATXSingleSuggestionSession *)v23 initWithTrackedProactiveSuggestion:v13 clientModelCacheUUID:v24 feedbackMetadata:v25];

              [(NSMutableDictionary *)self->_currentlyTrackedSessions setObject:v19 forKey:v14];
              v26 = __atxlog_handle_metrics();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v27 = objc_opt_class();
                v28 = NSStringFromClass(v27);
                *buf = v33;
                v42 = v28;
                v43 = 2112;
                v44 = v34;
                v45 = 2112;
                v46 = v19;
                _os_log_debug_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEBUG, "%@ - starting suggestion session for clientModelId: %@, %@", buf, 0x20u);
              }

              v11 = v22;
              v10 = v35;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
        }

        while (v10);
      }

      mostRecentClientCacheUpdateUUIDByClientModelId = self->_mostRecentClientCacheUpdateUUIDByClientModelId;
      v30 = [v4 uuid];
      v31 = mostRecentClientCacheUpdateUUIDByClientModelId;
      v5 = v34;
      [(NSMutableDictionary *)v31 setObject:v30 forKey:v34];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)updateWithBlendingUICacheUpdate:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 consumerSubType];
  switch(v5)
  {
    case 9:
      v6 = 16;
      break;
    case 34:
      v6 = 8;
      break;
    case 21:
      v6 = 24;
      break;
    default:
      goto LABEL_8;
  }

  v7 = [v4 uuid];
  v8 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v7;

LABEL_8:
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v70 = v4;
  v10 = [v4 clientModelCacheUpdateUUIDs];
  v11 = [v10 allValues];
  v72 = [v9 initWithArray:v11];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v65 = self;
  v12 = [(NSMutableDictionary *)self->_currentlyTrackedSessions allValues];
  v13 = [v12 countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v82;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v82 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v81 + 1) + 8 * i);
        v18 = [v17 associatedClientModelCacheUUIDs];
        v19 = [v18 intersectsSet:v72];

        if (v19)
        {
          v20 = [v17 associatedBlendingCacheUUIDs];
          v21 = [v70 uuid];
          v22 = [v20 containsObject:v21];

          if ((v22 & 1) == 0)
          {
            v23 = [v17 associatedBlendingCacheUUIDs];
            v24 = [v70 uuid];
            [v23 addObject:v24];

            v25 = __atxlog_handle_metrics();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              v28 = [v70 uuid];
              *buf = 138412802;
              v88 = v27;
              v89 = 2112;
              v90 = v28;
              v91 = 2112;
              v92 = v17;
              _os_log_debug_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEBUG, "%@ - updated blending uuids with %@ for session: %@", buf, 0x20u);
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v14);
  }

  v29 = v70;
  v30 = [v70 uiCache];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v32 = [v70 uiCache];
  v33 = v32;
  if (isKindOfClass)
  {
    v34 = [v32 allSuggestionsInLayout];
    p_isa = &v65->super.isa;
  }

  else
  {
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    p_isa = &v65->super.isa;
    if ((v36 & 1) == 0)
    {
      goto LABEL_49;
    }

    v33 = [v70 uiCache];
    v34 = [v33 allSuggestionsInCachedSuggestions];
    v37 = [v33 cachedSuggestionWidgetLayouts];
    v38 = [v37 allKeys];

    if ([v38 count])
    {
      [(NSMutableSet *)v65->_suggestionsWidgetIds removeAllObjects];
      [(NSMutableSet *)v65->_suggestionsWidgetIds addObjectsFromArray:v38];
    }

    v39 = [v33 cachedAppPredictionPanelLayouts];
    v40 = [v39 allKeys];

    if ([v40 count])
    {
      [(NSMutableSet *)v65->_appPredictionPanelIds removeAllObjects];
      [(NSMutableSet *)v65->_appPredictionPanelIds addObjectsFromArray:v40];
    }
  }

  if (v34)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = [p_isa[7] allValues];
    v69 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v69)
    {
      v67 = *v78;
      v68 = v34;
      do
      {
        v41 = 0;
        do
        {
          if (*v78 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v71 = v41;
          v42 = *(*(&v77 + 1) + 8 * v41);
          v43 = [v42 suggestion];
          v44 = [v43 executableSpecification];
          v45 = [v44 executableObjectHash];

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v46 = v34;
          v47 = [v46 countByEnumeratingWithState:&v73 objects:v85 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v74;
            do
            {
              for (j = 0; j != v48; ++j)
              {
                if (*v74 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v73 + 1) + 8 * j);
                v52 = [v51 executableSpecification];
                v53 = [v52 executableObjectHash];

                if (v45 == v53)
                {
                  v54 = [v42 matchingSuggestionUUIDs];
                  v55 = [v51 uuid];
                  v56 = [v54 containsObject:v55];

                  if ((v56 & 1) == 0)
                  {
                    v57 = [v42 matchingSuggestionUUIDs];
                    v58 = [v51 uuid];
                    [v57 addObject:v58];

                    v59 = __atxlog_handle_metrics();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                    {
                      v60 = objc_opt_class();
                      v61 = NSStringFromClass(v60);
                      v62 = [v51 uuid];
                      *buf = 138412802;
                      v88 = v61;
                      v89 = 2112;
                      v90 = v62;
                      v91 = 2112;
                      v92 = v42;
                      _os_log_debug_impl(&dword_2263AA000, v59, OS_LOG_TYPE_DEBUG, "%@ - updated matching suggestion with %@ for session: %@", buf, 0x20u);
                    }
                  }
                }
              }

              v48 = [v46 countByEnumeratingWithState:&v73 objects:v85 count:16];
            }

            while (v48);
          }

          v41 = v71 + 1;
          v34 = v68;
        }

        while (v71 + 1 != v69);
        v69 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v69);
    }

    v29 = v70;
    p_isa = &v65->super.isa;
  }

LABEL_49:
  v63 = [v29 cacheCreationDate];
  [p_isa _tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate:v63];

  v64 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUIEvent:(id)a3
{
  v10 = a3;
  v4 = [v10 spotlightEvent];
  if (v4)
  {
    [(ATXSingleSuggestionSessionTrackingContext *)self _updateSingleSuggestionSessionsWithSpotlightUIEvent:v4];
    if ([v4 eventType] == 2)
    {
      v5 = [v4 date];
      [(ATXSingleSuggestionSessionTrackingContext *)self _tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate:v5];
    }
  }

  v6 = [v10 homeScreenEvent];
  if (v6)
  {
    [(ATXSingleSuggestionSessionTrackingContext *)self _updateSingleSuggestionSessionsWithHomeScreenUIEvent:v6];
    v7 = [v6 eventTypeString];
    v8 = [v7 isEqualToString:@"DeviceLocked"];

    if (v8)
    {
      v9 = [v6 date];
      [(ATXSingleSuggestionSessionTrackingContext *)self _tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate:v9];
    }
  }
}

- (void)_tryPruneSingleSuggestionSessionsIfOverMaxNum
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [*a2 count];
  OUTLINED_FUNCTION_0_27();
  OUTLINED_FUNCTION_1_13(&dword_2263AA000, v5, v6, "%@ - _completedSessions has length of: %lu", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateSingleSuggestionSessionsWithSpotlightUIEvent:(id)a3
{
  v10 = a3;
  v4 = [v10 eventType] - 3;
  if (v4 <= 4)
  {
    v5 = qword_226872870[v4];
    v6 = [v10 appSuggestionIds];
    v7 = [v10 appBlendingCacheId];
    [(ATXSingleSuggestionSessionTrackingContext *)self _updateCurrentlyTrackedSessionsWithSessionStatus:v5 consumerSubType:9 suggestionUUIDs:v6 blendingCacheUUID:v7];

    v8 = [v10 actionSuggestionIds];
    v9 = [v10 actionBlendingCacheId];
    [(ATXSingleSuggestionSessionTrackingContext *)self _updateCurrentlyTrackedSessionsWithSessionStatus:v5 consumerSubType:21 suggestionUUIDs:v8 blendingCacheUUID:v9];
  }
}

- (void)_updateSingleSuggestionSessionsWithHomeScreenUIEvent:(id)a3
{
  v15 = a3;
  v4 = [v15 blendingCacheId];
  v5 = [v15 widgetUniqueId];
  v6 = [v15 widgetBundleId];
  [v15 stackLocation];
  if (v4 && v5 && v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
    if (v7)
    {
      v8 = [v15 eventTypeString];
      if ([v8 isEqualToString:@"Unknown"])
      {
LABEL_6:
        v9 = v8;
LABEL_20:

        goto LABEL_21;
      }

      if ([v8 isEqualToString:@"Tapped"])
      {
        v10 = 2;
      }

      else if ([v8 isEqualToString:@"ContextMenuDismissOnce"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ContextMenuNeverShowAgain"))
      {
        v10 = 3;
      }

      else
      {
        if ([v8 isEqualToString:@"WidgetAppeared"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"WidgetDisappeared"))
        {
          goto LABEL_6;
        }

        if (([v8 isEqualToString:@"SuggestionsAppeared"] & 1) == 0)
        {
          if (([v8 isEqualToString:@"SuggestionsDisappeared"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"WidgetOccluded") & 1) == 0)
          {
            [v8 isEqualToString:@"WidgetUnoccluded"];
          }

          goto LABEL_6;
        }

        v10 = 1;
      }

      if ([v6 isEqualToString:*MEMORY[0x277CEB1C0]])
      {
        v11 = ATXStackLocationIsTodayPage() == 0;
        v12 = 37;
        v13 = 40;
LABEL_16:
        if (v11)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        v9 = [v15 suggestionIds];
        v8 = [v15 blendingCacheId];
        [(ATXSingleSuggestionSessionTrackingContext *)self _updateCurrentlyTrackedSessionsWithSessionStatus:v10 consumerSubType:v14 suggestionUUIDs:v9 blendingCacheUUID:v8];
        goto LABEL_20;
      }

      if ([v6 isEqualToString:*MEMORY[0x277CEBBA0]])
      {
        v11 = ATXStackLocationIsTodayPage() == 0;
        v12 = 36;
        v13 = 39;
        goto LABEL_16;
      }
    }

LABEL_21:
  }
}

- (void)_updateCurrentlyTrackedSessionsWithSessionStatus:(unint64_t)a3 consumerSubType:(unsigned __int8)a4 suggestionUUIDs:(id)a5 blendingCacheUUID:(id)a6
{
  v39 = a4;
  v58 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a6;
  v9 = v8;
  if (v7 && v8)
  {
    v31 = v7;
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    if (v10)
    {
      v30 = v9;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v7;
      v35 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v35)
      {
        v34 = *v45;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v45 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v44 + 1) + 8 * i)];
            if (v12)
            {
              v36 = i;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v13 = [(NSMutableDictionary *)self->_currentlyTrackedSessions allValues];
              v14 = [v13 countByEnumeratingWithState:&v40 objects:v56 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v41;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v41 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v40 + 1) + 8 * j);
                    v19 = [v18 matchingSuggestionUUIDs];
                    v20 = [v19 containsObject:v12];

                    v21 = [v18 associatedBlendingCacheUUIDs];
                    v22 = [v21 containsObject:v10];

                    if (v20)
                    {
                      v23 = v22 == 0;
                    }

                    else
                    {
                      v23 = 1;
                    }

                    if (!v23 && [v18 tryUpdateSessionStatus:a3 consumerSubType:v39])
                    {
                      v24 = __atxlog_handle_metrics();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                      {
                        v25 = objc_opt_class();
                        v37 = NSStringFromClass(v25);
                        v26 = [ATXSingleSuggestionSession stringForSuggestionSessionStatus:a3];
                        v27 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v39];
                        *buf = 138413058;
                        v49 = v37;
                        v50 = 2112;
                        v51 = v26;
                        v52 = 2112;
                        v53 = v27;
                        v28 = v27;
                        v54 = 2112;
                        v55 = v18;
                        _os_log_debug_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEBUG, "%@ - updated status with %@ for consumerSubType: %@, session: %@", buf, 0x2Au);
                      }
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v40 objects:v56 count:16];
                }

                while (v15);
              }

              i = v36;
            }
          }

          v35 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v35);
      }

      v9 = v30;
    }

    v7 = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  currentlyTrackedSessions = self->_currentlyTrackedSessions;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__ATXSingleSuggestionSessionTrackingContext__tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate___block_invoke;
  v9[3] = &unk_2785A0258;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [(NSMutableDictionary *)currentlyTrackedSessions enumerateKeysAndObjectsUsingBlock:v9];
  [(NSMutableDictionary *)self->_currentlyTrackedSessions removeObjectsForKeys:v7];
}

void __101__ATXSingleSuggestionSessionTrackingContext__tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 suggestion];
  v8 = [v7 clientModelSpecification];
  v9 = [v8 clientModelId];

  v10 = [*(*(a1 + 32) + 48) objectForKey:v9];
  if (v10)
  {
    v11 = [v6 associatedClientModelCacheUUIDs];
    v12 = [v11 containsObject:v10];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  if (v13[1])
  {
    v14 = [v6 associatedBlendingCacheUUIDs];
    v15 = [v14 containsObject:*(*(a1 + 32) + 8)];

    v13 = *(a1 + 32);
  }

  else
  {
    v15 = 0;
  }

  if (v13[3])
  {
    v16 = [v6 associatedBlendingCacheUUIDs];
    v32 = [v16 containsObject:*(*(a1 + 32) + 24)];

    v13 = *(a1 + 32);
  }

  else
  {
    v32 = 0;
  }

  if (v13[2])
  {
    v17 = [v6 associatedBlendingCacheUUIDs];
    v18 = [v17 containsObject:*(*(a1 + 32) + 16)];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v6 sessionExpirationDate];
  v20 = v19;
  if (v19)
  {
    v21 = *(a1 + 40);
    if (!v21)
    {

      goto LABEL_23;
    }

    [v6 sessionExpirationDate];
    v31 = v15;
    v22 = v10;
    v23 = v12;
    v24 = v9;
    v26 = v25 = v5;
    [v21 timeIntervalSinceDate:v26];
    v28 = v27 <= 0.0;

    v5 = v25;
    v9 = v24;
    v12 = v23;
    v10 = v22;
    v15 = v31;
  }

  else
  {
    v28 = 0;
  }

  if (((v12 | v15 | v32 | v18) & 1) == 0 && !v28)
  {
    v29 = v5;
    [v6 setCompleted:1];
    v30 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __101__ATXSingleSuggestionSessionTrackingContext__tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate___block_invoke_cold_1(v6, v30);
    }

    v5 = v29;
    [*(a1 + 48) addObject:v29];
    [*(*(a1 + 32) + 64) addObject:v6];
  }

LABEL_23:
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@ - currentlyTrackedSessions: %@", v5, self->_currentlyTrackedSessions];

  return v6;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  mostRecentHomescreenBlendingCacheUUID = self->_mostRecentHomescreenBlendingCacheUUID;
  v5 = a3;
  [v5 encodeObject:mostRecentHomescreenBlendingCacheUUID forKey:@"codingKeyForRecentHomeScreenBlendingCacheUUID"];
  [v5 encodeObject:self->_mostRecentAppSpotlightBlendingCacheUUID forKey:@"codingKeyForRecentAppSpotlightBlendingCacheUUID"];
  [v5 encodeObject:self->_mostRecentActionSpotlightBlendingCacheUUID forKey:@"codingKeyForRecentActionSpotlightBlendingCacheUUID"];
  [v5 encodeObject:self->_suggestionsWidgetIds forKey:@"codingKeyForSuggestionsWidgetIds"];
  [v5 encodeObject:self->_appPredictionPanelIds forKey:@"codingKeyForAppPredictionPanelIds"];
  [v5 encodeObject:self->_mostRecentClientCacheUpdateUUIDByClientModelId forKey:@"codingKeyForRecentClientCacheUpdatesByClientModelId"];
  [v5 encodeObject:self->_currentlyTrackedSessions forKey:@"codingKeyForCurrentlyTrackedSessions"];
  [v5 encodeObject:self->_completedSessions forKey:@"codingKeyForCompletedSessions"];
}

- (ATXSingleSuggestionSessionTrackingContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D42620];
  v5 = objc_opt_class();
  v6 = __atxlog_handle_metrics();
  v56 = [v4 robustDecodeObjectOfClass:v5 forKey:@"codingKeyForRecentHomeScreenBlendingCacheUUID" withCoder:v3 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v6];

  v7 = MEMORY[0x277D42620];
  v8 = objc_opt_class();
  v9 = __atxlog_handle_metrics();
  v59 = [v7 robustDecodeObjectOfClass:v8 forKey:@"codingKeyForRecentActionSpotlightBlendingCacheUUID" withCoder:v3 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v9];

  v10 = MEMORY[0x277D42620];
  v11 = objc_opt_class();
  v12 = __atxlog_handle_metrics();
  v58 = [v10 robustDecodeObjectOfClass:v11 forKey:@"codingKeyForRecentAppSpotlightBlendingCacheUUID" withCoder:v3 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v12];

  v13 = MEMORY[0x277D42620];
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v14);
  v18 = __atxlog_handle_metrics();
  v19 = [v13 robustDecodeObjectOfClasses:v17 forKey:@"codingKeyForSuggestionsWidgetIds" withCoder:v3 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v18];

  if (v19)
  {
    v20 = MEMORY[0x277D42620];
    v21 = objc_autoreleasePoolPush();
    v22 = objc_alloc(MEMORY[0x277CBEB98]);
    v23 = objc_opt_class();
    v24 = [v22 initWithObjects:{v23, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v21);
    v25 = __atxlog_handle_metrics();
    v26 = [v20 robustDecodeObjectOfClasses:v24 forKey:@"codingKeyForAppPredictionPanelIds" withCoder:v3 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v25];

    if (v26)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = objc_alloc(MEMORY[0x277CBEB98]);
      v29 = objc_opt_class();
      v30 = objc_opt_class();
      v31 = [v28 initWithObjects:{v29, v30, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v27);
      v32 = MEMORY[0x277D42620];
      v33 = __atxlog_handle_metrics();
      v34 = [v32 robustDecodeObjectOfClasses:v31 forKey:@"codingKeyForRecentClientCacheUpdatesByClientModelId" withCoder:v3 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v33];

      if (v34)
      {
        v55 = v31;
        v35 = objc_autoreleasePoolPush();
        v36 = objc_alloc(MEMORY[0x277CBEB98]);
        v37 = objc_opt_class();
        v38 = objc_opt_class();
        v39 = [v36 initWithObjects:{v37, v38, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(v35);
        v40 = MEMORY[0x277D42620];
        v41 = __atxlog_handle_metrics();
        v42 = [v40 robustDecodeObjectOfClasses:v39 forKey:@"codingKeyForCurrentlyTrackedSessions" withCoder:v3 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v41];

        if (v42)
        {
          v54 = v39;
          v43 = objc_autoreleasePoolPush();
          v44 = objc_alloc(MEMORY[0x277CBEB98]);
          v45 = objc_opt_class();
          v46 = [v44 initWithObjects:{v45, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v43);
          v47 = MEMORY[0x277D42620];
          v48 = __atxlog_handle_metrics();
          v49 = [v47 robustDecodeObjectOfClasses:v46 forKey:@"codingKeyForCompletedSessions" withCoder:v3 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSingleSuggestionSessionTrackingContext" errorCode:-1 logHandle:v48];

          v50 = v56;
          if (v49)
          {
            v51 = [(ATXSingleSuggestionSessionTrackingContext *)self initWithMostRecentlySeenHomescreenBlendingCacheUUID:v56 mostRecentAppSpotlightBlendingCacheUUID:v58 mostRecentActionSpotlightBlendingCacheUUID:v59 suggestionsWidgetIds:v19 appPredictionPanelIds:v26 mostRecentClientCacheUpdateUUIDByClientModelId:v34 currentlyTrackedSessions:v42 completedSessions:v49];
            v52 = v51;
          }

          else
          {
            v52 = 0;
            v51 = self;
          }

          v39 = v54;
        }

        else
        {
          v52 = 0;
          v50 = v56;
          v51 = self;
        }

        v31 = v55;
      }

      else
      {
        v52 = 0;
        v50 = v56;
        v51 = self;
      }
    }

    else
    {
      v52 = 0;
      v50 = v56;
      v51 = self;
    }
  }

  else
  {
    v52 = 0;
    v50 = v56;
    v51 = self;
  }

  return v52;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSingleSuggestionSessionTrackingContext *)self isEqualToATXSingleSuggestionSessionTrackingContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSingleSuggestionSessionTrackingContext:(id)a3
{
  v4 = a3;
  v5 = self->_mostRecentHomescreenBlendingCacheUUID;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v8 = self->_mostRecentAppSpotlightBlendingCacheUUID;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSUUID *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v11 = self->_mostRecentActionSpotlightBlendingCacheUUID;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(NSUUID *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v14 = self->_suggestionsWidgetIds;
  v15 = v14;
  if (v14 == v4[4])
  {
  }

  else
  {
    v16 = [(NSMutableSet *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = self->_appPredictionPanelIds;
  v18 = v17;
  if (v17 == v4[5])
  {
  }

  else
  {
    v19 = [(NSMutableSet *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v20 = self->_mostRecentClientCacheUpdateUUIDByClientModelId;
  v21 = v20;
  if (v20 == v4[6])
  {
  }

  else
  {
    v22 = [(NSMutableDictionary *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v23 = self->_currentlyTrackedSessions;
  v24 = v23;
  if (v23 == v4[7])
  {
  }

  else
  {
    v25 = [(NSMutableDictionary *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
LABEL_27:
      v26 = 0;
      goto LABEL_28;
    }
  }

  v28 = self->_completedSessions;
  v29 = v28;
  if (v28 == v4[8])
  {
    v26 = 1;
  }

  else
  {
    v26 = [(NSMutableArray *)v28 isEqual:?];
  }

LABEL_28:
  return v26;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_mostRecentHomescreenBlendingCacheUUID hash];
  v4 = [(NSUUID *)self->_mostRecentAppSpotlightBlendingCacheUUID hash]- v3 + 32 * v3;
  v5 = [(NSUUID *)self->_mostRecentActionSpotlightBlendingCacheUUID hash]- v4 + 32 * v4;
  v6 = [(NSMutableSet *)self->_suggestionsWidgetIds hash]- v5 + 32 * v5;
  v7 = [(NSMutableSet *)self->_appPredictionPanelIds hash]- v6 + 32 * v6;
  v8 = [(NSMutableDictionary *)self->_mostRecentClientCacheUpdateUUIDByClientModelId hash]- v7 + 32 * v7;
  v9 = [(NSMutableDictionary *)self->_currentlyTrackedSessions hash]- v8 + 32 * v8;
  return [(NSMutableArray *)self->_completedSessions hash]- v9 + 32 * v9;
}

void __101__ATXSingleSuggestionSessionTrackingContext__tryMarkCurrentlyTrackedSessionsAsCompleteWithEventDate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%@ - marked session as completed: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end