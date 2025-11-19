@interface PMPowerModeAnalytics
+ (void)sendAnalyticsDaily:(id)a3 forStream:(id)a4;
+ (void)sendAnalyticsEvent:(id)a3 withBatteryLevel:(id)a4 fromSource:(id)a5 withCharger:(id)a6 withDurationInMinutes:(id)a7 forStream:(id)a8;
@end

@implementation PMPowerModeAnalytics

+ (void)sendAnalyticsEvent:(id)a3 withBatteryLevel:(id)a4 fromSource:(id)a5 withCharger:(id)a6 withDurationInMinutes:(id)a7 forStream:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (&_AnalyticsSendEventLazy)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = v16;
    AnalyticsSendEventLazy();
  }
}

+ (void)sendAnalyticsDaily:(id)a3 forStream:(id)a4
{
  v4 = a3;
  v5 = v4;
  if (&_AnalyticsSendEventLazy)
  {
    v6 = v4;
    AnalyticsSendEventLazy();
  }
}

@end