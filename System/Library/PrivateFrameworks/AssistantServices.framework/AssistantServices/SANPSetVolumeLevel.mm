@interface SANPSetVolumeLevel
- (int64_t)_ad_volumeAction;
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSetVolumeLevel

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  volumeValue = [(SANPSetVolumeLevel *)self volumeValue];
  [volumeValue floatValue];
  v10 = v9;

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    actionType = [(SANPSetVolumeLevel *)self actionType];
    *buf = 136315650;
    v21 = "[SANPSetVolumeLevel(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]";
    v22 = 2112;
    v23 = actionType;
    v24 = 2048;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ %f", buf, 0x20u);
  }

  [(SANPSetVolumeLevel *)self acknowledgedExceedingVolumeLimit];
  _ad_volumeAction = [(SANPSetVolumeLevel *)self _ad_volumeAction];
  mach_absolute_time();
  targetQueue = [serviceCopy targetQueue];
  v18 = serviceCopy;
  v19 = handlerCopy;
  v16 = serviceCopy;
  v17 = handlerCopy;
  AFPerformDeviceVolumeAction();

  [AFAggregator logSiriMediaVolumeAction:_ad_volumeAction];
}

- (int64_t)_ad_volumeAction
{
  actionType = [(SANPSetVolumeLevel *)self actionType];
  if ([SANPVolumeLevelActionTypeSETValue isEqualToString:actionType])
  {
    v3 = 2;
  }

  else if ([SANPVolumeLevelActionTypeINCREASEValue isEqualToString:actionType])
  {
    v3 = 3;
  }

  else if ([SANPVolumeLevelActionTypeDECREASEValue isEqualToString:actionType])
  {
    v3 = 4;
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SANPSetVolumeLevel(ADMediaRemote) _ad_volumeAction]";
      v8 = 2112;
      v9 = actionType;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unknown actionType %@", &v6, 0x16u);
    }

    v3 = 0;
  }

  return v3;
}

@end