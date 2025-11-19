@interface _ATXHomeScreenStackState
- (BOOL)containsSuggestedWidgetForApp:(id)a3;
- (BOOL)containsWidgetForApp:(id)a3;
- (BOOL)containsWidgetForIntent:(id)a3;
- (BOOL)isStale;
- (BOOL)mostRecentRotationOfStackIsSystemInitiated;
- (BOOL)previousSuggestedWidgetsContainIdenticalContentOfSuggestion:(id)a3;
- (BOOL)previousTopWidgetWasShowingIdenticalContentOfSuggestion:(id)a3;
- (BOOL)sizeIsCompatibleWithWidgetSuggestion:(id)a3;
- (BOOL)topWidgetIsShowingIdenticalContentOfSuggestion:(id)a3 ignoreDuplicatesInSGWidget:(BOOL)a4 ignoreDuplicatesInPanels:(BOOL)a5;
- (_ATXHomeScreenPageState)page;
- (_ATXHomeScreenStackState)initWithPageState:(id)a3 stackConfig:(id)a4 stackStateTracker:(id)a5 suggestionDeduplicator:(id)a6 hyperParameters:(id)a7;
- (id)_firstWidgetPassingTest:(id)a3 considerSuggestedWidgets:(BOOL)a4;
- (id)_previousSuggestionForMemberWidget:(id)a3;
- (id)previousTopWidget;
- (void)previousTopWidget;
- (void)setTopOfStackSuggestion:(id)a3;
@end

@implementation _ATXHomeScreenStackState

- (id)previousTopWidget
{
  v23 = *MEMORY[0x277D85DE8];
  p_config = &self->_config;
  if ([(ATXHomeScreenStackConfig *)self->_config isPinnedWidget])
  {
    v4 = [(ATXHomeScreenStackConfig *)*p_config widgets];
    v5 = [v4 firstObject];
  }

  else
  {
    stackStateTracker = self->_stackStateTracker;
    v7 = [(ATXHomeScreenStackConfig *)self->_config identifier];
    v4 = [(ATXStackStateTracker *)stackStateTracker topWidgetUniqueIdOfStack:v7];

    if (v4)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [(ATXHomeScreenStackConfig *)*p_config widgets];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [v13 widgetUniqueId];
            v15 = [v14 isEqualToString:v4];

            if (v15)
            {
              v5 = v13;
              goto LABEL_17;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_ATXHomeScreenStackState *)p_config previousTopWidget];
    }

    v5 = 0;
LABEL_17:
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (_ATXHomeScreenStackState)initWithPageState:(id)a3 stackConfig:(id)a4 stackStateTracker:(id)a5 suggestionDeduplicator:(id)a6 hyperParameters:(id)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v64.receiver = self;
  v64.super_class = _ATXHomeScreenStackState;
  v17 = [(_ATXHomeScreenStackState *)&v64 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_30;
  }

  objc_storeWeak(&v17->_page, v12);
  objc_storeStrong(&v18->_config, a4);
  objc_storeStrong(&v18->_stackStateTracker, a5);
  objc_storeStrong(&v18->_suggestionDeduplicator, a6);
  objc_storeStrong(&v18->_hyperParameters, a7);
  topOfStackSuggestion = v18->_topOfStackSuggestion;
  v18->_topOfStackSuggestion = 0;

  if (([(ATXHomeScreenStackConfig *)v18->_config isAppPredictionPanel]& 1) != 0 || [(ATXHomeScreenStackConfig *)v18->_config isPinnedSuggestionsWidget])
  {
    v20 = [(ATXHomeScreenStackConfig *)v18->_config widgets];
    v21 = [v20 firstObject];
    v22 = [(_ATXHomeScreenStackState *)v18 _previousSuggestionForMemberWidget:v21];
    previousTopOfStackSuggestion = v18->_previousTopOfStackSuggestion;
    v18->_previousTopOfStackSuggestion = v22;
  }

  else
  {
    if (([(ATXHomeScreenStackConfig *)v18->_config allowsSmartRotate]& 1) == 0 && ![(ATXHomeScreenStackConfig *)v18->_config allowsNewWidget])
    {
      goto LABEL_6;
    }

    v20 = [(_ATXHomeScreenStackState *)v18 previousTopWidget];
    v51 = [(_ATXHomeScreenStackState *)v18 _previousSuggestionForMemberWidget:v20];
    v21 = v18->_previousTopOfStackSuggestion;
    v18->_previousTopOfStackSuggestion = v51;
  }

