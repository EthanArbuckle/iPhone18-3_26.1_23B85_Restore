@interface FTProactiveWidgetEventTracker
- (FTProactiveWidgetEventTracker)init;
- (FTProactiveWidgetEventTracker)initWithMaxRowCount:(unint64_t)count trackedEvents:(unint64_t)events;
- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration;
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

- (FTProactiveWidgetEventTracker)initWithMaxRowCount:(unint64_t)count trackedEvents:(unint64_t)events
{
  v17.receiver = self;
  v17.super_class = FTProactiveWidgetEventTracker;
  v6 = [(FTProactiveWidgetEventTracker *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_trackedEvents = events;
    v8 = [[NTHeadlineEngagementEventTracker alloc] initWithMaxRowCount:count];
    headlineEngagementEventTracker = v7->_headlineEngagementEventTracker;
    v7->_headlineEngagementEventTracker = v8;

    v10 = [[FTWidgetAppearanceEventTracker alloc] initWithMaxRowCount:count];
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

- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if (!stateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C86B4();
  }

  if (([(FTProactiveWidgetEventTracker *)self trackedEvents]& 1) != 0)
  {
    fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
    todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
    appConfigTreatmentID = [fetchInfoForVisibleResults appConfigTreatmentID];
    appearanceType = [stateCopy appearanceType];
    widgetAppearanceEventTracker = [(FTProactiveWidgetEventTracker *)self widgetAppearanceEventTracker];
    [widgetAppearanceEventTracker trackAppearanceAtDate:dateCopy withHeadlineSource:todaySourceIdentifier appConfigTreatmentID:appConfigTreatmentID appearanceType:appearanceType allItemsCount:{objc_msgSend(stateCopy, "allItemsCount")}];

    widgetLingerEventTracker = [(FTProactiveWidgetEventTracker *)self widgetLingerEventTracker];
    [widgetLingerEventTracker trackWidgetLingerEventExtremity:0 atDate:dateCopy withTodaySource:todaySourceIdentifier appConfigTreatmentID:appConfigTreatmentID widgetDisplayMode:objc_msgSend(stateCopy appearanceType:{"activeDisplayMode"), appearanceType}];
  }
}

- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if (([(FTProactiveWidgetEventTracker *)self trackedEvents]& 1) != 0)
  {
    widgetAppearanceEventTracker = [(FTProactiveWidgetEventTracker *)self widgetAppearanceEventTracker];
    [widgetAppearanceEventTracker trackDisappearance];

    fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
    widgetLingerEventTracker = [(FTProactiveWidgetEventTracker *)self widgetLingerEventTracker];
    todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
    appConfigTreatmentID = [fetchInfoForVisibleResults appConfigTreatmentID];
    [widgetLingerEventTracker trackWidgetLingerEventExtremity:1 atDate:dateCopy withTodaySource:todaySourceIdentifier appConfigTreatmentID:appConfigTreatmentID widgetDisplayMode:objc_msgSend(stateCopy appearanceType:{"activeDisplayMode"), objc_msgSend(stateCopy, "appearanceType")}];
  }
}

- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration
{
  infoCopy = info;
  errorCopy = error;
  if (([(FTProactiveWidgetEventTracker *)self trackedEvents]& 2) != 0)
  {
    widgetUpdateEventTracker = [(FTProactiveWidgetEventTracker *)self widgetUpdateEventTracker];
    todaySourceIdentifier = [infoCopy todaySourceIdentifier];
    appConfigTreatmentID = [infoCopy appConfigTreatmentID];
    [widgetUpdateEventTracker trackUpdateWithTodaySource:todaySourceIdentifier appConfigTreatmentID:appConfigTreatmentID error:errorCopy updateFetchDuration:objc_msgSend(infoCopy wifiReachable:"wifiReachable") cellularRadioAccessTechnology:{objc_msgSend(infoCopy, "cellularRadioAccessTechnology"), duration}];
  }
}

@end