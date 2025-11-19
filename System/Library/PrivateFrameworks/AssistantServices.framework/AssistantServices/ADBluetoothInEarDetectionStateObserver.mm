@interface ADBluetoothInEarDetectionStateObserver
+ (id)sharedObserver;
- (id)_init;
- (void)_invalidate;
- (void)bluetoothDevice:(id)a3 headphoneInEarDetectionStateDidChangeFrom:(id)a4 to:(id)a5;
- (void)startObservingForBTAddress:(id)a3 forObserverID:(unint64_t)a4;
- (void)stopObservingForObserverID:(unint64_t)a3;
@end

@implementation ADBluetoothInEarDetectionStateObserver

+ (id)sharedObserver
{
  if (qword_100590B50 != -1)
  {
    dispatch_once(&qword_100590B50, &stru_10051D748);
  }

  v3 = qword_100590B58;

  return v3;
}

- (void)_invalidate
{
  bluetoothDevice = self->_bluetoothDevice;
  if (bluetoothDevice)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "[ADBluetoothInEarDetectionStateObserver _invalidate]";
      v8 = 2112;
      v9 = bluetoothDevice;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Invallidating bluetooth device: %@", &v6, 0x16u);
      bluetoothDevice = self->_bluetoothDevice;
    }

    [(AFBluetoothDevice *)bluetoothDevice removeObserver:self];
    v5 = self->_bluetoothDevice;
    self->_bluetoothDevice = 0;
  }
}

- (void)bluetoothDevice:(id)a3 headphoneInEarDetectionStateDidChangeFrom:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[ADBluetoothInEarDetectionStateObserver bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s headphoneInEarDetectionStateDidChangeFrom from: %@ to: %@", &v14, 0x20u);
  }

  if (v9 != v10)
  {
    v12 = [v8 identifier];
    v13 = [AFBluetoothHeadphoneInEarDetectionState encodeForBTAddress:v12 headphoneInEarDetectionStateDidChangeFrom:v9 to:v10];

    [(AFNotifyStatePublisher *)self->_publisher publishState:v13];
  }
}

- (void)stopObservingForObserverID:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100363CC8;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)startObservingForBTAddress:(id)a3 forObserverID:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100363FF8;
  block[3] = &unk_10051E128;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = ADBluetoothInEarDetectionStateObserver;
  v2 = [(ADBluetoothInEarDetectionStateObserver *)&v13 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ADBluetoothInEarDetectionStateObserver", v5);

    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [AFNotifyStatePublisher alloc];
    v9 = [NSString stringWithUTF8String:AFBluetoothInEarDetectionStateChanged];
    v10 = [v8 initWithName:v9 queue:v2->_queue];
    publisher = v2->_publisher;
    v2->_publisher = v10;
  }

  return v2;
}

@end