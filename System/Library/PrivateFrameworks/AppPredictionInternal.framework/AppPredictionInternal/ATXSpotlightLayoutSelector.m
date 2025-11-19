@interface ATXSpotlightLayoutSelector
+ (BOOL)_isCommuteMediaSuggestion:(id)a3;
+ (BOOL)_isCommuteWildCardSuggestion:(id)a3;
+ (id)_commuteWildcardReducer:(id)a3;
- (ATXSpotlightLayoutSelector)initWithSuggestionDeduplicator:(id)a3 hyperParameters:(id)a4;
- (BOOL)_isValidForReasons:(unint64_t)a3;
- (double)_adaptedScoreForSuggestion:(id)a3;
- (id)_autoShortcutsForBundleId:(id)a3 provider:(id)a4;
- (id)_clearDuplicateContextsFromSuggestions:(id)a3 suggestionDict:(id)a4;
- (id)_collectionsWithSuggestions:(id)a3;
- (id)_createPOISuggestionWithMUID:(id)a3 fromHeroSuggestion:(id)a4;
- (id)_createTopAppShortcutCollectionsWithSuggestions:(id)a3;
- (id)_createTopAppShortcutSuggestions;
- (id)_heroDataReducer:(id)a3;
- (id)_intervalStringWithCriteria:(id)a3;
- (id)_poiMUIDFromHero:(id)a3;
- (id)_preferredContextWithContextCode:(id)a3 contextCriteria:(id)a4;
- (id)_scoresFlattenForCollections:(id)a3;
- (id)_staticTitleForContextCode:(int64_t)a3;
- (id)_suggestionFromAutoShortcutContextualAction:(id)a3 title:(id)a4 predictionReasons:(unint64_t)a5;
- (id)_titleForContextCode:(int64_t)a3 suggestions:(id)a4;
- (id)_titleForParameterizedAutoShortcutContextualAction:(id)a3 provider:(id)a4;
- (id)_validAutoShortcutContextualActionsForBundleId:(id)a3 limit:(unint64_t)a4 provider:(id)a5;
- (int64_t)_contextReasonCodeWithPredictionReasons:(unint64_t)a3;
- (unint64_t)_supportedContextReasons;
- (void)_dedupeSuggestions:(id)a3 suggestionDict:(id)a4;
- (void)_indexSpotlightActions:(id)a3;
@end

@implementation ATXSpotlightLayoutSelector

- (ATXSpotlightLayoutSelector)initWithSuggestionDeduplicator:(id)a3 hyperParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXSpotlightLayoutSelector;
  v9 = [(ATXSpotlightLayoutSelector *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deduplicator, a3);
    objc_storeStrong(&v10->_hyperParameters, a4);
    v11 = objc_opt_new();
    adapter = v10->_adapter;
    v10->_adapter = v11;
  }

  return v10;
}

- (unint64_t)_supportedContextReasons
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(ATXSpotlightLayoutSelector *)self _rankedReasonCodes];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= 1 << [*(*(&v10 + 1) + 8 * i) integerValue];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_isValidForReasons:(unint64_t)a3
{
  v3 = [(ATXSpotlightLayoutSelector *)self _supportedContextReasons]& a3;
  if (v3)
  {
    if ((v3 & (v3 - 1)) == 0)
    {
      return 1;
    }

    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightLayoutSelector _isValidForReasons:];
    }
  }

  return 0;
}

- (void)_indexSpotlightActions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277CC34A8] isIndexingAvailable])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke;
    v17[3] = &unk_2785A1330;
    v18 = @"com.apple.duetexpertd.spotlightZKW";
    v4 = [v3 _pas_mappedArrayWithTransform:v17];
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 count];
      *buf = 134217984;
      v21 = v6;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[Index] %lu items to index", buf, 0xCu);
    }

    v7 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"com.apple.duetexpertd.spotlightZKW" bundleIdentifier:@"com.apple.shortcuts"];
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "indexSpotlightActions: Deleting", buf, 2u);
    }

    v19[0] = @"com.apple.duetexpertd.spotlightZKW";
    v19[1] = @"spotlightZKW";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_125;
    v14[3] = &unk_2785A1358;
    v15 = v4;
    v16 = v7;
    v10 = v7;
    v11 = v4;
    [v10 deleteSearchableItemsWithDomainIdentifiers:v9 completionHandler:v14];

    v12 = v18;
  }

  else
  {
    v12 = __atxlog_handle_blending();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "[Index] Indexing is not available on this device", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

id __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 atxShortcutsActionExecutableObject];
  v5 = [v4 searchableItem];
  [v5 setDomainIdentifier:*(a1 + 32)];
  v6 = __atxlog_handle_blending();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [v3 uiSpecification];
    v9 = [v8 title];
    v15 = 134218242;
    v16 = [v9 hash];
    v17 = 2112;
    v18 = v5;
    v10 = "[Index] CSSearchableItem from suggestion %lu --> %@";
    v11 = v6;
    v12 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [v3 uiSpecification];
    v9 = [v8 title];
    v15 = 134217984;
    v16 = [v9 hash];
    v10 = "[Index] No search item from suggestion %lu";
    v11 = v6;
    v12 = 12;
  }

  _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

void __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_125(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_blending();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_125_cold_1();
    }

LABEL_4:

    goto LABEL_11;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[Index] Deleting finished", &v10, 2u);
  }

  v6 = [*(a1 + 32) count];
  v5 = __atxlog_handle_blending();
  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[Index] No items to index", &v10, 2u);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[Index] Inserting %@", &v10, 0xCu);
  }

  [*(a1 + 40) indexSearchableItems:*(a1 + 32) completionHandler:&__block_literal_global_236];
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

void __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_126(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_126_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "[Index] Inserting finished", v5, 2u);
  }
}

BOOL __85__ATXSpotlightLayoutSelector_nsuaFilteredLayoutForConsumerSubType_rankedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  if (v5 == 5)
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 uiSpecification];
    LOBYTE(v7) = [v7 _isValidForReasons:{objc_msgSend(v8, "predictionReasons")}];

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v9 = [v3 executableSpecification];
      v6 = [v9 executableType] == 2;
    }
  }

  return v6;
}

uint64_t __81__ATXSpotlightLayoutSelector_selectedLayoutForConsumerSubType_rankedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(*(a1 + 32) + 16) uiSupportsSuggestion:v3 consumerSubType:*(a1 + 40)] & 1) == 0)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v3;
      v8 = "Filtering out %@ as UI doesn't support suggestion";
LABEL_8:
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, v8, &v11, 0xCu);
    }

