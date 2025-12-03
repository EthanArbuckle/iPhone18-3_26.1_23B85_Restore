@interface FTAggregateWidgetEventTracker
- (FTAggregateWidgetEventTracker)init;
- (FTAggregateWidgetEventTracker)initWithEventTrackers:(id)trackers;
- (id)_eventTrackersRespondingToSelector:(SEL)selector;
- (void)submitEventsIfNeededWithCompletion:(id)completion;
- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state;
- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state;
- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration;
@end

@implementation FTAggregateWidgetEventTracker

- (FTAggregateWidgetEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTAggregateWidgetEventTracker init]";
    v8 = 2080;
    v9 = "FTAggregateWidgetEventTracker.m";
    v10 = 1024;
    v11 = 23;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTAggregateWidgetEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTAggregateWidgetEventTracker)initWithEventTrackers:(id)trackers
{
  trackersCopy = trackers;
  if (!trackersCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7694();
  }

  v11.receiver = self;
  v11.super_class = FTAggregateWidgetEventTracker;
  v5 = [(FTAggregateWidgetEventTracker *)&v11 init];
  if (v5)
  {
    v6 = [trackersCopy copy];
    eventTrackers = v5->_eventTrackers;
    v5->_eventTrackers = v6;

    v8 = dispatch_group_create();
    submissionGroup = v5->_submissionGroup;
    v5->_submissionGroup = v8;
  }

  return v5;
}

- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if (!stateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7774();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(FTAggregateWidgetEventTracker *)self _eventTrackersRespondingToSelector:a2, 0];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) widgetDidAppearAtDate:dateCopy withTrackableWidgetState:stateCopy];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(FTAggregateWidgetEventTracker *)self _eventTrackersRespondingToSelector:a2, 0];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) widgetDidDisappearAtDate:dateCopy withTrackableWidgetState:stateCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration
{
  resultsCopy = results;
  infoCopy = info;
  errorCopy = error;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(FTAggregateWidgetEventTracker *)self _eventTrackersRespondingToSelector:a2, 0];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18) widgetPerformedUpdateWithTodayResults:resultsCopy fetchInfo:infoCopy error:errorCopy updateFetchDuration:duration];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(FTAggregateWidgetEventTracker *)self _eventTrackersRespondingToSelector:a2, 0];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15) visibleItemsDidChangeAtDate:dateCopy withTriggerEvent:event trackableWidgetState:stateCopy];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state
{
  dateCopy = date;
  lCopy = l;
  stateCopy = state;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(FTAggregateWidgetEventTracker *)self _eventTrackersRespondingToSelector:a2, 0];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) userEngagedWithWidgetAtDate:dateCopy actionURL:lCopy trackableWidgetState:stateCopy];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)submitEventsIfNeededWithCompletion:(id)completion
{
  block = completion;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(FTAggregateWidgetEventTracker *)self _eventTrackersRespondingToSelector:a2];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        submissionGroup = [(FTAggregateWidgetEventTracker *)self submissionGroup];
        dispatch_group_enter(submissionGroup);

        v12 = NTSharedLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "will submit events with tracker=%{public}@", buf, 0xCu);
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100010D44;
        v15[3] = &unk_10010BE78;
        v15[4] = v10;
        v15[5] = self;
        [v10 submitEventsIfNeededWithCompletion:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  submissionGroup2 = [(FTAggregateWidgetEventTracker *)self submissionGroup];
  dispatch_group_notify(submissionGroup2, &_dispatch_main_q, block);
}

- (id)_eventTrackersRespondingToSelector:(SEL)selector
{
  eventTrackers = [(FTAggregateWidgetEventTracker *)self eventTrackers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010EAC;
  v7[3] = &unk_10010BE98;
  v7[4] = selector;
  v5 = [eventTrackers fc_arrayOfObjectsPassingTest:v7];

  return v5;
}

@end