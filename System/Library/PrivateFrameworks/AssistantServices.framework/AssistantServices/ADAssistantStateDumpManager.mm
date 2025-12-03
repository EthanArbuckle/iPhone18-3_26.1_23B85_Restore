@interface ADAssistantStateDumpManager
- (ADAssistantStateDumpManager)init;
- (BOOL)_shouldDumpSiriOnDeviceAnalyticsBiomeStreams;
- (id)_dumpAssistantState;
- (id)_dumpOnDeviceAnalyticsBiomeStream:(id)stream;
- (id)_dumpSiriOnDeviceAnalyticsBiomeStreams;
- (id)_getEventsDataForStream:(id)stream numEvents:(int64_t *)events;
- (id)_getStateProviders;
- (id)_publisherForStream:(id)stream;
- (id)dumpAssistantState;
- (void)_writeDataToDisk:(id)disk withFileName:(id)name;
- (void)_writeTextToDisk:(id)disk withFileName:(id)name;
@end

@implementation ADAssistantStateDumpManager

- (void)_writeDataToDisk:(id)disk withFileName:(id)name
{
  nameCopy = name;
  diskCopy = disk;
  v7 = AFLogDirectory();
  v8 = [v7 stringByAppendingPathComponent:nameCopy];

  v11 = 0;
  [diskCopy writeToFile:v8 options:1 error:&v11];

  v9 = v11;
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "[ADAssistantStateDumpManager _writeDataToDisk:withFileName:]";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Couldn't write to %@: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADAssistantStateDumpManager _writeDataToDisk:withFileName:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Written to %@", buf, 0x16u);
  }
}

- (void)_writeTextToDisk:(id)disk withFileName:(id)name
{
  nameCopy = name;
  v8 = [disk stringByAppendingString:@"\n"];
  v7 = [v8 dataUsingEncoding:4];
  [(ADAssistantStateDumpManager *)self _writeDataToDisk:v7 withFileName:nameCopy];
}

- (id)_publisherForStream:(id)stream
{
  streamCopy = stream;
  v4 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:1000 lastN:0 reversed:1];
  v5 = [streamCopy publisherWithOptions:v4];

  return v5;
}

- (id)_getEventsDataForStream:(id)stream numEvents:(int64_t *)events
{
  streamCopy = stream;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = objc_alloc_init(NSMutableData);
  v8 = [(ADAssistantStateDumpManager *)self _publisherForStream:streamCopy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10009EC8C;
  v18 = &unk_100510150;
  v9 = v7;
  v19 = v9;
  v20 = &v21;
  v10 = [v8 sinkWithCompletion:&stru_100510128 receiveInput:&v15];
  *events = v22[3];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *events;
    identifier = [streamCopy identifier];
    *buf = 136315650;
    v26 = "[ADAssistantStateDumpManager _getEventsDataForStream:numEvents:]";
    v27 = 2048;
    v28 = v13;
    v29 = 2112;
    v30 = identifier;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Gathered %ld events for stream %@", buf, 0x20u);
  }

  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)_dumpOnDeviceAnalyticsBiomeStream:(id)stream
{
  streamCopy = stream;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = v5;
    identifier = [streamCopy identifier];
    *buf = 136315394;
    *&buf[4] = "[ADAssistantStateDumpManager _dumpOnDeviceAnalyticsBiomeStream:]";
    v18 = 2112;
    v19 = identifier;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Dumping data for stream %@", buf, 0x16u);
  }

  *buf = 0;
  v6 = [(ADAssistantStateDumpManager *)self _getEventsDataForStream:streamCopy numEvents:buf];
  identifier2 = [streamCopy identifier];
  v8 = [NSString stringWithFormat:@"%@.log", identifier2];

  [(ADAssistantStateDumpManager *)self _writeDataToDisk:v6 withFileName:v8];
  identifier3 = [streamCopy identifier];
  v15 = identifier3;
  v10 = [NSString stringWithFormat:@"%ld events", *buf];
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  return v11;
}

- (id)_dumpSiriOnDeviceAnalyticsBiomeStreams
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = "[ADAssistantStateDumpManager _dumpSiriOnDeviceAnalyticsBiomeStreams]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v25, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = BiomeLibrary();
  siri = [v5 Siri];
  metrics = [siri Metrics];
  onDeviceDigestUsageMetrics = [metrics OnDeviceDigestUsageMetrics];
  v9 = [(ADAssistantStateDumpManager *)self _dumpOnDeviceAnalyticsBiomeStream:onDeviceDigestUsageMetrics];
  [v4 addEntriesFromDictionary:v9];

  v10 = BiomeLibrary();
  siri2 = [v10 Siri];
  metrics2 = [siri2 Metrics];
  onDeviceDigestSegmentsCohorts = [metrics2 OnDeviceDigestSegmentsCohorts];
  v14 = [(ADAssistantStateDumpManager *)self _dumpOnDeviceAnalyticsBiomeStream:onDeviceDigestSegmentsCohorts];
  [v4 addEntriesFromDictionary:v14];

  v15 = BiomeLibrary();
  siri3 = [v15 Siri];
  metrics3 = [siri3 Metrics];
  onDeviceDigestExperimentMetrics = [metrics3 OnDeviceDigestExperimentMetrics];
  v19 = [(ADAssistantStateDumpManager *)self _dumpOnDeviceAnalyticsBiomeStream:onDeviceDigestExperimentMetrics];
  [v4 addEntriesFromDictionary:v19];

  v20 = BiomeLibrary();
  siri4 = [v20 Siri];
  sELFProcessedEvent = [siri4 SELFProcessedEvent];
  v23 = [(ADAssistantStateDumpManager *)self _dumpOnDeviceAnalyticsBiomeStream:sELFProcessedEvent];
  [v4 addEntriesFromDictionary:v23];

  return v4;
}