LABEL_9:

    v6 = 0;
    goto LABEL_10;
  }

  v4 = *(a1 + 32);
  v5 = [v3 uiSpecification];
  LOBYTE(v4) = [v4 _isValidForReasons:{objc_msgSend(v5, "predictionReasons")}];

  if ((v4 & 1) == 0)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v3;
      v8 = "Filtering out %@ as it isn't valid";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)_adaptedScoreForSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 uiSpecification];
  v5 = [v4 predictionReasons];

  if ((v5 & 0x800000) != 0)
  {
    *&v9 = 50.0;
LABEL_11:
    v8 = *&v9;
    goto LABEL_12;
  }

  v6 = [v3 uiSpecification];
  v7 = [v6 predictionReasons] & 0x1E000000;

  if (v7)
  {
    v8 = 70.0;
    goto LABEL_12;
  }

  v10 = [v3 uiSpecification];
  v11 = [v10 predictionReasons];

  if ((v11 & 0x20000000) != 0 || ([v3 uiSpecification], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "predictionReasons"), v12, (v13 & 0x40000000) != 0))
  {
    *&v9 = 40.0;
    goto LABEL_11;
  }

  v8 = 30.0;
  if (([objc_opt_class() _isCommuteMediaSuggestion:v3] & 1) == 0 && (objc_msgSend(objc_opt_class(), "_isCommuteWildCardSuggestion:", v3) & 1) == 0)
  {
    v14 = [v3 scoreSpecification];
    [v14 rawScore];
    v8 = v15;
  }

LABEL_12:

  return v8;
}

- (id)_collectionsWithSuggestions:(id)a3
{
  v90 = *MEMORY[0x277D85DE8];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __58__ATXSpotlightLayoutSelector__collectionsWithSuggestions___block_invoke;
  v80[3] = &unk_2785A1380;
  v80[4] = self;
  [a3 sortedArrayUsingComparator:v80];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v79 = 0u;
  v3 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v77;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v77 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v76 + 1) + 8 * i);
        v8 = __atxlog_handle_blending();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 uiSpecification];
          v10 = [v9 title];
          v11 = [v10 hash];
          v12 = [v7 scoreSpecification];
          v13 = [v12 suggestedConfidenceCategory];
          [(ATXSpotlightLayoutSelector *)self _adaptedScoreForSuggestion:v7];
          *buf = 134218496;
          v84 = v11;
          v85 = 2048;
          v86 = v13;
          v87 = 2048;
          v88 = v14;
          _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions rankedAndFilteredSuggestions [%lu] = %ld %f", buf, 0x20u);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v4);
  }

  v15 = __atxlog_handle_blending();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [obj count];
    *buf = 134217984;
    v84 = v16;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions %lu rankedAndFilteredSuggestions", buf, 0xCu);
  }

  v66 = [MEMORY[0x277CBEB38] dictionary];
  v17 = __atxlog_handle_blending();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [obj count];
    *buf = 134217984;
    v84 = v18;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector  %lu rankedAndFilteredSuggestions", buf, 0xCu);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v61 = obj;
  v19 = [v61 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v73;
    v22 = 0x277CCA000uLL;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v73 != v21)
        {
          objc_enumerationMutation(v61);
        }

        v24 = *(*(&v72 + 1) + 8 * j);
        v25 = [v24 uiSpecification];
        v26 = -[ATXSpotlightLayoutSelector _contextReasonCodeWithPredictionReasons:](self, "_contextReasonCodeWithPredictionReasons:", [v25 predictionReasons]);

        v27 = __atxlog_handle_blending();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          objb = [v24 uiSpecification];
          v28 = [objb title];
          v29 = v21;
          v30 = v22;
          v31 = [v28 hash];
          v32 = [v24 uiSpecification];
          v33 = [v32 predictionReasons];
          *buf = 134218496;
          v84 = v31;
          v22 = v30;
          v21 = v29;
          v85 = 2048;
          v86 = v26;
          v87 = 2048;
          v88 = v33;
          _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector suggestion =[%lu] contextCode found: %ld for reasons %llu", buf, 0x20u);
        }

        v34 = [*(v22 + 2992) numberWithInteger:v26];
        v35 = [v66 objectForKeyedSubscript:v34];

        if (v35)
        {
          [v35 addObject:v24];
        }

        else
        {
          v35 = [MEMORY[0x277CBEB18] arrayWithObject:v24];
          v36 = [*(v22 + 2992) numberWithInteger:v26];
          [v66 setObject:v35 forKeyedSubscript:v36];
        }
      }

      v20 = [v61 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v20);
  }

  v37 = [(ATXSpotlightLayoutSelector *)self _clearDuplicateContextsFromSuggestions:v61 suggestionDict:v66];

  v60 = v37;
  [(ATXSpotlightLayoutSelector *)self _dedupeSuggestions:v37 suggestionDict:v66];
  v62 = objc_opt_new();
  v38 = [(ATXSpotlightLayoutSelector *)self _rankedReasonCodes];
  v39 = __atxlog_handle_blending();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [v38 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v84 = v40;
    _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, "SLS: rankedReasonKeys = %@", buf, 0xCu);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obja = v38;
  v41 = [obja countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v69;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v69 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v45 = *(*(&v68 + 1) + 8 * k);
        v46 = [v66 objectForKeyedSubscript:v45];
        v47 = v46;
        if (v46 && [v46 count])
        {
          v48 = -[ATXSpotlightLayoutSelector _titleForContextCode:suggestions:](self, "_titleForContextCode:suggestions:", [v45 integerValue], v47);
          v49 = __atxlog_handle_blending();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [v66 objectForKeyedSubscript:v45];
            v51 = [v50 count];
            v52 = [v48 hash];
            *buf = 138412802;
            v84 = v45;
            v85 = 2048;
            v86 = v51;
            v87 = 2048;
            v88 = v52;
            _os_log_impl(&dword_2263AA000, v49, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions reasonCode=%@ count=%lu contextTitle.hash=%lu", buf, 0x20u);
          }

          v53 = -[ATXSpotlightContextAdapter sectionIdentifierForContextCode:](self->_adapter, "sectionIdentifierForContextCode:", [v45 integerValue]);
          v54 = [objc_alloc(MEMORY[0x277D420B8]) initWithSuggestions:v47 contextTitle:v48 sectionIdentifier:v53];
          v55 = __atxlog_handle_blending();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [v48 hash];
            v57 = [v47 count];
            *buf = 134218498;
            v84 = v56;
            v85 = 2112;
            v86 = v53;
            v87 = 2048;
            v88 = v57;
            _os_log_impl(&dword_2263AA000, v55, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions collection created contextTitle.hash=%lu sectionIdentifier=%@ with %lu suggestions", buf, 0x20u);
          }

          [v62 addObject:v54];
        }
      }

      v42 = [obja countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v42);
  }

  v58 = *MEMORY[0x277D85DE8];

  return v62;
}

