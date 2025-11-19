@interface FTNewsAnalyticsWidgetEventTracker
- (FTNewsAnalyticsWidgetEventTracker)init;
- (FTNewsAnalyticsWidgetEventTracker)initWithUserIDProvider:(id)a3;
- (int)_pbDisplayModeWithDisplayMode:(unint64_t)a3;
- (void)addObserver:(id)a3;
- (void)submitEventsIfNeededWithCompletion:(id)a3;
- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5;
- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5;
- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6;
@end

@implementation FTNewsAnalyticsWidgetEventTracker

- (FTNewsAnalyticsWidgetEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTNewsAnalyticsWidgetEventTracker init]";
    v8 = 2080;
    v9 = "FTNewsAnalyticsWidgetEventTracker.m";
    v10 = 1024;
    v11 = 36;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTNewsAnalyticsWidgetEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTNewsAnalyticsWidgetEventTracker)initWithUserIDProvider:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7110();
  }

  v24.receiver = self;
  v24.super_class = FTNewsAnalyticsWidgetEventTracker;
  v5 = [(FTNewsAnalyticsWidgetEventTracker *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_new();
    sessionAnnotator = v5->_sessionAnnotator;
    v5->_sessionAnnotator = v6;

    v8 = [[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker alloc] initWithSessionManager:v5 userIDProvider:v4];
    v9 = [FTAggregateWidgetEventTracker alloc];
    v26 = v8;
    v10 = [NSArray arrayWithObjects:&v26 count:1];
    v11 = [(FTAggregateWidgetEventTracker *)v9 initWithEventTrackers:v10];

    v12 = [[FTConditionalWidgetEventTracker alloc] initWithWidgetEventTracker:v11 predicate:&stru_10010BD98];
    eventTrackersProxy = v5->_eventTrackersProxy;
    v5->_eventTrackersProxy = v12;

    v14 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)v8 accumulator];
    v25 = v14;
    v15 = [NSArray arrayWithObjects:&v25 count:1];
    eventAccumulators = v5->_eventAccumulators;
    v5->_eventAccumulators = v15;

    nonVideoContentEventTracker = v5->_nonVideoContentEventTracker;
    v5->_nonVideoContentEventTracker = v8;
    v18 = v8;

    v19 = [NSHashTable hashTableWithOptions:517];
    observers = v5->_observers;
    v5->_observers = v19;

    v21 = dispatch_group_create();
    submissionGroup = v5->_submissionGroup;
    v5->_submissionGroup = v21;
  }

  return v5;
}

- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v18 = objc_opt_new();
  v8 = [(FTNewsAnalyticsWidgetEventTracker *)self sessionAnnotator];
  [v8 annotateSession:v18 withOptions:30719];

  v9 = [v6 fetchInfoForVisibleResults];
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];

  v12 = [v9 appConfigTreatmentID];
  [v18 setAppConfigTreatmentId:{objc_msgSend(v12, "integerValue")}];

  v13 = [v9 userID];
  [v18 setUserId:v13];

  [v18 setWidgetDisplayMode:{-[FTNewsAnalyticsWidgetEventTracker _pbDisplayModeWithDisplayMode:](self, "_pbDisplayModeWithDisplayMode:", objc_msgSend(v6, "activeDisplayMode"))}];
  v14 = FCUUIDStringToUUIDBytes();
  [v18 setWidgetSessionId:v14];

  [v18 setRunningObsolete:0];
  [v18 setUserSegmentationSegmentSetIds:objc_msgSend(v9 count:{"userSegmentationSegmentSetIds"), objc_msgSend(v9, "userSegmentationSegmentSetIdsCount")}];
  [v18 setUserSegmentationTreatmentIds:objc_msgSend(v9 count:{"userSegmentationTreatmentIds"), objc_msgSend(v9, "userSegmentationTreatmentIdsCount")}];
  [(FTNewsAnalyticsWidgetEventTracker *)self setCurrentSession:v18];
  v15 = [(FTNewsAnalyticsWidgetEventTracker *)self observers];
  v16 = [v15 allObjects];
  [v16 makeObjectsPerformSelector:"sessionDidStartWithSessionID:" withObject:v11];

  v17 = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [v17 widgetDidAppearAtDate:v7 withTrackableWidgetState:v6];
}

- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[FTNewsAnalyticsWidgetEventTracker _pbDisplayModeWithDisplayMode:](self, "_pbDisplayModeWithDisplayMode:", [v6 activeDisplayMode]);
  v9 = [(FTNewsAnalyticsWidgetEventTracker *)self currentSession];
  [v9 setWidgetDisplayModeSessionEnd:v8];

  v10 = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [v10 widgetDidDisappearAtDate:v7 withTrackableWidgetState:v6];

  v11 = [(FTNewsAnalyticsWidgetEventTracker *)self observers];
  v12 = [v11 allObjects];
  [v12 makeObjectsPerformSelector:"sessionWillEnd"];

  v13 = [(FTNewsAnalyticsWidgetEventTracker *)self eventAccumulators];
  v14 = [v13 fc_arrayByTransformingWithBlock:&stru_10010BDD8];

  if ([v14 count])
  {
    v15 = [(FTNewsAnalyticsWidgetEventTracker *)self submissionGroup];
    dispatch_group_enter(v15);

    v16 = objc_opt_new();
    [v16 setEnvelopes:v14];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000F2E8;
    v17[3] = &unk_10010BE00;
    v17[4] = self;
    [v16 setSubmissionCompletion:v17];
    [v16 start];
  }

  [(FTNewsAnalyticsWidgetEventTracker *)self setCurrentSession:0];
}

- (void)widgetPerformedUpdateWithTodayResults:(id)a3 fetchInfo:(id)a4 error:(id)a5 updateFetchDuration:(double)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [v13 widgetPerformedUpdateWithTodayResults:v12 fetchInfo:v11 error:v10 updateFetchDuration:a6];
}

- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [v10 visibleItemsDidChangeAtDate:v9 withTriggerEvent:a4 trackableWidgetState:v8];
}

- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [v11 userEngagedWithWidgetAtDate:v10 actionURL:v9 trackableWidgetState:v8];
}

- (void)submitEventsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FTNewsAnalyticsWidgetEventTracker *)self submissionGroup];
  dispatch_group_notify(v5, &_dispatch_main_q, v4);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FTNewsAnalyticsWidgetEventTracker *)self observers];
  [v5 addObject:v4];
}

- (int)_pbDisplayModeWithDisplayMode:(unint64_t)a3
{
  if (a3 - 1 < 7)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

@end