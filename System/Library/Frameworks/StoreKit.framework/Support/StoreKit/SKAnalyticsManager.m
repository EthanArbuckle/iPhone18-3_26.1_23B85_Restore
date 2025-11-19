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

+ (void)sendEventLazyWithName:(id)a3 buildEvent:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

@end