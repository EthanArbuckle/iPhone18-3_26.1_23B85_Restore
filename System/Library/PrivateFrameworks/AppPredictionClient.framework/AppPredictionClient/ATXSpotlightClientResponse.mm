@interface ATXSpotlightClientResponse
+ (id)_createEmptyResultsWithCount:(unint64_t)count;
+ (id)_limitingResults:(id)results scores:(id)scores spotlightRecentIndex:(unint64_t)index limit:(unint64_t)limit;
+ (id)_removeDuplicates:(id)duplicates;
+ (id)_resultForError:(id)error subtitles:(id)subtitles searchString:(id)string;
+ (id)createSectionWithTitle:(id)title sectionBundleIdentifier:(id)identifier resultCount:(unint64_t)count;
+ (unint64_t)_indexOfFirstSpotlightRecentInServerResults:(id)results withSections:(id)sections;
+ (unint64_t)_trialSuggestionsMaxCountWithDefault:(unint64_t)default;
+ (void)_logWeatherResponsesWithTopics:(id)topics serverResults:(id)results;
- (ATXSpotlightClientResponse)initWithTopics:(id)topics scores:(id)scores sections:(id)sections;
- (NSArray)codePathIdTriggers;
- (id)_addIdentifiersFromTopics:(id)topics serverTopics:(id)serverTopics;
- (id)_createSectionsFromServerResults:(id)results;
- (id)_createSectionsFromServerResults:(id)results limit:(unint64_t)limit;
- (id)_removeDuplicateTopics:(id)topics;
- (id)_removeHidden:(id)hidden;
- (id)_replaceMissingWithError:(id)error;
- (void)_updateSectionBundleIdentifiersWithServerResults:(id)results;
- (void)dealloc;
@end

@implementation ATXSpotlightClientResponse

- (void)dealloc
{
  v3 = __atxlog_handle_metrics();
  v4 = v3;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v4, OS_SIGNPOST_INTERVAL_END, signpostId, "ATXSpotlightClientResponse", " enableTelemetry=YES ", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = ATXSpotlightClientResponse;
  [(ATXSpotlightClientResponse *)&v6 dealloc];
}

- (id)_createSectionsFromServerResults:(id)results limit:(unint64_t)limit
{
  v45 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v7 = __atxlog_handle_metrics();
  v8 = v7;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v39) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v8, OS_SIGNPOST_INTERVAL_END, signpostId, "ATXSpotlightClientResponse", " enableTelemetry=YES ", &v39, 2u);
  }

  self->_signpostId = 0;
  v10 = __atxlog_handle_ui();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NSArray *)self->_topics count];
    v12 = [(NSArray *)self->_scores count];
    v13 = [resultsCopy count];
    v39 = 134218496;
    v40 = v11;
    v41 = 2048;
    v42 = v12;
    v43 = 2048;
    v44 = v13;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Create sections from server response - topics: %lu, scores: %lu, received: %lu", &v39, 0x20u);
  }

  v14 = [(NSArray *)self->_topics count];
  if (v14 != -[NSArray count](self->_scores, "count") || (v15 = -[NSArray count](self->_topics, "count"), v15 != [resultsCopy count]))
  {
    v31 = __atxlog_handle_ui();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      v36 = [(NSArray *)self->_topics count];
      v37 = [(NSArray *)self->_scores count];
      v38 = [resultsCopy count];
      v39 = 134218496;
      v40 = v36;
      v41 = 2048;
      v42 = v37;
      v43 = 2048;
      v44 = v38;
      _os_log_fault_impl(&dword_1BF549000, v31, OS_LOG_TYPE_FAULT, "ZKW Server Result: Server did not send back same count. Sent topics: %lu, scores: %lu Received: %lu", &v39, 0x20u);
    }

    goto LABEL_20;
  }

  if (![(NSArray *)self->_topics count])
  {
    v31 = __atxlog_handle_ui();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [(NSArray *)self->_topics count];
      v34 = [(NSArray *)self->_scores count];
      v35 = [resultsCopy count];
      v39 = 134218496;
      v40 = v33;
      v41 = 2048;
      v42 = v34;
      v43 = 2048;
      v44 = v35;
      _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Requested no topics, returning. Sent topics: %lu, scores: %lu Received: %lu", &v39, 0x20u);
    }

