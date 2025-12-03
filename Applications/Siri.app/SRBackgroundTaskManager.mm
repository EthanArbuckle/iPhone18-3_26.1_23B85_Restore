@interface SRBackgroundTaskManager
- (SRBackgroundTaskManager)init;
- (void)_endBackgroundTask;
- (void)dealloc;
@end

@implementation SRBackgroundTaskManager

- (SRBackgroundTaskManager)init
{
  v13.receiver = self;
  v13.super_class = SRBackgroundTaskManager;
  v2 = [(SRBackgroundTaskManager *)&v13 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[UIApplication sharedApplication];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10008BB2C;
    v10 = &unk_1001676A0;
    objc_copyWeak(&v11, &location);
    v2->_taskIdentifier = [v3 beginBackgroundTaskWithExpirationHandler:&v7];

    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSNumber numberWithUnsignedInteger:v2->_taskIdentifier, v7, v8, v9, v10];
      *buf = 136315650;
      v15 = "[SRBackgroundTaskManager init]";
      v16 = 2112;
      v17 = v2;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s %@ - background task identifier: %@", buf, 0x20u);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[SRBackgroundTaskManager dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(SRBackgroundTaskManager *)self _endBackgroundTask];
  v4.receiver = self;
  v4.super_class = SRBackgroundTaskManager;
  [(SRBackgroundTaskManager *)&v4 dealloc];
}

- (void)_endBackgroundTask
{
  if (self->_taskIdentifier != UIBackgroundTaskInvalid)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      taskIdentifier = self->_taskIdentifier;
      v5 = v3;
      v6 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
      v8 = 136315650;
      v9 = "[SRBackgroundTaskManager _endBackgroundTask]";
      v10 = 2112;
      selfCopy = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@ - ending background task with id: %@", &v8, 0x20u);
    }

    v7 = +[UIApplication sharedApplication];
    [v7 endBackgroundTask:self->_taskIdentifier];

    self->_taskIdentifier = UIBackgroundTaskInvalid;
  }
}

@end