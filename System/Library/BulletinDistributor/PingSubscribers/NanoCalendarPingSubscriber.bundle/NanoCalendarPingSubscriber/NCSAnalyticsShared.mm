@interface NCSAnalyticsShared
+ (void)reportOverlayCalendarSet:(id)set mirroringCompanion:(BOOL)companion;
@end

@implementation NCSAnalyticsShared

+ (void)reportOverlayCalendarSet:(id)set mirroringCompanion:(BOOL)companion
{
  setCopy = set;
  v4 = setCopy;
  AnalyticsSendEventLazy();
}

@end