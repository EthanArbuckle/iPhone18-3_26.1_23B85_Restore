@interface ATXProactiveSuggestioniOSUIFeedbackQuery
- (id)contextPublisherWithStartTime:(double)a3;
@end

@implementation ATXProactiveSuggestioniOSUIFeedbackQuery

- (id)contextPublisherWithStartTime:(double)a3
{
  v4 = objc_opt_new();
  v5 = [v4 publisherFromStartTime:a3];

  return v5;
}

- (void)initWithClientModelIds:(NSObject *)a3 consumerSubTypeToConsider:startDateForResults:bookmarkURLPath:.cold.1(uint64_t a1, unsigned __int8 a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a2];
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "%@ - could not find iOS ui publisher for consumerSubType: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end