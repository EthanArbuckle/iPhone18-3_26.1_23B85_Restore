@interface ATXUserEducationSuggestionServerRequestHandler
- (void)logUserEducationSuggestionFeedback:(id)a3;
@end

@implementation ATXUserEducationSuggestionServerRequestHandler

- (void)logUserEducationSuggestionFeedback:(id)a3
{
  v3 = a3;
  v4 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXUserEducationSuggestionServerRequestHandler *)v3 logUserEducationSuggestionFeedback:v4];
  }

  v5 = [v3 suggestion];
  [v5 logFeedback:v3];
}

- (void)logUserEducationSuggestionFeedback:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[ATXUserEducationSuggestionServerRequestHandler logUserEducationSuggestionFeedback:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Received feedback: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end