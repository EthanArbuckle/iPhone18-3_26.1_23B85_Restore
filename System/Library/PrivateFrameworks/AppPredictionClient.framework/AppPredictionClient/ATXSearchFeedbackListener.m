@interface ATXSearchFeedbackListener
- (ATXSearchFeedbackListener)init;
- (ATXSearchFeedbackListener)initWithTarget:(id)a3 spotlightUIBiomeStream:(id)a4 engagementRecordManager:(id)a5 actionClient:(id)a6 appDirectoryClient:(id)a7 tracker:(id)a8;
- (BOOL)_isDuplicateEventWithState:(id *)a3 timestamp:(unint64_t)a4 method:(SEL)a5;
- (id)_suggestionSubTypeStringWithResultType:(int)a3;
- (id)bundleIdentifierFromResult:(id)a3;
- (void)_logAppPredictionsShown;
- (void)_logCAActionWithIdentifier:(id)a3 suggestion:(id)a4 eventType:(int64_t)a5;
- (void)_logCAActionWithIdentifiers:(id)a3 eventType:(int64_t)a4;
- (void)_resetState;
- (void)_sendSpotlightUIEvent:(id)a3;
- (void)_sendSpotlightUIStreamAppEngageWithFeedback:(id)a3;
- (void)_sendSpotlightUIStreamEventType:(int64_t)a3 searchResult:(id)a4;
- (void)_tryRemoveLockscreenActionPredictionMatchingSuggestion:(id)a3;
- (void)cardViewDidDisappear:(id)a3;
- (void)didEngageCardSection:(id)a3;
- (void)didEngageResult:(id)a3;
- (void)didPerformCommand:(id)a3;
- (void)didStartSearch:(id)a3;
- (void)logEngagedSpotlightActionSuggestion:(id)a3 contextActionIdentifier:(id)a4;
- (void)resultsDidBecomeVisible:(id)a3;
- (void)searchViewDidAppear:(id)a3;
- (void)searchViewDidDisappear:(id)a3;
- (void)writeSpotlightEvent:(id)a3 isViewAppearEvent:(BOOL)a4;
@end

@implementation ATXSearchFeedbackListener

- (ATXSearchFeedbackListener)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[ATXEngagementRecordManager sharedInstance];
  v6 = objc_opt_new();
  v7 = +[ATXAppDirectoryClient sharedInstance];
  v8 = objc_opt_new();
  v9 = [(ATXSearchFeedbackListener *)self initWithTarget:v3 spotlightUIBiomeStream:v4 engagementRecordManager:v5 actionClient:v6 appDirectoryClient:v7 tracker:v8];

  return v9;
}

- (ATXSearchFeedbackListener)initWithTarget:(id)a3 spotlightUIBiomeStream:(id)a4 engagementRecordManager:(id)a5 actionClient:(id)a6 appDirectoryClient:(id)a7 tracker:(id)a8
{
  v37 = a3;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v15 = a7;
  v16 = a8;
  v39.receiver = self;
  v39.super_class = ATXSearchFeedbackListener;
  v17 = [(ATXSearchFeedbackListener *)&v39 init];
  if (v17)
  {
    v18 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ATXSFL SF: initializing ATXSearchFeedbackListener -- process likely just (re)started", buf, 2u);
    }

    objc_storeStrong(&v17->_target, a3);
    objc_storeStrong(&v17->_spotlightUIBiomeStream, a4);
    objc_storeStrong(&v17->_engagementRecordManager, a5);
    objc_storeStrong(&v17->_actionPredictionClient, a6);
    objc_storeStrong(&v17->_appDirectoryClient, a7);
    objc_storeStrong(&v17->_tracker, a8);
    currentQuery = v17->_currentQuery;
    v17->_currentQuery = 0;

    v17->_didSearchDuringSession = 0;
    v20 = objc_opt_new();
    visibleAppUUIDs = v17->_visibleAppUUIDs;
    v17->_visibleAppUUIDs = v20;

    v22 = objc_opt_new();
    visibleActionUUIDs = v17->_visibleActionUUIDs;
    v17->_visibleActionUUIDs = v22;

    v24 = objc_opt_new();
    visibleAppBundleIds = v17->_visibleAppBundleIds;
    v17->_visibleAppBundleIds = v24;

    v26 = objc_opt_new();
    visibleActionContextIdentifiers = v17->_visibleActionContextIdentifiers;
    v17->_visibleActionContextIdentifiers = v26;

    currentResultCard = v17->_currentResultCard;
    v17->_currentResultCard = 0;

    v17->_hasSeenSearchViewDidAppear = 0;
    v17->_viewAppearEvent = 0;
    v29 = objc_opt_new();
    queuedEvents = v17->_queuedEvents;
    v17->_queuedEvents = v29;

    *&v17->_currentSessionHasEngagement = 0;
    v31 = [objc_alloc(MEMORY[0x1E69C5B50]) initWithFeatureId:@"AppPredictions" opportunityEvent:@"spotlightZkwStart" conversionEvent:@"appPredictionsShown" registerProperties:{0, v34, v35, v36, v37}];
    apAppPredictionsShownTracker = v17->_apAppPredictionsShownTracker;
    v17->_apAppPredictionsShownTracker = v31;
  }

  return v17;
}