LABEL_6:
  v52 = v15;
  v53 = v14;
  v55 = v12;
  v24 = objc_opt_new();
  suggestedWidgets = v18->_suggestedWidgets;
  v18->_suggestedWidgets = v24;

  v26 = objc_opt_new();
  previousSuggestedWidgets = v18->_previousSuggestedWidgets;
  v18->_previousSuggestedWidgets = v26;

  if ([(ATXHomeScreenStackConfig *)v18->_config allowsNewWidget])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v28 = [(ATXHomeScreenStackConfig *)v18->_config widgets];
    v29 = [v28 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v61;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v61 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v60 + 1) + 8 * i);
          if ([v33 isSuggestedWidget])
          {
            v34 = [(_ATXHomeScreenStackState *)v18 _previousSuggestionForMemberWidget:v33];
            if (v34)
            {
              [(NSMutableArray *)v18->_previousSuggestedWidgets addObject:v34];
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v30);
    }
  }

  v54 = v13;
  v35 = objc_opt_new();
  suggestionsWidgetSuggestionsByWidgetUniqueId = v18->_suggestionsWidgetSuggestionsByWidgetUniqueId;
  v18->_suggestionsWidgetSuggestionsByWidgetUniqueId = v35;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = [(ATXHomeScreenStackConfig *)v18->_config widgets];
  v38 = [v37 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v57;
    v41 = *MEMORY[0x277CEBBA0];
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v56 + 1) + 8 * j);
        if (([v43 isSuggestedWidget] & 1) == 0)
        {
          v44 = [v43 extensionBundleId];
          v45 = [v44 isEqualToString:v41];

          if (v45)
          {
            v46 = [[_ATXSuggestionsWidgetSuggestion alloc] initWithSuggestionsWidget:v43 containingStack:v18 suggestionDeduplicator:v18->_suggestionDeduplicator hyperParameters:v18->_hyperParameters];
            v47 = v18->_suggestionsWidgetSuggestionsByWidgetUniqueId;
            v48 = [v43 widgetUniqueId];
            [(NSMutableDictionary *)v47 setObject:v46 forKeyedSubscript:v48];
          }
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v39);
  }

  v13 = v54;
  v12 = v55;
  v15 = v52;
  v14 = v53;
LABEL_30:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)setTopOfStackSuggestion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __52___ATXHomeScreenStackState_setTopOfStackSuggestion___block_invoke;
    v19[3] = &unk_2785990C0;
    v7 = v5;
    v20 = v7;
    v8 = [(_ATXHomeScreenStackState *)self _firstWidgetPassingTest:v19 considerSuggestedWidgets:1];
    if (!v8)
    {
      v9 = [(NSMutableArray *)self->_suggestedWidgets count];
      suggestedWidgets = self->_suggestedWidgets;
      if (v9 == 1)
      {
        v11 = [(NSMutableArray *)suggestedWidgets objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          suggestionsWidgetSuggestionsByWidgetUniqueId = self->_suggestionsWidgetSuggestionsByWidgetUniqueId;
          v13 = [v11 widget];
          v14 = [v13 widgetUniqueId];
          [(NSMutableDictionary *)suggestionsWidgetSuggestionsByWidgetUniqueId removeObjectForKey:v14];
        }

        [(NSMutableArray *)self->_suggestedWidgets replaceObjectAtIndex:0 withObject:v7];
      }

      else
      {
        [(NSMutableArray *)suggestedWidgets addObject:v7];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = self->_suggestionsWidgetSuggestionsByWidgetUniqueId;
      v17 = [(_ATXWidgetSuggesting *)v7 widget];
      v18 = [v17 widgetUniqueId];
      [(NSMutableDictionary *)v16 setObject:v7 forKeyedSubscript:v18];
    }

    objc_storeStrong(&self->_topOfStackSuggestion, a3);

    topOfStackSuggestion = v20;
  }

  else
  {
    topOfStackSuggestion = self->_topOfStackSuggestion;
    self->_topOfStackSuggestion = 0;
  }
}

- (BOOL)isStale
{
  stackStateTracker = self->_stackStateTracker;
  v3 = [(ATXHomeScreenStackConfig *)self->_config identifier];
  LOBYTE(stackStateTracker) = [(ATXStackStateTracker *)stackStateTracker stackIsStale:v3];

  return stackStateTracker;
}

