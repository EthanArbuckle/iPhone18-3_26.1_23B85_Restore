@interface FTNewsAnalyticsUserIDWidgetEventTracker
- (FTNewsAnalyticsUserIDWidgetEventTracker)init;
- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration;
@end

@implementation FTNewsAnalyticsUserIDWidgetEventTracker

- (FTNewsAnalyticsUserIDWidgetEventTracker)init
{
  v3.receiver = self;
  v3.super_class = FTNewsAnalyticsUserIDWidgetEventTracker;
  return [(FTNewsAnalyticsUserIDWidgetEventTracker *)&v3 init];
}

- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration
{
  userID = [info userID];
  [(FTNewsAnalyticsUserIDWidgetEventTracker *)self setUserID:userID];
}

@end