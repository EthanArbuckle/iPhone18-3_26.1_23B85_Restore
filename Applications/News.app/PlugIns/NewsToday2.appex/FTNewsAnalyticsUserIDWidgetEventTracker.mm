@interface FTNewsAnalyticsUserIDWidgetEventTracker
- (FTNewsAnalyticsUserIDWidgetEventTracker)init;
- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6;
@end

@implementation FTNewsAnalyticsUserIDWidgetEventTracker

- (FTNewsAnalyticsUserIDWidgetEventTracker)init
{
  v3.receiver = self;
  v3.super_class = FTNewsAnalyticsUserIDWidgetEventTracker;
  return [(FTNewsAnalyticsUserIDWidgetEventTracker *)&v3 init];
}

- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6
{
  v7 = [a4 userID];
  [(FTNewsAnalyticsUserIDWidgetEventTracker *)self setUserID:v7];
}

@end