@interface FTAggregateWidgetEventTracker
- (FTAggregateWidgetEventTracker)init;
- (FTAggregateWidgetEventTracker)initWithEventTrackers:(id)a3;
- (id)_eventTrackersRespondingToSelector:(SEL)a3;
- (void)submitEventsIfNeededWithCompletion:(id)a3;
- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5;
- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5;
- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6;
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

- (FTAggregateWidgetEventTracker)initWithEventTrackers:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009F960();
  }

  v11.receiver = self;
  v11.super_class = FTAggregateWidgetEventTracker;
  v5 = [(FTAggregateWidgetEventTracker *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    eventTrackers = v5->_eventTrackers;
    v5->_eventTrackers = v6;

    v8 = dispatch_group_create();
    submissionGroup = v5->_submissionGroup;
    v5->_submissionGroup = v8;
  }

  return v5;
}

- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009FA40();
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

        [*(*(&v14 + 1) + 8 * i) widgetDidAppearAtDate:v7 withTrackableWidgetState:v8];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v7 = a3;
  v8 = a4;
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

        [*(*(&v14 + 1) + 8 * v13) widgetDidDisappearAtDate:v7 withTrackableWidgetState:v8];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
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

        [*(*(&v19 + 1) + 8 * v18) widgetPerformedUpdateWithTodayResults:v11 fetchInfo:v12 error:v13 updateFetchDuration:a6];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5
{
  v9 = a3;
  v10 = a5;
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

        [*(*(&v16 + 1) + 8 * v15) visibleItemsDidChangeAtDate:v9 withTriggerEvent:a4 trackableWidgetState:v10];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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

        [*(*(&v17 + 1) + 8 * v16) userEngagedWithWidgetAtDate:v9 actionURL:v10 trackableWidgetState:v11];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)submitEventsIfNeededWithCompletion:(id)a3
{
  block = a3;
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
        v11 = [(FTAggregateWidgetEventTracker *)self submissionGroup];
        dispatch_group_enter(v11);

        v12 = NTSharedLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "will submit events with tracker=%{public}@", buf, 0xCu);
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10001079C;
        v15[3] = &unk_1000D71C0;
        v15[4] = v10;
        v15[5] = self;
        [v10 submitEventsIfNeededWithCompletion:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = [(FTAggregateWidgetEventTracker *)self submissionGroup];
  dispatch_group_notify(v13, &_dispatch_main_q, block);
}

- (id)_eventTrackersRespondingToSelector:(SEL)a3
{
  v4 = [(FTAggregateWidgetEventTracker *)self eventTrackers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010904;
  v7[3] = &unk_1000D71E0;
  v7[4] = a3;
  v5 = [v4 fc_arrayOfObjectsPassingTest:v7];

  return v5;
}

@end