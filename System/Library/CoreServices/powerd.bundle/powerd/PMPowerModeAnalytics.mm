@interface PMPowerModeAnalytics
+ (void)sendAnalyticsDaily:(id)daily forStream:(id)stream;
+ (void)sendAnalyticsEvent:(id)event withBatteryLevel:(id)level fromSource:(id)source withCharger:(id)charger withDurationInMinutes:(id)minutes forStream:(id)stream;
@end

@implementation PMPowerModeAnalytics

+ (void)sendAnalyticsEvent:(id)event withBatteryLevel:(id)level fromSource:(id)source withCharger:(id)charger withDurationInMinutes:(id)minutes forStream:(id)stream
{
  eventCopy = event;
  levelCopy = level;
  sourceCopy = source;
  chargerCopy = charger;
  minutesCopy = minutes;
  if (&_AnalyticsSendEventLazy)
  {
    v17 = eventCopy;
    v18 = levelCopy;
    v19 = sourceCopy;
    v20 = chargerCopy;
    v21 = minutesCopy;
    AnalyticsSendEventLazy();
  }
}

+ (void)sendAnalyticsDaily:(id)daily forStream:(id)stream
{
  dailyCopy = daily;
  v5 = dailyCopy;
  if (&_AnalyticsSendEventLazy)
  {
    v6 = dailyCopy;
    AnalyticsSendEventLazy();
  }
}

@end