- (void)_resetState
{
  currentQuery = self->_currentQuery;
  self->_currentQuery = 0;

  self->_didSearchDuringSession = 0;
  [(NSMutableSet *)self->_visibleAppUUIDs removeAllObjects];
  [(NSMutableSet *)self->_visibleActionUUIDs removeAllObjects];
  [(NSMutableSet *)self->_visibleAppBundleIds removeAllObjects];
  [(NSMutableSet *)self->_visibleActionContextIdentifiers removeAllObjects];
  currentResultCard = self->_currentResultCard;
  self->_currentResultCard = 0;

  appBlendingCacheId = self->_appBlendingCacheId;
  self->_appBlendingCacheId = 0;

  actionBlendingCacheId = self->_actionBlendingCacheId;
  self->_actionBlendingCacheId = 0;

  self->_hasSeenSearchViewDidAppear = 0;
  self->_viewAppearEvent = 0;
  queuedEvents = self->_queuedEvents;

  [(NSMutableArray *)queuedEvents removeAllObjects];
}

- (BOOL)_isDuplicateEventWithState:(id *)a3 timestamp:(unint64_t)a4 method:(SEL)a5
{
  v17 = *MEMORY[0x1E69E9840];
  var0 = a3->var0;
  a3->var0 = a4;
  if (!self->_shouldDebounce)
  {
    return 0;
  }

  v7 = a4 - var0;
  *v12 = 0;
  mach_timebase_info(v12);
  v8 = v7 * *v12 / *&v12[4];
  if (v8 >= 0x2FAF080)
  {
    return 0;
  }

  v9 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a5);
    *v12 = 138412802;
    *&v12[4] = v10;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = 50000000;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_INFO, "ATXSFL SF: %@ timestamp separation (in nanosec) of %llu < %llu -- ignoring duplicate event", v12, 0x20u);
  }

  return 1;
}

- (void)_logAppPredictionsShown
{
  v3 = [(NSMutableSet *)self->_visibleAppUUIDs count]!= 0;
  apAppPredictionsShownTracker = self->_apAppPredictionsShownTracker;

  [(PETGoalConversionEventTracker *)apAppPredictionsShownTracker trackGoalOpportunityEventWithConversion:v3 propertyValues:0];
}

- (void)_tryRemoveLockscreenActionPredictionMatchingSuggestion:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSFL: attempting to remove engaged action suggestion from lockscreen %@", &v6, 0xCu);
  }

  [(ATXActionPredictionClient *)self->_actionPredictionClient removeActionPredictionNotificationsMatchingSuggestion:v4 reply:0];
}

- (void)_logCAActionWithIdentifier:(id)a3 suggestion:(id)a4 eventType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    goto LABEL_4;
  }

  v10 = [objc_alloc(MEMORY[0x1E69C5B70]) initWithProactiveSuggestion:v9];
  if (v10)
  {
    v8 = v10;
LABEL_4:
    [(ATXSearchFeedbackListener *)self _logCAActionWithIdentifiers:v8 eventType:a5];
    goto LABEL_5;
  }

  v8 = __atxlog_handle_blending();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ATXSearchFeedbackListener _logCAActionWithIdentifier:v9 suggestion:v8 eventType:?];
  }

LABEL_5:
}

- (void)_logCAActionWithIdentifiers:(id)a3 eventType:(int64_t)a4
{
  v6 = MEMORY[0x1E69C5C00];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 uniqueIdentifier];
  v10 = [v7 subtype];
  v11 = [v7 context];

  v12 = [v8 initWithType:a4 suggestionUniqueId:v9 suggestionType:@"action" suggestionSubtype:v10 suggestionContext:v11];
  [(ATXSearchFeedbackListener *)self _sendSpotlightUIEvent:v12];
}

- (void)writeSpotlightEvent:(id)a3 isViewAppearEvent:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    [(ATXSearchFeedbackListenerTarget *)self->_target writeSpotlightEvent:v6];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_queuedEvents;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(ATXSearchFeedbackListenerTarget *)self->_target writeSpotlightEvent:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_queuedEvents removeAllObjects];
    self->_hasSeenSearchViewDidAppear = 1;
  }

  else if (self->_hasSeenSearchViewDidAppear)
  {
    [(ATXSearchFeedbackListenerTarget *)self->_target writeSpotlightEvent:v6];
  }

  else
  {
    [(NSMutableArray *)self->_queuedEvents addObject:v6];
  }
}

- (void)searchViewDidAppear:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.searchViewDidAppear, [v5 timestamp], a2))
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v5 viewAppearEvent];
      v12 = [v5 isOnLockScreen];
      v13 = [v5 isOverApp];
      v14 = "NO";
      v16 = 134218754;
      v17 = v11;
      if (v12)
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      v18 = 2112;
      v19 = v5;
      if (v13)
      {
        v14 = "YES";
      }

      v20 = 2080;
      v21 = v15;
      v22 = 2080;
      v23 = v14;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: searchViewDidAppear, event:%lu, feedback:%@, isOnLockscreen:%s, isOverApp:%s", &v16, 0x2Au);
    }

    v6->_viewAppearEvent = [v5 viewAppearEvent];
    v8 = objc_opt_new();
    v9 = [ATXSpotlightEvent viewAppearedEventWithSFFeedback:v5 date:v8];

    [(ATXSearchFeedbackListener *)v6 writeSpotlightEvent:v9 isViewAppearEvent:1];
    v10 = [objc_alloc(MEMORY[0x1E69C5C00]) initWithType:6 suggestionUniqueId:0 suggestionType:0 suggestionSubtype:0 suggestionContext:0];
    [(ATXSearchFeedbackListener *)v6 _sendSpotlightUIEvent:v10];

    objc_sync_exit(v6);
  }
}

