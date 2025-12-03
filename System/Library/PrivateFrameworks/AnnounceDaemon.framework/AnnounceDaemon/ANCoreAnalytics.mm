@interface ANCoreAnalytics
- (void)send:(id)send withPayload:(id)payload;
@end

@implementation ANCoreAnalytics

- (void)send:(id)send withPayload:(id)payload
{
  v21 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  payloadCopy = payload;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA950]];

  if (v8)
  {
    v9 = [@"com.apple.announce." stringByAppendingString:sendCopy];
    v12 = payloadCopy;
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
      v18 = sendCopy;
      v19 = 2112;
      v20 = payloadCopy;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEBUG, "%@%s CA Ignored event name: %@, event payload: %@", buf, 0x2Au);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end