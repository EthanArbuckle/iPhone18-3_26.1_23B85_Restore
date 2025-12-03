@interface FTNewsAnalyticsWidgetEventTracker
- (FTNewsAnalyticsWidgetEventTracker)init;
- (FTNewsAnalyticsWidgetEventTracker)initWithUserIDProvider:(id)provider;
- (int)_pbDisplayModeWithDisplayMode:(unint64_t)mode;
- (void)addObserver:(id)observer;
- (void)submitEventsIfNeededWithCompletion:(id)completion;
- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state;
- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state;
- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration;
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

- (FTNewsAnalyticsWidgetEventTracker)initWithUserIDProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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

    v8 = [[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker alloc] initWithSessionManager:v5 userIDProvider:providerCopy];
    v9 = [FTAggregateWidgetEventTracker alloc];
    v26 = v8;
    v10 = [NSArray arrayWithObjects:&v26 count:1];
    v11 = [(FTAggregateWidgetEventTracker *)v9 initWithEventTrackers:v10];

    v12 = [[FTConditionalWidgetEventTracker alloc] initWithWidgetEventTracker:v11 predicate:&stru_10010BD98];
    eventTrackersProxy = v5->_eventTrackersProxy;
    v5->_eventTrackersProxy = v12;

    accumulator = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)v8 accumulator];
    v25 = accumulator;
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

- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state
{
  stateCopy = state;
  dateCopy = date;
  v18 = objc_opt_new();
  sessionAnnotator = [(FTNewsAnalyticsWidgetEventTracker *)self sessionAnnotator];
  [sessionAnnotator annotateSession:v18 withOptions:30719];

  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];

  appConfigTreatmentID = [fetchInfoForVisibleResults appConfigTreatmentID];
  [v18 setAppConfigTreatmentId:{objc_msgSend(appConfigTreatmentID, "integerValue")}];

  userID = [fetchInfoForVisibleResults userID];
  [v18 setUserId:userID];

  [v18 setWidgetDisplayMode:{-[FTNewsAnalyticsWidgetEventTracker _pbDisplayModeWithDisplayMode:](self, "_pbDisplayModeWithDisplayMode:", objc_msgSend(stateCopy, "activeDisplayMode"))}];
  v14 = FCUUIDStringToUUIDBytes();
  [v18 setWidgetSessionId:v14];

  [v18 setRunningObsolete:0];
  [v18 setUserSegmentationSegmentSetIds:objc_msgSend(fetchInfoForVisibleResults count:{"userSegmentationSegmentSetIds"), objc_msgSend(fetchInfoForVisibleResults, "userSegmentationSegmentSetIdsCount")}];
  [v18 setUserSegmentationTreatmentIds:objc_msgSend(fetchInfoForVisibleResults count:{"userSegmentationTreatmentIds"), objc_msgSend(fetchInfoForVisibleResults, "userSegmentationTreatmentIdsCount")}];
  [(FTNewsAnalyticsWidgetEventTracker *)self setCurrentSession:v18];
  observers = [(FTNewsAnalyticsWidgetEventTracker *)self observers];
  allObjects = [observers allObjects];
  [allObjects makeObjectsPerformSelector:"sessionDidStartWithSessionID:" withObject:uUIDString];

  eventTrackersProxy = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [eventTrackersProxy widgetDidAppearAtDate:dateCopy withTrackableWidgetState:stateCopy];
}

- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state
{
  stateCopy = state;
  dateCopy = date;
  v8 = -[FTNewsAnalyticsWidgetEventTracker _pbDisplayModeWithDisplayMode:](self, "_pbDisplayModeWithDisplayMode:", [stateCopy activeDisplayMode]);
  currentSession = [(FTNewsAnalyticsWidgetEventTracker *)self currentSession];
  [currentSession setWidgetDisplayModeSessionEnd:v8];

  eventTrackersProxy = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [eventTrackersProxy widgetDidDisappearAtDate:dateCopy withTrackableWidgetState:stateCopy];

  observers = [(FTNewsAnalyticsWidgetEventTracker *)self observers];
  allObjects = [observers allObjects];
  [allObjects makeObjectsPerformSelector:"sessionWillEnd"];

  eventAccumulators = [(FTNewsAnalyticsWidgetEventTracker *)self eventAccumulators];
  v14 = [eventAccumulators fc_arrayByTransformingWithBlock:&stru_10010BDD8];

  if ([v14 count])
  {
    submissionGroup = [(FTNewsAnalyticsWidgetEventTracker *)self submissionGroup];
    dispatch_group_enter(submissionGroup);

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

- (void)widgetPerformedUpdateWithTodayResults:(id)results fetchInfo:(id)info error:(id)error updateFetchDuration:(double)duration
{
  errorCopy = error;
  infoCopy = info;
  resultsCopy = results;
  eventTrackersProxy = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [eventTrackersProxy widgetPerformedUpdateWithTodayResults:resultsCopy fetchInfo:infoCopy error:errorCopy updateFetchDuration:duration];
}

- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state
{
  stateCopy = state;
  dateCopy = date;
  eventTrackersProxy = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [eventTrackersProxy visibleItemsDidChangeAtDate:dateCopy withTriggerEvent:event trackableWidgetState:stateCopy];
}

- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state
{
  stateCopy = state;
  lCopy = l;
  dateCopy = date;
  eventTrackersProxy = [(FTNewsAnalyticsWidgetEventTracker *)self eventTrackersProxy];
  [eventTrackersProxy userEngagedWithWidgetAtDate:dateCopy actionURL:lCopy trackableWidgetState:stateCopy];
}

- (void)submitEventsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  submissionGroup = [(FTNewsAnalyticsWidgetEventTracker *)self submissionGroup];
  dispatch_group_notify(submissionGroup, &_dispatch_main_q, completionCopy);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  +[NSThread isMainThread];
  observers = [(FTNewsAnalyticsWidgetEventTracker *)self observers];
  [observers addObject:observerCopy];
}

- (int)_pbDisplayModeWithDisplayMode:(unint64_t)mode
{
  if (mode - 1 < 7)
  {
    return mode;
  }

  else
  {
    return 0;
  }
}

@end