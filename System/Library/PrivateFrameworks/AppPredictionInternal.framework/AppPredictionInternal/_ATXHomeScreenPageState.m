@interface _ATXHomeScreenPageState
- (BOOL)containsSGWidget;
- (BOOL)containsSuggestedWidgetForApp:(id)a3;
- (BOOL)containsWidgetForIntent:(id)a3;
- (BOOL)isSeldomVisited;
- (BOOL)suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:(id)a3;
- (_ATXHomeScreenPageState)initWithHomeScreenState:(id)a3 pageConfig:(id)a4 stackStateTracker:(id)a5 suggestionDeduplicator:(id)a6 hyperParameters:(id)a7;
- (_ATXHomeScreenState)homeScreen;
@end

@implementation _ATXHomeScreenPageState

- (_ATXHomeScreenPageState)initWithHomeScreenState:(id)a3 pageConfig:(id)a4 stackStateTracker:(id)a5 suggestionDeduplicator:(id)a6 hyperParameters:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v47.receiver = self;
  v47.super_class = _ATXHomeScreenPageState;
  v17 = [(_ATXHomeScreenPageState *)&v47 init];
  if (v17)
  {
    v35 = a4;
    v36 = a5;
    obj = v12;
    v18 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v13;
    v19 = [v13 stacks];
    v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = [[_ATXHomeScreenStackState alloc] initWithPageState:v17 stackConfig:*(*(&v43 + 1) + 8 * v23) stackStateTracker:v14 suggestionDeduplicator:v15 hyperParameters:v16, v35, v36];
          [(NSArray *)v18 addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v21);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = [v38 panels];
    v26 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = [[_ATXHomeScreenStackState alloc] initWithPageState:v17 stackConfig:*(*(&v39 + 1) + 8 * v29) stackStateTracker:v14 suggestionDeduplicator:v15 hyperParameters:v16];
          [(NSArray *)v18 addObject:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v27);
    }

    v12 = obj;
    objc_storeWeak(&v17->_homeScreen, obj);
    objc_storeStrong(&v17->_config, v35);
    stacks = v17->_stacks;
    v17->_stacks = v18;
    v32 = v18;

    objc_storeStrong(&v17->_stackStateTracker, v36);
    v13 = v38;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)containsWidgetForIntent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        if ([*(*(&v11 + 1) + 8 * i) containsWidgetForIntent:{v4, v11}])
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

- (BOOL)containsSuggestedWidgetForApp:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        if ([*(*(&v11 + 1) + 8 * i) containsSuggestedWidgetForApp:{v4, v11}])
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
  v3 = [(_ATXHomeScreenPageState *)self config];
  v4 = [v3 containsSuggestionsWidget];

  if (v4)
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
          v12 = [v11 suggestedWidgets];
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v20 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v17 isLayoutComplete])
                {

                  v5 = 1;
                  goto LABEL_22;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (BOOL)suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v11 = [v10 suggestionsWidgetSuggestionsByWidgetUniqueId];
        v12 = [v11 allValues];

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v12);
              }

              if ([*(*(&v20 + 1) + 8 * j) containsIdenticalContentOfSuggestion:v4])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
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