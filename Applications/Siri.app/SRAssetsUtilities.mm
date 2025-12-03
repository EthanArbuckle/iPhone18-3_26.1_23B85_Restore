@interface SRAssetsUtilities
+ (BOOL)shouldShowAssetDownloadBanner;
+ (void)_runAssetCheckWithTask:(id)task;
+ (void)_scheduleAssetCheckWithEarliestBeginDate:(id)date;
+ (void)setupBackgroundAssetCheck;
- (BOOL)_hasInexpensiveNetwork;
- (SRAssetsUtilities)init;
- (unint64_t)_mockSiriAssetState;
- (void)checkAssetsWithCompletion:(id)completion;
@end

@implementation SRAssetsUtilities

- (SRAssetsUtilities)init
{
  v6.receiver = self;
  v6.super_class = SRAssetsUtilities;
  v2 = [(SRAssetsUtilities *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(UAFAssetUtilities);
    assetUtilities = v2->_assetUtilities;
    v2->_assetUtilities = v3;
  }

  return v2;
}

- (void)checkAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v5 assistantIsEnabled];

  if (assistantIsEnabled)
  {
    [(UAFAssetUtilities *)self->_assetUtilities refreshUnderstandingOnDeviceAssetsAvailableAsync];
    _mockSiriAssetState = [(SRAssetsUtilities *)self _mockSiriAssetState];
    if (_mockSiriAssetState)
    {
      v8 = _mockSiriAssetState;
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[SRAssetsUtilities checkAssetsWithCompletion:]";
        v16 = 2048;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Using mock value for Siri asset state: %lu", &v14, 0x16u);
      }

      completionCopy[2](completionCopy, v8);
    }

    else
    {
      if ([(UAFAssetUtilities *)self->_assetUtilities understandingOnDeviceAssetsAvailable])
      {
        v10 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v14 = 136315138;
          v15 = "[SRAssetsUtilities checkAssetsWithCompletion:]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Task shows finished asset state", &v14, 0xCu);
        }

        v11 = 3;
      }

      else if ([(UAFAssetUtilities *)self->_assetUtilities hasSufficientDiskSpaceForDownload])
      {
        [(UAFAssetUtilities *)self->_assetUtilities downloadSiriAssetsIfNeeded];
        v12 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v14 = 136315138;
          v15 = "[SRAssetsUtilities checkAssetsWithCompletion:]";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Task shows downloading asset state", &v14, 0xCu);
        }

        v11 = 2;
      }

      else
      {
        v13 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v14 = 136315138;
          v15 = "[SRAssetsUtilities checkAssetsWithCompletion:]";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Task shows out of space asset state", &v14, 0xCu);
        }

        v11 = 4;
      }

      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (unint64_t)_mockSiriAssetState
{
  v2 = [[SRUIFPreferences alloc] initWithSuiteName:@"com.apple.SiriViewService"];
  v3 = [v2 objectForKey:@"MockSiriAssetState"];

  if (v3)
  {
    v3 = [v2 integerForKey:@"MockSiriAssetState"];
  }

  return v3;
}

+ (void)setupBackgroundAssetCheck
{
  v2 = objc_alloc_init(SRPreferences);
  if (![(SRPreferences *)v2 hasPresentedSiriAssetsNotification])
  {
    v3 = +[BGTaskScheduler sharedScheduler];
    v4 = [v3 registerForTaskWithIdentifier:@"com.apple.siri.CheckAssetStatus" usingQueue:0 launchHandler:&stru_100167678];

    if (v4)
    {
      [SRAssetsUtilities _scheduleAssetCheckWithEarliestBeginDate:0];
    }

    else
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CB68C(v5);
      }
    }
  }
}

+ (void)_scheduleAssetCheckWithEarliestBeginDate:(id)date
{
  dateCopy = date;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "+[SRAssetsUtilities _scheduleAssetCheckWithEarliestBeginDate:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Submitting background task request to check assets.", buf, 0xCu);
  }

  v5 = [[BGProcessingTaskRequest alloc] initWithIdentifier:@"com.apple.siri.CheckAssetStatus"];
  [v5 setRequiresExternalPower:0];
  [v5 setRequiresNetworkConnectivity:1];
  [v5 setEarliestBeginDate:dateCopy];
  v6 = +[BGTaskScheduler sharedScheduler];
  v10 = 0;
  v7 = [v6 submitTaskRequest:v5 error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB724(v9, v8);
    }
  }
}

+ (void)_runAssetCheckWithTask:(id)task
{
  taskCopy = task;
  if (AFDeviceSupportsSiriUOD() & 1) != 0 || (AFDeviceSupportsHybridUOD())
  {
    v4 = objc_alloc_init(SRAssetsUtilities);
    objc_initWeak(location, taskCopy);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002FEFC;
    v8[3] = &unk_1001676A0;
    objc_copyWeak(&v9, location);
    [taskCopy setExpirationHandler:v8];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003000C;
    v6[3] = &unk_1001676C8;
    v7 = taskCopy;
    [(SRAssetsUtilities *)v4 checkAssetsWithCompletion:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "+[SRAssetsUtilities _runAssetCheckWithTask:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s UOD not supported by this device. No background task started.", location, 0xCu);
    }
  }
}

- (BOOL)_hasInexpensiveNetwork
{
  v2 = +[NWPathEvaluator sharedDefaultEvaluator];
  path = [v2 path];

  if ([path status] == 1)
  {
    v4 = [path isExpensive] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)shouldShowAssetDownloadBanner
{
  v2 = objc_alloc_init(SRAssetsUtilities);
  if ([(SRAssetsUtilities *)v2 _hasSufficientDiskSpaceForDownload])
  {
    _hasInexpensiveNetwork = [(SRAssetsUtilities *)v2 _hasInexpensiveNetwork];
  }

  else
  {
    _hasInexpensiveNetwork = 0;
  }

  return _hasInexpensiveNetwork;
}

@end