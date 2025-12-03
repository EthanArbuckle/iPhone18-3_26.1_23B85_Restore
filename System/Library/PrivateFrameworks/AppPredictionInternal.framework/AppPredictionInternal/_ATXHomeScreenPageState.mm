@interface _ATXHomeScreenPageState
- (BOOL)containsSGWidget;
- (BOOL)containsSuggestedWidgetForApp:(id)app;
- (BOOL)containsWidgetForIntent:(id)intent;
- (BOOL)isSeldomVisited;
- (BOOL)suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:(id)suggestion;
- (_ATXHomeScreenPageState)initWithHomeScreenState:(id)state pageConfig:(id)config stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (_ATXHomeScreenState)homeScreen;
@end

@implementation _ATXHomeScreenPageState

- (_ATXHomeScreenPageState)initWithHomeScreenState:(id)state pageConfig:(id)config stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  v50 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  configCopy = config;
  trackerCopy = tracker;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  v47.receiver = self;
  v47.super_class = _ATXHomeScreenPageState;
  v17 = [(_ATXHomeScreenPageState *)&v47 init];
  if (v17)
  {
    configCopy2 = config;
    trackerCopy2 = tracker;
    obj = stateCopy;
    v18 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = configCopy;
    stacks = [configCopy stacks];
    v20 = [stacks countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      do
      {
        v23 = 0;
        do
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(stacks);
          }

          trackerCopy2 = [[_ATXHomeScreenStackState alloc] initWithPageState:v17 stackConfig:*(*(&v43 + 1) + 8 * v23) stackStateTracker:trackerCopy suggestionDeduplicator:deduplicatorCopy hyperParameters:parametersCopy, configCopy2, trackerCopy2];
          [(NSArray *)v18 addObject:trackerCopy2];

          ++v23;
        }

        while (v21 != v23);
        v21 = [stacks countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v21);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    panels = [v38 panels];
    v26 = [panels countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        v29 = 0;
        do
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(panels);
          }

          v30 = [[_ATXHomeScreenStackState alloc] initWithPageState:v17 stackConfig:*(*(&v39 + 1) + 8 * v29) stackStateTracker:trackerCopy suggestionDeduplicator:deduplicatorCopy hyperParameters:parametersCopy];
          [(NSArray *)v18 addObject:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [panels countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v27);
    }

    stateCopy = obj;
    objc_storeWeak(&v17->_homeScreen, obj);
    objc_storeStrong(&v17->_config, configCopy2);
    stacks = v17->_stacks;
    v17->_stacks = v18;
    v32 = v18;

    objc_storeStrong(&v17->_stackStateTracker, trackerCopy2);
    configCopy = v38;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)containsWidgetForIntent:(id)intent
{
  v16 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_stacks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsWidgetForIntent:{intentCopy, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)containsSuggestedWidgetForApp:(id)app
{
  v16 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_stacks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsSuggestedWidgetForApp:{appCopy, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)containsSGWidget
{
  v30 = *MEMORY[0x277D85DE8];
  config = [(_ATXHomeScreenPageState *)self config];
  containsSuggestionsWidget = [config containsSuggestionsWidget];

  if (containsSuggestionsWidget)
  {
    v5 = 1;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->_stacks;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          suggestedWidgets = [v11 suggestedWidgets];
          v13 = [suggestedWidgets countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v21;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(suggestedWidgets);
                }

                v17 = *(*(&v20 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v17 isLayoutComplete])
                {

                  v5 = 1;
                  goto LABEL_22;
                }
              }

              v14 = [suggestedWidgets countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
        v5 = 0;
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }

LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:(id)suggestion
{
  v30 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_stacks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        suggestionsWidgetSuggestionsByWidgetUniqueId = [v10 suggestionsWidgetSuggestionsByWidgetUniqueId];
        allValues = [suggestionsWidgetSuggestionsByWidgetUniqueId allValues];

        v13 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(allValues);
              }

              if ([*(*(&v20 + 1) + 8 * j) containsIdenticalContentOfSuggestion:suggestionCopy])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = 0;
    }

    while (v7);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)isSeldomVisited
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ATXStackStateTracker *)self->_stackStateTracker lastThreeUserVisitDatesOfPage:[(ATXHomeScreenPage *)self->_config pageIndex]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * i) timeIntervalSinceNow];
        if (v8 > -86400.0)
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
    v9 = v5 < 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_ATXHomeScreenState)homeScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_homeScreen);

  return WeakRetained;
}

@end