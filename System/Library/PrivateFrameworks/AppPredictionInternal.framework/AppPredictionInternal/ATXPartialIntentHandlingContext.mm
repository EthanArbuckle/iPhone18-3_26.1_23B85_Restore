@interface ATXPartialIntentHandlingContext
- (ATXPartialIntentHandlingContext)init;
- (ATXPartialIntentHandlingContext)initWithCoder:(id)coder;
- (ATXPartialIntentHandlingContext)initWithFeedbackResults:(id)results partiallyExecutedAction:(id)action partiallyExecutedActionStartDate:(id)date currentApp:(id)app currentAppSessionStartDate:(id)startDate shortcutsRuntimeDonatedAction:(id)donatedAction shortcutsRuntimeDonationDate:(id)donationDate matchingAppSessionDonatedAction:(id)self0 matchingAppSessionDonationDate:(id)self1;
- (BOOL)_isPartialEngagementForATXAction:(id)action withMatchingDonatedAction:(id)donatedAction;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPartialIntentHandlingContext:(id)context;
- (NSArray)feedbackResults;
- (id)_partiallyExecutedSuggestionFromFeedbackResult:(id)result;
- (id)atxActionFromIntentEvent:(id)event;
- (id)handleAppLaunchAndReturnCompletedResults:(id)results;
- (id)handleNewFeedbackResultAndReturnCompletedResults:(id)results;
- (id)handleNewIntentEventAndReturnCompletedResults:(id)results;
- (unint64_t)hash;
- (void)_resetInternalState;
- (void)_tryUpdateMatchingAppSessionDonatedAction:(id)action eventDate:(id)date;
- (void)_tryUpdatePartialIntentSessionState;
- (void)_tryUpdateShortcutsRuntimeDonatedAction:(id)action eventDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPartialIntentHandlingContext

- (ATXPartialIntentHandlingContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXPartialIntentHandlingContext *)self initWithFeedbackResults:v3 partiallyExecutedAction:0 partiallyExecutedActionStartDate:0 currentApp:0 currentAppSessionStartDate:0 shortcutsRuntimeDonatedAction:0 shortcutsRuntimeDonationDate:0 matchingAppSessionDonatedAction:0 matchingAppSessionDonationDate:0];

  return v4;
}

- (ATXPartialIntentHandlingContext)initWithFeedbackResults:(id)results partiallyExecutedAction:(id)action partiallyExecutedActionStartDate:(id)date currentApp:(id)app currentAppSessionStartDate:(id)startDate shortcutsRuntimeDonatedAction:(id)donatedAction shortcutsRuntimeDonationDate:(id)donationDate matchingAppSessionDonatedAction:(id)self0 matchingAppSessionDonationDate:(id)self1
{
  resultsCopy = results;
  actionCopy = action;
  dateCopy = date;
  appCopy = app;
  startDateCopy = startDate;
  donatedActionCopy = donatedAction;
  donationDateCopy = donationDate;
  sessionDonatedActionCopy = sessionDonatedAction;
  sessionDonationDateCopy = sessionDonationDate;
  v30.receiver = self;
  v30.super_class = ATXPartialIntentHandlingContext;
  v19 = [(ATXPartialIntentHandlingContext *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_feedbackResults, results);
    objc_storeStrong(&v20->_partiallyExecutedAction, action);
    objc_storeStrong(&v20->_partiallyExecutedActionStartDate, date);
    objc_storeStrong(&v20->_currentApp, app);
    objc_storeStrong(&v20->_currentAppSessionStartDate, startDate);
    objc_storeStrong(&v20->_shortcutsRuntimeDonatedAction, donatedAction);
    objc_storeStrong(&v20->_shortcutsRuntimeDonationDate, donationDate);
    objc_storeStrong(&v20->_matchingAppSessionDonatedAction, sessionDonatedAction);
    objc_storeStrong(&v20->_matchingAppSessionDonationDate, sessionDonationDate);
  }

  return v20;
}

