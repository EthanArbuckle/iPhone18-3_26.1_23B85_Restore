@interface ATXHomeScreenLogUnlockSessionManager
+ (id)_currentSettings;
+ (id)currentSettings;
- (ATXHomeScreenLogUnlockSessionManager)init;
- (ATXHomeScreenLogUnlockSessionManager)initWithCoder:(id)a3;
- (ATXHomeScreenLogUnlockSessionManager)initWithIsInSession:(BOOL)a3 currentSession:(id)a4 completedSessions:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXHomeScreenLogUnlockSessionManager:(id)a3;
- (id)removeCompletedSessions;
- (id)summarizeCompletedSessions;
- (int64_t)_eventStatusWithUIEvent:(id)a3;
- (int64_t)updateSessionStateWithUIEvent:(id)a3;
- (void)_updateCurrentSessionWithUIEvent:(id)a3 eventStatus:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHomeScreenLogUnlockSessionManager

- (ATXHomeScreenLogUnlockSessionManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHomeScreenLogUnlockSessionManager *)self initWithIsInSession:0 currentSession:0 completedSessions:v3];

  return v4;
}

- (ATXHomeScreenLogUnlockSessionManager)initWithIsInSession:(BOOL)a3 currentSession:(id)a4 completedSessions:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ATXHomeScreenLogUnlockSessionManager;
  v11 = [(ATXHomeScreenLogUnlockSessionManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_isInSession = a3;
    objc_storeStrong(&v11->_currentSession, a4);
    objc_storeStrong(&v12->_completedSessions, a5);
  }

  return v12;
}

- (int64_t)_eventStatusWithUIEvent:(id)a3
{
  v4 = [a3 homeScreenEvent];
  v5 = [v4 eventTypeString];
  if (([v5 isEqualToString:@"Unknown"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"HomeScreenPageShown") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"HomeScreenDisappeared") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackChanged") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"WidgetTapped") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"WidgetLongLook") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"WidgetUserFeedback") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"UserStackConfigChanged") & 1) == 0)
  {
    if ([v5 isEqualToString:@"DeviceLocked"])
    {

      self->_isInSession = 0;
      v6 = 2;
      goto LABEL_12;
    }

    if ([v5 isEqualToString:@"DeviceUnlocked"])
    {

      v6 = 1;
      self->_isInSession = 1;
      goto LABEL_12;
    }

    if (([v5 isEqualToString:@"PinnedWidgetAdded"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"PinnedWidgetDeleted") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"SpecialPageAppeared") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"SpecialPageDisappeared") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackDisappeared") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"AppAdded") & 1) == 0)
    {
      [v5 isEqualToString:@"AppRemoved"];
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

- (void)_updateCurrentSessionWithUIEvent:(id)a3 eventStatus:(int64_t)a4
{
  v15 = a3;
  v6 = [v15 homeScreenEvent];
  v7 = [objc_opt_class() currentSettings];
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v8 = [ATXScreenLogUnlockSession alloc];
        v9 = [v6 date];
        v10 = [(ATXScreenLogUnlockSession *)v8 initWithSessionStartDate:v9];
        currentSession = self->_currentSession;
        self->_currentSession = v10;

        -[ATXScreenLogUnlockSession setSpotlightEnabled:](self->_currentSession, "setSpotlightEnabled:", [v7 spotlightEnabled]);
        -[ATXScreenLogUnlockSession setHasSuggestionsWidget:](self->_currentSession, "setHasSuggestionsWidget:", [v7 hasSuggestionsWidget]);
        -[ATXScreenLogUnlockSession setHasSuggestionsWidgetInTodayPage:](self->_currentSession, "setHasSuggestionsWidgetInTodayPage:", [v7 hasSuggestionsWidgetToday]);
        -[ATXScreenLogUnlockSession setHasAppPredictionPanel:](self->_currentSession, "setHasAppPredictionPanel:", [v7 hasAppPredictionPanel]);
        -[ATXScreenLogUnlockSession setHasAppPredictionPanelInTodayPage:](self->_currentSession, "setHasAppPredictionPanelInTodayPage:", [v7 hasAppPredictionPanelToday]);
        -[ATXScreenLogUnlockSession setAppLibraryEnabled:](self->_currentSession, "setAppLibraryEnabled:", [v7 appLibraryEnabled]);
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  switch(a4)
  {
    case 2:
      v12 = self->_currentSession;
      if (!v12)
      {
        break;
      }

      v13 = [v6 date];
      [(ATXScreenLogUnlockSession *)v12 finalizeWithSessionEndDate:v13];

      [(NSMutableArray *)self->_completedSessions addObject:self->_currentSession];
      goto LABEL_11;
    case 3:
      [(ATXScreenLogUnlockSession *)self->_currentSession updateWithUIEventIfPossible:v15];
      break;
    case 4:
LABEL_11:
      v14 = self->_currentSession;
      self->_currentSession = 0;

      break;
  }

LABEL_13:
}

- (int64_t)updateSessionStateWithUIEvent:(id)a3
{
  v4 = a3;
  v5 = [(ATXHomeScreenLogUnlockSessionManager *)self _eventStatusWithUIEvent:v4];
  [(ATXHomeScreenLogUnlockSessionManager *)self _updateCurrentSessionWithUIEvent:v4 eventStatus:v5];

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
  v2 = self;
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
    v27 = v2;
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
        v13 = [v12 sessionEndDate];
        v14 = [v12 sessionStartDate];
        [v13 timeIntervalSinceDate:v14];
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
    v2 = v27;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v16 = 0.0;
  }

  if ([(NSMutableArray *)v2->_completedSessions count])
  {
    v4 = v16 / [(NSMutableArray *)v2->_completedSessions count];
  }

  v34[0] = @"NumberOfLockUnlockSessions";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](v2->_completedSessions, "count")}];
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
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  [v2 setAppLibraryEnabled:v7];
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
        v16 = [v15 pageIndex];
        v17 = [MEMORY[0x277CEB568] appPredictionPanelExistsInPage:v15];
        if (v16 == v13)
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
  block[4] = a1;
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

- (void)encodeWithCoder:(id)a3
{
  isInSession = self->_isInSession;
  v5 = a3;
  [v5 encodeBool:isInSession forKey:@"isInSession"];
  [v5 encodeObject:self->_currentSession forKey:@"currentSession"];
  [v5 encodeObject:self->_completedSessions forKey:@"completedSessions"];
}

- (ATXHomeScreenLogUnlockSessionManager)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isInSession"];
  v6 = MEMORY[0x277D42620];
  v7 = objc_opt_class();
  v8 = __atxlog_handle_metrics();
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"currentSession" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXHomeScreenLogUnlockSessionManager" errorCode:-1 logHandle:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v10);
  v14 = MEMORY[0x277D42620];
  v15 = __atxlog_handle_metrics();
  v16 = [v14 robustDecodeObjectOfClasses:v13 forKey:@"completedSessions" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXHomeScreenLogUnlockSessionManager" errorCode:-1 logHandle:v15];

  if (v16)
  {
    self = [(ATXHomeScreenLogUnlockSessionManager *)self initWithIsInSession:v5 currentSession:v9 completedSessions:v16];
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenLogUnlockSessionManager *)self isEqualToATXHomeScreenLogUnlockSessionManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenLogUnlockSessionManager:(id)a3
{
  v4 = a3;
  if (self->_isInSession != *(v4 + 8))
  {
    goto LABEL_4;
  }

  v5 = self->_currentSession;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v9 == v4[3])
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