- (void)searchViewDidDisappear:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.searchViewDidDisappear, [v5 timestamp], a2))
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      -[ATXSearchFeedbackListener searchViewDidDisappear:].cold.1(v5, v11, [v5 viewDisappearEvent]);
    }

    didSearchDuringSession = v6->_didSearchDuringSession;
    v9 = objc_opt_new();
    v10 = [ATXSpotlightEvent viewDisappearedEventWithDidSearch:didSearchDuringSession date:v9];

    [(ATXSearchFeedbackListener *)v6 writeSpotlightEvent:v10 isViewAppearEvent:0];
    [(ATXSearchFeedbackListener *)v6 sendUpdateNotification];
    [(ATXSearchFeedbackListener *)v6 _logAppPredictionsShown];
    [(ATXSearchFeedbackListener *)v6 _resetState];
    v6->_previousSessionHadEngagement = v6->_currentSessionHasEngagement;
    v6->_currentSessionHasEngagement = 0;

    objc_sync_exit(v6);
  }
}

- (void)didStartSearch:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.didStartSearch, [v5 timestamp], a2))
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v5 triggerEvent];
      v11 = [v5 input];
      v12 = [v5 uuid];
      v13 = 134218755;
      v14 = v10;
      v15 = 2117;
      v16 = v5;
      v17 = 2117;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: didStartSearch, event:%lu, feedback:%{sensitive}@, input:%{sensitive}@, uuid:%@", &v13, 0x2Au);
    }

    v8 = [v5 input];
    currentQuery = v6->_currentQuery;
    v6->_currentQuery = v8;

    if ([(NSString *)v6->_currentQuery length])
    {
      v6->_didSearchDuringSession = 1;
    }

    objc_sync_exit(v6);
  }
}

- (void)resultsDidBecomeVisible:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(ATXSearchFeedbackListener *)self _isDuplicateEventWithState:&self->_debounce timestamp:[v5 timestamp] method:a2])
  {
    v45 = v5;
    v6 = self;
    objc_sync_enter(v6);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v42 = [v5 triggerEvent];
      v43 = [v5 results];
      *info = 134218499;
      *&info[4] = v42;
      v60 = 2117;
      v61 = v45;
      v62 = 2117;
      v63 = v43;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: resultsDidBecomeVisible, event:%lu, feedback:%{sensitive}@, results:%{sensitive}@", info, 0x20u);
    }

    if (v6->_previousSessionHadEngagement && (v8 = [v45 timestamp], lastEventTimestamp = v6->_debounce.searchViewDidDisappear.lastEventTimestamp, *info = 0, mach_timebase_info(info), (v8 - lastEventTimestamp) * *info / *&info[4] <= 0x2FAF07F))
    {
      v49 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener resultsDidBecomeVisible:];
      }
    }

    else
    {
      v49 = objc_opt_new();
      v46 = objc_opt_new();
      v48 = objc_opt_new();
      v47 = objc_opt_new();
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v10 = [v45 results];
      v11 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v11)
      {
        v51 = *v53;
        *&v12 = 138412546;
        v44 = v12;
        obj = v10;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v53 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v52 + 1) + 8 * i);
            [(ATXSearchFeedbackListener *)v6 _sendSpotlightUIStreamEventType:3 searchResult:v14, v44];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              v16 = [v15 proactiveSuggestion];
              v17 = [v16 uuid];
              v18 = [v17 UUIDString];

              v19 = [v15 proactiveSuggestion];
              v20 = [v19 bundleIdExecutableObject];

              if (!v6->_appBlendingCacheId)
              {
                v21 = [v15 response];
                v22 = [v21 blendingModelUICacheUpdateUUID];
                v23 = [v22 UUIDString];
                appBlendingCacheId = v6->_appBlendingCacheId;
                v6->_appBlendingCacheId = v23;
              }

              if (([(NSMutableSet *)v6->_visibleAppUUIDs containsObject:v18]& 1) == 0)
              {
                [v49 addObject:v18];
              }

              if (([(NSMutableSet *)v6->_visibleAppBundleIds containsObject:v20]& 1) == 0)
              {
                [v48 addObject:v20];
              }

