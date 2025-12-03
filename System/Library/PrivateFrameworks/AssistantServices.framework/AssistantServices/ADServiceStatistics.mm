@interface ADServiceStatistics
- (ADServiceStatistics)initWithServiceIdentifier:(id)identifier;
- (id)_commandTimes;
- (id)_serviceStatsPath;
- (id)_statsDict;
- (id)_statsDirectory;
- (id)_statsForCommand:(id)command;
- (void)_saveStats;
- (void)dealloc;
- (void)markIncomingCommand:(id)command;
- (void)markResponseForCommand:(id)command;
@end

@implementation ADServiceStatistics

- (void)markResponseForCommand:(id)command
{
  commandCopy = command;
  if (commandCopy)
  {
    _commandTimes = [(ADServiceStatistics *)self _commandTimes];
    v6 = [_commandTimes objectForKey:commandCopy];

    if (v6)
    {
      v7 = [(ADServiceStatistics *)self _statsForCommand:commandCopy];
      v8 = [v7 objectForKey:@"Total Count"];
      intValue = [v8 intValue];

      v10 = [NSNumber numberWithInt:(intValue + 1)];
      [v7 setObject:v10 forKey:@"Total Count"];

      if (intValue >= 9)
      {
        intValue = 9;
      }

      v11 = [v7 objectForKey:@"Response Time"];
      [v11 doubleValue];
      v13 = v12;

      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:v6];
      v16 = v15;

      v17 = [NSNumber numberWithDouble:(v16 + v13 * intValue) / (intValue + 1)];
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
        v25 = commandCopy;
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

- (void)markIncomingCommand:(id)command
{
  commandCopy = command;
  if (commandCopy)
  {
    _commandTimes = [(ADServiceStatistics *)self _commandTimes];
    v6 = +[NSDate date];
    [_commandTimes setObject:v6 forKey:commandCopy];
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
      _serviceStatsPath = [(ADServiceStatistics *)self _serviceStatsPath];
      [v4 writeToFile:_serviceStatsPath atomically:0];
    }
  }
}

- (id)_statsForCommand:(id)command
{
  commandCopy = command;
  _statsDict = [(ADServiceStatistics *)self _statsDict];
  v6 = [_statsDict objectForKey:commandCopy];

  if (!v6)
  {
    v6 = +[NSMutableDictionary dictionary];
    _statsDict2 = [(ADServiceStatistics *)self _statsDict];
    [_statsDict2 setObject:v6 forKey:commandCopy];
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
    _serviceStatsPath = [(ADServiceStatistics *)self _serviceStatsPath];
    v7 = [v5 initWithContentsOfFile:_serviceStatsPath];

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
  _statsDirectory = [(ADServiceStatistics *)self _statsDirectory];
  v4 = [NSString stringWithFormat:@"%@.plist", self->_serviceIdentifier];
  v5 = [_statsDirectory stringByAppendingPathComponent:v4];

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

- (ADServiceStatistics)initWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[ADPreferences sharedPreferences];
  statisticsRecordingEnabled = [v5 statisticsRecordingEnabled];

  selfCopy = 0;
  if (identifierCopy && statisticsRecordingEnabled)
  {
    v12.receiver = self;
    v12.super_class = ADServiceStatistics;
    v8 = [(ADServiceStatistics *)&v12 init];
    if (v8)
    {
      v9 = [identifierCopy copy];
      serviceIdentifier = v8->_serviceIdentifier;
      v8->_serviceIdentifier = v9;
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

@end