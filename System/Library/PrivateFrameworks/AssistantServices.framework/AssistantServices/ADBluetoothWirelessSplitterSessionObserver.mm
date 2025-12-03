@interface ADBluetoothWirelessSplitterSessionObserver
+ (id)sharedWirelessSplitterSessionObserver;
- (id)_init;
- (void)_invalidate;
- (void)bluetoothWirelessSplitterSession:(id)session sessionInfoDidChangeFrom:(id)from to:(id)to;
- (void)bluetoothWirelessSplitterSessionDidInvalidate:(id)invalidate;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation ADBluetoothWirelessSplitterSessionObserver

- (void)bluetoothWirelessSplitterSessionDidInvalidate:(id)invalidate
{
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADBluetoothWirelessSplitterSessionObserver bluetoothWirelessSplitterSessionDidInvalidate:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Wireless Splitter session invalidated", &v5, 0xCu);
  }

  [(ADBluetoothWirelessSplitterSessionObserver *)self _invalidate];
  [(AFNotifyStatePublisher *)self->_publisher publishState:AFBluetoothWirelessSplitterSessionStateUnknown];
}

- (void)bluetoothWirelessSplitterSession:(id)session sessionInfoDidChangeFrom:(id)from to:(id)to
{
  sessionCopy = session;
  fromCopy = from;
  toCopy = to;
  v11 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[ADBluetoothWirelessSplitterSessionObserver bluetoothWirelessSplitterSession:sessionInfoDidChangeFrom:to:]";
    v15 = 2112;
    v16 = fromCopy;
    v17 = 2112;
    v18 = toCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Wireless Splitter session info changed from %@ to %@", &v13, 0x20u);
  }

  state = [fromCopy state];
  if (state != [toCopy state])
  {
    -[AFNotifyStatePublisher publishState:](self->_publisher, "publishState:", [toCopy state] == 2);
  }
}

- (void)_invalidate
{
  [(ADBluetoothWirelessSplitterSession *)self->_wirelessSplitterSession removeObserver:self];
  wirelessSplitterSession = self->_wirelessSplitterSession;
  self->_wirelessSplitterSession = 0;
}

- (void)stopObserving
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100363820;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startObserving
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003638C0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = ADBluetoothWirelessSplitterSessionObserver;
  v2 = [(ADBluetoothWirelessSplitterSessionObserver *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADBluetoothWirelessSplitterSessionObserver", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [AFNotifyStatePublisher alloc];
    v7 = [NSString stringWithUTF8String:AFBluetoothWirelessSplitterSessionStateChanged];
    v8 = [v6 initWithName:v7 queue:v2->_queue];
    publisher = v2->_publisher;
    v2->_publisher = v8;
  }

  return v2;
}

+ (id)sharedWirelessSplitterSessionObserver
{
  if (qword_100590B40 != -1)
  {
    dispatch_once(&qword_100590B40, &stru_10051D728);
  }

  v3 = qword_100590B48;

  return v3;
}

@end