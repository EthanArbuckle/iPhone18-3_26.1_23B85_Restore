@interface ATXScreenLogUnlockSession
- (ATXScreenLogUnlockSession)initWithCoder:(id)coder;
- (ATXScreenLogUnlockSession)initWithSessionStartDate:(id)date;
- (BOOL)_widgetBundleIdIsSuggestionsWidget:(id)widget;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXScreenLogUnlockSession:(id)session;
- (unint64_t)hash;
- (void)_updateWithAppDirectoryEvent:(id)event;
- (void)_updateWithHomeScreenEvent:(id)event;
- (void)_updateWithSpotlightEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithUIEventIfPossible:(id)possible;
@end

@implementation ATXScreenLogUnlockSession

- (ATXScreenLogUnlockSession)initWithSessionStartDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = ATXScreenLogUnlockSession;
  v6 = [(ATXScreenLogUnlockSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionStartDate, date);
  }

  return v7;
}

- (void)updateWithUIEventIfPossible:(id)possible
{
  possibleCopy = possible;
  homeScreenEvent = [possibleCopy homeScreenEvent];
  if (homeScreenEvent)
  {
    [(ATXScreenLogUnlockSession *)self _updateWithHomeScreenEvent:homeScreenEvent];
  }

  else
  {
    spotlightEvent = [possibleCopy spotlightEvent];
    if (spotlightEvent)
    {
      [(ATXScreenLogUnlockSession *)self _updateWithSpotlightEvent:spotlightEvent];
    }

    else
    {
      appDirectoryEvent = [possibleCopy appDirectoryEvent];
      if (appDirectoryEvent)
      {
        [(ATXScreenLogUnlockSession *)self _updateWithAppDirectoryEvent:appDirectoryEvent];
      }
    }
  }
}

- (void)_updateWithSpotlightEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v13 = eventCopy;
    if ([eventCopy eventType] == 4)
    {
      appSuggestionIds = [v13 appSuggestionIds];
      self->_numEngagementsInSpotlightApps += [appSuggestionIds count];

      actionSuggestionIds = [v13 actionSuggestionIds];
      v7 = [actionSuggestionIds count];
      v8 = 40;
LABEL_9:
      *(&self->super.isa + v8) = (*(&self->super.isa + v8) + v7);

      eventCopy = v13;
      goto LABEL_10;
    }

    v9 = [v13 eventType] == 3;
    eventCopy = v13;
    if (v9)
    {
      appSuggestionIds2 = [v13 appSuggestionIds];
      v11 = [appSuggestionIds2 count];
      numViewsInSpotlightApps = self->_numViewsInSpotlightApps;
      if (v11)
      {
        ++numViewsInSpotlightApps;
      }

      self->_numViewsInSpotlightApps = numViewsInSpotlightApps;

      actionSuggestionIds = [v13 actionSuggestionIds];
      v7 = [actionSuggestionIds count] != 0;
      v8 = 96;
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (BOOL)_widgetBundleIdIsSuggestionsWidget:(id)widget
{
  widgetCopy = widget;
  v5 = [widgetCopy isEqualToString:*MEMORY[0x277CEBBA0]];
  if ((v5 & 1) == 0 && ([widgetCopy isEqualToString:*MEMORY[0x277CEB1C0]] & 1) == 0)
  {
    v6 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXScreenLogUnlockSession *)self _widgetBundleIdIsSuggestionsWidget:widgetCopy, v6];
    }
  }

  return v5;
}

- (void)_updateWithHomeScreenEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v19 = eventCopy;
    widgetBundleId = [eventCopy widgetBundleId];
    if (widgetBundleId)
    {
      [v19 stackLocation];
      IsTodayPage = ATXStackLocationIsTodayPage();
      eventTypeString = [v19 eventTypeString];
      v8 = [eventTypeString isEqualToString:@"Tapped"];

      if (v8)
      {
        v9 = [(ATXScreenLogUnlockSession *)self _widgetBundleIdIsSuggestionsWidget:widgetBundleId];
        suggestionIds = [v19 suggestionIds];
        v11 = [suggestionIds count];
        v12 = 64;
        if (v9)
        {
          v12 = 48;
        }

        v13 = !v9;
        v14 = 72;
        v15 = 56;
LABEL_11:
        if (!v13)
        {
          v14 = v15;
        }

        if (IsTodayPage)
        {
          v12 = v14;
        }

        *(&self->super.isa + v12) = (*(&self->super.isa + v12) + v11);

        goto LABEL_16;
      }

      eventTypeString2 = [v19 eventTypeString];
      v17 = [eventTypeString2 isEqualToString:@"SuggestionsAppeared"];

      if (v17)
      {
        v18 = [(ATXScreenLogUnlockSession *)self _widgetBundleIdIsSuggestionsWidget:widgetBundleId];
        suggestionIds = [v19 suggestionIds];
        v11 = [suggestionIds count] != 0;
        v12 = 120;
        if (v18)
        {
          v12 = 104;
        }

        v13 = !v18;
        v14 = 128;
        v15 = 112;
        goto LABEL_11;
      }
    }