LABEL_39:
              goto LABEL_40;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              v18 = [v15 proactiveSuggestion];
              v25 = [v18 uuid];
              v26 = [v25 UUIDString];

              v27 = [v15 contextActionIdentifier];
              if (!v27)
              {
                v27 = [objc_alloc(MEMORY[0x1E69C5B70]) initWithProactiveSuggestion:v18];
              }

              if (!v6->_actionBlendingCacheId)
              {
                v28 = [v15 blendingModelUICacheUpdateUUID];
                v29 = [v28 UUIDString];
                actionBlendingCacheId = v6->_actionBlendingCacheId;
                v6->_actionBlendingCacheId = v29;
              }

              if (v26 && ([(NSMutableSet *)v6->_visibleActionUUIDs containsObject:v26]& 1) == 0)
              {
                [v46 addObject:v26];
              }

              if (v27)
              {
                if (([(NSMutableSet *)v6->_visibleActionContextIdentifiers containsObject:v27]& 1) == 0)
                {
                  [v47 addObject:v27];
                  [(ATXSearchFeedbackListener *)v6 _logCAActionWithIdentifiers:v27 eventType:3];
                }
              }

              else
              {
                v35 = __atxlog_handle_blending();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = [v18 executableSpecification];
                  v37 = [v36 executableIdentifier];
                  *info = v44;
                  *&info[4] = v37;
                  v60 = 2112;
                  v61 = v18;
                  _os_log_error_impl(&dword_1BF549000, v35, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil: %@, %@", info, 0x16u);
                }
              }

              goto LABEL_39;
            }

            v31 = objc_alloc(MEMORY[0x1E69C5B70]);
            v32 = [v14 requestedTopic];
            v33 = [v14 sectionBundleIdentifier];
            v15 = [v31 initWithTopic:v32 sectionBundleIdentifier:v33];

            if (!v15)
            {
              v18 = __atxlog_handle_blending();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v34 = [v14 requestedTopic];
                [(ATXSearchFeedbackListener *)v34 resultsDidBecomeVisible:buf, &v57, v18];
              }

              goto LABEL_39;
            }

            if (([(NSMutableSet *)v6->_visibleActionContextIdentifiers containsObject:v15]& 1) == 0)
            {
              [v47 addObject:v15];
              [(ATXSearchFeedbackListener *)v6 _logCAActionWithIdentifiers:v15 eventType:3];
            }

LABEL_40:
          }

          v10 = obj;
          v11 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v11);
      }

      if ((v6->_appBlendingCacheId || v6->_actionBlendingCacheId) && (-[NSObject count](v49, "count") || [v46 count]))
      {
        v38 = v6->_appBlendingCacheId;
        v39 = v6->_actionBlendingCacheId;
        v40 = objc_opt_new();
        v41 = [ATXSpotlightEvent suggestionsAppearedEventWithAppSuggestionIds:v49 actionSuggestionIds:v46 appBlendingCacheId:v38 actionBlendingCacheId:v39 date:v40];

        [(ATXSearchFeedbackListener *)v6 writeSpotlightEvent:v41 isViewAppearEvent:0];
        [(NSMutableSet *)v6->_visibleAppUUIDs addObjectsFromArray:v49];
        [(NSMutableSet *)v6->_visibleActionUUIDs addObjectsFromArray:v46];
        [(NSMutableSet *)v6->_visibleAppBundleIds addObjectsFromArray:v48];
      }
    }

    objc_sync_exit(v6);
    v5 = v45;
  }
}

- (void)logEngagedSpotlightActionSuggestion:(id)a3 contextActionIdentifier:(id)a4
{
  actionBlendingCacheId = self->_actionBlendingCacheId;
  currentQuery = self->_currentQuery;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [ATXSpotlightEvent actionSuggestionTappedEventWithSuggestion:v9 actionBlendingCacheId:actionBlendingCacheId currentQuery:currentQuery date:v10];

  [(ATXSearchFeedbackListener *)self writeSpotlightEvent:v11 isViewAppearEvent:0];
  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedSuggestion:v9 engagementRecordType:1];
  [(ATXSearchFeedbackListener *)self _tryRemoveLockscreenActionPredictionMatchingSuggestion:v9];
  [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:0 consumerSubType:21 tracker:self->_tracker];
  [ATXBlendingCaptureRateTracker logSpotlightActionCaptureWithTracker:self->_tracker];
  [ATXBlendingCaptureRateTracker logSpotlightAppDiversionWithCaptureType:2000 tracker:self->_tracker];
  [(ATXSearchFeedbackListener *)self _logCAActionWithIdentifier:v8 suggestion:v9 eventType:4];
}

- (void)didEngageResult:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.didEngageResult, [v5 timestamp], a2))
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v45 = [v5 triggerEvent];
      v46 = [v5 destination];
      v47 = [v5 actionTarget];
      v48 = [v5 actionEngaged];
      v49 = [v5 matchesUnengagedSuggestion];
      v50 = [v5 result];
      v62 = 134219522;
      v63 = v45;
      v64 = 2048;
      v65 = v46;
      v66 = 2048;
      v67 = v47;
      v68 = 1024;
      v69 = v48;
      v70 = 1024;
      v71 = v49;
      v72 = 2112;
      v73 = v5;
      v74 = 2112;
      v75 = v50;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: didEngageResult, event:%lu, destination:%lu, actionTarget:%lu, actionEngaged:%{BOOL}d, matchedUnengagedSuggestion:%{BOOL}d, feedback:%@, result:%@", &v62, 0x40u);
    }

    if ([v5 triggerEvent] == 2 && objc_msgSend(v5, "destination") == 2 && !objc_msgSend(v5, "actionTarget"))
    {
      v8 = [v5 result];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [v5 result];
        v11 = [v10 proactiveSuggestion];

        v12 = [v11 uuid];
        v13 = [v12 UUIDString];

        v14 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v11 bundleIdExecutableObject];
          v62 = 138412290;
          v63 = v15;
          _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSFL: didEngageResult app bundle id: %@", &v62, 0xCu);
        }

        appBlendingCacheId = v6->_appBlendingCacheId;
        if (appBlendingCacheId)
        {
          currentQuery = v6->_currentQuery;
          v18 = objc_opt_new();
          v19 = [ATXSpotlightEvent appSuggestionTappedEventWithSuggestion:v11 appBlendingCacheId:appBlendingCacheId currentQuery:currentQuery date:v18];

          [(ATXSearchFeedbackListener *)v6 writeSpotlightEvent:v19 isViewAppearEvent:0];
          [(ATXEngagementRecordManager *)v6->_engagementRecordManager addEngagedSuggestion:v11 engagementRecordType:1];
        }

        [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:0 consumerSubType:9 tracker:v6->_tracker];
        [ATXBlendingCaptureRateTracker logSpotlightAppCaptureWithTracker:v6->_tracker];
        v20 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

