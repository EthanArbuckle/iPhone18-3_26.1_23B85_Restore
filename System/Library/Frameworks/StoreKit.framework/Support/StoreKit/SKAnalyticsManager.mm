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
    if (qword_1003D40D8 != -1)
    {
      sub_1002CB0F8();
    }

    v5 = qword_1003D4090;
    if (os_log_type_enabled(qword_1003D4090, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB10C(v5);
    }
  }
}

+ (void)sendEventLazyWithName:(id)name buildEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  AnalyticsSendEventLazy();
}

@end