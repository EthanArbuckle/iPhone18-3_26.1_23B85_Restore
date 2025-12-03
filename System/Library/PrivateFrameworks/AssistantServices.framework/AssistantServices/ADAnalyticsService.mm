@interface ADAnalyticsService
+ (id)sharedService;
- (ADAnalyticsService)init;
- (id)_store;
- (id)_unstageEvents;
- (void)_beginEventsFuzzingWithStartTime:(unint64_t)time;
- (void)_beginEventsGrouping;
- (void)_endEventsFuzzingWithEndTime:(unint64_t)time;
- (void)_endEventsGrouping;
- (void)_enumerateConnectionsAsServiceDelegates:(id)delegates completion:(id)completion;
- (void)_executeDelegateBlockOnAllConnections:(id)connections completion:(id)completion;
- (void)_houseKeeperArrived;
- (void)_linkStoreForSysdiagnose;
- (void)_observeConnectionDisrupted:(int)disrupted observer:(id)observer referenceId:(id)id;
- (void)_processStagedEvents;
- (void)_publishEventsToObserver:(id)observer completion:(id)completion;
- (void)_resumeEventsStaging;
- (void)_signalConnectionDisruption:(id)disruption;
- (void)_stageEvent:(id)event;
- (void)_stageEvents:(id)events;
- (void)_startHouseKeepingTimer;
- (void)_stopHouseKeepingTimer;
- (void)_stopObservingConnectionDisrupted:(int)disrupted referenceId:(id)id;
- (void)_suspendEventsStaging;
- (void)_unlinkStoreForSysdiagnose;
- (void)accessStoreUsingBlock:(id)block;
- (void)beginEventsFuzzingWithStartTime:(unint64_t)time;
- (void)beginEventsGrouping;
- (void)boostAllConnections:(id)connections;
- (void)checkForMetricsUploadProblem;
- (void)connectionConnected:(id)connected;
- (void)connectionDisconnected:(id)disconnected;
- (void)connectionInterrupted:(id)interrupted;
- (void)dealloc;
- (void)endEventsFuzzingWithEndTime:(unint64_t)time;
- (void)endEventsGrouping;
- (void)logInstrumentationOfType:(id)type machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier;
- (void)managedConfigurationEffectiveSettingsChanged;
- (void)observeWithCompletion:(id)completion;
- (void)resumeEventsStaging;
- (void)setObserverConnection:(id)connection;
- (void)stageEvents:(id)events completion:(id)completion;
- (void)stageUEIEventData:(id)data timestamp:(unint64_t)timestamp completion:(id)completion;
- (void)storeGenericInstrumentation:(id)instrumentation completion:(id)completion;
- (void)suspendEventsStaging;
@end

@implementation ADAnalyticsService

+ (id)sharedService
{
  if (qword_100590940 != -1)
  {
    dispatch_once(&qword_100590940, &stru_10051B3D0);
  }

  v3 = qword_100590948;

  return v3;
}

- (void)_startHouseKeepingTimer
{
  if (!self->_houseKeepingTimer)
  {
    location[5] = v2;
    location[6] = v3;
    depthOfEventsGrouping = self->_depthOfEventsGrouping;
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    houseKeepingTimer = self->_houseKeepingTimer;
    self->_houseKeepingTimer = v6;

    v8 = self->_houseKeepingTimer;
    if (depthOfEventsGrouping <= 0)
    {
      v9 = 4000000000;
    }

    else
    {
      v9 = 16000000000;
    }

    v10 = dispatch_time(0, v9);
    dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(location, self);
    v11 = self->_houseKeepingTimer;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003E54;
    v12[3] = &unk_10051B5F0;
    objc_copyWeak(&v13, location);
    dispatch_source_set_event_handler(v11, v12);
    dispatch_resume(self->_houseKeepingTimer);
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }
}

- (void)beginEventsGrouping
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000466C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_houseKeeperArrived
{
  [(ADAnalyticsService *)self _stopHouseKeepingTimer];

  [(ADAnalyticsService *)self _processStagedEvents];
}

