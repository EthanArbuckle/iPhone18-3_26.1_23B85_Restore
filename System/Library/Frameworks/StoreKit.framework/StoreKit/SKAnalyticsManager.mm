@interface SKAnalyticsManager
+ (void)sendEvent:(id)event;
+ (void)sendEventLazyWithName:(id)name buildEvent:(id)event;
@end

@implementation SKAnalyticsManager

+ (void)sendEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy canCreatePayload])
  {
    eventName = [eventCopy eventName];
    v6 = eventCopy;
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

+ (void)sendEventLazyWithName:(id)name buildEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
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