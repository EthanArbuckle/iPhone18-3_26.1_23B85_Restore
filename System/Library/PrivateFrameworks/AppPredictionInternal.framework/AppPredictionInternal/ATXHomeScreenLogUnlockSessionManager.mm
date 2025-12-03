@interface ATXHomeScreenLogUnlockSessionManager
+ (id)_currentSettings;
+ (id)currentSettings;
- (ATXHomeScreenLogUnlockSessionManager)init;
- (ATXHomeScreenLogUnlockSessionManager)initWithCoder:(id)coder;
- (ATXHomeScreenLogUnlockSessionManager)initWithIsInSession:(BOOL)session currentSession:(id)currentSession completedSessions:(id)sessions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenLogUnlockSessionManager:(id)manager;
- (id)removeCompletedSessions;
- (id)summarizeCompletedSessions;
- (int64_t)_eventStatusWithUIEvent:(id)event;
- (int64_t)updateSessionStateWithUIEvent:(id)event;
- (void)_updateCurrentSessionWithUIEvent:(id)event eventStatus:(int64_t)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHomeScreenLogUnlockSessionManager

- (ATXHomeScreenLogUnlockSessionManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHomeScreenLogUnlockSessionManager *)self initWithIsInSession:0 currentSession:0 completedSessions:v3];

  return v4;
}

- (ATXHomeScreenLogUnlockSessionManager)initWithIsInSession:(BOOL)session currentSession:(id)currentSession completedSessions:(id)sessions
{
  currentSessionCopy = currentSession;
  sessionsCopy = sessions;
  v14.receiver = self;
  v14.super_class = ATXHomeScreenLogUnlockSessionManager;
  v11 = [(ATXHomeScreenLogUnlockSessionManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_isInSession = session;
    objc_storeStrong(&v11->_currentSession, currentSession);
    objc_storeStrong(&v12->_completedSessions, sessions);
  }

  return v12;
}

- (int64_t)_eventStatusWithUIEvent:(id)event
{
  homeScreenEvent = [event homeScreenEvent];
  eventTypeString = [homeScreenEvent eventTypeString];
  if (([eventTypeString isEqualToString:@"Unknown"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"HomeScreenPageShown") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"HomeScreenDisappeared") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackChanged") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetTapped") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetLongLook") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetUserFeedback") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"UserStackConfigChanged") & 1) == 0)
  {
    if ([eventTypeString isEqualToString:@"DeviceLocked"])
    {

      self->_isInSession = 0;
      v6 = 2;
      goto LABEL_12;
    }

    if ([eventTypeString isEqualToString:@"DeviceUnlocked"])
    {

      v6 = 1;
      self->_isInSession = 1;
      goto LABEL_12;
    }

    if (([eventTypeString isEqualToString:@"PinnedWidgetAdded"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"PinnedWidgetDeleted") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"SpecialPageAppeared") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"SpecialPageDisappeared") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackDisappeared") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"AppAdded") & 1) == 0)
    {
      [eventTypeString isEqualToString:@"AppRemoved"];
    }
  }

  if (self->_isInSession)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

LABEL_12:

  return v6;
}