LABEL_20:

    v30 = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  [objc_opt_class() _logWeatherResponsesWithTopics:self->_topics serverResults:resultsCopy];
  v16 = [(ATXSpotlightClientResponse *)self _replaceMissingWithError:resultsCopy];

  v17 = [objc_opt_class() _removeDuplicates:v16];

  [(ATXSpotlightClientResponse *)self _updateSectionBundleIdentifiersWithServerResults:v17];
  v18 = [(ATXSpotlightClientResponse *)self _addIdentifiersFromTopics:self->_topics serverTopics:v17];

  isZKWHideContextsEnabled = [MEMORY[0x1E698AFE8] isZKWHideContextsEnabled];
  self->_isZKWHideContextsEnabled = isZKWHideContextsEnabled;
  if (isZKWHideContextsEnabled)
  {
    v20 = objc_opt_new();
    controller = self->_controller;
    self->_controller = v20;

    v22 = [(ATXSpotlightClientResponse *)self _removeHidden:v18];

    v18 = v22;
  }

  v23 = [(ATXSpotlightClientResponse *)self _removeDuplicateTopics:v18];

  v24 = [objc_opt_class() _indexOfFirstSpotlightRecentInServerResults:v23 withSections:self->_sections];
  v25 = __atxlog_handle_ui();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 134217984;
    v40 = v24;
    _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Index of first spotlight recent: %lu", &v39, 0xCu);
  }

  v26 = [v23 indexesOfObjectsPassingTest:&__block_literal_global_78];
  v27 = [v26 count];

  if (v27 >= 5)
  {
    v28 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
    if ([v28 matchesSuggestionsMaxCount])
    {
      codePathIdForSuggestionsMaxCount = [v28 codePathIdForSuggestionsMaxCount];
      [(ATXSpotlightClientResponse *)self addCodePathId:codePathIdForSuggestionsMaxCount];
    }
  }

  resultsCopy = [objc_opt_class() _limitingResults:v23 scores:self->_scores spotlightRecentIndex:v24 limit:limit];

  v30 = [(ATXSpotlightClientResponse *)self _createSectionsFromServerResults:resultsCopy];
LABEL_21:

  return v30;
}

BOOL __69__ATXSpotlightClientResponse__createSectionsFromServerResults_limit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 results];
  v3 = [v2 firstObject];

  return v3 != 0;
}

- (ATXSpotlightClientResponse)initWithTopics:(id)topics scores:(id)scores sections:(id)sections
{
  topicsCopy = topics;
  scoresCopy = scores;
  sectionsCopy = sections;
  v22.receiver = self;
  v22.super_class = ATXSpotlightClientResponse;
  v12 = [(ATXSpotlightClientResponse *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topics, topics);
    objc_storeStrong(&v13->_scores, scores);
    objc_storeStrong(&v13->_sections, sections);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    codePathIdTriggers = v13->_codePathIdTriggers;
    v13->_codePathIdTriggers = v14;

    v16 = __atxlog_handle_metrics();
    v13->_signpostId = os_signpost_id_generate(v16);

    if (![(NSArray *)v13->_topics count])
    {
      v13->_signpostId = 0;
    }

    v17 = __atxlog_handle_metrics();
    v18 = v17;
    signpostId = v13->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v18, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "ATXSpotlightClientResponse", " enableTelemetry=YES ", v21, 2u);
    }
  }

  return v13;
}

- (NSArray)codePathIdTriggers
{
  v2 = [(NSMutableArray *)self->_codePathIdTriggers copy];

  return v2;
}

+ (id)createSectionWithTitle:(id)title sectionBundleIdentifier:(id)identifier resultCount:(unint64_t)count
{
  v8 = MEMORY[0x1E69CA390];
  identifierCopy = identifier;
  titleCopy = title;
  v11 = objc_alloc_init(v8);
  [v11 setSubtitle:titleCopy];

  [v11 setBundleIdentifier:identifierCopy];
  v12 = [self _createEmptyResultsWithCount:count];
  [v11 setResults:v12];

  return v11;
}

+ (id)_createEmptyResultsWithCount:(unint64_t)count
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); count; --count)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CA3E8]);
    [i addObject:v5];
  }

  v6 = [i copy];

  return v6;
}

- (void)_updateSectionBundleIdentifiersWithServerResults:(id)results
{
  v34 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_sections;
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v5 = 0;
    v20 = *v29;
    v23 = resultsCopy;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        results = [v7 results];
        if ([results count])
        {
          v9 = 0;
          while (1)
          {
            v10 = [resultsCopy count];

            if (v5 >= v10)
            {
              break;
            }

            v11 = [resultsCopy objectAtIndexedSubscript:v5];
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            results2 = [v11 results];
            v13 = [results2 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(results2);
                  }

                  v17 = *(*(&v24 + 1) + 8 * i);
                  bundleIdentifier = [v7 bundleIdentifier];
                  [v17 setSectionBundleIdentifier:bundleIdentifier];
                }

                v14 = [results2 countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v14);
            }

            ++v5;

            ++v9;
            results = [v7 results];
            resultsCopy = v23;
            if (v9 >= [results count])
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }
}