uint64_t __58__ATXSpotlightLayoutSelector__collectionsWithSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCABB0];
  v8 = [v6 scoreSpecification];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "suggestedConfidenceCategory")}];
  v10 = MEMORY[0x277CCABB0];
  v11 = [v5 scoreSpecification];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "suggestedConfidenceCategory")}];
  v13 = [v9 compare:v12];

  if (!v13)
  {
    v14 = MEMORY[0x277CCABB0];
    [*(a1 + 32) _adaptedScoreForSuggestion:v6];
    v15 = [v14 numberWithDouble:?];
    v16 = MEMORY[0x277CCABB0];
    [*(a1 + 32) _adaptedScoreForSuggestion:v5];
    v17 = [v16 numberWithDouble:?];
    v13 = [v15 compare:v17];
  }

  return v13;
}

- (id)_clearDuplicateContextsFromSuggestions:(id)a3 suggestionDict:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v55 = [a3 mutableCopy];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v5;
  v57 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v57)
  {
    v56 = *v79;
    *&v6 = 134217984;
    v54 = v6;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v79 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v62 = *(*(&v78 + 1) + 8 * i);
        v8 = 1 << [v62 integerValue];
        v9 = __atxlog_handle_blending();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v85 = v62;
          *&v85[8] = 1024;
          *v86 = (v8 & 0x700000) != 0;
          *&v86[4] = 1024;
          *&v86[6] = (v8 & 0x380000000) != 0;
          _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "SLS: contextCode = %@ isEventContext= %{BOOL}i, isFlightContext= %{BOOL}i  ", buf, 0x18u);
        }

        if ((v8 & 0x380700000) != 0)
        {
          v58 = i;
          v10 = objc_opt_new();
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v63 = [obj objectForKeyedSubscript:v62];
          v61 = v10;
          v65 = [v63 countByEnumeratingWithState:&v74 objects:v89 count:16];
          if (v65)
          {
            v11 = *v75;
            v60 = *v75;
            do
            {
              for (j = 0; j != v65; ++j)
              {
                if (*v75 != v11)
                {
                  objc_enumerationMutation(v63);
                }

                v13 = *(*(&v74 + 1) + 8 * j);
                v14 = __atxlog_handle_blending();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = [v13 uiSpecification];
                  v16 = [v15 title];
                  v17 = [v16 hash];
                  *buf = 138412546;
                  *v85 = v62;
                  *&v85[8] = 2048;
                  *v86 = v17;
                  _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions suggestionDict[%@] = [%lu]", buf, 0x16u);
                }

                v18 = [v13 uiSpecification];
                v19 = [v18 predictionReasons] & 0x700000;

                v20 = [v13 uiSpecification];
                v21 = [v20 predictionReasons] & 0x380000000;

                v22 = [v13 atxActionCriteria];
                v23 = [v13 uiSpecification];
                v24 = [v23 reason];

                v25 = __atxlog_handle_blending();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = [v24 hash];
                  v27 = [(ATXSpotlightLayoutSelector *)self _intervalStringWithCriteria:v22];
                  *buf = 67109890;
                  *v85 = v19 != 0;
                  v10 = v61;
                  *&v85[4] = 1024;
                  *&v85[6] = v21 != 0;
                  *v86 = 2048;
                  *&v86[2] = v26;
                  v87 = 2112;
                  v88 = v27;
                  _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "SLS: isSuggestionEventContext: %{BOOL}i isSuggestionFlightContext: %{BOOL}i  reason.hash=[%lu] criteria[%@]", buf, 0x22u);

                  v11 = v60;
                }

                if ([v24 length] && v19 | v21)
                {
                  [v10 setObject:v22 forKeyedSubscript:v24];
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v74 objects:v89 count:16];
            }

            while (v65);
          }

          v28 = __atxlog_handle_blending();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v10 count];
            *buf = v54;
            *v85 = v29;
            _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "SLS: _cleanUpCollections %lu contexts", buf, 0xCu);
          }

          if ([v10 count] >= 2)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v30 = v10;
            v31 = [v30 countByEnumeratingWithState:&v70 objects:v83 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v71;
              do
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v71 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v70 + 1) + 8 * k);
                  v36 = __atxlog_handle_blending();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    v37 = [v30 objectForKeyedSubscript:v35];
                    v38 = [(ATXSpotlightLayoutSelector *)self _intervalStringWithCriteria:v37];
                    *buf = 138740227;
                    *v85 = v35;
                    *&v85[8] = 2117;
                    *v86 = v38;
                    _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "SLS: context=[%{sensitive}@] criteria[%{sensitive}@]", buf, 0x16u);
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v70 objects:v83 count:16];
              }

              while (v32);
            }

            v39 = [(ATXSpotlightLayoutSelector *)self _preferredContextWithContextCode:v62 contextCriteria:v30];
            v40 = objc_opt_new();
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v41 = [obj objectForKeyedSubscript:v62];
            v42 = [v41 countByEnumeratingWithState:&v66 objects:v82 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v67;
              do
              {
                for (m = 0; m != v43; ++m)
                {
                  if (*v67 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v46 = *(*(&v66 + 1) + 8 * m);
                  v47 = [v46 uiSpecification];
                  v48 = [v47 reason];
                  v49 = [v39 isEqualToString:v48];

                  if ((v49 & 1) == 0)
                  {
                    [v40 addObject:v46];
                  }
                }

                v43 = [v41 countByEnumeratingWithState:&v66 objects:v82 count:16];
              }

              while (v43);
            }

            v50 = [obj objectForKeyedSubscript:v62];
            [v50 removeObjectsInArray:v40];

            [v55 removeObjectsInArray:v40];
            v10 = v61;
          }

          i = v58;
        }
      }

      v57 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v57);
  }

  v51 = [v55 copy];
  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