LABEL_68:
LABEL_69:
        v6->_currentSessionHasEngagement = 1;
        objc_sync_exit(v6);

        goto LABEL_70;
      }
    }

    if ([v5 triggerEvent] == 2 && objc_msgSend(v5, "destination") == 3 && !objc_msgSend(v5, "actionTarget"))
    {
      v21 = [v5 result];
      objc_opt_class();
      v22 = objc_opt_isKindOfClass();

      if (v22)
      {
        v11 = [v5 result];
        v23 = [v11 proactiveSuggestion];
        v24 = [v23 uuid];
        v25 = [v24 UUIDString];

        v26 = [v11 contextActionIdentifier];
        [(ATXSearchFeedbackListener *)v6 logEngagedSpotlightActionSuggestion:v23 contextActionIdentifier:v26];

        v27 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([v5 triggerEvent] == 2 && objc_msgSend(v5, "destination") == 2 && !objc_msgSend(v5, "actionTarget"))
    {
      v28 = [v5 result];
      objc_opt_class();
      v29 = objc_opt_isKindOfClass();

      if (v29)
      {
        v30 = [v5 result];
        currentResultCard = v6->_currentResultCard;
        v6->_currentResultCard = v30;

        v11 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([v5 triggerEvent] == 5 && objc_msgSend(v5, "destination") == 1 && !objc_msgSend(v5, "actionTarget"))
    {
      v32 = [v5 result];
      objc_opt_class();
      v33 = objc_opt_isKindOfClass();

      if (v33)
      {
        v34 = [v5 result];
        v35 = v6->_currentResultCard;
        v6->_currentResultCard = v34;

        v11 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([v5 triggerEvent] == 2 && objc_msgSend(v5, "destination") == 1 && !objc_msgSend(v5, "actionTarget"))
    {
      v36 = [v5 result];
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if (v37)
      {
        v38 = [v5 result];
        v39 = v6->_currentResultCard;
        v6->_currentResultCard = v38;

        v11 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([v5 triggerEvent] != 2)
    {
      goto LABEL_69;
    }

    if ([v5 actionTarget])
    {
      goto LABEL_69;
    }

    v40 = [v5 result];
    getSFSearchResult_SpotlightExtrasClass();
    v41 = objc_opt_isKindOfClass();

    if ((v41 & 1) == 0)
    {
      goto LABEL_69;
    }

    v11 = [v5 result];
    v42 = [v11 applicationBundleIdentifier];
    if ([v11 predictionsFeedbackActionType]== 3)
    {
      v43 = v42;
      if ([(NSMutableSet *)v6->_visibleActionUUIDs count])
      {
        [ATXBlendingCaptureRateTracker logSpotlightActionDiversionWithCaptureType:3001 tracker:v6->_tracker];
      }

      v44 = 3;
      if (!v42)
      {
LABEL_63:
        v54 = 0;
        goto LABEL_65;
      }
    }

    else if ([v11 predictionsFeedbackActionType]== 1)
    {
      v51 = v42;
      if ([(NSMutableSet *)v6->_visibleActionUUIDs count])
      {
        [ATXBlendingCaptureRateTracker logSpotlightActionDiversionWithCaptureType:3001 tracker:v6->_tracker];
      }

      v44 = 1;
      if (!v42)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (![v42 length] || (objc_msgSend(v42, "hasPrefix:", @"com.apple.other") & 1) != 0 || objc_msgSend(v5, "destination") != 2 || (objc_msgSend(v5, "result"), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "sectionBundleIdentifier"), v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "isEqualToString:", @"com.apple.application"), v56, v55, !v57))
      {
        v54 = 0;
        v44 = 4;
        goto LABEL_65;
      }

      v58 = v42;
      if ([(NSMutableSet *)v6->_visibleAppBundleIds count])
      {
        if ([(NSMutableSet *)v6->_visibleAppBundleIds containsObject:v58])
        {
          v59 = 2002;
        }

        else
        {
          v59 = 2001;
        }

        [ATXBlendingCaptureRateTracker logSpotlightAppDiversionWithCaptureType:v59 tracker:v6->_tracker];
      }

      v44 = 4;
      if (!v42)
      {
        goto LABEL_63;
      }
    }

    v52 = objc_opt_new();
    v53 = [ATXSpotlightEvent searchResultTappedWithEngagedBundleId:v42 searchedActionType:v44 date:v52];

    [(ATXSearchFeedbackListener *)v6 writeSpotlightEvent:v53 isViewAppearEvent:0];
    v54 = v42;
LABEL_65:
    v60 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      v61 = [ATXActionPredictionTypes actionTypeToString:v44];
      [(ATXSearchFeedbackListener *)v54 didEngageResult:v61, &v62, v60];
    }

    goto LABEL_68;
  }

LABEL_70:
}

- (void)cardViewDidDisappear:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    -[ATXSearchFeedbackListener cardViewDidDisappear:].cold.1(v4, v15, [v4 cardDisappearEvent]);
  }

  if (v5->_currentResultCard && v5->_appBlendingCacheId && v5->_actionBlendingCacheId)
  {
    if ([v4 cardDisappearEvent] == 7)
    {
      v7 = [(ATXSuggestionSearchResult *)v5->_currentResultCard proactiveSuggestion];
      v8 = [v7 uuid];
      v9 = [v8 UUIDString];

      actionBlendingCacheId = v5->_actionBlendingCacheId;
      v11 = objc_opt_new();
      v12 = [ATXSpotlightEvent actionSuggestionDismissedEventWithSuggestionId:v9 actionBlendingCacheId:actionBlendingCacheId date:v11];

      [(ATXSearchFeedbackListener *)v5 writeSpotlightEvent:v12 isViewAppearEvent:0];
      [(ATXEngagementRecordManager *)v5->_engagementRecordManager addEngagedSuggestion:v7 engagementRecordType:1];
      [(ATXSearchFeedbackListener *)v5 _tryRemoveLockscreenActionPredictionMatchingSuggestion:v7];
      [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:1 consumerSubType:21 tracker:v5->_tracker];
      v13 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener cardViewDidDisappear:];
      }
    }

    else
    {
      v7 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener cardViewDidDisappear:];
      }
    }

    currentResultCard = v5->_currentResultCard;
    v5->_currentResultCard = 0;
  }

  objc_sync_exit(v5);
}