- (id)_addIdentifiersFromTopics:(id)topics serverTopics:(id)serverTopics
{
  topicsCopy = topics;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke;
  v9[3] = &unk_1E80C4A48;
  v10 = topicsCopy;
  v6 = topicsCopy;
  v7 = [serverTopics _pas_mappedArrayWithIndexedTransform:v9];

  return v7;
}

id __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [v5 results];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2;
  v11[3] = &unk_1E80C4A20;
  v12 = v6;
  v8 = v6;
  v9 = [v7 _pas_mappedArrayWithTransform:v11];

  [v5 setResults:v9];

  return v5;
}

ATXSuggestionSearchResult *__69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  v4 = [v3 sectionBundleIdentifier];
  v5 = [ATXSpotlightContextAdapter isSpotlightRecentSectionIdentifier:v4];

  if (v5)
  {
    v6 = __atxlog_handle_ui();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v7 = "ZKW Server Id: Skip recents";
LABEL_8:
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, v7, &v16, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = __atxlog_handle_ui();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v7 = "ZKW Server Id: Skip contacts";
      goto LABEL_8;
    }

LABEL_9:

LABEL_10:
    v8 = v3;
    goto LABEL_11;
  }

  if (!*(a1 + 32))
  {
    v6 = __atxlog_handle_ui();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2_cold_2(v6);
    }

    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x1E69C5B70]);
  v11 = *(a1 + 32);
  v12 = [v3 sectionBundleIdentifier];
  v13 = [v10 initWithTopic:v11 sectionBundleIdentifier:v12];

  if (!v13)
  {
    v14 = __atxlog_handle_ui();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2_cold_1(v14);
    }
  }

  v8 = [[ATXSuggestionSearchResult alloc] initWithSearchResult:v3];
  [(ATXSuggestionSearchResult *)v8 setContextActionIdentifier:v13];
  v15 = __atxlog_handle_ui();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ZKW Server Id: Converting %@", &v16, 0xCu);
  }

LABEL_11:

  return v8;
}

+ (id)_removeDuplicates:(id)duplicates
{
  v13 = *MEMORY[0x1E69E9840];
  duplicatesCopy = duplicates;
  v4 = __atxlog_handle_ui();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [duplicatesCopy count];
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Removing duplicates in %lu serverResults", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke;
  v7[3] = &unk_1E80C4A98;
  v7[4] = &buf;
  v5 = [duplicatesCopy _pas_mappedArrayWithTransform:v7];
  _Block_object_dispose(&buf, 8);

  return v5;
}

id __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 results];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke_2;
  v7[3] = &unk_1E80C4A70;
  v7[4] = *(a1 + 32);
  v5 = [v4 _pas_filteredArrayWithTest:v7];

  [v3 setResults:v5];

  return v3;
}

uint64_t __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 32) + 8) + 40) containsObject:v3];
  v5 = __atxlog_handle_ui();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: - Removing duplicate", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: - Keeping", v8, 2u);
    }

    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return v4 ^ 1u;
}

- (id)_removeHidden:(id)hidden
{
  v11 = *MEMORY[0x1E69E9840];
  hiddenCopy = hidden;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [hiddenCopy count];
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Removing hidden in %lu results", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__ATXSpotlightClientResponse__removeHidden___block_invoke;
  v8[3] = &unk_1E80C4AE8;
  v8[4] = self;
  v6 = [hiddenCopy _pas_mappedArrayWithTransform:v8];

  return v6;
}

id __44__ATXSpotlightClientResponse__removeHidden___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 results];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ATXSpotlightClientResponse__removeHidden___block_invoke_2;
  v7[3] = &unk_1E80C4AC0;
  v7[4] = *(a1 + 32);
  v5 = [v4 _pas_filteredArrayWithTest:v7];

  [v3 setResults:v5];

  return v3;
}

- (id)_removeDuplicateTopics:(id)topics
{
  v49 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  v4 = __atxlog_handle_ui();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v48 = [topicsCopy count];
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: _removeDuplicateTopics in %lu results", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_sections;
  v27 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v27)
  {
    v7 = 0;
    v26 = *v42;
    v29 = topicsCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v8;
        v31 = *(*(&v41 + 1) + 8 * v8);
        results = [v31 results];
        if ([results count])
        {
          v10 = 0;
          while (1)
          {
            v11 = [topicsCopy count];

            if (v7 >= v11)
            {
              break;
            }

            v34 = v10;
            v12 = [(NSArray *)self->_topics objectAtIndexedSubscript:v7];
            v13 = [topicsCopy objectAtIndexedSubscript:v7];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v33 = v13;
            results2 = [v13 results];
            v15 = [results2 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v15)
            {
              v16 = v15;
              v32 = v7;
              v17 = 0;
              v18 = *v38;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(results2);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  if ([ATXSpotlightClient topic:v12 isDuplicateComparingTopics:v5])
                  {
                    [v6 addObject:v20];
                  }

                  else
                  {
                    v17 = 1;
                  }
                }

                v16 = [results2 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v16);

              topicsCopy = v29;
              v7 = v32;
              v21 = v34;
              if (v17)
              {
                [v5 addObject:v12];
              }
            }

            else
            {

              v21 = v10;
            }

            ++v7;

            results = [v31 results];
            v10 = v21 + 1;
            if (v21 + 1 >= [results count])
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
        }

        v8 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v27);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __53__ATXSpotlightClientResponse__removeDuplicateTopics___block_invoke;
  v35[3] = &unk_1E80C4AE8;
  v36 = v6;
  v22 = v6;
  v23 = [topicsCopy _pas_mappedArrayWithTransform:v35];

  return v23;
}

