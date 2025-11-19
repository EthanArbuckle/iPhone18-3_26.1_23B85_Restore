@interface FTConditionalWidgetEventTracker
- (BOOL)_shouldReportEventWithTodayResults:(id)a3 fetchInfo:(id)a4;
- (BOOL)_shouldReportEventWithTrackableWidgetState:(id)a3;
- (FTConditionalWidgetEventTracker)init;
- (FTConditionalWidgetEventTracker)initWithWidgetEventTracker:(id)a3 predicate:(id)a4;
- (void)submitEventsIfNeededWithCompletion:(id)a3;
- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5;
- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5;
- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6;
@end

@implementation FTConditionalWidgetEventTracker

- (FTConditionalWidgetEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTConditionalWidgetEventTracker init]";
    v8 = 2080;
    v9 = "FTConditionalWidgetEventTracker.m";
    v10 = 1024;
    v11 = 22;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTConditionalWidgetEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTConditionalWidgetEventTracker)initWithWidgetEventTracker:(id)a3 predicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7D4C();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7E10();
  }

LABEL_6:
  v13.receiver = self;
  v13.super_class = FTConditionalWidgetEventTracker;
  v9 = [(FTConditionalWidgetEventTracker *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    predicate = v9->_predicate;
    v9->_predicate = v10;

    objc_storeStrong(&v9->_widgetEventTracker, a3);
  }

  return v9;
}

- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7ED4();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7F98();
  }

LABEL_6:
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:v7])
  {
    v8 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [v10 widgetDidAppearAtDate:v6 withTrackableWidgetState:v7];
    }
  }
}

- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:v6])
  {
    v7 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [v9 widgetDidDisappearAtDate:v10 withTrackableWidgetState:v6];
    }
  }
}

- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTodayResults:v15 fetchInfo:v10])
  {
    v12 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [v14 widgetPerformedUpdateWithTodayResults:v15 fetchInfo:v10 error:v11 updateFetchDuration:a6];
    }
  }
}

- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5
{
  v12 = a3;
  v8 = a5;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:v8])
  {
    v9 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [v11 visibleItemsDidChangeAtDate:v12 withTriggerEvent:a4 trackableWidgetState:v8];
    }
  }
}

- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:v9])
  {
    v10 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [v12 userEngagedWithWidgetAtDate:v13 actionURL:v8 trackableWidgetState:v9];
    }
  }
}

- (void)submitEventsIfNeededWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    [v6 submitEventsIfNeededWithCompletion:v7];
  }

  else
  {
    v7[2]();
  }
}

- (BOOL)_shouldReportEventWithTrackableWidgetState:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C805C();
  }

  v5 = [v4 todayResults];
  v6 = [v4 fetchInfoForVisibleResults];
  v7 = [(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTodayResults:v5 fetchInfo:v6];

  return v7;
}

- (BOOL)_shouldReportEventWithTodayResults:(id)a3 fetchInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C8120();
  }

  v8 = [(FTConditionalWidgetEventTracker *)self predicate];
  v9 = (v8)[2](v8, v6, v7);

  return v9;
}

@end