- (void)_processStagedEvents
{
  selfCopy = self;
  _unstageEvents = [(ADAnalyticsService *)self _unstageEvents];
  if ([_unstageEvents count])
  {
    v4 = +[AFPreferences sharedPreferences];
    isDictationHIPAACompliant = [v4 isDictationHIPAACompliant];

    if (isDictationHIPAACompliant)
    {
      v6 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v83 = "[ADAnalyticsService _processStagedEvents]";
        v7 = "%s Dont unstage the events and send them, because we have HIPAA On-Device Dictation enabled";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
      }
    }

    else
    {
      v8 = +[AFSiriDataSharingSensitivityManager shared];
      isOptedOutOfMTE = [v8 isOptedOutOfMTE];

      if (isOptedOutOfMTE)
      {
        v6 = AFSiriLogContextAnalytics;
        if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v83 = "[ADAnalyticsService _processStagedEvents]";
          v7 = "%s #MTEOptOut Skipping writing staged events to disk because device is opted out of MTE";
          goto LABEL_8;
        }
      }

      else
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v43 = _unstageEvents;
        obj = _unstageEvents;
        v11 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v75;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v75 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v74 + 1) + 8 * i);
              speechId = [v15 speechId];
              if (speechId)
              {
                v17 = speechId;
              }

              else
              {
                v17 = @"unknown";
              }

              v18 = [v10 objectForKey:v17];
              if (!v18)
              {
                v18 = objc_alloc_init(NSMutableSet);
                [v10 setObject:v18 forKey:v17];
              }

              [v18 addObject:v15];
            }

            v12 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
          }

          while (v12);
        }

        v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v47 = v10;
        v46 = [v47 countByEnumeratingWithState:&v70 objects:v80 count:16];
        if (v46)
        {
          v45 = *v71;
          v50 = v19;
          v51 = selfCopy;
          do
          {
            v20 = 0;
            do
            {
              if (*v71 != v45)
              {
                objc_enumerationMutation(v47);
              }

              v48 = v20;
              v53 = *(*(&v70 + 1) + 8 * v20);
              v21 = [v47 objectForKey:v43];
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v49 = v21;
              v54 = [v21 countByEnumeratingWithState:&v66 objects:v79 count:16];
              if (v54)
              {
                v52 = *v67;
                do
                {
                  for (j = 0; j != v54; j = j + 1)
                  {
                    if (*v67 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v23 = *(*(&v66 + 1) + 8 * j);
                    v24 = selfCopy->_streamUID;
                    if ([(AFQueue *)selfCopy->_fuzzingIntervals count])
                    {
                      v55 = j;
                      v64 = 0u;
                      v65 = 0u;
                      v62 = 0u;
                      v63 = 0u;
                      v57 = selfCopy->_fuzzingIntervals;
                      v25 = [(AFQueue *)v57 countByEnumeratingWithState:&v62 objects:v78 count:16];
                      if (v25)
                      {
                        v26 = v25;
                        v27 = *v63;
                        v56 = v23;
                        do
                        {
                          for (k = 0; k != v26; k = k + 1)
                          {
                            if (*v63 != v27)
                            {
                              objc_enumerationMutation(v57);
                            }

                            v29 = *(*(&v62 + 1) + 8 * k);
                            timestamp = [v23 timestamp];
                            if (timestamp >= [v29 startTime])
                            {
                              if (![v29 endTime] || (v31 = objc_msgSend(v23, "timestamp"), v31 <= objc_msgSend(v29, "endTime")))
                              {
                                streamUID = [v29 streamUID];

                                timestamp2 = [v56 timestamp];
                                offset = [v29 offset];
                                v58 = v23;
                                v34 = [AFAnalyticsEvent alloc];
                                deliveryStream = [v56 deliveryStream];
                                v36 = v27;
                                type = [v56 type];
                                contextDataType = [v56 contextDataType];
                                contextData = [v56 contextData];
                                v23 = [v34 initWithDeliveryStream:deliveryStream type:type timestamp:&timestamp2[offset] contextDataType:contextDataType contextData:contextData];

                                v24 = streamUID;
                                v27 = v36;
                              }
                            }
                          }

                          v26 = [(AFQueue *)v57 countByEnumeratingWithState:&v62 objects:v78 count:16];
                        }

                        while (v26);
                      }

                      v19 = v50;
                      selfCopy = v51;
                      j = v55;
                    }

                    v40 = +[NSDate date];
                    v41 = [[AFAnalyticsEventRecord alloc] initWithEvent:v23 streamUID:v24 dateCreated:v40 speechId:v53];
                    if (v41)
                    {
                      [v19 addObject:v41];
                    }
                  }

                  v54 = [v49 countByEnumeratingWithState:&v66 objects:v79 count:16];
                }

                while (v54);
              }

              v20 = v48 + 1;
            }

            while ((v48 + 1) != v46);
            v46 = [v47 countByEnumeratingWithState:&v70 objects:v80 count:16];
          }

          while (v46);
        }

        if ([v19 count])
        {
          _store = [(ADAnalyticsService *)selfCopy _store];
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_1002FC880;
          v60[3] = &unk_10051B580;
          v61 = obj;
          [_store insertEventRecords:v19 completion:v60];
        }

        _unstageEvents = v43;
      }
    }
  }
}

