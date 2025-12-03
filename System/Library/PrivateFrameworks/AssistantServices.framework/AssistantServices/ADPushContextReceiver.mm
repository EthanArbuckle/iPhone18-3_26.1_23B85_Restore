@interface ADPushContextReceiver
- (ADPushContextReceiver)initWithCollector:(id)collector pid:(int)pid connection:(id)connection;
- (void)sendContext:(id)context;
@end

@implementation ADPushContextReceiver

- (void)sendContext:(id)context
{
  contextCopy = context;
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
  [WeakRetained _setContext:contextCopy forPID:self->_pid];

  v8 = objc_loadWeakRetained(&self->_connection);
  [v8 invalidate];
}

- (ADPushContextReceiver)initWithCollector:(id)collector pid:(int)pid connection:(id)connection
{
  collectorCopy = collector;
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = ADPushContextReceiver;
  v10 = [(ADPushContextReceiver *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_collector, collectorCopy);
    v11->_pid = pid;
    objc_storeWeak(&v11->_connection, connectionCopy);
  }

  return v11;
}

@end