@interface FTSeenHeadlineWidgetEventTracker
- (FTSeenHeadlineWidgetEventTracker)init;
- (FTSeenHeadlineWidgetEventTracker)initWithTodayEventTracker:(id)a3 documentsDirectory:(id)a4;
- (void)_registerOnceVisibleHeadlines:(id)a3 withLastSeenDate:(id)a4 minimumNumberOfTimesPreseenToBeSeen:(unint64_t)a5;
- (void)submitEventsIfNeededWithCompletion:(id)a3;
- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5;
- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5;
@end

@implementation FTSeenHeadlineWidgetEventTracker

- (FTSeenHeadlineWidgetEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTSeenHeadlineWidgetEventTracker init]";
    v8 = 2080;
    v9 = "FTSeenHeadlineWidgetEventTracker.m";
    v10 = 1024;
    v11 = 30;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTSeenHeadlineWidgetEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTSeenHeadlineWidgetEventTracker)initWithTodayEventTracker:(id)a3 documentsDirectory:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0F04();
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
    sub_1000A0FC8();
  }

LABEL_6:
  v21.receiver = self;
  v21.super_class = FTSeenHeadlineWidgetEventTracker;
  v9 = [(FTSeenHeadlineWidgetEventTracker *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_todayEventTracker, a3);
    v11 = [v8 URLByAppendingPathComponent:@"seen-headline-storage" isDirectory:0];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0];
    v16 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:v11 allowedClasses:v15];
    fileCoordinatedFIFOHost = v10->_fileCoordinatedFIFOHost;
    v10->_fileCoordinatedFIFOHost = v16;

    v18 = dispatch_group_create();
    submissionGroup = v10->_submissionGroup;
    v10->_submissionGroup = v18;
  }

  return v10;
}

- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 4)
  {
    v10 = [(FTSeenHeadlineWidgetEventTracker *)self visibleHeadlines];
    v11 = [(FTSeenHeadlineWidgetEventTracker *)self visibleHeadlinesAppearanceDate];
    v12 = [v11 copy];

    if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000A108C();
    }

    v29 = v12;
    if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1150();
    }

    v13 = [v10 fc_arrayOfObjectsPassingTest:&stru_1000D73F8];
    v14 = +[UIDevice currentDevice];
    v15 = [v14 userInterfaceIdiom];

    v16 = +[UIApplication sharedApplication];
    v17 = [v16 keyWindow];
    v18 = [v17 windowScene];
    v19 = [v18 interfaceOrientation];

    if (v15 == 1 && (v19 - 3) < 2 || [v9 stackLocation] != 1)
    {
      v21 = NTSharedLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "will not register seen headlines because widgets are not the only thing visible", buf, 2u);
      }

      v20 = v13;
      goto LABEL_18;
    }

    v20 = v13;
    if ([v13 count])
    {
      if (![(FTSeenHeadlineWidgetEventTracker *)self sessionHasEngagement])
      {
        v21 = +[NSDate date];
        [v21 timeIntervalSinceDate:v29];
        v25 = FCSecondsToMilliseconds();
        v26 = [v9 fetchInfoForVisibleResults];
        v27 = [v26 widgetConfig];

        if (v25 >= [v27 minimumArticleExposureDurationToBePreseen])
        {
          v28 = NTSharedLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v31 = v21;
            v32 = 2048;
            v33 = v25;
            v34 = 2048;
            v35 = [v27 minimumArticleExposureDurationToBePreseen];
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "will register seen headlines due to widget disappearance, disappearanceDate=%{public}@, exposureTime=%llums, exposureTimeThreshold=%llums", buf, 0x20u);
          }

          v20 = v13;
          -[FTSeenHeadlineWidgetEventTracker _registerOnceVisibleHeadlines:withLastSeenDate:minimumNumberOfTimesPreseenToBeSeen:](self, "_registerOnceVisibleHeadlines:withLastSeenDate:minimumNumberOfTimesPreseenToBeSeen:", v13, v21, [v27 minimumNumberOfTimesPreseenToBeSeen]);
        }

        goto LABEL_18;
      }

      v21 = NTSharedLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "will not register seen headlines because the user engaged with the widget";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      }
    }

    else
    {
      v21 = NTSharedLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "will not register seen headlines because none are eligible";
        goto LABEL_22;
      }
    }

LABEL_18:

    [(FTSeenHeadlineWidgetEventTracker *)self setSessionHasEngagement:0];
  }

  [(FTSeenHeadlineWidgetEventTracker *)self setVisibleHeadlinesAppearanceDate:v8];
  v23 = [v9 visibleItems];
  v24 = [v23 fc_arrayByTransformingWithBlock:&stru_1000D7438];
  [(FTSeenHeadlineWidgetEventTracker *)self setVisibleHeadlines:v24];
}

- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A1214();
  }

  [(FTSeenHeadlineWidgetEventTracker *)self setSessionHasEngagement:1];
}

- (void)submitEventsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FTSeenHeadlineWidgetEventTracker *)self submissionGroup];
  dispatch_group_notify(v5, &_dispatch_main_q, v4);
}

- (void)_registerOnceVisibleHeadlines:(id)a3 withLastSeenDate:(id)a4 minimumNumberOfTimesPreseenToBeSeen:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  +[NSThread isMainThread];
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A12D8();
  }

  v10 = [(FTSeenHeadlineWidgetEventTracker *)self todayEventTracker];
  v11 = [(FTSeenHeadlineWidgetEventTracker *)self submissionGroup];
  dispatch_group_enter(v11);

  v12 = [(FTSeenHeadlineWidgetEventTracker *)self fileCoordinatedFIFOHost];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100015898;
  v17[3] = &unk_1000D7488;
  v21 = v9;
  v22 = a5;
  v18 = v8;
  v19 = self;
  v20 = v10;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  [v12 writeSyncWithAccessor:v17];

  v16 = [(FTSeenHeadlineWidgetEventTracker *)self submissionGroup];
  dispatch_group_leave(v16);
}

@end