- (id)_unstageEvents
{
  v3 = self->_stagedEvents;
  v4 = objc_alloc_init(NSMutableSet);
  stagedEvents = self->_stagedEvents;
  self->_stagedEvents = v4;

  return v3;
}

- (void)_stopHouseKeepingTimer
{
  houseKeepingTimer = self->_houseKeepingTimer;
  if (houseKeepingTimer)
  {
    dispatch_source_cancel(houseKeepingTimer);
    v4 = self->_houseKeepingTimer;
    self->_houseKeepingTimer = 0;
  }
}

- (void)_beginEventsGrouping
{
  depthOfEventsGrouping = self->_depthOfEventsGrouping;
  self->_depthOfEventsGrouping = depthOfEventsGrouping + 1;
  if (!depthOfEventsGrouping)
  {
    [(ADAnalyticsService *)self _stopHouseKeepingTimer];

    [(ADAnalyticsService *)self _startHouseKeepingTimer];
  }
}

- (void)checkForMetricsUploadProblem
{
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADAnalyticsService checkForMetricsUploadProblem]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (AFIsInternalInstall())
  {
    if (AFHasUnlockedSinceBoot())
    {
      v4 = +[ADPreferences sharedPreferences];
      lastMetricsUploadDate = [v4 lastMetricsUploadDate];

      [lastMetricsUploadDate timeIntervalSinceNow];
      if (v6 <= -21600.0)
      {
        v7 = +[ADPreferences sharedPreferences];
        lastMetricsUploadFailureReportedOnDate = [v7 lastMetricsUploadFailureReportedOnDate];

        [lastMetricsUploadFailureReportedOnDate timeIntervalSinceNow];
        if (v9 >= -86400.0)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_1002FEC38;
          v11[3] = &unk_10051B420;
          v12 = lastMetricsUploadDate;
          [(ADAnalyticsService *)self accessStoreUsingBlock:v11];
        }
      }
    }

    else
    {
      v10 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[ADAnalyticsService checkForMetricsUploadProblem]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Skipping check due to storage lock.", buf, 0xCu);
      }
    }
  }
}