- (id)_preferredContextWithContextCode:(id)a3 contextCriteria:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 integerValue];
  if (v8 > 0x21)
  {
    goto LABEL_41;
  }

  if (((1 << v8) & 0x80100000) != 0)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v7;
    v36 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v36)
    {
      v54 = self;
      v55 = v7;
      v56 = v6;
      v58 = 0;
      v11 = 0;
      v37 = *v68;
      v38 = v36;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v68 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v67 + 1) + 8 * i);
          v41 = [obj objectForKeyedSubscript:v40, v54, v55, v56];
          if (!v11)
          {
            goto LABEL_37;
          }

          v42 = [v58 endDate];
          if (v42)
          {
            v43 = v42;
            [v41 startDate];
            v45 = v44 = v38;
            v46 = [v58 startDate];
            v47 = [v45 compare:v46];

            v38 = v44;
            if (v47 == -1)
            {
LABEL_37:
              v48 = v40;

              v49 = v41;
              v58 = v49;
              v11 = v48;
            }
          }
        }

        v38 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v38);
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  if (((1 << v8) & 0x100200000) == 0)
  {
    if (((1 << v8) & 0x200400000) != 0)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = v7;
      v9 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (v9)
      {
        v10 = v9;
        v54 = self;
        v55 = v7;
        v56 = v6;
        v58 = 0;
        v11 = 0;
        v12 = *v64;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v64 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v63 + 1) + 8 * j);
            v15 = [obj objectForKeyedSubscript:v14, v54, v55, v56];
            if (!v11)
            {
              goto LABEL_13;
            }

            v16 = [v58 endDate];
            if (v16)
            {
              v17 = v16;
              v18 = [v15 endDate];
              v19 = [v58 endDate];
              v20 = [v18 compare:v19];

              if (v20 == 1)
              {
LABEL_13:
                v21 = v14;

                v22 = v15;
                v58 = v22;
                v11 = v21;
              }
            }
          }

          v10 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
        }

        while (v10);
LABEL_40:
        v7 = v55;
        v6 = v56;
        self = v54;
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_41:
    obj = __atxlog_handle_blending();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightLayoutSelector _preferredContextWithContextCode:contextCriteria:];
    }

    goto LABEL_43;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v7;
  v23 = [obj countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v23)
  {
    v24 = v23;
    v54 = self;
    v55 = v7;
    v56 = v6;
    v58 = 0;
    v11 = 0;
    v25 = *v60;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v60 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v59 + 1) + 8 * k);
        v28 = [obj objectForKeyedSubscript:v27, v54, v55, v56];
        if (!v11)
        {
          goto LABEL_25;
        }

        v29 = [v58 endDate];
        if (v29)
        {
          v30 = v29;
          v31 = [v28 endDate];
          v32 = [v58 endDate];
          v33 = [v31 compare:v32];

          if (v33 == 1)
          {
LABEL_25:
            v34 = v27;

            v35 = v28;
            v58 = v35;
            v11 = v34;
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v24);
    goto LABEL_40;
  }

LABEL_43:
  v58 = 0;
  v11 = 0;
LABEL_44:

  v50 = __atxlog_handle_blending();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [(ATXSpotlightLayoutSelector *)self _intervalStringWithCriteria:v58];
    *buf = 138412546;
    v72 = v11;
    v73 = 2112;
    v74 = v51;
    _os_log_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEFAULT, "SLS: preferredContext=[%@] preferredCriteria[%@]", buf, 0x16u);
  }

  v52 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_intervalStringWithCriteria:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 startDate];
    if (v5)
    {
      v6 = MEMORY[0x277CCA968];
      v7 = [v4 startDate];
      v8 = [v6 localizedStringFromDate:v7 dateStyle:0 timeStyle:1];
    }

    else
    {
      v8 = @"no-date";
    }

    v10 = [v4 endDate];
    if (v10)
    {
      v11 = MEMORY[0x277CCA968];
      v12 = [v4 endDate];
      v13 = [v11 localizedStringFromDate:v12 dateStyle:0 timeStyle:1];
    }

    else
    {
      v13 = @"no-date";
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v8, v13];
  }

  else
  {
    v9 = @"no-criteria";
  }

  return v9;
}

- (id)_scoresFlattenForCollections:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v9 suggestions];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [(ATXSpotlightLayoutSelector *)self _adaptedScoreForSuggestion:*(*(&v20 + 1) + 8 * j)];
              v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              [v5 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_dedupeSuggestions:(id)a3 suggestionDict:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v57 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v77;
    v61 = *MEMORY[0x277CEB238];
    do
    {
      v10 = 0;
      v62 = v8;
      do
      {
        if (*v77 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v76 + 1) + 8 * v10);
        v12 = [v11 uiSpecification];
        v13 = [v12 title];

        if ([v13 length])
        {
          v14 = [v11 atxActionExecutableObject];
          if ([v14 actionType] == 6)
          {
            v15 = MEMORY[0x277CCACA8];
            v16 = [v14 _bundleIdForDisplay];
            v17 = [v14 menuItemPath];
            [v17 componentsJoinedByString:v61];
            v18 = v6;
            v20 = v19 = v9;
            v21 = [v15 stringWithFormat:@"%@-%@", v16, v20];

            v9 = v19;
            v6 = v18;
            v8 = v62;

            v13 = v21;
          }

          v22 = [v6 objectForKeyedSubscript:v13];
          if (v22)
          {
            v23 = v22;
            [v22 addObject:v11];
          }

          else
          {
            v23 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
            [v6 setObject:v23 forKeyedSubscript:v13];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v8);
  }

  v56 = [(ATXSpotlightLayoutSelector *)self _rankedReasonCodes];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v24 = v6;
  v25 = [v24 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v73;
    v28 = 0x277CCA000uLL;
    v54 = *v73;
    v55 = v24;
    do
    {
      v29 = 0;
      v58 = v26;
      do
      {
        if (*v73 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v72 + 1) + 8 * v29);
        v31 = __atxlog_handle_blending();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v24 objectForKeyedSubscript:v30];
          v33 = [v32 count];
          *buf = 138412546;
          v82 = v30;
          v83 = 2048;
          v84 = v33;
          _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions dedupSuggestionTable[%@] : %ld", buf, 0x16u);
        }

        v34 = [v24 objectForKeyedSubscript:v30];
        v35 = [v34 count];

        if (v35 >= 2)
        {
          v60 = v29;
          v36 = [v24 objectForKeyedSubscript:v30];
          v37 = [v36 mutableCopy];

          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __64__ATXSpotlightLayoutSelector__dedupeSuggestions_suggestionDict___block_invoke;
          v69[3] = &unk_2785A13A8;
          v69[4] = self;
          v38 = v57;
          v70 = v38;
          v71 = v56;
          [v37 sortUsingComparator:v69];
          [v37 removeLastObject];
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = v37;
          v39 = [v63 countByEnumeratingWithState:&v65 objects:v80 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v66;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v66 != v41)
                {
                  objc_enumerationMutation(v63);
                }

                v43 = *(*(&v65 + 1) + 8 * i);
                v44 = [v43 uiSpecification];
                v45 = -[ATXSpotlightLayoutSelector _contextReasonCodeWithPredictionReasons:](self, "_contextReasonCodeWithPredictionReasons:", [v44 predictionReasons]);

                v46 = __atxlog_handle_blending();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = [v43 uiSpecification];
                  [v47 title];
                  v49 = v48 = v28;
                  v50 = [v49 hash];
                  *buf = 134218240;
                  v82 = v50;
                  v83 = 2048;
                  v84 = v45;

                  v28 = v48;
                }

                v51 = [*(v28 + 2992) numberWithInteger:v45];
                v52 = [v38 objectForKeyedSubscript:v51];
                [v52 removeObject:v43];
              }

              v40 = [v63 countByEnumeratingWithState:&v65 objects:v80 count:16];
            }

            while (v40);
          }

          v27 = v54;
          v24 = v55;
          v26 = v58;
          v29 = v60;
        }

        ++v29;
      }

      while (v29 != v26);
      v26 = [v24 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v26);
  }

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t __64__ATXSpotlightLayoutSelector__dedupeSuggestions_suggestionDict___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [a2 uiSpecification];
  v8 = [v5 _contextReasonCodeWithPredictionReasons:{objc_msgSend(v7, "predictionReasons")}];

  v9 = a1[4];
  v10 = [v6 uiSpecification];

  v11 = [v9 _contextReasonCodeWithPredictionReasons:{objc_msgSend(v10, "predictionReasons")}];
  v12 = a1[5];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [v14 count];

  v16 = a1[5];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v18 = [v16 objectForKeyedSubscript:v17];
  v19 = [v18 count];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  v22 = [v20 compare:v21];

  if (v22)
  {
    return v22;
  }

  v24 = a1[6];
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v26 = [v24 indexOfObject:v25];

  v27 = a1[6];
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v29 = [v27 indexOfObject:v28];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  v32 = [v30 compare:v31];

  return v32;
}

