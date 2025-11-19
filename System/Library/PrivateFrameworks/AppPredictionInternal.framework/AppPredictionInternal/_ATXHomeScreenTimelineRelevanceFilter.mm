@interface _ATXHomeScreenTimelineRelevanceFilter
- (BOOL)_isCurrentTimelineRelevanceScoreZeroForSuggestion:(id)a3 family:(int64_t)a4 intentIndexingHash:(int64_t)a5;
- (BOOL)_widgetExistsOnScreen:(id)a3 homeScreenState:(id)a4;
- (_ATXHomeScreenTimelineRelevanceFilter)initWithTimelineRelevanceStore:(id)a3;
- (id)_nextRefreshDateForSuggestion:(id)a3 familyMask:(unint64_t)a4;
- (id)_nextTimelineRelevanceChangeDateRelatedToSuggestions:(id)a3;
- (id)removeSuggestionsByTimelineRelevanceIfNecessary:(id)a3 homeScreenState:(id)a4;
- (void)_scheduleBlendingRefreshAtDate:(id)a3 reason:(id)a4;
- (void)scheduleBlendingRefreshAtNextTimelineRelevanceChangeRelatedToSuggestions:(id)a3;
@end

@implementation _ATXHomeScreenTimelineRelevanceFilter

- (_ATXHomeScreenTimelineRelevanceFilter)initWithTimelineRelevanceStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ATXHomeScreenTimelineRelevanceFilter;
  v6 = [(_ATXHomeScreenTimelineRelevanceFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timelineRelevanceStore, a3);
  }

  return v7;
}

- (void)scheduleBlendingRefreshAtNextTimelineRelevanceChangeRelatedToSuggestions:(id)a3
{
  v4 = [(_ATXHomeScreenTimelineRelevanceFilter *)self _nextTimelineRelevanceChangeDateRelatedToSuggestions:a3];
  v5 = v4;
  if (v4)
  {
    [(_ATXHomeScreenTimelineRelevanceFilter *)self _scheduleBlendingRefreshAtDate:v4 reason:@"Timeline relevance change"];
  }

  else
  {
    [(_ATXHomeScreenTimelineRelevanceFilter *)self _cancelAnyExistingScheduledRefresh];
  }
}

- (id)removeSuggestionsByTimelineRelevanceIfNecessary:(id)a3 homeScreenState:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  v49 = v7;
  v9 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v52;
    *&v12 = 134218498;
    v45 = v12;
    v47 = v10;
    v48 = v9;
    v46 = self;
    v50 = *v52;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        v17 = [v16 executableSpecification];
        v18 = [v17 executableType];

        if (v18 != 3)
        {
          [v9 addObject:v16];
          continue;
        }

        v19 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v16];
        if (v19)
        {
          if (![(_ATXHomeScreenTimelineRelevanceFilter *)v8 _widgetExistsOnScreen:v19 homeScreenState:v49])
          {
            timelineRelevanceStore = v8->_timelineRelevanceStore;
            v24 = [v19 widgetBundleIdentifier];
            v25 = [v19 widgetKind];
            v26 = [v19 intent];
            v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1800.0];
            LODWORD(timelineRelevanceStore) = [(ATXInformationStore *)timelineRelevanceStore didMostRecentReloadFailForExtension:v24 kind:v25 intent:v26 cutoffDate:v27];

            if (!timelineRelevanceStore)
            {
              v9 = v48;
              [v48 addObject:v16];
LABEL_38:
              v10 = v47;
              v14 = v50;
              goto LABEL_39;
            }

            v28 = __atxlog_handle_blending();
            v10 = v47;
            v9 = v48;
            v14 = v50;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v56 = v16;
              v29 = v28;
              v30 = "HSLS [preprocess]: Removing suggestion due to recent reload failure:\n%@";
              goto LABEL_29;
            }