- (BOOL)_shouldDumpSiriOnDeviceAnalyticsBiomeStreams
{
  if (![(ADAssistantStateDumpManager *)self _isInternalInstall])
  {
    v4 = AFSiriLogContextDaemon;
    v3 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (!v3)
    {
      return v3;
    }

    v7 = 136315138;
    v8 = "[ADAssistantStateDumpManager _shouldDumpSiriOnDeviceAnalyticsBiomeStreams]";
    v5 = "%s Not dumping on device analytics Biome stream because not internal install.";
    goto LABEL_9;
  }

  if (![(ADAssistantStateDumpManager *)self _shouldWriteSODABiomeStreamsToSysdiagnose])
  {
    v4 = AFSiriLogContextDaemon;
    v3 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (!v3)
    {
      return v3;
    }

    v7 = 136315138;
    v8 = "[ADAssistantStateDumpManager _shouldDumpSiriOnDeviceAnalyticsBiomeStreams]";
    v5 = "%s Not dumping on device analytics Biome stream because setting not enabled.";
LABEL_9:
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, v5, &v7, 0xCu);
    LOBYTE(v3) = 0;
    return v3;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (id)_getStateProviders
{
  v2 = [NSArray alloc];
  v3 = +[ADAssetManager sharedInstance];
  v4 = +[ADDeviceCircleManager sharedInstance];
  v5 = +[ADPreferences sharedPreferences];
  v6 = +[ADMultiUserService sharedService];
  v7 = [v2 initWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

- (id)_dumpAssistantState
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ADAssistantStateDumpManager _dumpAssistantState]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Dumping assistant state", buf, 0xCu);
  }

  val = +[NSMutableDictionary dictionary];
  _getStateProviders = [(ADAssistantStateDumpManager *)self _getStateProviders];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADAssistantStateDumpManager _dumpAssistantState]";
    *&buf[12] = 2112;
    *&buf[14] = _getStateProviders;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Taking a state snapshot from providers: %@", buf, 0x16u);
  }

  v5 = dispatch_group_create();
  objc_initWeak(&location, val);
  objc_initWeak(&from, self->_resultQueue);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v6 = _getStateProviders;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v7)
  {
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if (v10)
        {
          dispatch_group_enter(v5);
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "[ADAssistantStateDumpManager _dumpAssistantState]";
            *&buf[12] = 2112;
            *&buf[14] = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Calling %@ provider for a state chunk", buf, 0x16u);
          }

          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10009F994;
          v27[3] = &unk_100510108;
          v14 = v12;
          v28 = v14;
          objc_copyWeak(&v30, &from);
          objc_copyWeak(&v31, &location);
          v29 = v5;
          [v10 dumpAssistantStateChunk:v27];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&v30);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v7);
  }

  v15 = dispatch_time(0, 2000000000);
  if (dispatch_group_wait(v5, v15))
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADAssistantStateDumpManager _dumpAssistantState]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Timed out waiting for state chunks", buf, 0xCu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = sub_10009FC1C;
  v40 = sub_10009FC2C;
  v41 = 0;
  resultQueue = self->_resultQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FC34;
  block[3] = &unk_10051C588;
  selfCopy = self;
  v26 = buf;
  v24 = val;
  v18 = val;
  dispatch_sync(resultQueue, block);
  v19 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v19;
}

- (id)dumpAssistantState
{
  v3 = objc_alloc_init(NSMutableDictionary);
  _dumpAssistantState = [(ADAssistantStateDumpManager *)self _dumpAssistantState];
  [v3 addEntriesFromDictionary:_dumpAssistantState];
  if ([(ADAssistantStateDumpManager *)self _shouldDumpSiriOnDeviceAnalyticsBiomeStreams])
  {
    _dumpSiriOnDeviceAnalyticsBiomeStreams = [(ADAssistantStateDumpManager *)self _dumpSiriOnDeviceAnalyticsBiomeStreams];
    [v3 addEntriesFromDictionary:_dumpSiriOnDeviceAnalyticsBiomeStreams];
  }

  v6 = [v3 description];

  return v6;
}

- (ADAssistantStateDumpManager)init
{
  v6.receiver = self;
  v6.super_class = ADAssistantStateDumpManager;
  v2 = [(ADAssistantStateDumpManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.siri.dump_state", 0);
    resultQueue = v2->_resultQueue;
    v2->_resultQueue = v3;
  }

  return v2;
}

@end