- (void)didEngageCardSection:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.didEngageCardSection, [v5 timestamp], a2))
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v5 triggerEvent];
      v26 = [v5 destination];
      v28 = 134219010;
      v29 = v25;
      v30 = 2112;
      v31 = v5;
      v32 = 2112;
      v33 = v26;
      v34 = 2048;
      v35 = [v5 actionCardType];
      v36 = 2048;
      v37 = [v5 actionTarget];
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: didEngageCardSection, event:%lu, feedback:%@, destination:%@, actionCardType:%lu, actionTarget:%lu", &v28, 0x34u);
    }

    if ([v5 triggerEvent] == 2 && !objc_msgSend(v5, "actionCardType") && (objc_msgSend(v5, "destination"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = objc_msgSend(v5, "actionTarget") == 0, v14, v15))
    {
      v8 = [(ATXSuggestionSearchResult *)v6->_currentResultCard proactiveSuggestion];
      v16 = [v8 uuid];
      v17 = [v16 UUIDString];

      currentResultCard = v6->_currentResultCard;
      if (!currentResultCard || v6->_appBlendingCacheId && (actionBlendingCacheId = v6->_actionBlendingCacheId) != 0 && (currentQuery = v6->_currentQuery, v21 = objc_opt_new(), [ATXSpotlightEvent actionSuggestionTappedEventWithSuggestion:v8 actionBlendingCacheId:actionBlendingCacheId currentQuery:currentQuery date:v21], v22 = objc_claimAutoreleasedReturnValue(), v21, [(ATXSearchFeedbackListener *)v6 writeSpotlightEvent:v22 isViewAppearEvent:0], [(ATXEngagementRecordManager *)v6->_engagementRecordManager addEngagedSuggestion:v8 engagementRecordType:1], [(ATXSearchFeedbackListener *)v6 _tryRemoveLockscreenActionPredictionMatchingSuggestion:v8], [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:0 consumerSubType:21 tracker:v6->_tracker], [ATXBlendingCaptureRateTracker logSpotlightActionCaptureWithTracker:v6->_tracker], [ATXBlendingCaptureRateTracker logSpotlightAppDiversionWithCaptureType:2000 tracker:v6->_tracker], v22, (currentResultCard = v6->_currentResultCard) == 0))
      {
        v24 = 0;
      }

      else
      {
        v23 = [(ATXSuggestionSearchResult *)currentResultCard contextActionIdentifier];
        [(ATXSearchFeedbackListener *)v6 _logCAActionWithIdentifier:v23 suggestion:v8 eventType:4];

        v24 = v6->_currentResultCard;
      }

      v6->_currentResultCard = 0;

      v27 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener didEngageCardSection:];
      }
    }

    else
    {
      if ([v5 triggerEvent] != 2 || objc_msgSend(v5, "actionCardType") != 1)
      {
        goto LABEL_27;
      }

      v8 = [v5 destination];
      if (!v8)
      {
        if ([v5 actionTarget])
        {
LABEL_27:
          objc_sync_exit(v6);

          goto LABEL_28;
        }

        v9 = v6->_currentResultCard;
        if (v9)
        {
          v10 = [(ATXSuggestionSearchResult *)v9 contextActionIdentifier];
          [(ATXSearchFeedbackListener *)v6 _logCAActionWithIdentifier:v10 suggestion:0 eventType:4];
        }

        v11 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [(ATXSuggestionSearchResult *)v6->_currentResultCard contextActionIdentifier];
          v13 = [v12 uniqueIdentifier];
          [(ATXSearchFeedbackListener *)v13 didEngageCardSection:v11, v12];
        }

        v8 = v6->_currentResultCard;
        v6->_currentResultCard = 0;
      }
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (void)didPerformCommand:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(ATXSearchFeedbackListener *)self _sendSpotlightUIStreamAppEngageWithFeedback:v4];
  v5 = [(ATXSpotlightFeedbackManager *)v4 result];
  [(ATXSearchFeedbackListener *)self _sendSpotlightUIStreamEventType:4 searchResult:v5];
  v6 = [(ATXSpotlightFeedbackManager *)v4 command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_37;
  }

  v8 = [(ATXSpotlightFeedbackManager *)v4 command];
  v9 = [(ATXSearchFeedbackListener *)self bundleIdentifierFromResult:v5];
  v10 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412290;
    v40 = v9;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXSFL: bundleId ---> %@", &v39, 0xCu);
  }

  v11 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 identifier];
    v39 = 138412290;
    v40 = v12;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSFL: searchResultIdentifier ---> %@", &v39, 0xCu);
  }

  v13 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v8 category];
    v39 = 67109120;
    LODWORD(v40) = v14;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSFL: category ---> %d", &v39, 8u);
  }

  v15 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v8 proactiveIdentifier];
    v39 = 138412290;
    v40 = v16;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXSFL: proactiveIdentifier ---> %@", &v39, 0xCu);
  }

  v17 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v8 shouldClearWholeSection];
    v39 = 67109120;
    LODWORD(v40) = v18;
    _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXSFL: shouldClearWholeSection ---> %{BOOL}d", &v39, 8u);
  }

  v19 = objc_alloc_init(ATXSpotlightFeedbackManager);
  v20 = [v8 category];
  if (v20 > 2)
  {
    if (v20 == 6)
    {
      v28 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v8 category];
        v39 = 67109120;
        LODWORD(v40) = v29;
        _os_log_impl(&dword_1BF549000, v28, OS_LOG_TYPE_DEFAULT, "ATXSFL: hiding app suggestion for category %d", &v39, 8u);
      }

      if (![v5 isLocalApplicationResult])
      {
        goto LABEL_34;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_34;
      }

      v24 = [v5 proactiveSuggestion];
      [(ATXSpotlightFeedbackManager *)v19 addHiddenAppSuggestionBundleIdentifier:v24];
      goto LABEL_33;
    }

    if (v20 == 3)
    {
      v24 = [v8 proactiveIdentifier];
      [(ATXSpotlightFeedbackManager *)v19 addHiddenContextIdentifier:v24];
      goto LABEL_33;
    }

