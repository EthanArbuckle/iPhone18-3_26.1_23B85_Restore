@interface NCSAnalyticsShared
+ (void)reportOverlayCalendarSet:(id)a3 mirroringCompanion:(BOOL)a4;
@end

@implementation NCSAnalyticsShared

+ (void)reportOverlayCalendarSet:(id)a3 mirroringCompanion:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
  AnalyticsSendEventLazy();
}

@end