- (id)_createTopAppShortcutSuggestions
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEB400] clientForConsumerType:1];
  v4 = objc_opt_new();
  v5 = [v3 appPredictionsForConsumerSubType:9 blackList:v4 limit:8 runningDiagnostics:0];

  v6 = objc_alloc_init(MEMORY[0x277D23B78]);
  v7 = [v5 error];

  if (v7)
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 error];
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] ATXResponse error: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = [v5 predictedApps];
    v11 = __atxlog_handle_blending();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] Query top apps for auto shortcuts: %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__ATXSpotlightLayoutSelector__createTopAppShortcutSuggestions__block_invoke;
    v14[3] = &unk_2785A13D0;
    v14[4] = self;
    v15 = v6;
    v10 = [v8 _pas_mappedArrayWithTransform:v14];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

id __62__ATXSpotlightLayoutSelector__createTopAppShortcutSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) _validAutoShortcutContextualActionsForBundleId:v3 limit:1 provider:*(a1 + 40)];
  objc_autoreleasePoolPop(v4);
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) _titleForParameterizedAutoShortcutContextualAction:v6 provider:*(a1 + 40)];
    objc_autoreleasePoolPop(v7);
    v9 = [*(a1 + 32) _suggestionFromAutoShortcutContextualAction:v6 title:v8 predictionReasons:0];
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 autoShortcut];
      v12 = [v11 localizedAutoShortcutDescription];
      v15 = 138412802;
      v16 = v3;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] Created auto shortcut for bundle: %@ [%@] suggestion: %@", &v15, 0x20u);
    }
  }

  else
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] No valid auto shortcuts found for bundle: %@", &v15, 0xCu);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_createTopAppShortcutCollectionsWithSuggestions:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(ATXSpotlightContextAdapter *)self->_adapter topAutoShortcutSectionIdentifier];
    v6 = [objc_alloc(MEMORY[0x277D420B8]) initWithSuggestions:v4 contextTitle:0 sectionIdentifier:v5];
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_titleForContextCode:(int64_t)a3 suggestions:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = stringForATXSuggestionPredictionReasonCode();
  v8 = __atxlog_handle_blending();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = v7;
    v45 = 2048;
    v46 = a3;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title requested for %@, code: %lu", buf, 0x16u);
  }

  if ([(ATXSpotlightLayoutSelector *)self _hasNilTitleForContextCode:a3])
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v7;
      v45 = 2048;
      v46 = a3;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title is nil for %@, code: %lu", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_35;
  }

  v9 = [(ATXSpotlightLayoutSelector *)self _staticTitleForContextCode:a3];
  v11 = __atxlog_handle_blending();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v12)
    {
      *buf = 138412546;
      v44 = v7;
      v45 = 2048;
      v46 = a3;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title dynamic, calculating: %@, code: %lu", buf, 0x16u);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      obj = v13;
      v35 = v7;
      v36 = v6;
      v10 = 0;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          v19 = stringForATXSuggestionPredictionReasonCode();
          v20 = __atxlog_handle_blending();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v18 uiSpecification];
            v22 = [v21 reason];
            v23 = [v22 hash];
            *buf = 138412546;
            v44 = v19;
            v45 = 2048;
            v46 = v23;
            _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "SLS: reasonKey:%@ suggestion.uiSpecification.reason.hash = %lu", buf, 0x16u);
          }

          if (v10 && ([v18 uiSpecification], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "reason"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v10, "isEqualToString:", v25), v25, v24, (v26 & 1) == 0))
          {
            v27 = __atxlog_handle_blending();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              v29 = [v18 uiSpecification];
              v30 = [v29 reason];
              *buf = 136446722;
              v44 = "[ATXSpotlightLayoutSelector _titleForContextCode:suggestions:]";
              v45 = 2112;
              v46 = v10;
              v47 = 2112;
              v48 = v30;
              _os_log_fault_impl(&dword_2263AA000, v27, OS_LOG_TYPE_FAULT, "SLS: %{public}s %@ and %@ are two different suggestion reason for the same context. The resulting title might be wrong", buf, 0x20u);
            }
          }

          else
          {
            v27 = [v18 uiSpecification];
            v28 = [v27 reason];

            v10 = v28;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v15);

      v7 = v35;
      v6 = v36;
      v9 = 0;
      if (v10)
      {
        v31 = __atxlog_handle_blending();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v10 hash];
          *buf = 134218498;
          v44 = v32;
          v45 = 2112;
          v46 = v35;
          v47 = 2048;
          v48 = a3;
          _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title is dynamic [%lu] for %@, code: %lu", buf, 0x20u);
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
    }

    v31 = __atxlog_handle_blending();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ATXSpotlightLayoutSelector _titleForContextCode:suggestions:];
    }

    v10 = 0;
    goto LABEL_34;
  }

  if (v12)
  {
    *buf = 138412802;
    v44 = v9;
    v45 = 2112;
    v46 = v7;
    v47 = 2048;
    v48 = a3;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title is static[%@] for %@, code: %lu", buf, 0x20u);
  }

  v9 = v9;
  v10 = v9;