id __53__ATXSpotlightClientResponse__removeDuplicateTopics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 results];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ATXSpotlightClientResponse__removeDuplicateTopics___block_invoke_2;
  v7[3] = &unk_1E80C4AC0;
  v8 = *(a1 + 32);
  v5 = [v4 _pas_filteredArrayWithTest:v7];

  [v3 setResults:v5];

  return v3;
}

+ (unint64_t)_indexOfFirstSpotlightRecentInServerResults:(id)results withSections:(id)sections
{
  v32 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  sectionsCopy = sections;
  v7 = [sectionsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    v26 = *v28;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(sectionsCopy);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        bundleIdentifier = [v12 bundleIdentifier];
        v14 = [bundleIdentifier isEqual:@"com.apple.spotlight.dec.zkw.recents"];

        results = [v12 results];
        v16 = [results count];
        if (v14)
        {
          if (v16)
          {
            v17 = sectionsCopy;
            v18 = 0;
            while (1)
            {
              v19 = [resultsCopy count];

              if (v9 + v18 >= v19)
              {
                v9 += v18;
                sectionsCopy = v17;
                v10 = v26;
                goto LABEL_15;
              }

              v20 = [resultsCopy objectAtIndexedSubscript:v9 + v18];
              results2 = [v20 results];
              firstObject = [results2 firstObject];

              if (firstObject)
              {
                break;
              }

              ++v18;
              results = [v12 results];
              if (v18 >= [results count])
              {
                v9 += v18;
                sectionsCopy = v17;
                v10 = v26;
                goto LABEL_14;
              }
            }

            v24 = v9 + v18;
            sectionsCopy = v17;
            goto LABEL_22;
          }
        }

        else
        {
          v9 += v16;
        }

LABEL_14:

LABEL_15:
        ++v11;
      }

      while (v11 != v8);
      v23 = [sectionsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
      v8 = v23;
      v24 = 0x7FFFFFFFFFFFFFFFLL;
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_22:

  return v24;
}

+ (id)_limitingResults:(id)results scores:(id)scores spotlightRecentIndex:(unint64_t)index limit:(unint64_t)limit
{
  v49[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  scoresCopy = scores;
  keyExistsAndHasValidFormat[0] = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwShowAllContexts", *MEMORY[0x1E698B030], keyExistsAndHasValidFormat))
  {
    v12 = __atxlog_handle_ui();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 0;
    }

    v13 = resultsCopy;
  }

  else
  {
    v14 = [self _trialSuggestionsMaxCountWithDefault:limit];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke;
    v39[3] = &unk_1E80C4B10;
    v15 = resultsCopy;
    v40 = v15;
    v28 = [scoresCopy _pas_mappedArrayWithIndexedTransform:v39];
    v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0];
    v49[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    v18 = [v28 sortedArrayUsingDescriptors:v17];

    v19 = [v18 count];
    if (v14 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v14;
    }

    v21 = v20 - (index != 0x7FFFFFFFFFFFFFFFLL);
    v22 = MEMORY[0x1E695DFD8];
    v23 = [v18 subarrayWithRange:{0, v21}];
    v24 = [v22 setWithArray:v23];

    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = index != 0x7FFFFFFFFFFFFFFFLL;
    v25 = __atxlog_handle_ui();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 134218754;
      v42 = v21;
      v43 = 2112;
      v44 = scoresCopy;
      v45 = 2112;
      v46 = v28;
      v47 = 2112;
      v48 = v24;
      _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "ZKW Server Limit: Fill slots %lu, scores: %@, omit empty: %@, allowed: %@", keyExistsAndHasValidFormat, 0x2Au);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke_54;
    v29[3] = &unk_1E80C4B38;
    v30 = scoresCopy;
    v32 = v38;
    v34 = v14;
    indexCopy = index;
    v33 = v36;
    v26 = v24;
    v31 = v26;
    v13 = [v15 _pas_mappedArrayWithIndexedTransform:v29];

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);
  }

  return v13;
}

id __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [v6 results];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = &unk_1F3E601B0;
  }

  return v9;
}