LABEL_16:

    eventCopy = v19;
  }
}

- (void)_updateWithAppDirectoryEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v12 = eventCopy;
    eventType = [eventCopy eventType];
    eventType2 = [v12 eventType];
    categoryID = [v12 categoryID];
    if (categoryID)
    {
      categoryID2 = [v12 categoryID];
      v9 = [categoryID2 isEqualToNumber:&unk_283A56CF0];

      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 1;
    }

    if (eventType)
    {
      eventCopy = v12;
      if ((eventType2 != 4) | v10 & 1)
      {
        goto LABEL_10;
      }

      v11 = 80;
    }

    else
    {
      v11 = 136;
      eventCopy = v12;
    }

    ++*(&self->super.isa + v11);
  }

LABEL_10:
}

- (void)encodeWithCoder:(id)coder
{
  sessionStartDate = self->_sessionStartDate;
  coderCopy = coder;
  [coderCopy encodeObject:sessionStartDate forKey:@"sessionStartDate"];
  [coderCopy encodeObject:self->_sessionEndDate forKey:@"sessionEndDate"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numEngagementsInSpotlightApps];
  [coderCopy encodeObject:v5 forKey:@"engagementsSpotlightApps"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numEngagementsInSpotlightActions];
  [coderCopy encodeObject:v6 forKey:@"engagementsSpotlightActions"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numEngagementsInSuggestionsWidget];
  [coderCopy encodeObject:v7 forKey:@"engagementsSuggestionsWidget"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numEngagementsInSuggestionsWidgetTodayPage];
  [coderCopy encodeObject:v8 forKey:@"engagementsSuggestionsWidgetToday"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numEngagementsInAppPredictionPanel];
  [coderCopy encodeObject:v9 forKey:@"engagementsAppPanel"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numEngagementsInAppPredictionPanelTodayPage];
  [coderCopy encodeObject:v10 forKey:@"engagementsAppPanelToday"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numEngagementsInAppLibrary];
  [coderCopy encodeObject:v11 forKey:@"engagementsAppLibrary"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numViewsInSpotlightApps];
  [coderCopy encodeObject:v12 forKey:@"viewsSpotlightApps"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numViewsInSpotlightActions];
  [coderCopy encodeObject:v13 forKey:@"viewsSpotlightActions"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numViewsInSuggestionsWidget];
  [coderCopy encodeObject:v14 forKey:@"viewsSuggestionsWidget"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numViewsInSuggestionsWidgetTodayPage];
  [coderCopy encodeObject:v15 forKey:@"viewsSuggestionsWidgetToday"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numViewsInAppPredictionPanel];
  [coderCopy encodeObject:v16 forKey:@"viewsAppPanel"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numViewsInAppPredictionPanelTodayPage];
  [coderCopy encodeObject:v17 forKey:@"viewsAppPanelToday"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numViewsInAppLibrary];
  [coderCopy encodeObject:v18 forKey:@"viewsAppLibrary"];

  [coderCopy encodeBool:self->_spotlightEnabled forKey:@"spotlightEnabled"];
  [coderCopy encodeBool:self->_hasSuggestionsWidget forKey:@"hasSuggestionsWidget"];
  [coderCopy encodeBool:self->_hasSuggestionsWidgetInTodayPage forKey:@"hasSuggestionsWidgetToday"];
  [coderCopy encodeBool:self->_hasAppPredictionPanel forKey:@"hasAppPredictionPanel"];
  [coderCopy encodeBool:self->_hasAppPredictionPanelInTodayPage forKey:@"hasAppPredictionPanelToday"];
  [coderCopy encodeBool:self->_appLibraryEnabled forKey:@"appLibraryEnabled"];
}

- (ATXScreenLogUnlockSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"sessionStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_metrics();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"sessionEndDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v11];

    v13 = MEMORY[0x277D42620];
    v14 = objc_opt_class();
    v15 = __atxlog_handle_metrics();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"engagementsSpotlightApps" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v15];

    if (v16)
    {
      v17 = MEMORY[0x277D42620];
      v18 = objc_opt_class();
      v19 = __atxlog_handle_metrics();
      v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"engagementsSpotlightActions" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v19];

      if (v20)
      {
        v84 = v12;
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_metrics();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"engagementsSuggestionsWidget" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v23];

        if (v24)
        {
          selfCopy = self;
          v25 = MEMORY[0x277D42620];
          v26 = objc_opt_class();
          v27 = __atxlog_handle_metrics();
          selfCopy2 = [v25 robustDecodeObjectOfClass:v26 forKey:@"engagementsSuggestionsWidgetToday" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v27];

          v82 = selfCopy2;
          if (selfCopy2)
          {
            v29 = MEMORY[0x277D42620];
            v30 = objc_opt_class();
            v31 = __atxlog_handle_metrics();
            selfCopy2 = [v29 robustDecodeObjectOfClass:v30 forKey:@"engagementsAppPanel" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v31];

            v81 = selfCopy2;
            if (selfCopy2)
            {
              v32 = MEMORY[0x277D42620];
              v33 = objc_opt_class();
              v34 = __atxlog_handle_metrics();
              selfCopy2 = [v32 robustDecodeObjectOfClass:v33 forKey:@"engagementsAppPanelToday" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v34];

              v80 = selfCopy2;
              if (selfCopy2)
              {
                v35 = MEMORY[0x277D42620];
                v36 = objc_opt_class();
                v37 = __atxlog_handle_metrics();
                selfCopy2 = [v35 robustDecodeObjectOfClass:v36 forKey:@"engagementsAppLibrary" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v37];

                v79 = selfCopy2;
                if (selfCopy2)
                {
                  v38 = MEMORY[0x277D42620];
                  v39 = objc_opt_class();
                  v40 = __atxlog_handle_metrics();
                  selfCopy2 = [v38 robustDecodeObjectOfClass:v39 forKey:@"viewsSpotlightApps" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v40];

                  v78 = selfCopy2;
                  if (selfCopy2)
                  {
                    v41 = MEMORY[0x277D42620];
                    v42 = objc_opt_class();
                    v43 = __atxlog_handle_metrics();
                    selfCopy2 = [v41 robustDecodeObjectOfClass:v42 forKey:@"viewsSpotlightActions" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v43];

                    v77 = selfCopy2;
                    if (selfCopy2)
                    {
                      v44 = MEMORY[0x277D42620];
                      v45 = objc_opt_class();
                      v46 = __atxlog_handle_metrics();
                      selfCopy2 = [v44 robustDecodeObjectOfClass:v45 forKey:@"viewsSuggestionsWidget" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v46];

                      v76 = selfCopy2;
                      if (selfCopy2)
                      {
                        v47 = MEMORY[0x277D42620];
                        v48 = objc_opt_class();
                        v49 = __atxlog_handle_metrics();
                        selfCopy2 = [v47 robustDecodeObjectOfClass:v48 forKey:@"viewsSuggestionsWidgetToday" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v49];

                        v75 = selfCopy2;
                        if (selfCopy2)
                        {
                          v50 = MEMORY[0x277D42620];
                          v51 = objc_opt_class();
                          v52 = __atxlog_handle_metrics();
                          selfCopy2 = [v50 robustDecodeObjectOfClass:v51 forKey:@"viewsAppPanel" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v52];

                          v74 = selfCopy2;
                          if (selfCopy2)
                          {
                            v53 = MEMORY[0x277D42620];
                            v54 = objc_opt_class();
                            v55 = __atxlog_handle_metrics();
                            selfCopy2 = [v53 robustDecodeObjectOfClass:v54 forKey:@"viewsAppPanelToday" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v55];

                            v73 = selfCopy2;
                            if (selfCopy2)
                            {
                              v56 = MEMORY[0x277D42620];
                              v57 = objc_opt_class();
                              v58 = __atxlog_handle_metrics();
                              v59 = [v56 robustDecodeObjectOfClass:v57 forKey:@"viewsAppLibrary" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSession" errorCode:-1 logHandle:v58];

                              if (v59)
                              {
                                v72 = [coderCopy decodeBoolForKey:@"spotlightEnabled"];
                                v60 = v59;
                                v71 = [coderCopy decodeBoolForKey:@"hasSuggestionsWidget"];
                                v70 = [coderCopy decodeBoolForKey:@"hasSuggestionsWidget"];
                                v61 = [coderCopy decodeBoolForKey:@"hasAppPredictionPanel"];
                                v62 = [coderCopy decodeBoolForKey:@"hasAppPredictionPanel"];
                                v63 = [coderCopy decodeBoolForKey:@"appLibraryEnabled"];
                                v64 = [(ATXScreenLogUnlockSession *)selfCopy initWithSessionStartDate:v8];
                                [(ATXScreenLogUnlockSession *)v64 setSessionEndDate:v84];
                                [(ATXScreenLogUnlockSession *)v64 setSpotlightEnabled:v72];
                                [(ATXScreenLogUnlockSession *)v64 setHasSuggestionsWidget:v71];
                                [(ATXScreenLogUnlockSession *)v64 setHasSuggestionsWidgetInTodayPage:v70];
                                v65 = v61;
                                self = v64;
                                [(ATXScreenLogUnlockSession *)v64 setHasAppPredictionPanel:v65];
                                [(ATXScreenLogUnlockSession *)v64 setHasAppPredictionPanelInTodayPage:v62];
                                v66 = v63;
                                v59 = v60;
                                [(ATXScreenLogUnlockSession *)v64 setAppLibraryEnabled:v66];
                                -[ATXScreenLogUnlockSession setNumEngagementsInSpotlightApps:](v64, "setNumEngagementsInSpotlightApps:", [v16 unsignedIntegerValue]);
                                -[ATXScreenLogUnlockSession setNumEngagementsInSpotlightActions:](v64, "setNumEngagementsInSpotlightActions:", [v20 unsignedIntegerValue]);
                                -[ATXScreenLogUnlockSession setNumEngagementsInSuggestionsWidget:](v64, "setNumEngagementsInSuggestionsWidget:", [v24 unsignedIntegerValue]);
                                v67 = v82;
                                [(ATXScreenLogUnlockSession *)self setNumEngagementsInSuggestionsWidgetTodayPage:[(ATXScreenLogUnlockSession *)v82 unsignedIntegerValue]];
                                v68 = v81;
                                [(ATXScreenLogUnlockSession *)self setNumEngagementsInAppPredictionPanel:[(ATXScreenLogUnlockSession *)v81 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumEngagementsInAppPredictionPanelTodayPage:[(ATXScreenLogUnlockSession *)v80 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumEngagementsInAppLibrary:[(ATXScreenLogUnlockSession *)v79 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumViewsInSpotlightApps:[(ATXScreenLogUnlockSession *)v78 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumViewsInSpotlightActions:[(ATXScreenLogUnlockSession *)v77 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumViewsInSuggestionsWidget:[(ATXScreenLogUnlockSession *)v76 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumViewsInSuggestionsWidgetTodayPage:[(ATXScreenLogUnlockSession *)v75 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumViewsInAppPredictionPanel:[(ATXScreenLogUnlockSession *)v74 unsignedIntegerValue]];
                                [(ATXScreenLogUnlockSession *)self setNumViewsInAppPredictionPanelTodayPage:[(ATXScreenLogUnlockSession *)v73 unsignedIntegerValue]];
                                -[ATXScreenLogUnlockSession setNumViewsInAppLibrary:](self, "setNumViewsInAppLibrary:", [v59 unsignedIntegerValue]);
                                selfCopy2 = self;
                              }

                              else
                              {
                                selfCopy2 = 0;
                                self = selfCopy;
                                v68 = v81;
                                v67 = v82;
                              }

                              v12 = v84;
                            }

                            else
                            {
                              self = selfCopy;
                              v12 = v84;
                              v68 = v81;
                              v67 = v82;
                            }
                          }

                          else
                          {
                            self = selfCopy;
                            v12 = v84;
                            v68 = v81;
                            v67 = v82;
                          }
                        }

                        else
                        {
                          self = selfCopy;
                          v12 = v84;
                          v68 = v81;
                          v67 = v82;
                        }
                      }

                      else
                      {
                        self = selfCopy;
                        v12 = v84;
                        v68 = v81;
                        v67 = v82;
                      }
                    }

                    else
                    {
                      self = selfCopy;
                      v12 = v84;
                      v68 = v81;
                      v67 = v82;
                    }
                  }

                  else
                  {
                    self = selfCopy;
                    v12 = v84;
                    v68 = v81;
                    v67 = v82;
                  }
                }

                else
                {
                  self = selfCopy;
                  v12 = v84;
                  v68 = v81;
                  v67 = v82;
                }
              }

              else
              {
                self = selfCopy;
                v12 = v84;
                v68 = v81;
                v67 = v82;
              }
            }

            else
            {
              self = selfCopy;
              v12 = v84;
              v68 = 0;
              v67 = v82;
            }
          }

          else
          {
            self = selfCopy;
            v12 = v84;
            v67 = 0;
          }
        }

        else
        {
          selfCopy2 = 0;
          v12 = v84;
        }
      }

      else
      {
        selfCopy2 = 0;
      }
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_sessionStartDate hash];
  v4 = [(NSDate *)self->_sessionEndDate hash];
  v5 = self->_numEngagementsInSpotlightApps - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = self->_numEngagementsInSpotlightActions - v5 + 32 * v5;
  v7 = self->_numEngagementsInSuggestionsWidget - v6 + 32 * v6;
  v8 = self->_numEngagementsInSuggestionsWidgetTodayPage - v7 + 32 * v7;
  v9 = self->_numEngagementsInAppPredictionPanel - v8 + 32 * v8;
  v10 = self->_numEngagementsInAppPredictionPanelTodayPage - v9 + 32 * v9;
  v11 = self->_numEngagementsInAppLibrary - v10 + 32 * v10;
  v12 = self->_numViewsInSpotlightApps - v11 + 32 * v11;
  v13 = self->_numViewsInSpotlightActions - v12 + 32 * v12;
  v14 = self->_numViewsInSuggestionsWidget - v13 + 32 * v13;
  v15 = self->_numViewsInSuggestionsWidgetTodayPage - v14 + 32 * v14;
  v16 = self->_numViewsInAppPredictionPanel - v15 + 32 * v15;
  v17 = self->_numViewsInAppPredictionPanelTodayPage - v16 + 32 * v16;
  v18 = self->_spotlightEnabled - (self->_numViewsInAppLibrary - v17 + 32 * v17) + 32 * (self->_numViewsInAppLibrary - v17 + 32 * v17);
  v19 = self->_hasSuggestionsWidget - v18 + 32 * v18;
  v20 = self->_hasSuggestionsWidgetInTodayPage - v19 + 32 * v19;
  v21 = self->_hasAppPredictionPanel - v20 + 32 * v20;
  v22 = self->_hasAppPredictionPanelInTodayPage - v21 + 32 * v21;
  return self->_appLibraryEnabled - v22 + 32 * v22;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScreenLogUnlockSession *)self isEqualToATXScreenLogUnlockSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXScreenLogUnlockSession:(id)session
{
  sessionCopy = session;
  v5 = self->_sessionStartDate;
  v6 = v5;
  if (v5 == sessionCopy[2])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_29:
      v11 = 0;
      goto LABEL_30;
    }
  }

  v8 = self->_sessionEndDate;
  v9 = v8;
  if (v8 == sessionCopy[3])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (self->_numEngagementsInSpotlightApps != sessionCopy[4] || self->_numEngagementsInSpotlightActions != sessionCopy[5] || self->_numEngagementsInSuggestionsWidget != sessionCopy[6] || self->_numEngagementsInSuggestionsWidgetTodayPage != sessionCopy[7] || self->_numEngagementsInAppPredictionPanel != sessionCopy[8] || self->_numEngagementsInAppPredictionPanelTodayPage != sessionCopy[9] || self->_numEngagementsInAppLibrary != sessionCopy[10] || self->_numViewsInSpotlightApps != sessionCopy[11] || self->_numViewsInSpotlightActions != sessionCopy[12] || self->_numViewsInSuggestionsWidget != sessionCopy[13] || self->_numViewsInSuggestionsWidgetTodayPage != sessionCopy[14] || self->_numViewsInAppPredictionPanel != sessionCopy[15] || self->_numViewsInAppPredictionPanelTodayPage != sessionCopy[16] || self->_numViewsInAppLibrary != sessionCopy[17] || self->_spotlightEnabled != *(sessionCopy + 8) || self->_hasSuggestionsWidget != *(sessionCopy + 9) || self->_hasSuggestionsWidgetInTodayPage != *(sessionCopy + 10) || self->_hasAppPredictionPanel != *(sessionCopy + 11) || self->_hasAppPredictionPanelInTodayPage != *(sessionCopy + 12))
  {
    goto LABEL_29;
  }

  v11 = self->_appLibraryEnabled == *(sessionCopy + 13);
LABEL_30:

  return v11;
}

- (void)_widgetBundleIdIsSuggestionsWidget:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "%@ - received non-proactive widgetBundleId of %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end