LABEL_35:

  v33 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_staticTitleForContextCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = 0;
  switch(a3)
  {
    case 19:
      v7 = @"CONTEXT_TITLE_ONGOING_CALL";
      goto LABEL_16;
    case 23:
      v7 = @"CONTEXT_TITLE_NEARBY";
      goto LABEL_16;
    case 25:
      v7 = @"CONTEXT_TITLE_FROM_CLIPBOARD";
      goto LABEL_16;
    case 26:
      v7 = @"CONTEXT_TITLE_TRACKING_NUMBER_FROM_CLIPBOARD";
      goto LABEL_16;
    case 27:
      v7 = @"CONTEXT_TITLE_URL_FROM_CLIPBOARD";
      goto LABEL_16;
    case 28:
      v7 = @"CONTEXT_TITLE_PHONE_NUMBER_FROM_CLIPBOARD";
      goto LABEL_16;
    case 34:
      v7 = @"CONTEXT_TITLE_UPCOMING_MEDIA";
      goto LABEL_16;
    case 36:
      v7 = @"CONTEXT_TITLE_UPCOMING_TO_WORK_COMMUTE";
      goto LABEL_16;
    case 37:
      v7 = @"CONTEXT_TITLE_UPCOMING_FROM_WORK_COMMUTE";
      goto LABEL_16;
    case 38:
      v7 = @"CONTEXT_TITLE_UNUSUAL_EARLY_EVENT";
      goto LABEL_16;
    case 39:
      v6 = @"Debug";
      break;
    case 40:
      v7 = @"CONTEXT_TITLE_GOOD_MORNING";
      goto LABEL_16;
    case 41:
      v7 = @"CONTEXT_TITLE_WIND_DOWN";
      goto LABEL_16;
    case 42:
      v7 = @"CONTEXT_TITLE_SPORTS";
LABEL_16:
      v6 = [v4 localizedStringForKey:v7 value:&stru_2839A6058 table:0];
      break;
    default:
      break;
  }

  return v6;
}

- (int64_t)_contextReasonCodeWithPredictionReasons:(unint64_t)a3
{
  [(ATXSpotlightLayoutSelector *)self _supportedContextReasons];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

+ (BOOL)_isCommuteWildCardSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 uiSpecification];
  v5 = [v4 predictionReasons];

  v6 = [v3 uiSpecification];
  v7 = [v6 predictionReasons];

  v8 = MEMORY[0x277D42070];
  v9 = [v3 clientModelSpecification];

  v10 = [v9 clientModelId];
  v11 = [v8 clientModelTypeFromClientModelId:v10];

  return v11 == 1 && (v5 & 0x1000000000 | v7 & 0x2000000000) != 0;
}

+ (BOOL)_isCommuteMediaSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 uiSpecification];
  v5 = [v4 predictionReasons];

  v6 = [v3 uiSpecification];
  v7 = [v6 predictionReasons];

  v8 = [v3 atxActionExecutableObject];

  v9 = [v8 intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0 && (v5 & 0x1000000000 | v7 & 0x2000000000) != 0;
}

