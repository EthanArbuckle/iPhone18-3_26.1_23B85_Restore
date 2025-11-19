@interface ADServiceStatistics
- (ADServiceStatistics)initWithServiceIdentifier:(id)a3;
- (id)_commandTimes;
- (id)_serviceStatsPath;
- (id)_statsDict;
- (id)_statsDirectory;
- (id)_statsForCommand:(id)a3;
- (void)_saveStats;
- (void)dealloc;
- (void)markIncomingCommand:(id)a3;
- (void)markResponseForCommand:(id)a3;
@end

@implementation ADServiceStatistics

- (void)markResponseForCommand:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADServiceStatistics *)self _commandTimes];
    v6 = [v5 objectForKey:v4];

    if (v6)
    {
      v7 = [(ADServiceStatistics *)self _statsForCommand:v4];
      v8 = [v7 objectForKey:@"Total Count"];
      v9 = [v8 intValue];

      v10 = [NSNumber numberWithInt:(v9 + 1)];
      [v7 setObject:v10 forKey:@"Total Count"];

      if (v9 >= 9)
      {
        v9 = 9;
      }

      v11 = [v7 objectForKey:@"Response Time"];
      [v11 doubleValue];
      v13 = v12;

      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:v6];
      v16 = v15;

      v17 = [NSNumber numberWithDouble:(v16 + v13 * v9) / (v9 + 1)];
      [v7 setObject:v17 forKey:@"Response Time"];

      [(ADServiceStatistics *)self _saveStats];
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        serviceIdentifier = self->_serviceIdentifier;
        v22 = 136315650;
        v23 = "[ADServiceStatistics markResponseForCommand:]";
        v24 = 2112;
        v25 = v4;
        v26 = 2114;
        v27 = serviceIdentifier;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s No start time for command %@ for service %{public}@", &v22, 0x20u);
      }
    }
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = self->_serviceIdentifier;
      v22 = 136315394;
      v23 = "[ADServiceStatistics markResponseForCommand:]";
      v24 = 2114;
      v25 = v19;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Can't mark response for nil command for service %{public}@", &v22, 0x16u);
    }
  }
}

- (void)markIncomingCommand:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADServiceStatistics *)self _commandTimes];
    v6 = +[NSDate date];
    [v5 setObject:v6 forKey:v4];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADServiceStatistics markIncomingCommand:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Trying to mark command start for nil command", &v8, 0xCu);
    }
  }
}

- (id)_commandTimes
{
  commandTimes = self->_commandTimes;
  if (!commandTimes)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_commandTimes;
    self->_commandTimes = v4;

    commandTimes = self->_commandTimes;
  }

  return commandTimes;
}

- (void)_saveStats
{
  statsDict = self->_statsDict;
  if (statsDict)
  {
    v9 = 0;
    v4 = [NSPropertyListSerialization dataWithPropertyList:statsDict format:200 options:0 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        serviceIdentifier = self->_serviceIdentifier;
        *buf = 136315650;
        v11 = "[ADServiceStatistics _saveStats]";
        v12 = 2114;
        v13 = serviceIdentifier;
        v14 = 2114;
        v15 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error serializing plist data for service %{public}@ %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v8 = [(ADServiceStatistics *)self _serviceStatsPath];
      [v4 writeToFile:v8 atomically:0];
    }
  }
}

- (id)_statsForCommand:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceStatistics *)self _statsDict];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [(ADServiceStatistics *)self _statsDict];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (id)_statsDict
{
  p_statsDict = &self->_statsDict;
  statsDict = self->_statsDict;
  if (!statsDict)
  {
    v5 = [NSData alloc];
    v6 = [(ADServiceStatistics *)self _serviceStatsPath];
    v7 = [v5 initWithContentsOfFile:v6];

    if (v7)
    {
      v15 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:v7 options:1 format:0 error:&v15];
      v9 = v15;
      if (v9)
      {
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          serviceIdentifier = self->_serviceIdentifier;
          *buf = 136315650;
          v17 = "[ADServiceStatistics _statsDict]";
          v18 = 2114;
          v19 = serviceIdentifier;
          v20 = 2114;
          v21 = v9;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error reading stats plist for %{public}@ %{public}@", buf, 0x20u);
        }
      }

      else
      {
        objc_storeStrong(p_statsDict, v8);
      }
    }

    else
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = *p_statsDict;
      *p_statsDict = v12;
    }

    statsDict = *p_statsDict;
  }

  return statsDict;
}

- (id)_serviceStatsPath
{
  v3 = [(ADServiceStatistics *)self _statsDirectory];
  v4 = [NSString stringWithFormat:@"%@.plist", self->_serviceIdentifier];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)_statsDirectory
{
  if (qword_100590128 != -1)
  {
    dispatch_once(&qword_100590128, &stru_100511A68);
  }

  v3 = qword_100590120;

  return v3;
}

- (void)dealloc
{
  [(ADServiceStatistics *)self _saveStats];
  v3.receiver = self;
  v3.super_class = ADServiceStatistics;
  [(ADServiceStatistics *)&v3 dealloc];
}

- (ADServiceStatistics)initWithServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[ADPreferences sharedPreferences];
  v6 = [v5 statisticsRecordingEnabled];

  v7 = 0;
  if (v4 && v6)
  {
    v12.receiver = self;
    v12.super_class = ADServiceStatistics;
    v8 = [(ADServiceStatistics *)&v12 init];
    if (v8)
    {
      v9 = [v4 copy];
      serviceIdentifier = v8->_serviceIdentifier;
      v8->_serviceIdentifier = v9;
    }

    self = v8;
    v7 = self;
  }

  return v7;
}

@end