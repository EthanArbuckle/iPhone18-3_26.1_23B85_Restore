@interface FTSeenHeadlineWidgetEventTracker
- (FTSeenHeadlineWidgetEventTracker)init;
- (FTSeenHeadlineWidgetEventTracker)initWithTodayEventTracker:(id)tracker documentsDirectory:(id)directory;
- (void)_registerOnceVisibleHeadlines:(id)headlines withLastSeenDate:(id)date minimumNumberOfTimesPreseenToBeSeen:(unint64_t)seen;
- (void)submitEventsIfNeededWithCompletion:(id)completion;
- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state;
- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state;
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

- (FTSeenHeadlineWidgetEventTracker)initWithTodayEventTracker:(id)tracker documentsDirectory:(id)directory
{
  trackerCopy = tracker;
  directoryCopy = directory;
  if (!trackerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C87A0();
    if (directoryCopy)
    {
      goto LABEL_6;
    }
  }

  else if (directoryCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C8864();
  }

LABEL_6:
  v21.receiver = self;
  v21.super_class = FTSeenHeadlineWidgetEventTracker;
  v9 = [(FTSeenHeadlineWidgetEventTracker *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_todayEventTracker, tracker);
    v11 = [directoryCopy URLByAppendingPathComponent:@"seen-headline-storage" isDirectory:0];
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

- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if (event == 4)
  {
    visibleHeadlines = [(FTSeenHeadlineWidgetEventTracker *)self visibleHeadlines];
    visibleHeadlinesAppearanceDate = [(FTSeenHeadlineWidgetEventTracker *)self visibleHeadlinesAppearanceDate];
    v12 = [visibleHeadlinesAppearanceDate copy];

    if (!visibleHeadlines && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000C8928();
    }

    v29 = v12;
    if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000C89EC();
    }

    v13 = [visibleHeadlines fc_arrayOfObjectsPassingTest:&stru_10010C048];
    v14 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v14 userInterfaceIdiom];

    v16 = +[UIApplication sharedApplication];
    keyWindow = [v16 keyWindow];
    windowScene = [keyWindow windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    if (userInterfaceIdiom == 1 && (interfaceOrientation - 3) < 2 || [stateCopy stackLocation] != 1)
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
        fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
        widgetConfig = [fetchInfoForVisibleResults widgetConfig];

        if (v25 >= [widgetConfig minimumArticleExposureDurationToBePreseen])
        {
          v28 = NTSharedLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v31 = v21;
            v32 = 2048;
            v33 = v25;
            v34 = 2048;
            minimumArticleExposureDurationToBePreseen = [widgetConfig minimumArticleExposureDurationToBePreseen];
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "will register seen headlines due to widget disappearance, disappearanceDate=%{public}@, exposureTime=%llums, exposureTimeThreshold=%llums", buf, 0x20u);
          }

          v20 = v13;
          -[FTSeenHeadlineWidgetEventTracker _registerOnceVisibleHeadlines:withLastSeenDate:minimumNumberOfTimesPreseenToBeSeen:](self, "_registerOnceVisibleHeadlines:withLastSeenDate:minimumNumberOfTimesPreseenToBeSeen:", v13, v21, [widgetConfig minimumNumberOfTimesPreseenToBeSeen]);
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

  [(FTSeenHeadlineWidgetEventTracker *)self setVisibleHeadlinesAppearanceDate:dateCopy];
  visibleItems = [stateCopy visibleItems];
  v24 = [visibleItems fc_arrayByTransformingWithBlock:&stru_10010C088];
  [(FTSeenHeadlineWidgetEventTracker *)self setVisibleHeadlines:v24];
}

- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state
{
  dateCopy = date;
  lCopy = l;
  stateCopy = state;
  if (!dateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C8AB0();
  }

  [(FTSeenHeadlineWidgetEventTracker *)self setSessionHasEngagement:1];
}

- (void)submitEventsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  submissionGroup = [(FTSeenHeadlineWidgetEventTracker *)self submissionGroup];
  dispatch_group_notify(submissionGroup, &_dispatch_main_q, completionCopy);
}

- (void)_registerOnceVisibleHeadlines:(id)headlines withLastSeenDate:(id)date minimumNumberOfTimesPreseenToBeSeen:(unint64_t)seen
{
  headlinesCopy = headlines;
  dateCopy = date;
  +[NSThread isMainThread];
  if (!headlinesCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C8B74();
  }

  todayEventTracker = [(FTSeenHeadlineWidgetEventTracker *)self todayEventTracker];
  submissionGroup = [(FTSeenHeadlineWidgetEventTracker *)self submissionGroup];
  dispatch_group_enter(submissionGroup);

  fileCoordinatedFIFOHost = [(FTSeenHeadlineWidgetEventTracker *)self fileCoordinatedFIFOHost];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000156B8;
  v17[3] = &unk_10010C0D8;
  v21 = dateCopy;
  seenCopy = seen;
  v18 = headlinesCopy;
  selfCopy = self;
  v20 = todayEventTracker;
  v13 = dateCopy;
  v14 = todayEventTracker;
  v15 = headlinesCopy;
  [fileCoordinatedFIFOHost writeSyncWithAccessor:v17];

  submissionGroup2 = [(FTSeenHeadlineWidgetEventTracker *)self submissionGroup];
  dispatch_group_leave(submissionGroup2);
}

@end