+ (id)_commuteWildcardReducer:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = objc_opt_new();
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "SLS: [Wildcard] considering commute wildcard suggestions", buf, 2u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v25 = 1;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (![a1 _isCommuteMediaSuggestion:v11])
        {
          if (![a1 _isCommuteWildCardSuggestion:v11])
          {
            [v27 addObject:v11];
            continue;
          }

          if (v25 < 1)
          {
            v17 = __atxlog_handle_blending();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v18 = v17;
              v19 = "SLS: [Wildcard] skipping other from anchor";
LABEL_23:
              _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
            }
          }

          else
          {
            [v27 addObject:v11];
            v17 = __atxlog_handle_blending();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v18 = v17;
              v19 = "SLS: [Wildcard] including wildcard from anchor";
              goto LABEL_23;
            }
          }

          v25 = 0;
          continue;
        }

        v12 = [v11 atxActionExecutableObject];
        v13 = [v12 intent];
        v14 = [v13 launchId];
        v15 = [v14 isEqualToString:@"com.apple.tv"];

        if (!v15)
        {
          if (v9 < 1)
          {
            v20 = __atxlog_handle_blending();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v21 = v20;
              v22 = "SLS: [Wildcard] skipping media for commute";
LABEL_27:
              _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
            }
          }

          else
          {
            [v27 addObject:v11];
            v20 = __atxlog_handle_blending();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v21 = v20;
              v22 = "SLS: [Wildcard] including media for commute ";
              goto LABEL_27;
            }
          }

          v9 = 0;
          continue;
        }

        v16 = __atxlog_handle_blending();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "SLS: [Wildcard] skipping media video", buf, 2u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_heroDataReducer:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v48 = objc_opt_new();
  v49 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277D23B78]);
  v6 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = v4;
  v51 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v51)
  {
    v9 = 0;
    v10 = *v53;
    *&v8 = 138412290;
    v41 = v8;
    v43 = v7;
    v44 = self;
    v46 = v6;
    v47 = v5;
    v45 = *v53;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = [v12 uiSpecification];
        v14 = [v13 allowedOnSpotlight];

        if (v14)
        {
          v15 = [(ATXSpotlightLayoutSelector *)self _poiMUIDFromHero:v12];
          if (v15)
          {
            v16 = [(ATXSpotlightLayoutSelector *)self _createPOISuggestionWithMUID:v15 fromHeroSuggestion:v12];
            v17 = __atxlog_handle_blending();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v15 unsignedLongLongValue];
              *buf = 134218498;
              v57 = v18;
              v58 = 2112;
              v59 = v16;
              v60 = 2112;
              v61 = v12;
              _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: Created POI [%llu] suggestion: %@, from hero suggestion: %@", buf, 0x20u);
            }

            v19 = [v16 clientModelSpecification];
            v20 = [v19 clientModelId];

            v21 = [v48 objectForKeyedSubscript:v20];

            if (!v21)
            {
              v22 = objc_opt_new();
              [v48 setObject:v22 forKeyedSubscript:v20];
            }

            v23 = [v48 objectForKeyedSubscript:v20];
            [v23 addObject:v16];

            [v6 addObject:v16];
            ++v9;
            [v49 addObject:v12];
          }

          [v6 addObject:v12];
          v50 = v9;
          if (v9 >= 2)
          {
            [v6 removeObjectsInArray:v49];
            v24 = objc_opt_new();

            v49 = v24;
          }

          v25 = [v12 bundleIdExecutableObject];
          v26 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:23];
          if (v25)
          {
            v27 = [v12 clientModelSpecification];
            v28 = [v27 clientModelId];
            v29 = [v28 isEqual:v26];

            if (v29)
            {
              v30 = objc_autoreleasePoolPush();
              v31 = [(ATXSpotlightLayoutSelector *)self _validAutoShortcutContextualActionsForBundleId:v25 limit:1 provider:v47];
              objc_autoreleasePoolPop(v30);
              [v31 firstObject];
              v33 = v32 = self;

              if (v33)
              {
                v34 = objc_autoreleasePoolPush();
                v35 = [(ATXSpotlightLayoutSelector *)v32 _titleForParameterizedAutoShortcutContextualAction:v33 provider:v47];
                objc_autoreleasePoolPop(v34);
                v36 = [(ATXSpotlightLayoutSelector *)v32 _suggestionFromAutoShortcutContextualAction:v33 title:v35 predictionReasons:0x800000];
                v37 = __atxlog_handle_blending();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = [v33 autoShortcut];
                  v38 = [v42 localizedAutoShortcutDescription];
                  *buf = 138413058;
                  v57 = v25;
                  v58 = 2112;
                  v59 = v38;
                  v60 = 2112;
                  v61 = v36;
                  v62 = 2112;
                  v63 = v12;
                  _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: Created auto shortcut for bundle: %@ [%@] suggestion: %@, from hero suggestion: %@", buf, 0x2Au);
                }

                if (v36)
                {
                  [v46 addObject:v36];
                }
              }

              else
              {
                v35 = __atxlog_handle_blending();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v41;
                  v57 = v25;
                  _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: No auto shortcuts found for bundle: %@", buf, 0xCu);
                }
              }

              v7 = v43;

              self = v44;
            }
          }

          v6 = v46;
          v5 = v47;
          v9 = v50;
          v10 = v45;
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v51 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v51);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_poiMUIDFromHero:(id)a3
{
  v3 = [a3 appClipHeroAppPredictionExecutableObject];
  v4 = v3;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v5 = [v3 poiMuid];
  if (!v5)
  {
    v7 = [v4 clipMetadata];

    if (v7)
    {
      v8 = [v4 clipMetadata];
      v5 = [v8 clipMapItemMUID];

      if (v5)
      {
        v9 = __atxlog_handle_hero();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [ATXSpotlightLayoutSelector _poiMUIDFromHero:v5];
        }

LABEL_15:

        goto LABEL_16;
      }

LABEL_12:
      v9 = __atxlog_handle_blending();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightLayoutSelector _poiMUIDFromHero:v9];
      }

      v5 = 0;
      goto LABEL_15;
    }
  }

  v6 = __atxlog_handle_hero();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightLayoutSelector _poiMUIDFromHero:v5];
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_16:

  return v5;
}

- (id)_createPOISuggestionWithMUID:(id)a3 fromHeroSuggestion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 appClipHeroAppPredictionExecutableObject];
  v8 = [v7 bundleId];
  v9 = __atxlog_handle_blending();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 adamId];
    v11 = [v7 bundleId];
    v12 = [v5 unsignedLongLongValue];
    v13 = [v7 clipMetadata];
    v14 = [v13 clipURLHash];
    *buf = 134218754;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    v39 = 2048;
    v40 = v12;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: found POI adam: %lu, bundle: %@, muid: %llu, clipURLHash: %@, ", buf, 0x2Au);
  }

  v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithPOIName:v8 muid:v5 criteria:0];
  v32 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v33 = v5;
  v16 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v32 clientModelVersion:@"1.0" engagementResetPolicy:1];
  v17 = objc_alloc(MEMORY[0x277D42080]);
  v18 = [v15 actionDescription];
  v19 = [v15 actionIdentifier];
  v20 = [v17 initWithExecutableObject:v15 executableDescription:v18 executableIdentifier:v19 suggestionExecutableType:8];

  v21 = [objc_alloc(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout:5];
  v34 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];

  LOWORD(v31) = 1;
  v23 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:0 subtitle:0 predictionReason:0 preferredLayoutConfigs:v22 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v31 shouldClearOnEngagement:0x800000 predictionReasons:?];
  [v6 scoreSpecification];
  v24 = v7;
  v26 = v25 = v8;

  v27 = [v26 copy];
  v28 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v16 executableSpecification:v20 uiSpecification:v23 scoreSpecification:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_validAutoShortcutContextualActionsForBundleId:(id)a3 limit:(unint64_t)a4 provider:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277CEB868] isAutoShortcutsEnabledForSpotlightForBundleId:v7])
  {
    v35 = v8;
    v9 = [(ATXSpotlightLayoutSelector *)self _autoShortcutsForBundleId:v7 provider:v8];
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412803;
      v47 = v7;
      v48 = 2048;
      v49 = [v9 count];
      v50 = 2117;
      v51 = v9;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "SLS: [AutoShortcut] list all for %@ [%lu] %{sensitive}@", buf, 0x20u);
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __92__ATXSpotlightLayoutSelector__validAutoShortcutContextualActionsForBundleId_limit_provider___block_invoke;
    v43[3] = &unk_2785A1420;
    v36 = v7;
    v11 = v7;
    v44 = v11;
    v34 = v9;
    v12 = [v9 _pas_mappedArrayWithTransform:v43];
    v13 = [v12 _pas_filteredArrayWithTest:&__block_literal_global_237];

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        v20 = MEMORY[0x277CEB868];
        v21 = [v19 phrase];
        v22 = [v21 signature];
        v23 = [v20 isAutoShortcutEnabledForSpotlightForBundleId:v11 signature:v22];

        v24 = __atxlog_handle_blending();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
        if (v23)
        {
          if (v25)
          {
            v26 = [v19 autoShortcut];
            *buf = 138739971;
            v47 = v26;
            _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_INFO, "SLS: [AutoShortcut] enabled: %{sensitive}@", buf, 0xCu);
          }

          [v14 addObject:v19];
        }

        else
        {
          if (v25)
          {
            v27 = [v19 autoShortcut];
            *buf = 138739971;
            v47 = v27;
            _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_INFO, "SLS: [AutoShortcut] disabled: %{sensitive}@", buf, 0xCu);
          }
        }

        if ([v14 count]>= a4)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v16)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v28 = __atxlog_handle_blending();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v14 count];
      *buf = 138412803;
      v47 = v11;
      v48 = 2048;
      v49 = v29;
      v50 = 2117;
      v51 = v14;
      _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] filtered for %@ [%lu] %{sensitive}@", buf, 0x20u);
    }

    v30 = [v14 copy];
    v8 = v35;
    v7 = v36;
    v31 = v34;
  }

  else
  {
    v31 = __atxlog_handle_blending();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v7;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] Shortcuts setting off for bundle %@", buf, 0xCu);
    }

    v30 = MEMORY[0x277CBEBF8];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

