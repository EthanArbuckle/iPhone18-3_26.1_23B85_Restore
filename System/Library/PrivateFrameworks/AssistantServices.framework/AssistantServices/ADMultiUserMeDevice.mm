@interface ADMultiUserMeDevice
+ (id)sharedInstance;
- (id)_init;
- (id)isMeDevice;
- (id)meDeviceIDSIdentifier;
- (void)_checkMeDevice;
- (void)_setupMeDeviceFetch;
- (void)dealloc;
@end

@implementation ADMultiUserMeDevice

+ (id)sharedInstance
{
  if (qword_100590470 != -1)
  {
    dispatch_once(&qword_100590470, &stru_100514980);
  }

  v3 = qword_100590478;

  return v3;
}

- (id)isMeDevice
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[ADMultiUserMeDevice isMeDevice]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v10, 0xCu);
  }

  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:self->_lastUpdated];
  if (v5 > 1800.0)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADMultiUserMeDevice isMeDevice]";
      v12 = 2112;
      v13 = v4;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Refreshing meDevice cache at: %@", &v10, 0x16u);
    }

    [(ADMultiUserMeDevice *)self _checkMeDevice];
  }

  isMeDevice = self->_isMeDevice;
  v8 = isMeDevice;

  return isMeDevice;
}

- (void)_checkMeDevice
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315138;
    v17 = "[ADMultiUserMeDevice _checkMeDevice]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v16, 0xCu);
  }

  v4 = [(CUSystemMonitor *)self->_systemMonitor meDeviceIsMe];
  v5 = self->_isMeDevice;
  v6 = [NSNumber numberWithBool:v4];
  isMeDevice = self->_isMeDevice;
  self->_isMeDevice = v6;

  v8 = [(CUSystemMonitor *)self->_systemMonitor meDeviceIDSDeviceID];
  meDeviceIDSIdentifier = self->_meDeviceIDSIdentifier;
  self->_meDeviceIDSIdentifier = v8;

  v10 = +[NSDate date];
  lastUpdated = self->_lastUpdated;
  self->_lastUpdated = v10;

  if (!v5)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ADMultiUserMeDevice _checkMeDevice]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Evaluated", &v16, 0xCu);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"ADMultiUserMeDeviceEvaluatedNotification" object:self->_isMeDevice];
  }

  if (v4 != [(NSNumber *)v5 BOOLValue])
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ADMultiUserMeDevice _checkMeDevice]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Changed", &v16, 0xCu);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"ADMultiUserMeDeviceChangedNotification" object:self->_isMeDevice];
  }
}

- (void)_setupMeDeviceFetch
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADMultiUserMeDevice _setupMeDeviceFetch]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = objc_alloc_init(CUSystemMonitor);
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = v4;

  [(CUSystemMonitor *)self->_systemMonitor setMeDeviceUseFindMyLocate:1];
  [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:&_dispatch_main_q];
  objc_initWeak(buf, self);
  v6 = self->_systemMonitor;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A3DDC;
  v13[3] = &unk_10051B5F0;
  objc_copyWeak(&v14, buf);
  [(CUSystemMonitor *)v6 setMeDeviceChangedHandler:v13];
  v7 = self->_systemMonitor;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A3EE4;
  v11[3] = &unk_10051B5F0;
  objc_copyWeak(&v12, buf);
  [(CUSystemMonitor *)v7 activateWithCompletion:v11];
  v8 = dispatch_time(0, 15000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A3FEC;
  block[3] = &unk_10051B5F0;
  objc_copyWeak(&v10, buf);
  dispatch_after(v8, &_dispatch_main_q, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (id)meDeviceIDSIdentifier
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[ADMultiUserMeDevice meDeviceIDSIdentifier]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v10, 0xCu);
  }

  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:self->_lastUpdated];
  if (v5 > 1800.0)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADMultiUserMeDevice meDeviceIDSIdentifier]";
      v12 = 2112;
      v13 = v4;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Refreshing meDevice cache at: %@", &v10, 0x16u);
    }

    [(ADMultiUserMeDevice *)self _checkMeDevice];
  }

  meDeviceIDSIdentifier = self->_meDeviceIDSIdentifier;
  v8 = meDeviceIDSIdentifier;

  return meDeviceIDSIdentifier;
}

- (void)dealloc
{
  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  v4.receiver = self;
  v4.super_class = ADMultiUserMeDevice;
  [(ADMultiUserMeDevice *)&v4 dealloc];
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = ADMultiUserMeDevice;
  v2 = [(ADMultiUserMeDevice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADMultiUserMeDevice *)v2 _setupMeDeviceFetch];
  }

  return v3;
}

@end