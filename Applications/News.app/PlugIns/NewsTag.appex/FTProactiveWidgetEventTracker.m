@interface FTProactiveWidgetEventTracker
- (FTProactiveWidgetEventTracker)init;
- (FTProactiveWidgetEventTracker)initWithMaxRowCount:(unint64_t)a3 trackedEvents:(unint64_t)a4;
- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6;
@end

@implementation FTProactiveWidgetEventTracker

- (FTProactiveWidgetEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTProactiveWidgetEventTracker init]";
    v8 = 2080;
    v9 = "FTProactiveWidgetEventTracker.m";
    v10 = 1024;
    v11 = 31;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTProactiveWidgetEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTProactiveWidgetEventTracker)initWithMaxRowCount:(unint64_t)a3 trackedEvents:(unint64_t)a4
{
  v17.receiver = self;
  v17.super_class = FTProactiveWidgetEventTracker;
  v6 = [(FTProactiveWidgetEventTracker *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_trackedEvents = a4;
    v8 = [[NTHeadlineEngagementEventTracker alloc] initWithMaxRowCount:a3];
    headlineEngagementEventTracker = v7->_headlineEngagementEventTracker;
    v7->_headlineEngagementEventTracker = v8;

    v10 = [[FTWidgetAppearanceEventTracker alloc] initWithMaxRowCount:a3];
    widgetAppearanceEventTracker = v7->_widgetAppearanceEventTracker;
    v7->_widgetAppearanceEventTracker = v10;

    v12 = objc_opt_new();
    widgetUpdateEventTracker = v7->_widgetUpdateEventTracker;
    v7->_widgetUpdateEventTracker = v12;

    v14 = objc_opt_new();
    widgetLingerEventTracker = v7->_widgetLingerEventTracker;
    v7->_widgetLingerEventTracker = v14;
  }

  return v7;
}

- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0E18();
  }

  if (([(FTProactiveWidgetEventTracker *)self trackedEvents]& 1) != 0)
  {
    v8 = [v7 fetchInfoForVisibleResults];
    v9 = [v8 todaySourceIdentifier];
    v10 = [v8 appConfigTreatmentID];
    v11 = [v7 appearanceType];
    v12 = [(FTProactiveWidgetEventTracker *)self widgetAppearanceEventTracker];
    [v12 trackAppearanceAtDate:v6 withHeadlineSource:v9 appConfigTreatmentID:v10 appearanceType:v11 allItemsCount:{objc_msgSend(v7, "allItemsCount")}];

    v13 = [(FTProactiveWidgetEventTracker *)self widgetLingerEventTracker];
    [v13 trackWidgetLingerEventExtremity:0 atDate:v6 withTodaySource:v9 appConfigTreatmentID:v10 widgetDisplayMode:objc_msgSend(v7 appearanceType:{"activeDisplayMode"), v11}];
  }
}

- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (([(FTProactiveWidgetEventTracker *)self trackedEvents]& 1) != 0)
  {
    v7 = [(FTProactiveWidgetEventTracker *)self widgetAppearanceEventTracker];
    [v7 trackDisappearance];

    v8 = [v6 fetchInfoForVisibleResults];
    v9 = [(FTProactiveWidgetEventTracker *)self widgetLingerEventTracker];
    v10 = [v8 todaySourceIdentifier];
    v11 = [v8 appConfigTreatmentID];
    [v9 trackWidgetLingerEventExtremity:1 atDate:v12 withTodaySource:v10 appConfigTreatmentID:v11 widgetDisplayMode:objc_msgSend(v6 appearanceType:{"activeDisplayMode"), objc_msgSend(v6, "appearanceType")}];
  }
}

- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6
{
  v13 = a4;
  v9 = a5;
  if (([(FTProactiveWidgetEventTracker *)self trackedEvents]& 2) != 0)
  {
    v10 = [(FTProactiveWidgetEventTracker *)self widgetUpdateEventTracker];
    v11 = [v13 todaySourceIdentifier];
    v12 = [v13 appConfigTreatmentID];
    [v10 trackUpdateWithTodaySource:v11 appConfigTreatmentID:v12 error:v9 updateFetchDuration:objc_msgSend(v13 wifiReachable:"wifiReachable") cellularRadioAccessTechnology:{objc_msgSend(v13, "cellularRadioAccessTechnology"), a6}];
  }
}

@end