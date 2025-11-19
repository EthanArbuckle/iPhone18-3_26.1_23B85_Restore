@interface SAAlarmDismiss
- (id)_ad_alarmResponseForResponse:(id)a3;
- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3;
@end

@implementation SAAlarmDismiss

- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7
{
  v7 = a7;
  v10 = a5;
  v11 = sub_100015560(a3);
  v12 = [(SAAlarmDismiss *)self alarmIds];
  v13 = sub_10009A0E0(v11, v12, v7);

  v14 = [v13 deviceInfo];
  v15 = sub_1002BC960(v10, v14);

  v16 = [(SAAlarmDismiss *)self alarmIds];
  v17 = sub_10009A328(v13, v15, v16, @"dismiss");

  return v17;
}

- (id)_ad_alarmResponseForResponse:(id)a3
{
  v3 = a3;
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

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AFDismissAlarmRequest);
  v6 = [(SAAlarmDismiss *)self alarmIds];
  [v5 setAlarmURLs:v6];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [(SAAlarmDismiss *)self alarmIds];
    v10 = 136315394;
    v11 = "[SAAlarmDismiss(ADAlarmTransformer) _ad_getAlarmRequestRepresentationWithCompletionHandler:]";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Asking to dismiss alarms with identifiers %@", &v10, 0x16u);
  }

  v4[2](v4, v5);
}

@end