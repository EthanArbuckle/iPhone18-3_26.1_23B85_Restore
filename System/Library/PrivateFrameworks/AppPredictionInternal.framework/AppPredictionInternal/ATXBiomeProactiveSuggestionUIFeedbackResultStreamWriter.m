@interface ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter
- (void)writeEventsToStreamWithXPCActivity:(id)a3;
@end

@implementation ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter

- (void)writeEventsToStreamWithXPCActivity:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 didDefer])
  {
    v5 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Deferring due to xpcActivity.", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [&unk_283A58B38 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(&unk_283A58B38);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          -[ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter writeForConsumerSubType:](self, "writeForConsumerSubType:", [v12 unsignedIntValue]);
          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [&unk_283A58B38 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D42000]) initWithProactiveSuggestionUIFeedbackResult:v3];
  if (v4)
  {
    [*(a1 + 32) sendEvent:v4];
    v5 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Wrote UI Feedback Result to Biome:\n%@", &v10, 0x16u);
    }
  }

  else
  {
    v5 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke_cold_1(a1, v3, v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke_37(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - Finished enumerating results with error - %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412546;
  v10 = v7;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - Unable to initialize corresponding biome object for feedback result:\n%@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end