id __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke_54(uint64_t a1, void *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218242;
    v22 = a3;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ZKW Server Limit: Consider result %lu with score: %@", &v21, 0x16u);
  }

  v8 = [v5 results];
  v9 = [v8 firstObject];

  if (!v9)
  {
    [v5 setResults:MEMORY[0x1E695E0F0]];
    v12 = __atxlog_handle_ui();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v21 = 134217984;
    v22 = a3;
    v13 = "ZKW Server Limit: Remove %lu, result is nil";
    goto LABEL_13;
  }

  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
    [v5 setResults:MEMORY[0x1E695E0F0]];
    v12 = __atxlog_handle_ui();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v16 = *(a1 + 64);
    v21 = 134218240;
    v22 = a3;
    v23 = 2048;
    v24 = v16;
    v13 = "ZKW Server Limit: Remove %lu. Already included limit of %lu";
    goto LABEL_24;
  }

  if (*(a1 + 72) > a3)
  {
    if (([*(a1 + 40) containsObject:v6] & 1) == 0)
    {
      [v5 setResults:MEMORY[0x1E695E0F0]];
      v12 = __atxlog_handle_ui();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v18 = *(a1 + 40);
      v21 = 134218498;
      v22 = a3;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v18;
      v13 = "ZKW Server Limit: Remove %lu, score %@ isn't high enough, %@";
      v14 = v12;
      v15 = 32;
      goto LABEL_25;
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 24) + 1;
    if (v11 == *(a1 + 64) && *(*(*(a1 + 56) + 8) + 24) == 1)
    {
      [v5 setResults:MEMORY[0x1E695E0F0]];
      v12 = __atxlog_handle_ui();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v21 = 134217984;
      v22 = a3;
      v13 = "ZKW Server Limit: Remove %lu. One slot left and need to add Spotlight Recent";
LABEL_13:
      v14 = v12;
      v15 = 12;
LABEL_25:
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, v13, &v21, v15);
      goto LABEL_26;
    }

    *(v10 + 24) = v11;
    v12 = __atxlog_handle_ui();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v17 = __atxlog_handle_ui();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    v22 = a3;
    _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ZKW Server Limit: Found Spotlight Recent %lu", &v21, 0xCu);
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  ++*(*(*(a1 + 48) + 8) + 24);
  v12 = __atxlog_handle_ui();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
LABEL_23:
    v19 = *(*(*(a1 + 48) + 8) + 24);
    v21 = 134218240;
    v22 = a3;
    v23 = 2048;
    v24 = v19;
    v13 = "ZKW Server Limit: Added %lu. Count is now %lu";
LABEL_24:
    v14 = v12;
    v15 = 22;
    goto LABEL_25;
  }

LABEL_26:

  return v5;
}

- (id)_createSectionsFromServerResults:(id)results
{
  v67 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = self->_sections;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v43)
  {
    v6 = 0;
    v42 = *v56;
    *&v5 = 134217984;
    v39 = v5;
    selfCopy = self;
    v46 = resultsCopy;
    do
    {
      v7 = 0;
      do
      {
        if (*v56 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v7;
        v8 = *(*(&v55 + 1) + 8 * v7);
        v9 = __atxlog_handle_ui();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          subtitle = [v8 subtitle];
          v11 = [subtitle hash];
          *buf = v39;
          v60 = v11;
          _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Section considered with title.hash %lu", buf, 0xCu);
        }

        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        results = [v8 results];
        if ([results count])
        {
          v14 = 0;
          v47 = v8;
          while (1)
          {
            v15 = [resultsCopy count];

            if (v6 >= v15)
            {
              break;
            }

            v49 = v14;
            v16 = [(NSArray *)self->_topics objectAtIndexedSubscript:v6];
            v17 = [resultsCopy objectAtIndexedSubscript:v6];
            v50 = v6 + 1;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v48 = v17;
            results2 = [v17 results];
            v19 = [results2 countByEnumeratingWithState:&v51 objects:v65 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v52;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v52 != v21)
                  {
                    objc_enumerationMutation(results2);
                  }

                  v23 = *(*(&v51 + 1) + 8 * i);
                  v24 = __atxlog_handle_ui();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = objc_opt_class();
                    v26 = NSStringFromClass(v25);
                    [v16 identifier];
                    v28 = v27 = v12;
                    *buf = 134218499;
                    v60 = v50;
                    v61 = 2112;
                    v62 = v26;
                    v63 = 2117;
                    v64 = v28;
                    _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Result %lu added: %@ %{sensitive}@", buf, 0x20u);

                    v12 = v27;
                  }

                  [v12 addObject:v23];
                }

                v20 = [results2 countByEnumeratingWithState:&v51 objects:v65 count:16];
              }

              while (v20);
            }

            results3 = [v48 results];
            firstObject = [results3 firstObject];

            v6 = v50;
            v8 = v47;
            if (!firstObject)
            {
              v31 = __atxlog_handle_ui();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = objc_opt_class();
                v33 = NSStringFromClass(v32);
                identifier = [v16 identifier];
                *buf = 134218499;
                v60 = v50;
                v61 = 2112;
                v62 = v33;
                v63 = 2117;
                v64 = identifier;
                _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Result %lu empty: %@ %{sensitive}@", buf, 0x20u);
              }
            }

            v14 = v49 + 1;
            results = [v47 results];
            self = selfCopy;
            resultsCopy = v46;
            if (v49 + 1 >= [results count])
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
        }

        if ([v12 count])
        {
          v35 = [v8 copy];
          v36 = [v12 copy];
          [v35 setResults:v36];

          [v41 addObject:v35];
        }

        else
        {
          v35 = __atxlog_handle_ui();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Section not added", buf, 2u);
          }
        }

        v7 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v43);
  }

  if (self->_isZKWHideContextsEnabled)
  {
    [(ATXSpotlightHidingUIController *)self->_controller addHidingPreviewButtonItemsToServerResultSections:v41];
  }

  else
  {
    v37 = __atxlog_handle_ui();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }
  }

  return v41;
}