- (BOOL)mostRecentRotationOfStackIsSystemInitiated
{
  stackStateTracker = self->_stackStateTracker;
  v3 = [(ATXHomeScreenStackConfig *)self->_config identifier];
  LOBYTE(stackStateTracker) = [(ATXStackStateTracker *)stackStateTracker mostRecentRotationOfStackIsSystemInitiated:v3];

  return stackStateTracker;
}

- (BOOL)containsWidgetForIntent:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(ATXHomeScreenStackConfig *)self->_config widgets];
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      if (([v10 isSuggestedWidget] & 1) == 0)
      {
        v11 = [v10 intent];

        if (v11)
        {
          v12 = [v10 intent];
          v13 = [ATXActionToWidgetConverter isWidgetIntent:v12 validConversionFromActionIntent:v4];

          if (v13)
          {
            goto LABEL_20;
          }
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_suggestedWidgets;
  v14 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = *v23;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v5);
      }

      v17 = [*(*(&v22 + 1) + 8 * v16) widget];
      v18 = [v17 intent];
      v19 = [ATXActionToWidgetConverter isWidgetIntent:v18 validConversionFromActionIntent:v4];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    LOBYTE(v14) = 1;
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)containsWidgetForApp:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ATXHomeScreenStackConfig *)self->_config widgets];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v10 isSuggestedWidget] & 1) == 0)
        {
          v11 = [v10 appBundleId];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {

            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [(_ATXHomeScreenStackState *)self containsSuggestedWidgetForApp:v4];
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)containsSuggestedWidgetForApp:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_suggestedWidgets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) widget];
        v10 = [v9 appBundleId];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)topWidgetIsShowingIdenticalContentOfSuggestion:(id)a3 ignoreDuplicatesInSGWidget:(BOOL)a4 ignoreDuplicatesInPanels:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (([(ATXHomeScreenStackConfig *)self->_config allowsSmartRotate]& 1) == 0 && ([(ATXHomeScreenStackConfig *)self->_config allowsNewWidget]& 1) == 0 && ([(ATXHomeScreenStackConfig *)self->_config isPinnedSuggestionsWidget]& 1) == 0 && ![(ATXHomeScreenStackConfig *)self->_config isAppPredictionPanel])
  {
    v11 = [(_ATXHomeScreenStackState *)self previousTopWidgetWasShowingIdenticalContentOfSuggestion:v8];
    goto LABEL_11;
  }

  if (!v5 || ([(ATXHomeScreenStackConfig *)self->_config isAppPredictionPanel]& 1) == 0)
  {
    if (!v6 || (topOfStackSuggestion = self->_topOfStackSuggestion, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = [(_ATXWidgetSuggesting *)self->_topOfStackSuggestion containsIdenticalContentOfSuggestion:v8];
LABEL_11:
      v10 = v11;
      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)previousTopWidgetWasShowingIdenticalContentOfSuggestion:(id)a3
{
  v4 = a3;
  if (([(ATXHomeScreenStackConfig *)self->_config isPinnedSuggestionsWidget]& 1) != 0 || [(ATXHomeScreenStackConfig *)self->_config isAppPredictionPanel])
  {
    v5 = [(_ATXWidgetSuggesting *)self->_previousTopOfStackSuggestion containsIdenticalContentOfSuggestion:v4];
  }

  else
  {
    v6 = [(_ATXHomeScreenStackState *)self previousTopWidget];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 extensionBundleId];
      v9 = [v8 isEqualToString:*MEMORY[0x277CEBBA0]];

      if (v9)
      {
        v10 = [(_ATXWidgetSuggesting *)self->_previousTopOfStackSuggestion containsIdenticalContentOfSuggestion:v4];
      }

      else
      {
        v10 = [(ATXSuggestionDeduplicatorProtocol *)self->_suggestionDeduplicator isWidget:v7 showingIdenticalContentOfSuggestion:v4];
      }

      v5 = v10;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)previousSuggestedWidgetsContainIdenticalContentOfSuggestion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_previousSuggestedWidgets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        if ([*(*(&v11 + 1) + 8 * i) containsIdenticalContentOfSuggestion:{v4, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)sizeIsCompatibleWithWidgetSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(ATXHomeScreenStackConfig *)self->_config stackLayoutSize];
  v6 = 0;
  if (v5 <= 1)
  {
    if (!v5)
    {
      v7 = 3;
      goto LABEL_12;
    }

    if (v5 == 1)
    {
      v7 = 4;
      goto LABEL_12;
    }

LABEL_13:
    v9 = [v4 uiSpecification];
    v10 = [v9 preferredLayoutConfigs];
    v8 = [v10 containsObject:v6];

    goto LABEL_14;
  }

  if (v5 == 2)
  {
    v7 = 6;
    goto LABEL_12;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      v7 = 7;
LABEL_12:
      v6 = [objc_alloc(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout:v7];
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)_previousSuggestionForMemberWidget:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v6 = [v4 extensionBundleId];
  v7 = [v6 isEqualToString:*MEMORY[0x277CEB1C0]];

  if (!v7)
  {
    v13 = [v5 extensionBundleId];
    v14 = [v13 isEqualToString:*MEMORY[0x277CEBBA0]];

    if (!v14)
    {
      v12 = [[_ATXSimpleWidgetSuggestion alloc] initWithWidget:v5 suggestion:0 stack:self suggestionDeduplicator:self->_suggestionDeduplicator];
      goto LABEL_19;
    }

    v15 = [(ATXStackStateTracker *)self->_stackStateTracker currentSuggestionsWidgetLayouts];
    v16 = [v5 widgetUniqueId];
    v10 = [v15 objectForKeyedSubscript:v16];

    if (v10)
    {
      v11 = [[_ATXSuggestionsWidgetSuggestion alloc] initWithSuggestionsWidget:v5 containingStack:self suggestionLayout:v10 suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];
      goto LABEL_9;
    }

    v18 = __atxlog_handle_blending();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_ATXHomeScreenStackState _previousSuggestionForMemberWidget:?];
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v8 = [(ATXStackStateTracker *)self->_stackStateTracker currentAppPredictionPanelLayouts];
  v9 = [(ATXHomeScreenStackConfig *)self->_config identifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v17 = __atxlog_handle_blending();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_ATXHomeScreenStackState *)self _previousSuggestionForMemberWidget:?];
    }

    goto LABEL_17;
  }

  v11 = [[_ATXAppPredictionPanelSuggestion alloc] initWithAppPredictionPanel:v5 containingStack:self suggestionLayout:v10 suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];
LABEL_9:
  v12 = v11;
LABEL_18:

LABEL_19:

  return v12;
}