LABEL_32:
    v24 = [v8 proactiveIdentifier];
    [(ATXSpotlightFeedbackManager *)v19 addHiddenActionExecutableIdentifier:v24];
    goto LABEL_33;
  }

  if ((v20 - 1) >= 2)
  {
    if (!v20)
    {
      v24 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v8 category];
        v39 = 67109120;
        LODWORD(v40) = v25;
        _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "ATXSFL: no hiding action for category %d", &v39, 8u);
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v21 = [v8 shouldClearWholeSection];
  v22 = __atxlog_handle_zkw_hide();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      v39 = 138412290;
      v40 = v9;
      _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "ATXSFL: User disabled all shortcut suggestions from bundleId: %@", &v39, 0xCu);
    }

    [(ATXSpotlightFeedbackManager *)v19 addHiddenAutoShortcutIdentifier:v9];
    goto LABEL_34;
  }

  if (v23)
  {
    v26 = [v5 identifier];
    v39 = 138412290;
    v40 = v26;
    _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "ATXSFL: User has hidden auto shortcut with signature: %@. Will not show this specific shortcut suggestion", &v39, 0xCu);
  }

  v24 = [v5 identifier];
  v27 = [(ATXSpotlightFeedbackManager *)v9 stringByAppendingString:v24];
  [(ATXSpotlightFeedbackManager *)v19 addHiddenAutoShortcutIdentifier:v27];

LABEL_33:
LABEL_34:
  v30 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v8 proactiveIdentifier];
    v39 = 138412546;
    v40 = v19;
    v41 = 2112;
    v42 = v31;
    _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "ATXSFL: feedbackManager %@ addHiddenActionExecutableIdentifier %@", &v39, 0x16u);
  }

LABEL_37:
  v32 = [(ATXSpotlightFeedbackManager *)v4 result];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
    v34 = [v33 proactiveSuggestion];
    v35 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v34 uiSpecification];
      v37 = [v36 title];
      v39 = 138413058;
      v40 = v4;
      v41 = 2112;
      v42 = v33;
      v43 = 2112;
      v44 = v37;
      v45 = 2112;
      v46 = v34;
      _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "didPerformCommand ---> %@ result = %@ suggestion (%@) = %@", &v39, 0x2Au);
    }
  }

  else
  {
    v33 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = 138412802;
      v40 = v4;
      v41 = 2112;
      v42 = v32;
      v43 = 2112;
      v44 = v38;
      _os_log_impl(&dword_1BF549000, v33, OS_LOG_TYPE_DEFAULT, "didPerformCommand ---> %@ result = %@ class = %@", &v39, 0x20u);
    }
  }
}