+ (void)_logWeatherResponsesWithTopics:(id)topics serverResults:(id)results
{
  resultsCopy = results;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke;
  v7[3] = &unk_1E80C4B60;
  v8 = resultsCopy;
  v6 = resultsCopy;
  [topics enumerateObjectsUsingBlock:v7];
}

void __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v8 = [v7 results];
    v9 = [v8 firstObject];

    if (!v9)
    {
      v41 = __atxlog_handle_ui();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v83) = 0;
        _os_log_impl(&dword_1BF549000, v41, OS_LOG_TYPE_DEFAULT, "ZKW Weather: Weather response empty", &v83, 2u);
      }

      v10 = __atxlog_handle_metrics();
      v42 = __atxlog_handle_metrics();
      v43 = os_signpost_id_generate(v42);

      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        v83 = 134349056;
        v84 = 1;
        _os_signpost_emit_with_name_impl(&dword_1BF549000, v10, OS_SIGNPOST_EVENT, v43, "ATXSpotlightWeatherResponse", "result=%{public, signpost.telemetry:number1}lu enableTelemetry=YES ", &v83, 0xCu);
      }

      goto LABEL_43;
    }

    v10 = [v9 normalizedTopic];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v44 = __atxlog_handle_ui();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke_cold_1(v10, v44);
      }

      v17 = __atxlog_handle_metrics();
      v45 = __atxlog_handle_metrics();
      v46 = os_signpost_id_generate(v45);

      if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v83 = 134349056;
        v84 = 2;
        _os_signpost_emit_with_name_impl(&dword_1BF549000, v17, OS_SIGNPOST_EVENT, v46, "ATXSpotlightWeatherResponse", "result=%{public, signpost.telemetry:number1}lu enableTelemetry=YES ", &v83, 0xCu);
      }

      goto LABEL_42;
    }

    v11 = objc_alloc(MEMORY[0x1E6985C40]);
    v12 = [v6 location];
    [v12 lat];
    v14 = v13;
    v15 = [v6 location];
    [v15 lng];
    v17 = [v11 initWithLatitude:v14 longitude:v16];

    v18 = v10;
    v19 = objc_alloc(MEMORY[0x1E6985C40]);
    v20 = [v18 location];
    [v20 lat];
    v22 = v21;
    v23 = [v18 location];
    [v23 lng];
    v25 = [v19 initWithLatitude:v22 longitude:v24];

    [v25 distanceFromLocation:v17];
    v27 = v26;
    if (v26 >= 1000.0)
    {
      if (v26 >= 8000.0)
      {
        v58 = __atxlog_handle_ui();
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);
        if (v27 >= 24000.0)
        {
          if (v59)
          {
            v74 = [v6 query];
            v75 = [v18 query];
            [v17 coordinate];
            v77 = v76;
            [v17 coordinate];
            v79 = v78;
            [v25 coordinate];
            v81 = v80;
            [v25 coordinate];
            v83 = 134219523;
            *&v84 = v27 / 1000.0;
            v85 = 2112;
            v86 = v74;
            v87 = 2112;
            v88 = v75;
            v89 = 2049;
            v90 = v77;
            v91 = 2049;
            v92 = v79;
            v93 = 2049;
            v94 = v81;
            v95 = 2049;
            v96 = v82;
            _os_log_fault_impl(&dword_1BF549000, v58, OS_LOG_TYPE_FAULT, "ZKW Weather: Weather response fail.far: %.2f km (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v83, 0x48u);
          }

          v38 = __atxlog_handle_metrics();
          v61 = __atxlog_handle_metrics();
          v40 = os_signpost_id_generate(v61);

          if (v40 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
          {
            goto LABEL_38;
          }

          v83 = 134349056;
          v84 = 6;
        }

        else
        {
          if (v59)
          {
            v65 = [v6 query];
            v66 = [v18 query];
            [v17 coordinate];
            v68 = v67;
            [v17 coordinate];
            v70 = v69;
            [v25 coordinate];
            v72 = v71;
            [v25 coordinate];
            v83 = 134219523;
            *&v84 = v27 / 1000.0;
            v85 = 2112;
            v86 = v65;
            v87 = 2112;
            v88 = v66;
            v89 = 2049;
            v90 = v68;
            v91 = 2049;
            v92 = v70;
            v93 = 2049;
            v94 = v72;
            v95 = 2049;
            v96 = v73;
            _os_log_fault_impl(&dword_1BF549000, v58, OS_LOG_TYPE_FAULT, "ZKW Weather: Weather response fail.near: %.2f km (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v83, 0x48u);
          }

          v38 = __atxlog_handle_metrics();
          v60 = __atxlog_handle_metrics();
          v40 = os_signpost_id_generate(v60);

          if (v40 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
          {
            goto LABEL_38;
          }

          v83 = 134349056;
          v84 = 5;
        }
      }

      else
      {
        v47 = __atxlog_handle_ui();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v6 query];
          v49 = [v18 query];
          [v17 coordinate];
          v51 = v50;
          [v17 coordinate];
          v53 = v52;
          [v25 coordinate];
          v55 = v54;
          [v25 coordinate];
          v83 = 134219523;
          *&v84 = v27 / 1000.0;
          v85 = 2112;
          v86 = v48;
          v87 = 2112;
          v88 = v49;
          v89 = 2049;
          v90 = v51;
          v91 = 2049;
          v92 = v53;
          v93 = 2049;
          v94 = v55;
          v95 = 2049;
          v96 = v56;
          _os_log_impl(&dword_1BF549000, v47, OS_LOG_TYPE_DEFAULT, "ZKW Weather: Weather response pass.far: %.2f km (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v83, 0x48u);
        }

        v38 = __atxlog_handle_metrics();
        v57 = __atxlog_handle_metrics();
        v40 = os_signpost_id_generate(v57);

        if (v40 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
        {
          goto LABEL_38;
        }

        v83 = 134349056;
        v84 = 4;
      }
    }

    else
    {
      v28 = __atxlog_handle_ui();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v6 query];
        v30 = [v18 query];
        [v17 coordinate];
        v32 = v31;
        [v17 coordinate];
        v34 = v33;
        [v25 coordinate];
        v36 = v35;
        [v25 coordinate];
        v83 = 134219523;
        *&v84 = v27;
        v85 = 2112;
        v86 = v29;
        v87 = 2112;
        v88 = v30;
        v89 = 2049;
        v90 = v32;
        v91 = 2049;
        v92 = v34;
        v93 = 2049;
        v94 = v36;
        v95 = 2049;
        v96 = v37;
        _os_log_impl(&dword_1BF549000, v28, OS_LOG_TYPE_DEFAULT, "ZKW Weather: Weather response pass.near: %.2f m (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v83, 0x48u);
      }

      v38 = __atxlog_handle_metrics();
      v39 = __atxlog_handle_metrics();
      v40 = os_signpost_id_generate(v39);

      if (v40 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
      {
        goto LABEL_38;
      }

      v83 = 134349056;
      v84 = 3;
    }

    _os_signpost_emit_with_name_impl(&dword_1BF549000, v38, OS_SIGNPOST_EVENT, v40, "ATXSpotlightWeatherResponse", "result=%{public, signpost.telemetry:number1}lu enableTelemetry=YES ", &v83, 0xCu);
LABEL_38:

    v62 = __atxlog_handle_metrics();
    v63 = __atxlog_handle_metrics();
    v64 = os_signpost_id_generate(v63);

    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      v83 = 134349056;
      *&v84 = v27;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v62, OS_SIGNPOST_EVENT, v64, "ATXSpotlightWeatherResponse", "distance=%{public, signpost.telemetry:number2}.0f enableTelemetry=YES ", &v83, 0xCu);
    }

LABEL_42:
LABEL_43:
  }
}

