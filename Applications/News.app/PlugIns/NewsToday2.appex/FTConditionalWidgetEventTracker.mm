@interface FTConditionalWidgetEventTracker
- (BOOL)_shouldReportEventWithTodayResults:(id)results fetchInfo:(id)info;
- (BOOL)_shouldReportEventWithTrackableWidgetState:(id)state;
- (FTConditionalWidgetEventTracker)init;
- (FTConditionalWidgetEventTracker)initWithWidgetEventTracker:(id)tracker predicate:(id)predicate;
- (void)submitEventsIfNeededWithCompletion:(id)completion;
- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state;
- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state;
- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration;
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

- (FTConditionalWidgetEventTracker)initWithWidgetEventTracker:(id)tracker predicate:(id)predicate
{
  trackerCopy = tracker;
  predicateCopy = predicate;
  if (!trackerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7D4C();
    if (predicateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (predicateCopy)
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
    v10 = [predicateCopy copy];
    predicate = v9->_predicate;
    v9->_predicate = v10;

    objc_storeStrong(&v9->_widgetEventTracker, tracker);
  }

  return v9;
}

- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if (!dateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7ED4();
    if (stateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7F98();
  }

LABEL_6:
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:stateCopy])
  {
    widgetEventTracker = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      widgetEventTracker2 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [widgetEventTracker2 widgetDidAppearAtDate:dateCopy withTrackableWidgetState:stateCopy];
    }
  }
}

- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:stateCopy])
  {
    widgetEventTracker = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      widgetEventTracker2 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [widgetEventTracker2 widgetDidDisappearAtDate:dateCopy withTrackableWidgetState:stateCopy];
    }
  }
}

- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration
{
  resultsCopy = results;
  infoCopy = info;
  errorCopy = error;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTodayResults:resultsCopy fetchInfo:infoCopy])
  {
    widgetEventTracker = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      widgetEventTracker2 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [widgetEventTracker2 widgetPerformedUpdateWithTodayResults:resultsCopy fetchInfo:infoCopy error:errorCopy updateFetchDuration:duration];
    }
  }
}

- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:stateCopy])
  {
    widgetEventTracker = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      widgetEventTracker2 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [widgetEventTracker2 visibleItemsDidChangeAtDate:dateCopy withTriggerEvent:event trackableWidgetState:stateCopy];
    }
  }
}

- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state
{
  dateCopy = date;
  lCopy = l;
  stateCopy = state;
  if ([(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTrackableWidgetState:stateCopy])
  {
    widgetEventTracker = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      widgetEventTracker2 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
      [widgetEventTracker2 userEngagedWithWidgetAtDate:dateCopy actionURL:lCopy trackableWidgetState:stateCopy];
    }
  }
}

- (void)submitEventsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  widgetEventTracker = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    widgetEventTracker2 = [(FTConditionalWidgetEventTracker *)self widgetEventTracker];
    [widgetEventTracker2 submitEventsIfNeededWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (BOOL)_shouldReportEventWithTrackableWidgetState:(id)state
{
  stateCopy = state;
  if (!stateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C805C();
  }

  todayResults = [stateCopy todayResults];
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  v7 = [(FTConditionalWidgetEventTracker *)self _shouldReportEventWithTodayResults:todayResults fetchInfo:fetchInfoForVisibleResults];

  return v7;
}

- (BOOL)_shouldReportEventWithTodayResults:(id)results fetchInfo:(id)info
{
  resultsCopy = results;
  infoCopy = info;
  if (!infoCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C8120();
  }

  predicate = [(FTConditionalWidgetEventTracker *)self predicate];
  v9 = (predicate)[2](predicate, resultsCopy, infoCopy);

  return v9;
}

@end