- (void)_unlinkStoreForSysdiagnose
{
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADAnalyticsService _unlinkStoreForSysdiagnose]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = AFAnalyticsLogsDirectory();
  path = [(ADAnalyticsStore *)self->_store path];
  lastPathComponent = [path lastPathComponent];
  v7 = [v4 stringByAppendingPathComponent:lastPathComponent];

  v8 = +[NSFileManager defaultManager];
  if ([v8 fileExistsAtPath:v7 isDirectory:0])
  {
    v12 = 0;
    v9 = [v8 removeItemAtPath:v7 error:&v12];
    v10 = v12;
    v11 = AFSiriLogContextAnalytics;
    if (v9)
    {
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v14 = "[ADAnalyticsService _unlinkStoreForSysdiagnose]";
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Deleted link at %@.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "[ADAnalyticsService _unlinkStoreForSysdiagnose]";
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to delete link at %@ due to error %@.", buf, 0x20u);
    }
  }
}

- (void)_linkStoreForSysdiagnose
{
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADAnalyticsService _linkStoreForSysdiagnose]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = AFAnalyticsLogsDirectory();
  v5 = AFAnalyticsLogsDirectory();
  path = [(ADAnalyticsStore *)self->_store path];
  lastPathComponent = [path lastPathComponent];
  v8 = [v5 stringByAppendingPathComponent:lastPathComponent];

  v9 = +[NSFileManager defaultManager];
  if (([v9 fileExistsAtPath:v8 isDirectory:0] & 1) == 0)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002FC0F8;
    v16[3] = &unk_10051DB68;
    v10 = v9;
    v17 = v10;
    v18 = v8;
    selfCopy = self;
    v11 = objc_retainBlock(v16);
    if ([v10 fileExistsAtPath:v4])
    {
      (v11[2])(v11);
    }

    else
    {
      v15 = 0;
      v12 = [v10 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v15];
      v13 = v15;
      if (v12)
      {
        (v11[2])(v11);
      }

      else
      {
        v14 = AFSiriLogContextAnalytics;
        if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v21 = "[ADAnalyticsService _linkStoreForSysdiagnose]";
          v22 = 2112;
          v23 = v4;
          v24 = 2112;
          v25 = v13;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failed to create directory at %@ due to error %@.", buf, 0x20u);
        }
      }
    }
  }
}

- (void)_endEventsFuzzingWithEndTime:(unint64_t)time
{
  if (self->_isFuzzing)
  {
    v5 = self->_currentFuzzingInterval;
    self->_isFuzzing = 0;
    [(ADAnalyticsFuzzingInterval *)v5 setEndTime:time];
    v6 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      endTime = [(ADAnalyticsFuzzingInterval *)v5 endTime];
      streamUID = [(ADAnalyticsFuzzingInterval *)v5 streamUID];
      *buf = 136315650;
      v13 = "[ADAnalyticsService _endEventsFuzzingWithEndTime:]";
      v14 = 2048;
      v15 = endTime;
      v16 = 2112;
      v17 = streamUID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Fuzzing time interval ended with end time: %lld streamUID: %@", buf, 0x20u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002FC454;
    v11[3] = &unk_10051DFE8;
    v11[4] = self;
    [(ADAnalyticsService *)self flushWithCompletion:v11];
  }

  else
  {
    v10 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[ADAnalyticsService _endEventsFuzzingWithEndTime:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Haven't start a fuzzing interval, unable to end", buf, 0xCu);
    }
  }
}

- (void)_beginEventsFuzzingWithStartTime:(unint64_t)time
{
  if (self->_isFuzzing)
  {
    v3 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[ADAnalyticsService _beginEventsFuzzingWithStartTime:]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Haven't ended previous fuzzing interval, unable to begin new one", &v10, 0xCu);
    }
  }

  else
  {
    self->_isFuzzing = 1;
    v5 = [[ADAnalyticsFuzzingInterval alloc] initWithStartTime:time];
    objc_storeStrong(&self->_currentFuzzingInterval, v5);
    [(AFQueue *)self->_fuzzingIntervals enqueueObject:self->_currentFuzzingInterval];
    v6 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      startTime = [(ADAnalyticsFuzzingInterval *)v5 startTime];
      streamUID = [(ADAnalyticsFuzzingInterval *)v5 streamUID];
      v10 = 136315650;
      v11 = "[ADAnalyticsService _beginEventsFuzzingWithStartTime:]";
      v12 = 2048;
      v13 = startTime;
      v14 = 2112;
      v15 = streamUID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Fuzzing time interval created with start time: %lld streamUID: %@", &v10, 0x20u);
    }
  }
}