- (id)handleNewFeedbackResultAndReturnCompletedResults:(id)results
{
  v40 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXPartialIntentHandlingContext handleNewFeedbackResultAndReturnCompletedResults:];
  }

  v6 = [(ATXPartialIntentHandlingContext *)self _partiallyExecutedSuggestionFromFeedbackResult:resultsCopy];
  atxActionExecutableObject = [v6 atxActionExecutableObject];
  v8 = atxActionExecutableObject;
  if (v6)
  {
    obj = atxActionExecutableObject;
    v32 = v6;
    v9 = [(NSMutableArray *)self->_feedbackResults copy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v10);
          }

          session = [*(*(&v33 + 1) + 8 * i) session];
          session2 = [resultsCopy session];
          v18 = [session isEqual:session2];

          if ((v18 & 1) == 0)
          {
            [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
            v19 = [(NSMutableArray *)self->_feedbackResults copy];

            [(ATXPartialIntentHandlingContext *)self _resetInternalState];
            v20 = __atxlog_handle_blending_ecosystem();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              [(ATXPartialIntentHandlingContext *)v37 handleNewFeedbackResultAndReturnCompletedResults:&v38, v20];
            }

            v13 = v19;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v24 = [[ATXProactiveSuggestionPartialIntentResultWrapper alloc] initWithUIFeedbackResult:resultsCopy];
    v6 = v32;
    [(ATXProactiveSuggestionPartialIntentResultWrapper *)v24 updatePartiallyExecutedActionWithProactiveSuggestion:v32];
    [(NSMutableArray *)self->_feedbackResults addObject:v24];
    v8 = obj;
    objc_storeStrong(&self->_partiallyExecutedAction, obj);
    session3 = [resultsCopy session];
    sessionEndDate = [session3 sessionEndDate];
    partiallyExecutedActionStartDate = self->_partiallyExecutedActionStartDate;
    self->_partiallyExecutedActionStartDate = sessionEndDate;

    v28 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [ATXPartialIntentHandlingContext handleNewFeedbackResultAndReturnCompletedResults:];
    }

    v21 = v13;
    v23 = v21;
  }

  else
  {
    [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
    v21 = [(NSMutableArray *)self->_feedbackResults mutableCopy];
    [(ATXPartialIntentHandlingContext *)self _resetInternalState];
    [v21 addObject:resultsCopy];
    v22 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ATXPartialIntentHandlingContext handleNewFeedbackResultAndReturnCompletedResults:];
    }

    v23 = [v21 copy];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)handleAppLaunchAndReturnCompletedResults:(id)results
{
  v37 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXPartialIntentHandlingContext *)self handleAppLaunchAndReturnCompletedResults:resultsCopy, v5];
  }

  absoluteTimestamp = [resultsCopy absoluteTimestamp];
  bundleID = [resultsCopy bundleID];
  v8 = [bundleID isEqualToString:@"com.apple.springboard.today-view"];

  if (![resultsCopy starting] || (v8 & 1) != 0)
  {
    currentApp = self->_currentApp;
    v14 = 0.0;
    if (currentApp && self->_currentAppSessionStartDate)
    {
      bundleID2 = [resultsCopy bundleID];
      [absoluteTimestamp timeIntervalSinceDate:self->_currentAppSessionStartDate];
      v14 = v16;
      currentApp = self->_currentApp;
    }

    else
    {
      bundleID2 = 0;
    }

    self->_currentApp = 0;

    currentAppSessionStartDate = self->_currentAppSessionStartDate;
    self->_currentAppSessionStartDate = 0;
  }

  else
  {
    bundleID3 = [resultsCopy bundleID];
    v10 = self->_currentApp;
    self->_currentApp = bundleID3;

    v11 = absoluteTimestamp;
    bundleID2 = 0;
    currentAppSessionStartDate = self->_currentAppSessionStartDate;
    self->_currentAppSessionStartDate = v11;
    v14 = 0.0;
  }

  v17 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:?];
  }

  if (!self->_partiallyExecutedAction)
  {
    goto LABEL_26;
  }

  if (bundleID2 && ([bundleID2 isEqualToString:@"com.apple.shortcuts.runtime"] & 1) == 0 && v14 < 1.0)
  {
    matchingAppSessionDonatedAction = self->_matchingAppSessionDonatedAction;
    self->_matchingAppSessionDonatedAction = 0;

    matchingAppSessionDonationDate = self->_matchingAppSessionDonationDate;
    self->_matchingAppSessionDonationDate = 0;

    v20 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = 138412802;
      v32 = v30;
      v33 = 2112;
      v34 = bundleID2;
      v35 = 2048;
      v36 = v14;
      _os_log_debug_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEBUG, "%@ - clearing any existing matching donations for short app session with bundleId %@, length: %f", &v31, 0x20u);
    }
  }

  [absoluteTimestamp timeIntervalSinceDate:self->_partiallyExecutedActionStartDate];
  if (v21 > 300.0)
  {
    [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
    v22 = [(NSMutableArray *)self->_feedbackResults copy];
    [(ATXPartialIntentHandlingContext *)self _resetInternalState];
    bundleID4 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(bundleID4, OS_LOG_TYPE_DEBUG))
    {
      [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:];
    }

    goto LABEL_29;
  }

  bundleID4 = [resultsCopy bundleID];
  if (([bundleID4 isEqualToString:@"com.apple.shortcuts.runtime"]& 1) == 0)
  {
    bundleId = [(ATXAction *)self->_partiallyExecutedAction bundleId];
    bundleID5 = [resultsCopy bundleID];
    v26 = [bundleId isEqualToString:bundleID5];

    if ((v26 & 1) == 0)
    {
      [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
      v22 = [(NSMutableArray *)self->_feedbackResults copy];
      [(ATXPartialIntentHandlingContext *)self _resetInternalState];
      bundleID4 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(bundleID4, OS_LOG_TYPE_DEBUG))
      {
        [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:];
      }

      goto LABEL_29;
    }

LABEL_26:
    v22 = 0;
    goto LABEL_30;
  }

  v22 = 0;
