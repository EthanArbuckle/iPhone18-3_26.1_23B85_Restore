@interface ADMobileBluetoothWirelessSplitterSessionProxy
- (ADMobileBluetoothWirelessSplitterSessionProxy)initWithDataSource:(id)source queue:(id)queue;
- (void)_accessBTLocalDeviceUsingBlock:(id)block;
- (void)_enumerateObserversUsingBlock:(id)block;
- (void)_fetchWirelessSplitterSessionInfoWithCompletion:(id)completion;
- (void)_getWirelessSplitterSessionInfo:(id)info;
- (void)_invalidate;
- (void)_reload:(BOOL)_reload;
- (void)_updateWirelessSplitterSessionInfo:(id)info;
- (void)addObserver:(id)observer;
- (void)bluetoothWirelessSplitterSessionStateObserver:(id)observer didChangeStateFrom:(int64_t)from to:(int64_t)to;
- (void)dealloc;
- (void)getSessionInfo:(id)info;
- (void)invalidate;
- (void)reload;
- (void)removeObserver:(id)observer;
- (void)updateWirelessSplitterSessionInfo:(id)info;
@end

@implementation ADMobileBluetoothWirelessSplitterSessionProxy

- (void)_enumerateObserversUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      setRepresentation = [(NSHashTable *)observers setRepresentation];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1001019E4;
      v7[3] = &unk_100511998;
      v8 = blockCopy;
      [setRepresentation enumerateObjectsUsingBlock:v7];
    }
  }
}

- (void)_invalidate
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADMobileBluetoothWirelessSplitterSessionProxy _invalidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(AFBluetoothWirelessSplitterSessionStateObserver *)self->_observer invalidate];
  observer = self->_observer;
  self->_observer = 0;

  objc_storeWeak(&self->_dataSource, 0);
  wirelessSplitterSessionInfo = self->_wirelessSplitterSessionInfo;
  self->_wirelessSplitterSessionInfo = 0;

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100101B2C;
  v7[3] = &unk_100511970;
  v7[4] = self;
  [(ADMobileBluetoothWirelessSplitterSessionProxy *)self _enumerateObserversUsingBlock:v7];
  observers = self->_observers;
  self->_observers = 0;
}

- (void)_accessBTLocalDeviceUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[ADMobileBluetoothWirelessSplitterSessionProxy _accessBTLocalDeviceUsingBlock:]";
      v12 = 2112;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Getting BTLocalDevice for %@...", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100101DB4;
      v8[3] = &unk_100511920;
      v8[4] = self;
      v9 = blockCopy;
      [WeakRetained getBTLocalDeviceWithCompletion:v8];
    }

    else
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[ADMobileBluetoothWirelessSplitterSessionProxy _accessBTLocalDeviceUsingBlock:]";
        v12 = 2112;
        selfCopy3 = self;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Data source of %@ is nil.", buf, 0x16u);
        v7 = AFSiriLogContextDaemon;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[ADMobileBluetoothWirelessSplitterSessionProxy _accessBTLocalDeviceUsingBlock:]";
        v12 = 2112;
        selfCopy3 = self;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed getting BTLocalDevice for %@.", buf, 0x16u);
      }

      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

- (void)_fetchWirelessSplitterSessionInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[ADMobileBluetoothWirelessSplitterSessionProxy _fetchWirelessSplitterSessionInfoWithCompletion:]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetching Wireless Splitter session info for %@...", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010203C;
    v6[3] = &unk_100511920;
    v6[4] = self;
    v7 = completionCopy;
    [(ADMobileBluetoothWirelessSplitterSessionProxy *)self _accessBTLocalDeviceUsingBlock:v6];
  }
}

