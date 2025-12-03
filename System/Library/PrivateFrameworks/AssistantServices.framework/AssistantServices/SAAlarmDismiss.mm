@interface SAAlarmDismiss
- (id)_ad_alarmResponseForResponse:(id)response;
- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler;
@end

@implementation SAAlarmDismiss

- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower
{
  followerCopy = follower;
  mapCopy = map;
  v11 = sub_100015560(tuples);
  alarmIds = [(SAAlarmDismiss *)self alarmIds];
  v13 = sub_10009A0E0(v11, alarmIds, followerCopy);

  deviceInfo = [v13 deviceInfo];
  v15 = sub_1002BC960(mapCopy, deviceInfo);

  alarmIds2 = [(SAAlarmDismiss *)self alarmIds];
  v17 = sub_10009A328(v13, v15, alarmIds2, @"dismiss");

  return v17;
}

- (id)_ad_alarmResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = SACommandSucceeded_ptr;
  if ((isKindOfClass & 1) == 0)
  {
    v5 = SACommandFailed_ptr;
  }

  v6 = objc_alloc_init(*v5);

  return v6;
}

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AFDismissAlarmRequest);
  alarmIds = [(SAAlarmDismiss *)self alarmIds];
  [v5 setAlarmURLs:alarmIds];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    alarmIds2 = [(SAAlarmDismiss *)self alarmIds];
    v10 = 136315394;
    v11 = "[SAAlarmDismiss(ADAlarmTransformer) _ad_getAlarmRequestRepresentationWithCompletionHandler:]";
    v12 = 2112;
    v13 = alarmIds2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Asking to dismiss alarms with identifiers %@", &v10, 0x16u);
  }

  handlerCopy[2](handlerCopy, v5);
}

@end