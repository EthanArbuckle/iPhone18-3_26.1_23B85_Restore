@interface ANCoreAnalytics
- (void)send:(id)a3 withPayload:(id)a4;
@end

@implementation ANCoreAnalytics

- (void)send:(id)a3 withPayload:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [v7 BOOLForDefault:*MEMORY[0x277CEA950]];

  if (v8)
  {
    v9 = [@"com.apple.announce." stringByAppendingString:v5];
    v12 = v6;
    AnalyticsSendEventLazy();
  }

  else
  {
    v10 = ANLogHandleCoreAnalytics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v14 = &stru_2851BDB18;
      v15 = 2080;
      v16 = "[ANCoreAnalytics send:withPayload:]";
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEBUG, "%@%s CA Events Disabled.", buf, 0x16u);
    }

    v9 = ANLogHandleCoreAnalytics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v14 = &stru_2851BDB18;
      v15 = 2080;
      v16 = "[ANCoreAnalytics send:withPayload:]";
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEBUG, "%@%s CA Ignored event name: %@, event payload: %@", buf, 0x2Au);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end