LABEL_30:

            goto LABEL_39;
          }

          v20 = [v19 intent];
          v21 = [v20 atx_indexingHash];

          if (([v19 layouts] & 8) != 0)
          {
            if ([(_ATXHomeScreenTimelineRelevanceFilter *)v8 _isCurrentTimelineRelevanceScoreZeroForSuggestion:v19 family:1 intentIndexingHash:v21])
            {
              v22 = 0;
            }

            else
            {
              v22 = 8;
            }
          }

          else
          {
            v22 = 0;
          }

          v14 = v50;
          if (([v19 layouts] & 0x10) != 0 && !-[_ATXHomeScreenTimelineRelevanceFilter _isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:](v8, "_isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:", v19, 2, v21))
          {
            v22 |= 0x10uLL;
          }

          if (([v19 layouts] & 0x40) != 0 && !-[_ATXHomeScreenTimelineRelevanceFilter _isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:](v8, "_isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:", v19, 3, v21))
          {
            v22 |= 0x40uLL;
          }

          if (([v19 layouts] & 0x80) != 0 && !-[_ATXHomeScreenTimelineRelevanceFilter _isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:](v8, "_isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:", v19, 4, v21))
          {
            v22 |= 0x80uLL;
          }

          else if (!v22)
          {
            v28 = __atxlog_handle_blending();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v56 = v16;
              v29 = v28;
              v30 = "HSLS [preprocess]: Removing suggestion due to zero timeline relevance score:\n%@";
LABEL_29:
              _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
            }

            goto LABEL_30;
          }

          if (v22 != [v19 layouts])
          {
            v31 = __atxlog_handle_blending();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v19 layouts];
              *buf = v45;
              v56 = v32;
              v57 = 2048;
              v58 = v22;
              v59 = 2112;
              v60 = v16;
              _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Upating suggestion eligibleLayoutOptions (old %lu, new %lu) due to zero timeline relevance score:\n%@", buf, 0x20u);
            }

            [v19 setLayouts:v22];
            v33 = MEMORY[0x277D42040];
            v34 = [v16 clientModelSpecification];
            v35 = [v34 clientModelId];
            v36 = [v16 clientModelSpecification];
            v37 = [v36 clientModelVersion];
            v38 = [v16 scoreSpecification];
            [v38 rawScore];
            v40 = v39;
            v41 = [v16 scoreSpecification];
            v42 = [v33 proactiveSuggestionForInfoSuggestion:v19 withClientModelId:v35 clientModelVersion:v37 rawScore:objc_msgSend(v41 confidenceCategory:{"suggestedConfidenceCategory"), v40}];

            v9 = v48;
            [v48 addObject:v42];

            v8 = v46;
            goto LABEL_38;
          }

          [v9 addObject:v16];
        }

LABEL_39:
      }

      v13 = [v10 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v13);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_scheduleBlendingRefreshAtDate:(id)a3 reason:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = *MEMORY[0x277D86250];
  [v6 timeIntervalSinceNow];
  v10 = v9;

  xpc_dictionary_set_int64(v7, v8, v10);
  xpc_dictionary_set_int64(v7, *MEMORY[0x277D86270], 300);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_string(v7, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79___ATXHomeScreenTimelineRelevanceFilter__scheduleBlendingRefreshAtDate_reason___block_invoke;
  v12[3] = &unk_278596790;
  v13 = v5;
  v11 = v5;
  atxRegisterCTSJobHandler("com.apple.duetexpertd.HomeScreenTimelineRelevance", v7, v12);
}

- (id)_nextTimelineRelevanceChangeDateRelatedToSuggestions:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v6)
  {
    v31 = 0;
    v7 = *v35;
    v8 = v4;
    do
    {
      v9 = 0;
      v33 = v6;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = [v10 executableSpecification];
        v12 = [v11 executableType];

        if (v12 == 3)
        {
          v13 = v5;
          v14 = MEMORY[0x277D42040];
          v15 = v4;
          v16 = v4;
          v17 = [v14 infoSuggestionFromProactiveSuggestion:v10];
          v18 = -[_ATXHomeScreenTimelineRelevanceFilter _nextRefreshDateForSuggestion:familyMask:](self, "_nextRefreshDateForSuggestion:familyMask:", v17, ([v17 layouts] >> 2) & 4 | (objc_msgSend(v17, "layouts") >> 2) & 2 | (objc_msgSend(v17, "layouts") >> 3) & 8 | (objc_msgSend(v17, "layouts") >> 3) & 0x10);
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          v21 = v20;

          v22 = [v16 earlierDate:v21];

          v23 = [v8 earlierDate:v22];

          if (v22 == v23)
          {
            v24 = v22;

            v25 = v10;
            v31 = v25;
            v8 = v24;
          }

          v4 = v15;
          v5 = v13;
          v6 = v33;
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v6);

    if (v8 != v4)
    {
      v26 = __atxlog_handle_blending();
      v6 = v31;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v39 = v8;
        v40 = 2112;
        v41 = v31;
        _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Scheduling Blending refresh at %{public}@ due to future zero timeline relevance score of suggestion:\n%@", buf, 0x16u);
      }

      v8 = v8;
      v27 = v8;
      goto LABEL_24;
    }

    v6 = v31;
  }

  else
  {

    v8 = v4;
  }

  v28 = __atxlog_handle_blending();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: No future zero timeline relevance score found related to suggestions.", buf, 2u);
  }

  v27 = 0;
LABEL_24:

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_nextRefreshDateForSuggestion:(id)a3 familyMask:(unint64_t)a4
{
  timelineRelevanceStore = self->_timelineRelevanceStore;
  v6 = a3;
  v7 = [v6 widgetBundleIdentifier];
  v8 = [v6 widgetKind];
  v9 = [v6 intent];

  v10 = [(ATXInformationStore *)timelineRelevanceStore upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget:v7 kind:v8 familyMask:a4 intent:v9];

  return v10;
}