- (id)_replaceMissingWithError:(id)error
{
  errorCopy = error;
  keyExistsAndHasValidFormat[0] = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwShowErrorTopicResponse", *MEMORY[0x1E698B030], keyExistsAndHasValidFormat))
  {
    v5 = __atxlog_handle_ui();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Debug: Replacing empty response with debug ui", keyExistsAndHasValidFormat, 2u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__ATXSpotlightClientResponse__replaceMissingWithError___block_invoke;
    v9[3] = &unk_1E80C4A48;
    v9[4] = self;
    v6 = [errorCopy _pas_mappedArrayWithIndexedTransform:v9];
  }

  else
  {
    v6 = errorCopy;
  }

  v7 = v6;

  return v7;
}

id __55__ATXSpotlightClientResponse__replaceMissingWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 results];
  v7 = [v6 firstObject];

  if (!v7)
  {
    v8 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:a3];
    v9 = [v5 results];
    v10 = [v9 firstObject];
    v11 = [v10 normalizedTopic];

    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v44 = [v12 stringWithFormat:@"Missing: %@", v14];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [v8 identifier];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = @"nil";
    }

    [v15 addObject:v18];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v20 = [v19 query];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = @"nil";
      }

      [v15 addObject:v22];

      v23 = MEMORY[0x1E696AEC0];
      v24 = [v19 queryType];

      v25 = [v23 stringWithFormat:@"%d", v24];
      [v15 addObject:v25];
    }

    v26 = [v11 identifier];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = @"nil";
    }

    [v15 addObject:v28];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v11;
      v30 = [v29 query];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = @"nil";
      }

      [v15 addObject:v32];

      v33 = MEMORY[0x1E696AEC0];
      v34 = [v29 queryType];

      v35 = [v33 stringWithFormat:@"%d", v34];
      [v15 addObject:v35];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v8;
      if ([v36 queryType] == 2 || objc_msgSend(v36, "queryType") == 3)
      {
        v37 = [v36 identifier];
      }

      else if ([v36 queryType] == 1)
      {
        v42 = objc_alloc(MEMORY[0x1E696AEC0]);
        v43 = [v36 identifier];
        v37 = [v42 initWithFormat:@"%@ site:music.apple.com", v43];
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = __atxlog_handle_ui();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v47 = a3;
      v48 = 2112;
      v49 = v15;
      _os_log_impl(&dword_1BF549000, v38, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Debug: [%lu] %@", buf, 0x16u);
    }

    v39 = [objc_opt_class() _resultForError:v44 subtitles:v15 searchString:v37];
    v45 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    [v5 setResults:v40];
  }

  return v5;
}

