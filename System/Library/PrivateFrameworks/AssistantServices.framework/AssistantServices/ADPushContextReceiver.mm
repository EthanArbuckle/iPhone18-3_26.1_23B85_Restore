@interface ADPushContextReceiver
- (ADPushContextReceiver)initWithCollector:(id)a3 pid:(int)a4 connection:(id)a5;
- (void)sendContext:(id)a3;
@end

@implementation ADPushContextReceiver

- (void)sendContext:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    pid = self->_pid;
    v9 = 136315394;
    v10 = "[ADPushContextReceiver sendContext:]";
    v11 = 1024;
    v12 = pid;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Got context for pid %d", &v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_collector);
  [WeakRetained _setContext:v4 forPID:self->_pid];

  v8 = objc_loadWeakRetained(&self->_connection);
  [v8 invalidate];
}

- (ADPushContextReceiver)initWithCollector:(id)a3 pid:(int)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ADPushContextReceiver;
  v10 = [(ADPushContextReceiver *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_collector, v8);
    v11->_pid = a4;
    objc_storeWeak(&v11->_connection, v9);
  }

  return v11;
}

@end