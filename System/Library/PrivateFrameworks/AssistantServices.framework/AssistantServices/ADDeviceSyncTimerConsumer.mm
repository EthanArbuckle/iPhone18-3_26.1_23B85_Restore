@interface ADDeviceSyncTimerConsumer
- (int64_t)preferredPullingModeForDeviceWithIdentifier:(id)a3 fromGeneration:(unint64_t)a4 toGeneration:(unint64_t)a5;
- (void)applyIncrementalChanges:(id)a3 fromDeviceWithIdentifier:(id)a4;
- (void)applySnapshot:(id)a3 fromDeviceWithIdentifier:(id)a4;
- (void)finalizeForDeviceWithIdentifier:(id)a3;
- (void)getGenerationForDeviceWithIdentifier:(id)a3 completion:(id)a4;
- (void)prepareForDeviceWithIdentifier:(id)a3;
@end

@implementation ADDeviceSyncTimerConsumer

- (void)applySnapshot:(id)a3 fromDeviceWithIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[ADDeviceSyncTimerConsumer applySnapshot:fromDeviceWithIdentifier:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, snapshot = %@", buf, 0x20u);
  }

  if (v5 && v6)
  {
    v8 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADDeviceSyncTimerConsumer applySnapshot:fromDeviceWithIdentifier:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Loading synced timer storage for device %@...", buf, 0x16u);
    }

    v9 = +[ADClockService sharedService];
    v10 = [v9 remoteTimerManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002F0E6C;
    v11[3] = &unk_10051AF10;
    v12 = v6;
    v13 = v5;
    [v10 accessStorageForDeviceWithIdentifier:v12 usingBlock:v11];
  }
}

- (void)applyIncrementalChanges:(id)a3 fromDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[ADDeviceSyncTimerConsumer applyIncrementalChanges:fromDeviceWithIdentifier:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, incrementalChanges = %@", &v13, 0x20u);
  }

  v9 = [v6 count];
  if (v7)
  {
    if (v9)
    {
      v10 = AFSiriLogContextDeviceSync;
      if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [(ADDeviceSyncTimerConsumer *)self type];
        v13 = 136315394;
        v14 = "[ADDeviceSyncTimerConsumer applyIncrementalChanges:fromDeviceWithIdentifier:]";
        v15 = 2112;
        v16 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Applying incremental changes is not supported for type %@.", &v13, 0x16u);
      }
    }
  }
}

- (void)getGenerationForDeviceWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADDeviceSyncTimerConsumer getGenerationForDeviceWithIdentifier:completion:]";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@", buf, 0x16u);
  }

  if (v5 && v6)
  {
    v8 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADDeviceSyncTimerConsumer getGenerationForDeviceWithIdentifier:completion:]";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Loading synced timer generation for device %@...", buf, 0x16u);
    }

    v9 = +[ADClockService sharedService];
    v10 = [v9 remoteTimerManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002F15A4;
    v11[3] = &unk_10051AEE8;
    v12 = v5;
    v13 = v6;
    [v10 accessStorageForDeviceWithIdentifier:v12 usingBlock:v11];
  }
}

- (int64_t)preferredPullingModeForDeviceWithIdentifier:(id)a3 fromGeneration:(unint64_t)a4 toGeneration:(unint64_t)a5
{
  v7 = a3;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[ADDeviceSyncTimerConsumer preferredPullingModeForDeviceWithIdentifier:fromGeneration:toGeneration:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, fromGeneration = %llu, toGeneration = %llu", &v10, 0x2Au);
  }

  return 2 * (v7 != 0);
}

- (void)finalizeForDeviceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADDeviceSyncTimerConsumer finalizeForDeviceWithIdentifier:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@", &v7, 0x16u);
  }

  if (v3)
  {
    v5 = +[ADClockService sharedService];
    v6 = [v5 remoteTimerManager];
    [v6 finalizeStorageForDeviceWithIdentifier:v3];
  }
}

- (void)prepareForDeviceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADDeviceSyncTimerConsumer prepareForDeviceWithIdentifier:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@", &v7, 0x16u);
  }

  if (v3)
  {
    v5 = +[ADClockService sharedService];
    v6 = [v5 remoteTimerManager];
    [v6 prepareStorageForDeviceWithIdentifier:v3];
  }
}

@end