- (void)_updateWirelessSplitterSessionInfo:(id)info
{
  infoCopy = info;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[ADMobileBluetoothWirelessSplitterSessionProxy _updateWirelessSplitterSessionInfo:]";
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s wirelessSplitterSessionInfo = %@", buf, 0x16u);
  }

  wirelessSplitterSessionInfo = self->_wirelessSplitterSessionInfo;
  if (wirelessSplitterSessionInfo != infoCopy && ([(AFBluetoothWirelessSplitterSessionInfo *)wirelessSplitterSessionInfo isEqual:infoCopy]& 1) == 0)
  {
    v7 = self->_wirelessSplitterSessionInfo;
    v8 = [(AFBluetoothWirelessSplitterSessionInfo *)infoCopy copy];
    v9 = self->_wirelessSplitterSessionInfo;
    self->_wirelessSplitterSessionInfo = v8;

    v10 = self->_wirelessSplitterSessionInfo;
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADMobileBluetoothWirelessSplitterSessionProxy _updateWirelessSplitterSessionInfo:]";
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s wirelessSplitterSessionInfo changed from %@ to %@", buf, 0x20u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100102660;
    v14[3] = &unk_1005118F8;
    v14[4] = self;
    v15 = v7;
    v16 = v10;
    v12 = v10;
    v13 = v7;
    [(ADMobileBluetoothWirelessSplitterSessionProxy *)self _enumerateObserversUsingBlock:v14];
  }
}

- (void)_getWirelessSplitterSessionInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    if (self->_wirelessSplitterSessionInfo)
    {
      infoCopy[2](infoCopy);
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10010277C;
      v6[3] = &unk_1005118D0;
      v6[4] = self;
      v7 = infoCopy;
      [(ADMobileBluetoothWirelessSplitterSessionProxy *)self _fetchWirelessSplitterSessionInfoWithCompletion:v6];
    }
  }
}

- (void)_reload:(BOOL)_reload
{
  if (self->_wirelessSplitterSessionInfo)
  {
    v3 = !_reload;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v8 = "[ADMobileBluetoothWirelessSplitterSessionProxy _reload:]";
      v9 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Reloading Wireless Splitter session info for %@...", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100102900;
    v6[3] = &unk_1005118A8;
    v6[4] = self;
    [(ADMobileBluetoothWirelessSplitterSessionProxy *)self _fetchWirelessSplitterSessionInfoWithCompletion:v6];
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102A58;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100102B08;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100102BBC;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getSessionInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100102CCC;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = infoCopy;
    dispatch_async(queue, v7);
  }
}

- (void)bluetoothWirelessSplitterSessionStateObserver:(id)observer didChangeStateFrom:(int64_t)from to:(int64_t)to
{
  observerCopy = observer;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = AFBluetoothWirelessSplitterSessionStateGetName();
    v10 = AFBluetoothWirelessSplitterSessionStateGetName();
    *buf = 136315906;
    v17 = "[ADMobileBluetoothWirelessSplitterSessionProxy bluetoothWirelessSplitterSessionStateObserver:didChangeStateFrom:to:]";
    v18 = 2112;
    v19 = observerCopy;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s observer = %@, fromState = %@, toState = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100102E60;
  v13[3] = &unk_10051E010;
  v14 = observerCopy;
  selfCopy = self;
  v12 = observerCopy;
  dispatch_async(queue, v13);
}

- (void)reload
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102EF0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateWirelessSplitterSessionInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100102F94;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

- (ADMobileBluetoothWirelessSplitterSessionProxy)initWithDataSource:(id)source queue:(id)queue
{
  sourceCopy = source;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = ADMobileBluetoothWirelessSplitterSessionProxy;
  v8 = [(ADMobileBluetoothWirelessSplitterSessionProxy *)&v16 init];
  if (v8)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADMobileBluetoothWirelessSplitterSessionProxy initWithDataSource:queue:]";
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeStrong(&v8->_queue, queue);
    v10 = [[AFBluetoothWirelessSplitterSessionStateObserver alloc] initWithQueue:v8->_queue delegate:v8];
    observer = v8->_observer;
    v8->_observer = v10;

    queue = v8->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010314C;
    block[3] = &unk_10051DFE8;
    v15 = v8;
    dispatch_async(queue, block);
  }

  return v8;
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[ADMobileBluetoothWirelessSplitterSessionProxy dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = ADMobileBluetoothWirelessSplitterSessionProxy;
  [(ADMobileBluetoothWirelessSplitterSessionProxy *)&v4 dealloc];
}

@end