- (void)_resumeEventsStaging
{
  if (self->_isSuspended)
  {
    self->_isSuspended = 0;
  }

  else
  {
    v2 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "[ADAnalyticsService _resumeEventsStaging]";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Attempted to resume events staging while not suspended.", &v3, 0xCu);
    }
  }
}

- (void)_suspendEventsStaging
{
  if (self->_isSuspended)
  {
    v2 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "[ADAnalyticsService _suspendEventsStaging]";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Attempted to suspend events staging while already suspended.", &v3, 0xCu);
    }
  }

  else
  {
    self->_isSuspended = 1;
  }
}

- (void)_endEventsGrouping
{
  v3 = self->_depthOfEventsGrouping - 1;
  self->_depthOfEventsGrouping = v3;
  if (!v3)
  {
    [(ADAnalyticsService *)self _stopHouseKeepingTimer];

    [(ADAnalyticsService *)self _startHouseKeepingTimer];
  }
}

- (void)_stageEvents:(id)events
{
  [(NSMutableSet *)self->_stagedEvents unionSet:events];

  [(ADAnalyticsService *)self _startHouseKeepingTimer];
}

- (void)_stageEvent:(id)event
{
  [(NSMutableSet *)self->_stagedEvents addObject:event];

  [(ADAnalyticsService *)self _startHouseKeepingTimer];
}

