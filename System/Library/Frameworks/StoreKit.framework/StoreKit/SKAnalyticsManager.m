@interface SKAnalyticsManager
+ (void)sendEvent:(id)a3;
+ (void)sendEventLazyWithName:(id)a3 buildEvent:(id)a4;
@end

@implementation SKAnalyticsManager

+ (void)sendEvent:(id)a3
{
  v3 = a3;
  if ([v3 canCreatePayload])
  {
    v4 = [v3 eventName];
    v6 = v3;
    AnalyticsSendEventLazy();
  }

  else
  {
    if (SKLogHandleForCategory_onceToken_0 != -1)
    {
      +[SKAnalyticsManager sendEvent:];
    }

    v5 = SKLogHandleForCategory_logHandles_1_0;
    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_1_0, OS_LOG_TYPE_ERROR))
    {
      [SKAnalyticsManager sendEvent:v5];
    }
  }
}

+ (void)sendEventLazyWithName:(id)a3 buildEvent:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id __55__SKAnalyticsManager_sendEventLazyWithName_buildEvent___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if ([v1 canCreatePayload])
  {
    v2 = [v1 createPayload];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken_0 != -1)
    {
      +[SKAnalyticsManager sendEvent:];
    }

    v3 = SKLogHandleForCategory_logHandles_1_0;
    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_1_0, OS_LOG_TYPE_ERROR))
    {
      [SKAnalyticsManager sendEvent:v3];
    }

    v2 = 0;
  }

  return v2;
}

@end