- (BOOL)_isCurrentTimelineRelevanceScoreZeroForSuggestion:(id)a3 family:(int64_t)a4 intentIndexingHash:(int64_t)a5
{
  v8 = a3;
  timelineRelevanceStore = self->_timelineRelevanceStore;
  v10 = [v8 widgetBundleIdentifier];
  v11 = [v8 widgetKind];
  v12 = [(ATXInformationStore *)timelineRelevanceStore mostRecentTimelineEntryWithScoreForWidget:v10 kind:v11 family:a4 intentIndexingHash:a5];

  v13 = [v12 relevance];

  if (v13)
  {
    v14 = [v12 relevance];
    [v14 duration];
    v16 = v15;

    if (v16 >= 0.0)
    {
      v19 = [v12 relevance];
      [v19 duration];
      v21 = v20;

      if (v21 == 0.0)
      {
        v22 = [v12 relevance];
        [v22 score];
        v18 = v23 <= 0.0;
      }

      else
      {
        v24 = [v12 date];
        v25 = [v12 relevance];
        [v25 duration];
        v22 = [v24 dateByAddingTimeInterval:?];

        [v22 timeIntervalSinceNow];
        if (v26 <= 0.0)
        {
          v18 = 0;
        }

        else
        {
          v27 = [v12 relevance];
          [v27 score];
          v18 = v28 <= 0.0;
        }
      }
    }

    else
    {
      v17 = __atxlog_handle_blending();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_ATXHomeScreenTimelineRelevanceFilter _isCurrentTimelineRelevanceScoreZeroForSuggestion:v8 family:v17 intentIndexingHash:?];
      }

      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_widgetExistsOnScreen:(id)a3 homeScreenState:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = [a4 sortedPagesByUserLastVisit];
  v7 = [v6 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v7)
  {
    v8 = *v57;
    v45 = v6;
    v40 = *v57;
    do
    {
      v9 = 0;
      v39 = v7;
      do
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v56 + 1) + 8 * v9);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v11 = [v10 stacks];
        v43 = [v11 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v43)
        {
          v12 = *v53;
          v41 = *v53;
          v42 = v9;
          v46 = v11;
          do
          {
            v13 = 0;
            do
            {
              if (*v53 != v12)
              {
                objc_enumerationMutation(v11);
              }

              v44 = v13;
              v14 = *(*(&v52 + 1) + 8 * v13);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v15 = [v14 config];
              v16 = [v15 widgets];

              obj = v16;
              v17 = [v16 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v49;
                do
                {
                  v20 = 0;
                  do
                  {
                    if (*v49 != v19)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v21 = *(*(&v48 + 1) + 8 * v20);
                    v22 = [v21 extensionBundleId];
                    v23 = [v5 widgetBundleIdentifier];
                    if ([v22 isEqualToString:v23])
                    {
                      v24 = [v21 widgetKind];
                      v25 = [v5 widgetKind];
                      v26 = [v24 isEqualToString:v25];

                      if (v26)
                      {
                        v27 = [v21 intent];
                        if (v27)
                        {
                        }

                        else
                        {
                          v28 = [v5 intent];

                          if (!v28)
                          {
                            goto LABEL_34;
                          }
                        }

                        v29 = [v21 intent];
                        if (v29)
                        {
                          v30 = v29;
                          v31 = [v5 intent];

                          if (v31)
                          {
                            v32 = [v21 intent];
                            v33 = [v5 intent];
                            v34 = [v32 atx_isEqualToIntent:v33];

                            if (v34)
                            {
LABEL_34:

                              v36 = 1;
                              v6 = v45;
                              goto LABEL_36;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                    }

                    ++v20;
                  }

                  while (v18 != v20);
                  v35 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
                  v18 = v35;
                }

                while (v35);
              }

              v13 = v44 + 1;
              v6 = v45;
              v11 = v46;
              v12 = v41;
              v9 = v42;
            }

            while (v44 + 1 != v43);
            v43 = [v46 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v43);
        }

        ++v9;
        v8 = v40;
      }

      while (v9 != v39);
      v7 = [v6 countByEnumeratingWithState:&v56 objects:v62 count:16];
      v8 = v40;
      v36 = 0;
    }

    while (v7);
  }

  else
  {
    v36 = 0;
  }

LABEL_36:

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)_isCurrentTimelineRelevanceScoreZeroForSuggestion:(uint64_t)a1 family:(NSObject *)a2 intentIndexingHash:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "_ATXHomeScreenTimelineRelevanceFilter: Unexpectedly found TimelineEntry with negative duration for suggestion %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end