LABEL_29:

LABEL_30:
  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)handleNewIntentEventAndReturnCompletedResults:(id)results
{
  v34 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    bundleID = [resultsCopy bundleID];
    intentClass = [resultsCopy intentClass];
    absoluteTimestamp = [resultsCopy absoluteTimestamp];
    v26 = 138413058;
    v27 = v7;
    v28 = 2112;
    v29 = bundleID;
    v30 = 2112;
    v31 = intentClass;
    v32 = 2112;
    v33 = absoluteTimestamp;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - got intent event with bundleId: %@ class: %@ date: %@", &v26, 0x2Au);
  }

  absoluteTimestamp2 = [resultsCopy absoluteTimestamp];
  v12 = absoluteTimestamp2;
  if (self->_partiallyExecutedAction)
  {
    [absoluteTimestamp2 timeIntervalSinceDate:self->_partiallyExecutedActionStartDate];
    if (v13 <= 18000.0)
    {
      bundleId = [(ATXAction *)self->_partiallyExecutedAction bundleId];
      bundleID2 = [resultsCopy bundleID];
      v18 = [bundleId isEqualToString:bundleID2];

      if (v18)
      {
        currentApp = self->_currentApp;
        v20 = [(NSString *)currentApp isEqualToString:@"com.apple.shortcuts.runtime"];
        v21 = self->_currentApp;
        bundleId2 = [(ATXAction *)self->_partiallyExecutedAction bundleId];
        v23 = [(NSString *)v21 isEqualToString:bundleId2];

        v15 = [(ATXPartialIntentHandlingContext *)self atxActionFromIntentEvent:resultsCopy];
        if (currentApp)
        {
          if (v20)
          {
            [(ATXPartialIntentHandlingContext *)self _tryUpdateShortcutsRuntimeDonatedAction:v15 eventDate:v12];
          }

          else if (v23)
          {
            [(ATXPartialIntentHandlingContext *)self _tryUpdateMatchingAppSessionDonatedAction:v15 eventDate:v12];
          }
        }

        v14 = 0;
      }

      else
      {
        [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
        v14 = [(NSMutableArray *)self->_feedbackResults copy];
        [(ATXPartialIntentHandlingContext *)self _resetInternalState];
        v15 = __atxlog_handle_blending_ecosystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [ATXPartialIntentHandlingContext handleNewIntentEventAndReturnCompletedResults:];
        }
      }
    }

    else
    {
      [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
      v14 = [(NSMutableArray *)self->_feedbackResults copy];
      [(ATXPartialIntentHandlingContext *)self _resetInternalState];
      v15 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_resetInternalState
{
  [(NSMutableArray *)self->_feedbackResults removeAllObjects];
  partiallyExecutedAction = self->_partiallyExecutedAction;
  self->_partiallyExecutedAction = 0;

  partiallyExecutedActionStartDate = self->_partiallyExecutedActionStartDate;
  self->_partiallyExecutedActionStartDate = 0;

  shortcutsRuntimeDonatedAction = self->_shortcutsRuntimeDonatedAction;
  self->_shortcutsRuntimeDonatedAction = 0;

  shortcutsRuntimeDonationDate = self->_shortcutsRuntimeDonationDate;
  self->_shortcutsRuntimeDonationDate = 0;

  matchingAppSessionDonatedAction = self->_matchingAppSessionDonatedAction;
  self->_matchingAppSessionDonatedAction = 0;

  matchingAppSessionDonationDate = self->_matchingAppSessionDonationDate;
  self->_matchingAppSessionDonationDate = 0;
}

- (void)_tryUpdatePartialIntentSessionState
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_tryUpdateShortcutsRuntimeDonatedAction:(id)action eventDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  dateCopy = date;
  if (actionCopy && !self->_shortcutsRuntimeDonatedAction)
  {
    objc_storeStrong(&self->_shortcutsRuntimeDonatedAction, action);
    objc_storeStrong(&self->_shortcutsRuntimeDonationDate, date);
    v9 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      shortcutsRuntimeDonatedAction = self->_shortcutsRuntimeDonatedAction;
      shortcutsRuntimeDonationDate = self->_shortcutsRuntimeDonationDate;
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = shortcutsRuntimeDonationDate;
      v19 = 2112;
      v20 = shortcutsRuntimeDonatedAction;
      _os_log_debug_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEBUG, "%@ - updated shortcuts runtime donation with date: %@, action: %@", &v15, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_tryUpdateMatchingAppSessionDonatedAction:(id)action eventDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  dateCopy = date;
  if (actionCopy && !self->_matchingAppSessionDonatedAction)
  {
    objc_storeStrong(&self->_matchingAppSessionDonatedAction, action);
    objc_storeStrong(&self->_matchingAppSessionDonationDate, date);
    v9 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      matchingAppSessionDonatedAction = self->_matchingAppSessionDonatedAction;
      matchingAppSessionDonationDate = self->_matchingAppSessionDonationDate;
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = matchingAppSessionDonationDate;
      v19 = 2112;
      v20 = matchingAppSessionDonatedAction;
      _os_log_debug_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEBUG, "%@ - updated app session donation with date: %@, action: %@", &v15, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPartialEngagementForATXAction:(id)action withMatchingDonatedAction:(id)donatedAction
{
  actionCopy = action;
  actionKey = [donatedAction actionKey];
  actionKey2 = [actionCopy actionKey];

  LOBYTE(actionCopy) = [actionKey isEqualToString:actionKey2];
  return actionCopy;
}

- (id)_partiallyExecutedSuggestionFromFeedbackResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  engagedSuggestions = [result engagedSuggestions];
  v4 = [engagedSuggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(engagedSuggestions);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        atxActionExecutableObject = [v7 atxActionExecutableObject];
        v9 = atxActionExecutableObject;
        if (atxActionExecutableObject)
        {
          intent = [atxActionExecutableObject intent];
          if (intent)
          {
            v11 = intent;
            intent2 = [v9 intent];
            atx_supportsBackgroundExecution = [intent2 atx_supportsBackgroundExecution];

            if (!atx_supportsBackgroundExecution)
            {
              v4 = v7;

              goto LABEL_13;
            }
          }
        }
      }

      v4 = [engagedSuggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)atxActionFromIntentEvent:(id)event
{
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCAAC8];
  v7 = objc_opt_class();
  interaction = [eventCopy interaction];
  v18 = 0;
  v9 = [v6 unarchivedObjectOfClass:v7 fromData:interaction error:&v18];
  v10 = v18;

  objc_autoreleasePoolPop(v5);
  if (v9)
  {
    v11 = objc_alloc(MEMORY[0x277CEB2C8]);
    intent = [v9 intent];
    v13 = objc_opt_new();
    bundleID = [eventCopy bundleID];
    LOBYTE(v17) = 0;
    v15 = [v11 initWithIntent:intent actionUUID:v13 bundleId:bundleID heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v17 title:0 subtitle:0];
  }

  else
  {
    intent = __atxlog_handle_feedback();
    if (os_log_type_enabled(intent, OS_LOG_TYPE_ERROR))
    {
      [(ATXPartialIntentHandlingContext *)self atxActionFromIntentEvent:v10, intent];
    }

    v15 = 0;
  }

  return v15;
}

- (NSArray)feedbackResults
{
  v2 = [(NSMutableArray *)self->_feedbackResults copy];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  feedbackResults = self->_feedbackResults;
  coderCopy = coder;
  [coderCopy encodeObject:feedbackResults forKey:@"feedbackResults"];
  [coderCopy encodeObject:self->_partiallyExecutedAction forKey:@"partialAction"];
  [coderCopy encodeObject:self->_partiallyExecutedActionStartDate forKey:@"partialActionStartDate"];
  [coderCopy encodeObject:self->_currentApp forKey:@"currentApp"];
  [coderCopy encodeObject:self->_currentAppSessionStartDate forKey:@"currentAppStartDate"];
  [coderCopy encodeObject:self->_shortcutsRuntimeDonatedAction forKey:@"shortcutsRuntimeDonatedAction"];
  [coderCopy encodeObject:self->_shortcutsRuntimeDonationDate forKey:@"shortcutsRuntimeDonationDate"];
  [coderCopy encodeObject:self->_matchingAppSessionDonatedAction forKey:@"matchingAppSessionAction"];
  [coderCopy encodeObject:self->_matchingAppSessionDonationDate forKey:@"matchingAppSessionDonationDate"];
}

- (ATXPartialIntentHandlingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = __atxlog_handle_blending_ecosystem();
  v11 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"feedbackResults" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v10];

  if (v11 && ([coderCopy error], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v14 = MEMORY[0x277D42620];
    v15 = objc_opt_class();
    v16 = __atxlog_handle_blending_ecosystem();
    v17 = [v14 robustDecodeObjectOfClass:v15 forKey:@"partialAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v16];

    error = [coderCopy error];

    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      v19 = MEMORY[0x277D42620];
      v20 = objc_opt_class();
      v21 = __atxlog_handle_blending_ecosystem();
      v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"partialActionStartDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v21];

      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
      }

      else
      {
        v24 = MEMORY[0x277D42620];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_blending_ecosystem();
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"currentApp" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v26];

        error3 = [coderCopy error];

        if (error3)
        {
          selfCopy = 0;
        }

        else
        {
          v29 = MEMORY[0x277D42620];
          v30 = objc_opt_class();
          v31 = __atxlog_handle_blending_ecosystem();
          v32 = [v29 robustDecodeObjectOfClass:v30 forKey:@"currentAppStartDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v31];

          error4 = [coderCopy error];

          if (error4)
          {
            selfCopy = 0;
          }

          else
          {
            v59 = v32;
            v34 = MEMORY[0x277D42620];
            v35 = objc_opt_class();
            v36 = __atxlog_handle_blending_ecosystem();
            v37 = [v34 robustDecodeObjectOfClass:v35 forKey:@"shortcutsRuntimeDonatedAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v36];

            error5 = [coderCopy error];

            if (error5)
            {
              selfCopy = 0;
              v32 = v59;
            }

            else
            {
              v58 = v37;
              v39 = MEMORY[0x277D42620];
              v40 = objc_opt_class();
              v41 = __atxlog_handle_blending_ecosystem();
              v57 = [v39 robustDecodeObjectOfClass:v40 forKey:@"shortcutsRuntimeDonationDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v41];

              error6 = [coderCopy error];

              if (error6)
              {
                selfCopy = 0;
                v37 = v58;
                v32 = v59;
                v43 = v57;
              }

              else
              {
                v44 = MEMORY[0x277D42620];
                v45 = objc_opt_class();
                v46 = __atxlog_handle_blending_ecosystem();
                v56 = [v44 robustDecodeObjectOfClass:v45 forKey:@"matchingAppSessionAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v46];

                error7 = [coderCopy error];

                if (error7)
                {
                  selfCopy = 0;
                  v37 = v58;
                  v32 = v59;
                  v43 = v57;
                }

                else
                {
                  v48 = MEMORY[0x277D42620];
                  v49 = objc_opt_class();
                  v50 = __atxlog_handle_blending_ecosystem();
                  v51 = [v48 robustDecodeObjectOfClass:v49 forKey:@"matchingAppSessionDonationDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v50];

                  error8 = [coderCopy error];

                  v55 = v51;
                  if (error8)
                  {
                    selfCopy = 0;
                    v37 = v58;
                    v32 = v59;
                    v43 = v57;
                  }

                  else
                  {
                    v43 = v57;
                    v54 = v51;
                    v37 = v58;
                    v32 = v59;
                    self = [(ATXPartialIntentHandlingContext *)self initWithFeedbackResults:v11 partiallyExecutedAction:v17 partiallyExecutedActionStartDate:v22 currentApp:v27 currentAppSessionStartDate:v59 shortcutsRuntimeDonatedAction:v58 shortcutsRuntimeDonationDate:v57 matchingAppSessionDonatedAction:v56 matchingAppSessionDonationDate:v54, v55];
                    selfCopy = self;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPartialIntentHandlingContext *)self isEqualToATXPartialIntentHandlingContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPartialIntentHandlingContext:(id)context
{
  contextCopy = context;
  v5 = self->_feedbackResults;
  v6 = v5;
  if (v5 == contextCopy[1])
  {
  }

  else
  {
    v7 = [(NSMutableArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v8 = self->_partiallyExecutedAction;
  v9 = v8;
  if (v8 == contextCopy[2])
  {
  }

  else
  {
    v10 = [(ATXAction *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v11 = self->_partiallyExecutedActionStartDate;
  v12 = v11;
  if (v11 == contextCopy[3])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v14 = self->_currentApp;
  v15 = v14;
  if (v14 == contextCopy[4])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v17 = self->_currentAppSessionStartDate;
  v18 = v17;
  if (v17 == contextCopy[5])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v20 = self->_shortcutsRuntimeDonatedAction;
  v21 = v20;
  if (v20 == contextCopy[6])
  {
  }

  else
  {
    v22 = [(ATXAction *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v23 = self->_shortcutsRuntimeDonationDate;
  v24 = v23;
  if (v23 == contextCopy[7])
  {
  }

  else
  {
    v25 = [(NSDate *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v26 = self->_matchingAppSessionDonatedAction;
  v27 = v26;
  if (v26 == contextCopy[8])
  {
  }

  else
  {
    v28 = [(ATXAction *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
LABEL_31:
      v29 = 0;
      goto LABEL_32;
    }
  }

  v31 = self->_matchingAppSessionDonationDate;
  v32 = v31;
  if (v31 == contextCopy[9])
  {
    v29 = 1;
  }

  else
  {
    v29 = [(NSDate *)v31 isEqual:?];
  }

LABEL_32:
  return v29;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_feedbackResults hash];
  v4 = [(ATXAction *)self->_partiallyExecutedAction hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_partiallyExecutedActionStartDate hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_currentApp hash]- v5 + 32 * v5;
  v7 = [(NSDate *)self->_currentAppSessionStartDate hash]- v6 + 32 * v6;
  v8 = [(ATXAction *)self->_shortcutsRuntimeDonatedAction hash]- v7 + 32 * v7;
  v9 = [(NSDate *)self->_shortcutsRuntimeDonationDate hash]- v8 + 32 * v8;
  v10 = [(ATXAction *)self->_matchingAppSessionDonatedAction hash]- v9 + 32 * v9;
  return [(NSDate *)self->_matchingAppSessionDonationDate hash]- v10 + 32 * v10;
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:(void *)a3 .cold.2(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&dword_2263AA000, a4, OS_LOG_TYPE_DEBUG, "%@ - new partial intent engagement session does not match currently tracked partial intent session - ending all currently tracked partial sessions", a1, 0xCu);
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAppLaunchAndReturnCompletedResults:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 bundleID];
  v8 = [a2 absoluteTimestamp];
  v10 = 138413314;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 1024;
  v17 = [a2 starting];
  v18 = 1024;
  v19 = [a2 type];
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "%@ - got app launch event of: %@ at %@, starting: %{BOOL}d type: %d", &v10, 0x2Cu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAppLaunchAndReturnCompletedResults:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAppLaunchAndReturnCompletedResults:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAppLaunchAndReturnCompletedResults:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleNewIntentEventAndReturnCompletedResults:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)atxActionFromIntentEvent:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_2();
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - IntentEventIsCompleteEngagement - Error unarchiving intent: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end