@interface _ARSessionMetricsDefaultReporter
- (void)postDarwinNotification:(id)notification;
- (void)sendEvent:(id)event dictionary:(id)dictionary;
@end

@implementation _ARSessionMetricsDefaultReporter

- (void)postDarwinNotification:(id)notification
{
  name = notification;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)sendEvent:(id)event dictionary:(id)dictionary
{
  eventCopy = event;
  dictionaryCopy = dictionary;
  if (![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.disableSessionMetricsReporting"])
  {
    AnalyticsSendEventLazy();
  }
}

@end