id __92__ATXSpotlightLayoutSelector__validAutoShortcutContextualActionsForBundleId_limit_provider___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D79DF0];
  v4 = a2;
  v5 = [[v3 alloc] initWithAutoShortcut:v4 bundleIdentifier:*(a1 + 32)];

  return v5;
}

uint64_t __92__ATXSpotlightLayoutSelector__validAutoShortcutContextualActionsForBundleId_limit_provider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D79DD8];
  v3 = [a2 autoShortcut];
  LODWORD(v2) = [v2 isAppShortcutDenyListed:v3 inEnvironment:2];

  return v2 ^ 1;
}

- (id)_autoShortcutsForBundleId:(id)a3 provider:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v7 localeIdentifier];

  v9 = __atxlog_handle_blending();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] searching %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__98;
  v30 = __Block_byref_object_dispose__98;
  v31 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v10 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke;
  v19[3] = &unk_2785991D8;
  v11 = v5;
  v20 = v11;
  p_buf = &buf;
  v12 = v10;
  v21 = v12;
  [v6 autoShortcutsForBundleIdentifier:v11 localeIdentifier:v8 completion:v19];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v12 timeoutSeconds:5.0] == 1)
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXSpotlightLayoutSelector _autoShortcutsForBundleId:provider:];
    }
  }

  v14 = __atxlog_handle_blending();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(&buf + 1) + 40);
    *v23 = 138412547;
    v24 = v11;
    v25 = 2117;
    v26 = v15;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] found for %@, %{sensitive}@", v23, 0x16u);
  }

  v16 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke_cold_1(a1, v7, v8);
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_titleForParameterizedAutoShortcutContextualAction:(id)a3 provider:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 phrase];
  v8 = [v7 parameterIdentifier];

  if (v8)
  {
    v30 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v29 = 0;
    v10 = [v6 propertiesForIdentifiers:v9 error:&v29];
    v11 = v29;

    if (v11)
    {
      v12 = __atxlog_handle_blending();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightLayoutSelector _titleForParameterizedAutoShortcutContextualAction:v5 provider:?];
      }
    }

    else
    {
      if (v10)
      {
        v16 = [v10 objectForKeyedSubscript:v8];
        v12 = v16;
        if (v16)
        {
          v17 = [v16 value];
          v18 = [v17 displayRepresentation];

          v19 = [v18 title];

          if (v19)
          {
            v20 = [v18 title];
            v13 = [v20 atx_efficientLocalizedString];
          }

          else
          {
            v20 = __atxlog_handle_blending();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v5 bundleIdentifier];
              v26 = [v5 actionIdentifier];
              *buf = 138412546;
              v32 = v25;
              v33 = 2112;
              v34 = v26;
              _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] displayRepresentation or title nil for %@, %@", buf, 0x16u);
            }

            v13 = 0;
          }
        }

        else
        {
          v18 = __atxlog_handle_blending();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v5 bundleIdentifier];
            v24 = [v5 actionIdentifier];
            *buf = 138412546;
            v32 = v23;
            v33 = 2112;
            v34 = v24;
            _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] property nil for %@, %@", buf, 0x16u);
          }

          v13 = 0;
        }

        goto LABEL_23;
      }

      v12 = __atxlog_handle_blending();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v5 bundleIdentifier];
        v22 = [v5 actionIdentifier];
        *buf = 138412546;
        v32 = v21;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] all properties nil for %@, %@", buf, 0x16u);
      }
    }

    v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v5 bundleIdentifier];
    v15 = [v5 actionIdentifier];
    *buf = 138412546;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] not a phrase with parameters, use short title %@, %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_24:

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_suggestionFromAutoShortcutContextualAction:(id)a3 title:(id)a4 predictionReasons:(unint64_t)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v7 criteria:0];
  if (!v8)
  {
    v10 = [v7 autoShortcut];
    v11 = [v10 localizedShortTitle];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v7 displayString];
    }

    v8 = v13;
  }

  v14 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v15 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v14 clientModelVersion:@"1.0" engagementResetPolicy:1];
  v16 = objc_alloc(MEMORY[0x277D42080]);
  v17 = [v7 displayString];
  v18 = [v7 uniqueIdentifier];
  v19 = [v16 initWithExecutableObject:v9 executableDescription:v17 executableIdentifier:v18 suggestionExecutableType:9];

  v20 = [objc_alloc(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout:5];
  v28[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

  LOWORD(v27) = 1;
  v22 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v8 subtitle:0 predictionReason:0 preferredLayoutConfigs:v21 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v27 shouldClearOnEngagement:a5 predictionReasons:?];
  v23 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:15.0];
  v24 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v15 executableSpecification:v19 uiSpecification:v22 scoreSpecification:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_isValidForReasons:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "SLS: ATXSpotlightLayoutSelector suggestion not valid: More than one Context set for reasons %llu", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_125_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "[Index] Deleting Error deleteSearchableItems: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_126_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "[Index] Inserting Error indexSearchableItems: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_preferredContextWithContextCode:contextCriteria:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = stringForATXSuggestionPredictionReasonCode();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_titleForContextCode:suggestions:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "SLS: ATXSpotlightLayoutSelector Section title is nil and should be dynamic: %@, code: %lu");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_poiMUIDFromHero:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 stringValue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_poiMUIDFromHero:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 stringValue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_autoShortcutsForBundleId:provider:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "SLS: [AutoShortcut] lookup timeout for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, a2, a3, "SLS: [AutoShortcut] lookup for %@ error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_titleForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 bundleIdentifier];
  v8 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end