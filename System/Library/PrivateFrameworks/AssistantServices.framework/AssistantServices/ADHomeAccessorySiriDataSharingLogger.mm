@interface ADHomeAccessorySiriDataSharingLogger
- (ADHomeAccessorySiriDataSharingLogger)initWithTargetQueue:(id)a3;
- (id)logSiriDataSharingRepromptOptInStatus:(int64_t)a3 source:(int64_t)a4 reason:(id)a5;
- (void)_logSiriDataSharingPropagationAccessoryIdentifier:(id)a3 propagationEvent:(int64_t)a4 propagationReason:(id)a5 associatedLogEventIdentifier:(id)a6;
- (void)_logSiriDataSharingRepromptOptInStatus:(int64_t)a3 source:(int64_t)a4 reason:(id)a5 logEventIdentifier:(id)a6;
- (void)logSiriDataSharingPropagationAccessoryIdentifier:(id)a3 propagationEvent:(int64_t)a4 propagationReason:(id)a5 associatedLogEventIdentifier:(id)a6;
@end

@implementation ADHomeAccessorySiriDataSharingLogger

- (void)_logSiriDataSharingPropagationAccessoryIdentifier:(id)a3 propagationEvent:(int64_t)a4 propagationReason:(id)a5 associatedLogEventIdentifier:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1003626D8;
  v21 = &unk_10051D6A0;
  v12 = v9;
  v22 = v12;
  v25 = a4;
  v13 = v10;
  v23 = v13;
  v14 = v11;
  v24 = v14;
  v15 = [AFHomeAccessorySiriDataSharingPropagationLogEvent newWithBuilder:&v18];
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "[ADHomeAccessorySiriDataSharingLogger _logSiriDataSharingPropagationAccessoryIdentifier:propagationEvent:propagationReason:associatedLogEventIdentifier:]";
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Logging home accessory Siri data sharing propagation event: %@", buf, 0x16u);
  }

  v17 = [AFPreferences sharedPreferences:v18];
  [v17 insertHomeAccessorySiriDataSharingPropagationLogEvent:v15];
}

- (void)_logSiriDataSharingRepromptOptInStatus:(int64_t)a3 source:(int64_t)a4 reason:(id)a5 logEventIdentifier:(id)a6
{
  v9 = a5;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100362904;
  v18 = &unk_10051D678;
  v10 = a6;
  v19 = v10;
  v21 = a3;
  v22 = a4;
  v11 = v9;
  v20 = v11;
  v12 = [AFHomeAccessorySiriDataSharingChangeLogEvent newWithBuilder:&v15];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[ADHomeAccessorySiriDataSharingLogger _logSiriDataSharingRepromptOptInStatus:source:reason:logEventIdentifier:]";
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Logging home accessory Siri data sharing reprompt event: %@", buf, 0x16u);
  }

  v14 = [AFPreferences sharedPreferences:v15];
  [v14 appendHomeAccessorySiriDataSharingChangeLogEvent:v12];
}

- (void)logSiriDataSharingPropagationAccessoryIdentifier:(id)a3 propagationEvent:(int64_t)a4 propagationReason:(id)a5 associatedLogEventIdentifier:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100362AE8;
  block[3] = &unk_10051D650;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

- (id)logSiriDataSharingRepromptOptInStatus:(int64_t)a3 source:(int64_t)a4 reason:(id)a5
{
  v8 = a5;
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100362BFC;
  block[3] = &unk_10051D628;
  v20 = a3;
  v21 = a4;
  block[4] = self;
  v18 = v8;
  v12 = v10;
  v19 = v12;
  v13 = v8;
  dispatch_async(queue, block);
  v14 = v19;
  v15 = v12;

  return v12;
}

- (ADHomeAccessorySiriDataSharingLogger)initWithTargetQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADHomeAccessorySiriDataSharingLogger;
  v6 = [(ADHomeAccessorySiriDataSharingLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end