- (void)_executeDelegateBlockOnAllConnections:(id)connections completion:(id)completion
{
  connectionsCopy = connections;
  completionCopy = completion;
  v8 = dispatch_group_create();
  v9 = objc_alloc_init(NSMutableDictionary);
  dispatch_group_enter(v8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002FCBB8;
  v19[3] = &unk_10051B558;
  v20 = v8;
  v21 = v9;
  selfCopy = self;
  v23 = connectionsCopy;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002FCEDC;
  v17[3] = &unk_10051DFE8;
  v18 = v20;
  v10 = v20;
  v11 = connectionsCopy;
  v12 = v9;
  [(ADAnalyticsService *)self _enumerateConnectionsAsServiceDelegates:v19 completion:v17];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002FCEE4;
  v15[3] = &unk_10051CF58;
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_group_notify(v10, queue, v15);
}

- (void)_enumerateConnectionsAsServiceDelegates:(id)delegates completion:(id)completion
{
  delegatesCopy = delegates;
  completionCopy = completion;
  v8 = +[AFAnalytics sharedAnalytics];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002FD2EC;
  v11[3] = &unk_10051C510;
  v11[4] = self;
  v12 = delegatesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = delegatesCopy;
  [v8 barrier:v11];
}

- (void)_stopObservingConnectionDisrupted:(int)disrupted referenceId:(id)id
{
  if (id)
  {
    v4 = *&disrupted;
    connectionDisruptedObservers = self->_connectionDisruptedObservers;
    idCopy = id;
    v8 = [NSNumber numberWithInt:v4];
    v11 = [(NSMutableDictionary *)connectionDisruptedObservers objectForKey:v8];

    [v11 removeObjectForKey:idCopy];
    if (![v11 count])
    {
      v9 = self->_connectionDisruptedObservers;
      v10 = [NSNumber numberWithInt:v4];
      [(NSMutableDictionary *)v9 removeObjectForKey:v10];
    }
  }
}

- (void)_observeConnectionDisrupted:(int)disrupted observer:(id)observer referenceId:(id)id
{
  if (observer && id)
  {
    v6 = *&disrupted;
    idCopy = id;
    v15 = [observer copy];
    connectionDisruptedObservers = self->_connectionDisruptedObservers;
    v10 = [NSNumber numberWithInt:v6];
    v11 = [(NSMutableDictionary *)connectionDisruptedObservers objectForKey:v10];

    if (!v11)
    {
      v11 = +[NSMutableDictionary dictionary];
      v12 = self->_connectionDisruptedObservers;
      v13 = [NSNumber numberWithInt:v6];
      [(NSMutableDictionary *)v12 setObject:v11 forKey:v13];
    }

    v14 = objc_retainBlock(v15);
    [v11 setObject:v14 forKey:idCopy];
  }
}

- (void)_signalConnectionDisruption:(id)disruption
{
  processIdentifier = [disruption processIdentifier];
  connectionDisruptedObservers = self->_connectionDisruptedObservers;
  v6 = [NSNumber numberWithInt:processIdentifier];
  v7 = [(NSMutableDictionary *)connectionDisruptedObservers objectForKey:v6];
  allValues = [v7 allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = allValues;
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

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)_store
{
  if (!self->_store)
  {
    v3 = [ADAnalyticsStore alloc];
    v4 = +[ADAudioFileWriter _savedAudioFilesDirectory]_0();
    v5 = [v4 URLByAppendingPathComponent:@"SiriAnalytics.db"];
    path = [v5 path];
    v7 = [(ADAnalyticsStore *)v3 initWithPath:path];
    store = self->_store;
    self->_store = v7;

    if ((AFIsInternalInstall() & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 shouldLogForQA], v9, v10))
    {
      [(ADAnalyticsService *)self _linkStoreForSysdiagnose];
    }

    else
    {
      [(ADAnalyticsService *)self _unlinkStoreForSysdiagnose];
    }
  }

  v11 = self->_store;

  return v11;
}

- (void)observeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002FDA70;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_publishEventsToObserver:(id)observer completion:(id)completion
{
  observerCopy = observer;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002FDC74;
  v17[3] = &unk_10051CF58;
  completionCopy = completion;
  v18 = completionCopy;
  v8 = objc_retainBlock(v17);
  v9 = v8;
  observerConnection = self->_observerConnection;
  if (observerConnection)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002FDC8C;
    v15[3] = &unk_10051D2F0;
    v11 = v8;
    v16 = v11;
    v12 = [(NSXPCConnection *)observerConnection remoteObjectProxyWithErrorHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002FDD6C;
    v13[3] = &unk_10051CF58;
    v14 = v11;
    [v12 didObserveEvents:observerCopy completion:v13];
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)storeGenericInstrumentation:(id)instrumentation completion:(id)completion
{
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  v8 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[ADAnalyticsService storeGenericInstrumentation:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002FDF28;
  v17[3] = &unk_10051CF58;
  v18 = completionCopy;
  v9 = completionCopy;
  v10 = objc_retainBlock(v17);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FDF40;
  block[3] = &unk_10051E038;
  v15 = instrumentationCopy;
  v16 = v10;
  v12 = v10;
  v13 = instrumentationCopy;
  dispatch_async(queue, block);
}

- (void)boostAllConnections:(id)connections
{
  connectionsCopy = connections;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[ADAnalyticsService boostAllConnections:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002FE130;
  v12[3] = &unk_10051CF58;
  v13 = connectionsCopy;
  v6 = connectionsCopy;
  v7 = objc_retainBlock(v12);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FE148;
  block[3] = &unk_10051E038;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)stageUEIEventData:(id)data timestamp:(unint64_t)timestamp completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FE58C;
  block[3] = &unk_10051BFA8;
  v15 = completionCopy;
  timestampCopy = timestamp;
  v14 = dataCopy;
  v11 = completionCopy;
  v12 = dataCopy;
  dispatch_async(queue, block);
}

- (void)endEventsFuzzingWithEndTime:(unint64_t)time
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FE6A8;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = time;
  dispatch_async(queue, v4);
}

- (void)beginEventsFuzzingWithStartTime:(unint64_t)time
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FE728;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = time;
  dispatch_async(queue, v4);
}

- (void)logInstrumentationOfType:(id)type machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FE7FC;
  v13[3] = &unk_10051DBB8;
  v13[4] = self;
  v14 = typeCopy;
  v15 = identifierCopy;
  timeCopy = time;
  v11 = identifierCopy;
  v12 = typeCopy;
  dispatch_async(queue, v13);
}

