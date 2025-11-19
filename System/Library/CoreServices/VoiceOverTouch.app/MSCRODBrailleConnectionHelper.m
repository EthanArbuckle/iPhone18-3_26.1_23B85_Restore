@interface MSCRODBrailleConnectionHelper
+ (id)sharedHelper;
- (MSCRODBrailleConnectionHelper)init;
- (void)_processDeviceReconnectQueue;
- (void)handleBluetoothConnectionEventForQueue:(id)a3 forceProcess:(BOOL)a4;
- (void)queueDeviceConnection:(id)a3 withCallback:(id)a4;
@end

@implementation MSCRODBrailleConnectionHelper

+ (id)sharedHelper
{
  if (qword_100019888 != -1)
  {
    sub_10000CDB4();
  }

  v3 = qword_100019880;

  return v3;
}

- (MSCRODBrailleConnectionHelper)init
{
  v10.receiver = self;
  v10.super_class = MSCRODBrailleConnectionHelper;
  v2 = [(MSCRODBrailleConnectionHelper *)&v10 init];
  v3 = +[NSMutableArray array];
  reconnectDeviceQueue = v2->_reconnectDeviceQueue;
  v2->_reconnectDeviceQueue = v3;

  v5 = +[NSMutableDictionary dictionary];
  reconnectDeviceCallbacks = v2->_reconnectDeviceCallbacks;
  v2->_reconnectDeviceCallbacks = v5;

  v7 = dispatch_queue_create("global-braille-reconnect-queue", 0);
  reconnectQueue = v2->_reconnectQueue;
  v2->_reconnectQueue = v7;

  v2->_waitingForCallback = 0;
  return v2;
}

- (void)_processDeviceReconnectQueue
{
  if (!self->_waitingForCallback)
  {
LABEL_6:
    v4 = [(NSMutableArray *)self->_reconnectDeviceQueue firstObject];
    if (v4)
    {
      v6 = AXLogBrailleHW();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ATTEMPT BT CONNECT: %@", buf, 0xCu);
      }

      self->_waitingForCallback = 1;
      self->_lastBTConnectTime = CFAbsoluteTimeGetCurrent();
      [v4 device];
      v7 = BTDeviceConnectServices();
      v8 = AXLogBrailleHW();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [NSNumber numberWithInt:v7];
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received connect result: %@", buf, 0xCu);
      }

      reconnectDeviceCallbacks = self->_reconnectDeviceCallbacks;
      v11 = [v4 address];
      v12 = [(NSMutableDictionary *)reconnectDeviceCallbacks objectForKey:v11];

      if (v12)
      {
        v13 = v12;
        AXPerformBlockAsynchronouslyOnMainThread();
      }
    }

    goto LABEL_16;
  }

  v3 = CFAbsoluteTimeGetCurrent() - self->_lastBTConnectTime;
  v4 = AXLogBrailleHW();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 > 30.0)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waited 30 seconds for BT callback, which never came...", buf, 2u);
    }

    self->_waitingForCallback = 0;
    goto LABEL_6;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Still waiting for BT callback", buf, 2u);
  }

LABEL_16:
}

- (void)handleBluetoothConnectionEventForQueue:(id)a3 forceProcess:(BOOL)a4
{
  v6 = a3;
  reconnectQueue = self->_reconnectQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000015D4;
  block[3] = &unk_100014720;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(reconnectQueue, block);
}

- (void)queueDeviceConnection:(id)a3 withCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = AXLogBrailleHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Queuing connect BT device: %@", buf, 0xCu);
    }

    reconnectQueue = self->_reconnectQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000019D4;
    block[3] = &unk_100014748;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(reconnectQueue, block);
  }
}

@end