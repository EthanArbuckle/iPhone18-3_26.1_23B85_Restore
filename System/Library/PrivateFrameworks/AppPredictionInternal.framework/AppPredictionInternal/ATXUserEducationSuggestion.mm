@interface ATXUserEducationSuggestion
@end

@implementation ATXUserEducationSuggestion

void __52__ATXUserEducationSuggestion_Internal__logFeedback___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 136315394;
    v12 = "[ATXUserEducationSuggestion(Internal) logFeedback:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Processing feedback: %@", &v11, 0x16u);
  }

  v4 = [*(a1 + 32) feedbackType] - 1;
  if (v4 <= 5 && ((0x2Du >> v4) & 1) != 0)
  {
    [*(a1 + 40) writeSuggestionState:qword_2268726E8[v4]];
  }

  v5 = [objc_alloc(objc_msgSend(*(a1 + 40) "metricClass"))];
  [v5 logToCoreAnalytics];
  v6 = [v5 coreAnalyticsDictionary];
  v7 = [v6 mutableCopy];

  v8 = *(a1 + 40);
  [objc_opt_class() suggestionType];
  v9 = ATXUserEducationSuggestionTypeToString();
  [v7 setObject:v9 forKey:@"suggestionType"];

  AnalyticsSendEvent();
  v10 = *MEMORY[0x277D85DE8];
}

@end