- (void)endEventsGrouping
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FE884;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stageEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FE9DC;
  v13[3] = &unk_10051CF58;
  completionCopy = completion;
  v14 = completionCopy;
  v8 = objc_retainBlock(v13);
  if ([eventsCopy count])
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002FE9F4;
    v10[3] = &unk_10051E088;
    v10[4] = self;
    v11 = eventsCopy;
    v12 = v8;
    dispatch_async(queue, v10);
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)managedConfigurationEffectiveSettingsChanged
{
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADAnalyticsService managedConfigurationEffectiveSettingsChanged]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FEFEC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resumeEventsStaging
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FF0F8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)suspendEventsStaging
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FF174;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setObserverConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002FF214;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)accessStoreUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002FF340;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(queue, v7);
  }
}

- (void)connectionDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v5 = disconnectedCopy;
  if (disconnectedCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002FF444;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = disconnectedCopy;
    dispatch_async(queue, v7);
  }
}

- (void)connectionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v5 = interruptedCopy;
  if (interruptedCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002FF52C;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = interruptedCopy;
    dispatch_async(queue, v7);
  }
}

- (void)connectionConnected:(id)connected
{
  connectedCopy = connected;
  v5 = connectedCopy;
  if (connectedCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002FF5E0;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = connectedCopy;
    dispatch_async(queue, v7);
  }
}

- (void)dealloc
{
  [(ADAnalyticsService *)self _stopHouseKeepingTimer];
  v3.receiver = self;
  v3.super_class = ADAnalyticsService;
  [(ADAnalyticsService *)&v3 dealloc];
}

- (ADAnalyticsService)init
{
  v30.receiver = self;
  v30.super_class = ADAnalyticsService;
  v2 = [(ADAnalyticsService *)&v30 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.assistant.analytics.service", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(NSMutableSet);
    stagedEvents = v2->_stagedEvents;
    v2->_stagedEvents = v7;

    v9 = objc_alloc_init(NSMutableSet);
    connections = v2->_connections;
    v2->_connections = v9;

    if (qword_100590568 != -1)
    {
      dispatch_once(&qword_100590568, &stru_100516C30);
    }

    objc_storeStrong(&v2->_streamUID, qword_100590560);
    v11 = [[ADInstrumentationResolver alloc] initWithQueue:v2->_queue];
    instrumentationResolver = v2->_instrumentationResolver;
    v2->_instrumentationResolver = v11;

    if (!v2->_streamUID)
    {
      v13 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v32 = "[ADAnalyticsService init]";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unable to use boot session UUID as stream UID, falling back to in memory UUID instead.", buf, 0xCu);
      }

      v14 = objc_alloc_init(NSUUID);
      uUIDString = [v14 UUIDString];
      streamUID = v2->_streamUID;
      v2->_streamUID = uUIDString;
    }

    v17 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v18 = v2->_streamUID;
      *buf = 136315394;
      v32 = "[ADAnalyticsService init]";
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s streamUID = %@", buf, 0x16u);
    }

    v19 = objc_alloc_init(AFQueue);
    fuzzingIntervals = v2->_fuzzingIntervals;
    v2->_fuzzingIntervals = v19;

    v21 = +[NSMutableDictionary dictionary];
    connectionDisruptedObservers = v2->_connectionDisruptedObservers;
    v2->_connectionDisruptedObservers = v21;

    v23 = +[ADAccount activeAccount];
    speechIdentifier = [v23 speechIdentifier];
    speechId = v2->_speechId;
    v2->_speechId = speechIdentifier;

    v26 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002FF940;
    block[3] = &unk_10051DFE8;
    v29 = v2;
    dispatch_async(v26, block);
  }

  return v2;
}

@end