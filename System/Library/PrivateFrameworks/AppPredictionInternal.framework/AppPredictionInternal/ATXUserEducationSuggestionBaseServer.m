@interface ATXUserEducationSuggestionBaseServer
- (ATXUserEducationSuggestionBaseServer)init;
@end

@implementation ATXUserEducationSuggestionBaseServer

- (ATXUserEducationSuggestionBaseServer)init
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = ATXUserEducationSuggestionBaseServer;
  v2 = [(ATXUserEducationSuggestionBaseServer *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", objc_opt_class(), @"serialQueue"];
    v4 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[ATXUserEducationSuggestionBaseServer init]";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: Starting up serial queue: %@", buf, 0x16u);
    }

    v5 = [v3 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

@end