- (void)_sendSpotlightUIStreamAppEngageWithFeedback:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 result];
      v9 = [v8 sectionBundleIdentifier];
      v22 = 138412290;
      v23 = v9;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXSFL: sendSpotlightUIStreamAppEngageWithFeedback commandEngagementFeedback.result.sectionBundleIdentifier ='%@'", &v22, 0xCu);
    }

    v10 = [v4 result];
    v11 = [v10 sectionBundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.searchd.zkw.apps"];

    v13 = [v4 command];
    v14 = [v13 applicationBundleIdentifier];
    if ([v14 length])
    {
      if (v12)
      {
        v15 = 4;
      }

      else
      {
        v15 = 5;
      }

      v16 = [objc_alloc(MEMORY[0x1E69C5C00]) initWithType:v15 suggestionUniqueId:v14 suggestionType:@"app" suggestionSubtype:0 suggestionContext:0];
      v17 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 eventType];
        v19 = [v16 suggestionType];
        v20 = [v16 suggestionSubtype];
        v21 = [v16 suggestionUniqueId];
        v22 = 134218754;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXSFL: uiEvent type%ld: %@ %@ %@", &v22, 0x2Au);
      }

      [(ATXSearchFeedbackListener *)self _sendSpotlightUIEvent:v16];
    }
  }
}

- (void)_sendSpotlightUIEvent:(id)a3
{
  v4 = a3;
  p_viewAppearEvent = &self->_viewAppearEvent;
  if ((self->_viewAppearEvent | 8) == 0x1E)
  {
    [(ATXSpotlightUIBiomeStream *)self->_spotlightUIBiomeStream sendEvent:v4];
  }

  else
  {
    v6 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ATXSearchFeedbackListener *)p_viewAppearEvent _sendSpotlightUIEvent:v4, v6];
    }
  }
}

- (void)_sendSpotlightUIStreamEventType:(int64_t)a3 searchResult:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 sectionBundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.spotlight.dec.zkw.recents"];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v6 identifier];
    v11 = [v9 stringWithFormat:@"%lu", objc_msgSend(v10, "hash")];

    v12 = -[ATXSearchFeedbackListener _suggestionSubTypeStringWithResultType:](self, "_suggestionSubTypeStringWithResultType:", [v6 type]);
    v13 = [objc_alloc(MEMORY[0x1E69C5C00]) initWithType:a3 suggestionUniqueId:v11 suggestionType:@"recent" suggestionSubtype:v12 suggestionContext:0];
    v14 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 eventType];
      v16 = [v13 suggestionType];
      v17 = [v13 suggestionSubtype];
      v18 = [v13 suggestionUniqueId];
      *buf = 134218754;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSFL: uiEvent type%ld: %@ %@ %@", buf, 0x2Au);
    }

    [(ATXSearchFeedbackListener *)self _sendSpotlightUIEvent:v13];
  }
}

- (id)_suggestionSubTypeStringWithResultType:(int)a3
{
  if ((a3 - 1) > 0x26)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80C5F08[a3 - 1];
  }
}

- (id)bundleIdentifierFromResult:(id)a3
{
  v3 = a3;
  getSFSearchResult_SpotlightExtrasClass();
  if (objc_opt_isKindOfClass())
  {
    [v3 relatedAppIdentifier];
  }

  else
  {
    [v3 applicationBundleIdentifier];
  }
  v4 = ;

  return v4;
}

- (void)_logCAActionWithIdentifier:(void *)a1 suggestion:(NSObject *)a2 eventType:.cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 executableSpecification];
  v5 = [v4 executableIdentifier];
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil: %@, %@", v6, 0x16u);
}

- (void)resultsDidBecomeVisible:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)resultsDidBecomeVisible:(void *)a3 .cold.2(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil topic: %@", buf, 0xCu);
}

- (void)didEngageResult:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_3_9(&dword_1BF549000, "ATXSFL: handled engagement via search with engagedBundleId: %@ searchedActionType: %@", a3, a4);
}

- (void)didEngageResult:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didEngageResult:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didEngageResult:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didEngageResult:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didEngageResult:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cardViewDidDisappear:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cardViewDidDisappear:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didEngageCardSection:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didEngageCardSection:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "ATXSFL: handled action prediction engagement on card with identifier: %@", buf, 0xCu);
}

- (void)_sendSpotlightUIEvent:(NSObject *)a3 .cold.1(uint64_t *a1, void *a2, NSObject *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = [MEMORY[0x1E69C5C00] stringForATXSpotlightUIEventType:{objc_msgSend(a2, "eventType")}];
  v7 = [a2 eventType];
  v8 = [a2 suggestionType];
  v9 = [a2 suggestionUniqueId];
  v10 = [a2 suggestionSubtype];
  v11 = [a2 suggestionContext];
  v12 = 134219522;
  v13 = v5;
  v14 = 2112;
  v15 = v6;
  v16 = 2048;
  v17 = v7;
  v18 = 2112;
  v19 = v8;
  v20 = 2112;
  v21 = v9;
  v22 = 2112;
  v23 = v10;
  v24 = 2112;
  v25 = v11;
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "SKIP type %lu: %@ - ATXSpotlightUIEvent\n\teventType: %lu\n\tsuggestionType: %@\n\tsuggestionUniqueId: %@\n\tsuggestionSubtype: %@\n\tsuggestionContext: %@", &v12, 0x48u);
}

@end