- (id)_firstWidgetPassingTest:(id)a3 considerSuggestedWidgets:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(ATXHomeScreenStackConfig *)self->_config widgets];
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([v12 isSuggestedWidget] & 1) == 0 && (v6[2](v6, v12))
        {
          v19 = v12;
LABEL_21:
          v13 = v19;
          goto LABEL_22;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_suggestedWidgets;
    v13 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = *v23;
      while (2)
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v22 + 1) + 8 * j);
          v17 = [v16 widget];
          v18 = v6[2](v6, v17);

          if (v18)
          {
            v19 = [v16 widget];
            goto LABEL_21;
          }
        }

        v13 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    v13 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (_ATXHomeScreenPageState)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (void)previousTopWidget
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [*a1 identifier];
  v7 = 136315650;
  v8 = "[_ATXHomeScreenStackState previousTopWidget]";
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%s: Unable to find previous top widget for stack %@ (stackStateTracker returned topWidgetUniqueId %@)", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_previousSuggestionForMemberWidget:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained config];
  [v3 pageIndex];
  v4 = [*(a1 + 80) identifier];
  v5 = [*(a1 + 80) widgets];
  v6 = [v5 firstObject];
  v7 = [v6 widgetUniqueId];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_8(&dword_2263AA000, v8, v9, "_ATXHomeScreenStackState: Unable to get layout for SuggestionsWidget on screen: page %lu, stackId %{public}@, widgetUniqueId %{public}@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_previousSuggestionForMemberWidget:(uint64_t)a1 .cold.2(uint64_t a1, id *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained config];
  [v4 pageIndex];
  v5 = [*a2 identifier];
  v6 = [*a2 widgets];
  v7 = [v6 firstObject];
  v8 = [v7 widgetUniqueId];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_8(&dword_2263AA000, v9, v10, "_ATXHomeScreenStackState: Unable to get layout for AppPredictionPanel on screen: page %lu, stackId %{public}@, widgetUniqueId %{public}@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

@end