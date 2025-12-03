@interface ADDeviceSyncTimerConsumer
- (int64_t)preferredPullingModeForDeviceWithIdentifier:(id)identifier fromGeneration:(unint64_t)generation toGeneration:(unint64_t)toGeneration;
- (void)applyIncrementalChanges:(id)changes fromDeviceWithIdentifier:(id)identifier;
- (void)applySnapshot:(id)snapshot fromDeviceWithIdentifier:(id)identifier;
- (void)finalizeForDeviceWithIdentifier:(id)identifier;
- (void)getGenerationForDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)prepareForDeviceWithIdentifier:(id)identifier;
@end

@implementation ADDeviceSyncTimerConsumer

- (void)applySnapshot:(id)snapshot fromDeviceWithIdentifier:(id)identifier
{
  snapshotCopy = snapshot;
  identifierCopy = identifier;
  v7 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[ADDeviceSyncTimerConsumer applySnapshot:fromDeviceWithIdentifier:]";
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = snapshotCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, snapshot = %@", buf, 0x20u);
  }

  if (snapshotCopy && identifierCopy)
  {
    v8 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADDeviceSyncTimerConsumer applySnapshot:fromDeviceWithIdentifier:]";
      v16 = 2112;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Loading synced timer storage for device %@...", buf, 0x16u);
    }

    v9 = +[ADClockService sharedService];
    remoteTimerManager = [v9 remoteTimerManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002F0E6C;
    v11[3] = &unk_10051AF10;
    v12 = identifierCopy;
    v13 = snapshotCopy;
    [remoteTimerManager accessStorageForDeviceWithIdentifier:v12 usingBlock:v11];
  }
}

- (void)applyIncrementalChanges:(id)changes fromDeviceWithIdentifier:(id)identifier
{
  changesCopy = changes;
  identifierCopy = identifier;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[ADDeviceSyncTimerConsumer applyIncrementalChanges:fromDeviceWithIdentifier:]";
    v15 = 2112;
    v16 = identifierCopy;
    v17 = 2112;
    v18 = changesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, incrementalChanges = %@", &v13, 0x20u);
  }

  v9 = [changesCopy count];
  if (identifierCopy)
  {
    if (v9)
    {
      v10 = AFSiriLogContextDeviceSync;
      if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        type = [(ADDeviceSyncTimerConsumer *)self type];
        v13 = 136315394;
        v14 = "[ADDeviceSyncTimerConsumer applyIncrementalChanges:fromDeviceWithIdentifier:]";
        v15 = 2112;
        v16 = type;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Applying incremental changes is not supported for type %@.", &v13, 0x16u);
      }
    }
  }
}

- (void)getGenerationForDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADDeviceSyncTimerConsumer getGenerationForDeviceWithIdentifier:completion:]";
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@", buf, 0x16u);
  }

  if (identifierCopy && completionCopy)
  {
    v8 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADDeviceSyncTimerConsumer getGenerationForDeviceWithIdentifier:completion:]";
      v16 = 2112;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Loading synced timer generation for device %@...", buf, 0x16u);
    }

    v9 = +[ADClockService sharedService];
    remoteTimerManager = [v9 remoteTimerManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002F15A4;
    v11[3] = &unk_10051AEE8;
    v12 = identifierCopy;
    v13 = completionCopy;
    [remoteTimerManager accessStorageForDeviceWithIdentifier:v12 usingBlock:v11];
  }
}

- (int64_t)preferredPullingModeForDeviceWithIdentifier:(id)identifier fromGeneration:(unint64_t)generation toGeneration:(unint64_t)toGeneration
{
  identifierCopy = identifier;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[ADDeviceSyncTimerConsumer preferredPullingModeForDeviceWithIdentifier:fromGeneration:toGeneration:]";
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2048;
    generationCopy = generation;
    v16 = 2048;
    toGenerationCopy = toGeneration;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, fromGeneration = %llu, toGeneration = %llu", &v10, 0x2Au);
  }

  return 2 * (identifierCopy != 0);
}

- (void)finalizeForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADDeviceSyncTimerConsumer finalizeForDeviceWithIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@", &v7, 0x16u);
  }

  if (identifierCopy)
  {
    v5 = +[ADClockService sharedService];
    remoteTimerManager = [v5 remoteTimerManager];
    [remoteTimerManager finalizeStorageForDeviceWithIdentifier:identifierCopy];
  }
}

- (void)prepareForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADDeviceSyncTimerConsumer prepareForDeviceWithIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@", &v7, 0x16u);
  }

  if (identifierCopy)
  {
    v5 = +[ADClockService sharedService];
    remoteTimerManager = [v5 remoteTimerManager];
    [remoteTimerManager prepareStorageForDeviceWithIdentifier:identifierCopy];
  }
}

@end