- (void)_updateCurrentSessionWithUIEvent:(id)event eventStatus:(int64_t)status
{
  eventCopy = event;
  homeScreenEvent = [eventCopy homeScreenEvent];
  currentSettings = [objc_opt_class() currentSettings];
  if (status <= 1)
  {
    if (status)
    {
      if (status == 1)
      {
        v8 = [ATXScreenLogUnlockSession alloc];
        date = [homeScreenEvent date];
        v10 = [(ATXScreenLogUnlockSession *)v8 initWithSessionStartDate:date];
        currentSession = self->_currentSession;
        self->_currentSession = v10;

        -[ATXScreenLogUnlockSession setSpotlightEnabled:](self->_currentSession, "setSpotlightEnabled:", [currentSettings spotlightEnabled]);
        -[ATXScreenLogUnlockSession setHasSuggestionsWidget:](self->_currentSession, "setHasSuggestionsWidget:", [currentSettings hasSuggestionsWidget]);
        -[ATXScreenLogUnlockSession setHasSuggestionsWidgetInTodayPage:](self->_currentSession, "setHasSuggestionsWidgetInTodayPage:", [currentSettings hasSuggestionsWidgetToday]);
        -[ATXScreenLogUnlockSession setHasAppPredictionPanel:](self->_currentSession, "setHasAppPredictionPanel:", [currentSettings hasAppPredictionPanel]);
        -[ATXScreenLogUnlockSession setHasAppPredictionPanelInTodayPage:](self->_currentSession, "setHasAppPredictionPanelInTodayPage:", [currentSettings hasAppPredictionPanelToday]);
        -[ATXScreenLogUnlockSession setAppLibraryEnabled:](self->_currentSession, "setAppLibraryEnabled:", [currentSettings appLibraryEnabled]);
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  switch(status)
  {
    case 2:
      v12 = self->_currentSession;
      if (!v12)
      {
        break;
      }

      date2 = [homeScreenEvent date];
      [(ATXScreenLogUnlockSession *)v12 finalizeWithSessionEndDate:date2];

      [(NSMutableArray *)self->_completedSessions addObject:self->_currentSession];
      goto LABEL_11;
    case 3:
      [(ATXScreenLogUnlockSession *)self->_currentSession updateWithUIEventIfPossible:eventCopy];
      break;
    case 4:
LABEL_11:
      v14 = self->_currentSession;
      self->_currentSession = 0;

      break;
  }

LABEL_13:
}

- (int64_t)updateSessionStateWithUIEvent:(id)event
{
  eventCopy = event;
  v5 = [(ATXHomeScreenLogUnlockSessionManager *)self _eventStatusWithUIEvent:eventCopy];
  [(ATXHomeScreenLogUnlockSessionManager *)self _updateCurrentSessionWithUIEvent:eventCopy eventStatus:v5];

  return v5;
}

- (id)removeCompletedSessions
{
  v3 = self->_completedSessions;
  v4 = objc_opt_new();
  completedSessions = self->_completedSessions;
  self->_completedSessions = v4;

  v6 = [(NSMutableArray *)v3 copy];

  return v6;
}

- (id)summarizeCompletedSessions
{
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_completedSessions;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v27 = selfCopy;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v29 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        sessionEndDate = [v12 sessionEndDate];
        sessionStartDate = [v12 sessionStartDate];
        [sessionEndDate timeIntervalSinceDate:sessionStartDate];
        v10 = (v15 + v10);

        if ([v12 numEngagementsInAppLibrary])
        {
          ++v9;
        }

        if ([v12 numEngagementsInAppPredictionPanel])
        {
          ++v6;
        }

        if ([v12 numEngagementsInAppPredictionPanelTodayPage])
        {
          ++v6;
        }

        if ([v12 numEngagementsInSpotlightApps])
        {
          ++v8;
        }

        if ([v12 numEngagementsInSpotlightActions])
        {
          ++v7;
        }

        [v12 numEngagementsInSuggestionsWidget];
        [v12 numEngagementsInSuggestionsWidgetTodayPage];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v5);
    v16 = v10;
    selfCopy = v27;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v16 = 0.0;
  }

  if ([(NSMutableArray *)selfCopy->_completedSessions count])
  {
    v4 = v16 / [(NSMutableArray *)selfCopy->_completedSessions count];
  }

  v34[0] = @"NumberOfLockUnlockSessions";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](selfCopy->_completedSessions, "count")}];
  v35[0] = v17;
  v34[1] = @"AverageSessionLength";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v35[1] = v18;
  v34[2] = @"NumSessionsWithAppLibraryPredictionEngagement";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v35[2] = v19;
  v34[3] = @"NumSessionsWithAppPanelEngagement";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v35[3] = v20;
  v34[4] = @"NumSessionsWithSpotlightActionEngagement";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v35[4] = v21;
  v34[5] = @"NumSessionsWithSpotlightAppEngagement";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v35[5] = v22;
  v34[6] = @"NumSessionsWithSuggestionWidgetEngagement";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v35[6] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:7];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)_currentSettings
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = CFPreferencesCopyValue(@"SBSearchDisabledDomains", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v4 = [v3 containsObject:@"DOMAIN_ZKWS"];

  [v2 setSpotlightEnabled:v4 ^ 1u];
  v5 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [v2 setAppLibraryEnabled:bOOLValue];
  v8 = objc_opt_new();
  v9 = [v8 loadHomeScreenAndTodayPageConfigurationsWithError:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v13 = *MEMORY[0x277CEBAE8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        pageIndex = [v15 pageIndex];
        v17 = [MEMORY[0x277CEB568] appPredictionPanelExistsInPage:v15];
        if (pageIndex == v13)
        {
          if (v17)
          {
            [v2 setHasAppPredictionPanelToday:1];
          }

          if ([MEMORY[0x277CEB568] suggestionsWidgetExistsInPage:v15])
          {
            [v2 setHasSuggestionsWidgetToday:1];
          }
        }

        else
        {
          if (v17)
          {
            [v2 setHasAppPredictionPanel:1];
          }

          if ([MEMORY[0x277CEB568] suggestionsWidgetExistsInPage:v15])
          {
            [v2 setHasSuggestionsWidget:1];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)currentSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ATXHomeScreenLogUnlockSessionManager_currentSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentSettings__pasOnceToken7 != -1)
  {
    dispatch_once(&currentSettings__pasOnceToken7, block);
  }

  v2 = currentSettings__pasExprOnceResult;

  return v2;
}

void __55__ATXHomeScreenLogUnlockSessionManager_currentSettings__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _currentSettings];
  v4 = currentSettings__pasExprOnceResult;
  currentSettings__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

- (void)encodeWithCoder:(id)coder
{
  isInSession = self->_isInSession;
  coderCopy = coder;
  [coderCopy encodeBool:isInSession forKey:@"isInSession"];
  [coderCopy encodeObject:self->_currentSession forKey:@"currentSession"];
  [coderCopy encodeObject:self->_completedSessions forKey:@"completedSessions"];
}

- (ATXHomeScreenLogUnlockSessionManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isInSession"];
  v6 = MEMORY[0x277D42620];
  v7 = objc_opt_class();
  v8 = __atxlog_handle_metrics();
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"currentSession" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXHomeScreenLogUnlockSessionManager" errorCode:-1 logHandle:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v10);
  v14 = MEMORY[0x277D42620];
  v15 = __atxlog_handle_metrics();
  v16 = [v14 robustDecodeObjectOfClasses:v13 forKey:@"completedSessions" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXHomeScreenLogUnlockSessionManager" errorCode:-1 logHandle:v15];

  if (v16)
  {
    self = [(ATXHomeScreenLogUnlockSessionManager *)self initWithIsInSession:v5 currentSession:v9 completedSessions:v16];
    selfCopy = self;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenLogUnlockSessionManager *)self isEqualToATXHomeScreenLogUnlockSessionManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenLogUnlockSessionManager:(id)manager
{
  managerCopy = manager;
  if (self->_isInSession != *(managerCopy + 8))
  {
    goto LABEL_4;
  }

  v5 = self->_currentSession;
  v6 = v5;
  if (v5 == managerCopy[2])
  {
  }

  else
  {
    v7 = [(ATXScreenLogUnlockSession *)v5 isEqual:?];

    if (!v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_completedSessions;
  v10 = v9;
  if (v9 == managerCopy[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableArray *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

@end