@interface ATXContextWebsiteSuggestionProducer
- (ATXContextWebsiteSuggestionProducer)initWithValidDateInterval:(id)a3 reasonCode:(int64_t)a4 score:(double)a5;
- (id)_suggestionWithWebsite:(id)a3 titlesAndSubtitles:(id)a4;
- (id)titleAndSubtitleForUrl:(id)a3 titlesAndSubtitles:(id)a4;
- (id)websiteSuggestions;
@end

@implementation ATXContextWebsiteSuggestionProducer

- (ATXContextWebsiteSuggestionProducer)initWithValidDateInterval:(id)a3 reasonCode:(int64_t)a4 score:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ATXContextWebsiteSuggestionProducer;
  v10 = [(ATXContextWebsiteSuggestionProducer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_validDateInterval, a3);
    v11->_reasonCode = a4;
    v11->_score = a5;
  }

  return v11;
}

- (id)websiteSuggestions
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getATXWebSuggestionsGeneratorClass_softClass;
  v20 = getATXWebSuggestionsGeneratorClass_softClass;
  if (!getATXWebSuggestionsGeneratorClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __getATXWebSuggestionsGeneratorClass_block_invoke;
    v23 = &unk_278C3CC98;
    v24 = &v17;
    __getATXWebSuggestionsGeneratorClass_block_invoke(&buf);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = objc_alloc_init(v3);
  reasonCode = self->_reasonCode;
  v7 = stringForATXSuggestionPredictionReasonCode();
  v8 = [v5 websitePredictionsForContextType:v7 limit:2];
  v9 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "ATXContextWebsiteSuggestionProducer: websites %@", &buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ATXContextWebsiteSuggestionProducer_websiteSuggestions__block_invoke;
  v15[3] = &unk_278C3D3D0;
  v15[4] = self;
  v16 = v5;
  v10 = v5;
  v11 = [v8 _pas_mappedArrayWithTransform:v15];
  v12 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXContextWebsiteSuggestionProducer: websiteSuggestions: %@", &buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

id __57__ATXContextWebsiteSuggestionProducer_websiteSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 webpageTitlesAndSubtitles];
  v6 = [v2 _suggestionWithWebsite:v4 titlesAndSubtitles:v5];

  return v6;
}

- (id)_suggestionWithWebsite:(id)a3 titlesAndSubtitles:(id)a4
{
  v6 = a3;
  v7 = [(ATXContextWebsiteSuggestionProducer *)self titleAndSubtitleForUrl:v6 titlesAndSubtitles:a4];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];
    v10 = objc_alloc(MEMORY[0x277CEB2D0]);
    v11 = [(NSDateInterval *)self->_validDateInterval startDate];
    v12 = [(NSDateInterval *)self->_validDateInterval endDate];
    v13 = [v10 initWithStartDate:v11 endDate:v12 lockScreenEligible:0 predicate:0];

    v14 = [ATXContextHeuristicSuggestionProducer suggestionWithURL:v6 actionTitle:v8 subtitle:v9 bundleID:@"com.apple.mobilesafari" score:1 << self->_reasonCode predictionReasons:v13 criteria:self->_score dateInterval:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)titleAndSubtitleForUrl:(id)a3 titlesAndSubtitles:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 URLByAppendingPathComponent:&stru_2850AD368];
        v13 = [v20 URLByAppendingPathComponent:&stru_2850AD368];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          v15 = [v5 objectForKeyedSubscript:v11];
          v16 = [v15 count];

          if (v16 != 2)
          {
            goto LABEL_13;
          }

          v17 = [v5 objectForKeyedSubscript:v11];

          v8 = v17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

@end