+ (id)_resultForError:(id)error subtitles:(id)subtitles searchString:(id)string
{
  v33 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  subtitlesCopy = subtitles;
  stringCopy = string;
  v9 = objc_alloc_init(MEMORY[0x1E69CA3E8]);
  [v9 setResultBundleId:&stru_1F3E050C8];
  v10 = objc_opt_new();
  [v10 setText:errorCopy];
  [v9 setTitle:v10];
  [v9 setCompletion:errorCopy];
  v11 = objc_opt_new();
  [v11 setSymbolName:@"exclamationmark.triangle.fill"];
  [v11 setPunchThroughBackground:0];
  [v11 setPrimaryColor:5];
  v12 = objc_opt_new();
  [v12 setShouldUseCompactDisplay:1];
  [v12 setThumbnail:v11];
  v26 = errorCopy;
  v13 = [MEMORY[0x1E69CA3A0] textWithString:errorCopy];
  [v12 setTitle:v13];

  v14 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = subtitlesCopy;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [MEMORY[0x1E69CA3A0] textWithString:*(*(&v27 + 1) + 8 * i)];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v17);
  }

  [v12 setDescriptions:v14];
  if (stringCopy)
  {
    v21 = objc_alloc_init(MEMORY[0x1E69CA408]);
    [v21 setSearchString:stringCopy];
    [v12 setCommand:v21];
  }

  v22 = objc_opt_new();
  v31 = v12;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [v22 setCardSections:v23];

  [v9 setInlineCard:v22];

  return v9;
}

+ (unint64_t)_trialSuggestionsMaxCountWithDefault:(unint64_t)default
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DB518] clientWithIdentifier:232];
  v5 = [v4 levelForFactor:@"ZKWSuggestionsMaxCount" withNamespaceName:@"SPOTLIGHT_UI"];
  v6 = __atxlog_handle_ui();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    defaultCopy = v5;
    v11 = 2112;
    v12 = @"ZKWSuggestionsMaxCount";
    v13 = 2048;
    longValue = [v5 longValue];
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "+[ATXSpotlightClientResponse _trialSuggestionsMaxCount]: level(%@)=%@ level.longValue=%lld", &v9, 0x20u);
  }

  if (v5)
  {
    default = [v5 longValue];
  }

  else
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      defaultCopy = default;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "+[ATXSpotlightClientResponse _trialSuggestionsMaxCount]: level is null. returning default value of %lu", &v9, 0xCu);
    }
  }

  return default;
}

void __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ZKW Weather: Weather response mismatch: %@", &v5, 0xCu);
}

@end