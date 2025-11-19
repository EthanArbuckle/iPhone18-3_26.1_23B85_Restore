@interface _ATXCompositeLayoutWidgetSuggestionBase
- (BOOL)addSuggestion:(id)a3 asMainSuggestion:(BOOL)a4 dryRun:(BOOL)a5;
- (BOOL)containsIdenticalContentOfSuggestion:(id)a3;
- (_ATXHomeScreenStackState)stack;
- (id)_existingSuggestionsInLayout;
@end

@implementation _ATXCompositeLayoutWidgetSuggestionBase

- (BOOL)containsIdenticalContentOfSuggestion:(id)a3
{
  suggestionDeduplicator = self->_suggestionDeduplicator;
  v5 = a3;
  v6 = [(_ATXCompositeLayoutWidgetSuggestionBase *)self _existingSuggestionsInLayout];
  LOBYTE(suggestionDeduplicator) = [(ATXSuggestionDeduplicatorProtocol *)suggestionDeduplicator suggestionIsDuplicate:v5 existingSuggestions:v6 shouldCompareAcrossTypes:1];

  return suggestionDeduplicator;
}

- (BOOL)addSuggestion:(id)a3 asMainSuggestion:(BOOL)a4 dryRun:(BOOL)a5
{
  v41 = a4;
  v63 = *MEMORY[0x277D85DE8];
  v43 = a3;
  if ([(_ATXCompositeLayoutWidgetSuggestionBase *)self isLayoutComplete])
  {
    v6 = 0;
  }

  else
  {
    v45 = [MEMORY[0x277D420E8] minSuggestionLayoutTypesForUILayoutType:self->_layoutType];
    v57 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v7 = [v43 uiSpecification];
    obj = [v7 preferredLayoutConfigs];

    v8 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v8)
    {
      v40 = 0;
      v9 = *v55;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v54 + 1) + 8 * v10) applicableLayoutType];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
        v13 = [v45 objectForKeyedSubscript:v12];
        v14 = [v13 unsignedIntegerValue];

        suggestionsBySuggestionLayoutTypes = self->_suggestionsBySuggestionLayoutTypes;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
        v17 = [(NSMutableDictionary *)suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:v16];

        v18 = [v17 count];
        v19 = v18 < v14;
        if (v18 < v14 && !a5)
        {
          if (!v17)
          {
            v17 = objc_opt_new();
            v20 = self->_suggestionsBySuggestionLayoutTypes;
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
            [(NSMutableDictionary *)v20 setObject:v17 forKeyedSubscript:v21];
          }

          [v17 addObject:v43];
          if (v41)
          {
            objc_storeStrong(&self->_mainSuggestionInLayout, a3);
          }

          v19 = 2;
          v40 = 1;
        }

        if (v18 < v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_20;
        }
      }

      if ((v19 | 2) != 2)
      {
        goto LABEL_26;
      }

LABEL_20:
      if ((v40 & 1) == 0)
      {
        goto LABEL_28;
      }

      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v53 = 1;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __81___ATXCompositeLayoutWidgetSuggestionBase_addSuggestion_asMainSuggestion_dryRun___block_invoke;
      v46[3] = &unk_278598C98;
      v47 = v45;
      v48 = self;
      v49 = &v50;
      [v47 enumerateKeysAndObjectsUsingBlock:v46];
      if (*(v51 + 24) == 1)
      {
        v22 = objc_alloc(MEMORY[0x277D420E8]);
        layoutType = self->_layoutType;
        v24 = [(NSMutableDictionary *)self->_suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:&unk_283A55628];
        v25 = [(NSMutableDictionary *)self->_suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:&unk_283A55640];
        v26 = [(NSMutableDictionary *)self->_suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:&unk_283A55658];
        v27 = [(NSMutableDictionary *)self->_suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:&unk_283A55670];
        v28 = [(NSMutableDictionary *)self->_suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:&unk_283A55688];
        v29 = [(NSMutableDictionary *)self->_suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:&unk_283A556A0];
        v30 = [(NSMutableDictionary *)self->_suggestionsBySuggestionLayoutTypes objectForKeyedSubscript:&unk_283A556B8];
        v31 = [v22 initWithLayoutType:layoutType oneByOneSuggestions:v24 oneByTwoSuggestions:v25 twoByTwoSuggestions:v26 oneByFourSuggestions:v27 twoByFourSuggestions:v28 fourByFourSuggestions:v29 fourByEightSuggestions:v30];
        suggestionLayout = self->_suggestionLayout;
        self->_suggestionLayout = v31;

        [(ATXSuggestionLayout *)self->_suggestionLayout setIsValidForSuggestionsWidget:1];
        v33 = [(ATXProactiveSuggestion *)self->_mainSuggestionInLayout uuid];
        [(ATXSuggestionLayout *)self->_suggestionLayout setUuidOfHighestConfidenceSuggestion:v33];

        v34 = __atxlog_handle_blending();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(ATXHomeScreenWidgetIdentifiable *)self->_widget widgetUniqueId];
          v36 = self->_suggestionLayout;
          *buf = 138412546;
          v59 = v35;
          v60 = 2112;
          v61 = v36;
          _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "Layout for widget %@ is complete: %@", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v50, 8);
LABEL_26:
      v6 = 1;
    }

    else
    {

LABEL_28:
      v6 = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_existingSuggestionsInLayout
{
  suggestionLayout = self->_suggestionLayout;
  if (suggestionLayout)
  {
    v4 = [(ATXSuggestionLayout *)suggestionLayout minSuggestionListInLayout];
  }

  else
  {
    v5 = objc_opt_new();
    suggestionsBySuggestionLayoutTypes = self->_suggestionsBySuggestionLayoutTypes;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71___ATXCompositeLayoutWidgetSuggestionBase__existingSuggestionsInLayout__block_invoke;
    v8[3] = &unk_278598CC0;
    v4 = v5;
    v9 = v4;
    [(NSMutableDictionary *)suggestionsBySuggestionLayoutTypes enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v4;
}

- (_ATXHomeScreenStackState)stack
{
  WeakRetained = objc_loadWeakRetained(&self->_stack);

  return WeakRetained;
}

@end