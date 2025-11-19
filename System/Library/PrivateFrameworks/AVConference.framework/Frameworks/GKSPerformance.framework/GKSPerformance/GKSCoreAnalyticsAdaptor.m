@interface GKSCoreAnalyticsAdaptor
+ (BOOL)analyticsSendEventWrapper:(id)a3 withPayload:(id)a4 hasHistogram:(BOOL)a5;
@end

@implementation GKSCoreAnalyticsAdaptor

+ (BOOL)analyticsSendEventWrapper:(id)a3 withPayload:(id)a4 hasHistogram:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v7 = [a1 fullEventName:a3];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = v8;
      v14 = 2080;
      v15 = "+[GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:withPayload:hasHistogram:]";
      v16 = 1024;
      v17 = 21;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = a4;
      _os_log_impl(&dword_23D482000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending CoreAnalytics event with fullEventName=%@ payload=%@", buf, 0x30u);
    }
  }

  if (v5)
  {
    result = AnalyticsSendExplodingEventLazy();
  }

  else
  {
    result = AnalyticsSendEventLazy();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end