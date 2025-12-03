@interface SCATBluetoothManager
+ (id)sharedInstance;
+ (id)superNew;
- (SCATBluetoothManager)init;
- (void)_accessoryCustomMessageForAccessoryManager:(BTAccessoryManagerImpl *)manager device:(BTDeviceImpl *)device customMessageType:(int)type data:(char *)data dataSize:(unint64_t)size;
- (void)_beginAttach;
- (void)_beginDetach;
- (void)_beginStateTransitionIfNecessary;
- (void)_didConnectWithSession:(BTSessionImpl *)session;
- (void)_didDisconnect;
- (void)_probeAccessories;
- (void)_sessionEventForSession:(BTSessionImpl *)session event:(int)event result:(int)result;
- (void)addActivationReason:(id)reason;
- (void)addDeviceListener:(id)listener;
- (void)checkIfActiveForReason:(id)reason completion:(id)completion;
- (void)getExtantDevicesWithCompletion:(id)completion;
- (void)removeActivationReason:(id)reason;
- (void)removeDeviceListener:(id)listener;
- (void)sendConfigurationMessageToDevice:(id)device ofType:(unsigned __int8)type value:(unsigned int)value;
- (void)sendCustomMessageToDevice:(id)device ofType:(int)type withData:(id)data;
@end

@implementation SCATBluetoothManager

+ (id)superNew
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SCATBluetoothManager;
  v2 = objc_msgSendSuper2(&v4, "new");

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100218A10 != -1)
  {
    sub_100128DF0();
  }

  v3 = qword_100218A18;

  return v3;
}

- (SCATBluetoothManager)init
{
  v12.receiver = self;
  v12.super_class = SCATBluetoothManager;
  v2 = [(SCATBluetoothManager *)&v12 init];
  if (v2)
  {
    v3 = +[NSPointerArray weakObjectsPointerArray];
    deviceListeners = v2->_deviceListeners;
    v2->_deviceListeners = v3;

    v5 = dispatch_queue_create("com.apple.scat.bluetoothmanager", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[NSMutableArray array];
    activationReasons = v2->_activationReasons;
    v2->_activationReasons = v7;

    v2->_sessionState = 0;
    v9 = +[NSMutableDictionary dictionary];
    addressToDeviceMap = v2->_addressToDeviceMap;
    v2->_addressToDeviceMap = v9;
  }

  return v2;
}

- (void)_beginAttach
{
  if ([(SCATBluetoothManager *)self _sessionState])
  {
    _AXAssert();
  }

  v5[5] = sub_10003CB28;
  if (BTSessionAttachWithQueue())
  {
    v3 = SWCHLogHW();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100128E04();
    }

    v4 = dispatch_time(0, 30000000000);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003CB3C;
    v5[3] = &unk_1001D3488;
    v5[4] = self;
    dispatch_after(v4, &_dispatch_main_q, v5);
  }

  self->_sessionState = 1;
}

- (void)_beginDetach
{
  if ([(SCATBluetoothManager *)self _sessionState]!= 2)
  {
    _AXAssert();
  }

  self->_sessionState = 3;
  BTSessionDetachWithQueue();

  [(SCATBluetoothManager *)self _didDisconnect];
}

- (void)_beginStateTransitionIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = SWCHLogHW();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100128E38(self, a2, v4);
  }

  if ([(SCATBluetoothManager *)self _sessionState]!= 1 && [(SCATBluetoothManager *)self _sessionState]!= 3)
  {
    _desiredSessionState = [(SCATBluetoothManager *)self _desiredSessionState];
    if (_desiredSessionState != [(SCATBluetoothManager *)self _sessionState])
    {
      if ([(SCATBluetoothManager *)self _desiredSessionState]== 2)
      {
        [(SCATBluetoothManager *)self _beginAttach];
      }

      else
      {
        if ([(SCATBluetoothManager *)self _desiredSessionState])
        {
          _desiredSessionState2 = [(SCATBluetoothManager *)self _desiredSessionState];
          _AXAssert();
        }

        [(SCATBluetoothManager *)self _beginDetach];
      }
    }
  }
}

- (void)_probeAccessories
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = 0;
  v4 = 0;
  v55 = 0;
  do
  {
    if (2 * v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * v4;
    }

    v6 = malloc_type_realloc(v3, 8 * v5, 0x2004093837F09uLL);
    if (!v6)
    {
      v36 = SWCHLogHW();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100128FA4();
      }

      v37 = v3;
      goto LABEL_48;
    }

    v7 = v6;
    ConnectedDevices = BTLocalDeviceGetConnectedDevices();
    if (ConnectedDevices)
    {
      v38 = ConnectedDevices;
      v39 = SWCHLogHW();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100128F2C(v38, v39);
      }

      v37 = v7;
LABEL_48:
      free(v37);
      [(SCATBluetoothManager *)self _beginDetach];
      return;
    }

    if (v4 > 0x200)
    {
      break;
    }

    v3 = v7;
    v4 = v5;
  }

  while (v55 >= v5);
  v9 = +[NSMutableDictionary dictionary];
  v41 = +[NSMutableArray array];
  free(v7);
  v10 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_addressToDeviceMap keyEnumerator];
  v12 = [keyEnumerator countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        v17 = [(NSMutableDictionary *)v9 objectForKey:v16];

        if (!v17)
        {
          v18 = [(NSMutableDictionary *)self->_addressToDeviceMap objectForKey:v16];
          [v10 addObject:v18];
        }

        v19 = [(NSMutableDictionary *)self->_addressToDeviceMap objectForKey:v16];
        [v19 deviceDisappeared];
      }

      v13 = [keyEnumerator countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v13);
  }

  if ([(NSPointerArray *)self->_deviceListeners count])
  {
    v20 = 0;
    v40 = v10;
    do
    {
      v42 = v20;
      v21 = [(NSPointerArray *)self->_deviceListeners pointerAtIndex:v20];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v22 = v10;
      v23 = [v22 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v48;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v48 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v47 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v21 bluetoothManager:self forgotDevice:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v24);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v28 = v41;
      v29 = [v28 countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v44;
        do
        {
          for (k = 0; k != v30; k = k + 1)
          {
            if (*v44 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v43 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              [v21 bluetoothManager:self discoveredDevice:v33];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v43 objects:v56 count:16];
        }

        while (v30);
      }

      v20 = v42 + 1;
      v10 = v40;
    }

    while (v42 + 1 < [(NSPointerArray *)self->_deviceListeners count]);
  }

  v34 = SWCHLogHW();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v60 = v41;
    v61 = 2112;
    v62 = v10;
    v63 = 2112;
    v64 = v9;
    _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Completed BT device scan. New devices: %@\nobsolete devices: %@\nnew map: %@", buf, 0x20u);
  }

  addressToDeviceMap = self->_addressToDeviceMap;
  self->_addressToDeviceMap = v9;
}

- (void)_didConnectWithSession:(BTSessionImpl *)session
{
  dispatch_assert_queue_V2(self->_queue);
  self->_sessionState = 2;
  self->_session = session;
  BTAccessoryManagerGetDefault();
  BTLocalDeviceGetDefault();
  BTAccessoryManagerAddCallbacks();
  BTAccessoryManagerRegisterCustomMessageClient();
  BTServiceAddCallbacks();
  [(SCATBluetoothManager *)self _probeAccessories];
}

- (void)_didDisconnect
{
  v3 = SWCHLogHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100128FD8();
  }

  dispatch_assert_queue_V2(self->_queue);
  self->_sessionState = 0;
  self->_localDevice = 0;
  self->_accessoryManager = 0;
  self->_session = 0;
}

- (void)_sessionEventForSession:(BTSessionImpl *)session event:(int)event result:(int)result
{
  if (event <= 1)
  {
    if (event)
    {
      if (event == 1)
      {
        v7 = SWCHLogHW();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BTSession detached.", buf, 2u);
        }

        self->_sessionState = 3;
        goto LABEL_23;
      }
    }

    else
    {
      v10 = SWCHLogHW();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BTSession attached.", v14, 2u);
      }

      self->_sessionState = 1;
      if (result)
      {
        goto LABEL_23;
      }

      [(SCATBluetoothManager *)self _didConnectWithSession:session];
    }

    goto LABEL_24;
  }

  if (event == 2)
  {
    v11 = SWCHLogHW();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BTSession terminated.", v12, 2u);
    }

    if (self->_session == session)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (event != 3)
    {
      goto LABEL_24;
    }

    v8 = SWCHLogHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100129018();
    }

    if (!session || self->_session == session)
    {
      goto LABEL_22;
    }
  }

  _AXAssert();
LABEL_22:
  if (self->_session == session)
  {
LABEL_23:
    [(SCATBluetoothManager *)self _didDisconnect];
  }

LABEL_24:
  [(SCATBluetoothManager *)self _beginStateTransitionIfNecessary];
}

- (void)_accessoryCustomMessageForAccessoryManager:(BTAccessoryManagerImpl *)manager device:(BTDeviceImpl *)device customMessageType:(int)type data:(char *)data dataSize:(unint64_t)size
{
  v9 = *&type;
  if (BTDeviceGetAddressString())
  {
    v12 = SWCHLogHW();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10012904C(a2, v12);
    }
  }

  else
  {
    v12 = [NSString stringWithUTF8String:v24];
    v13 = [(NSMutableDictionary *)self->_addressToDeviceMap objectForKey:v12];
    v14 = [NSData dataWithBytes:data length:size];
    v15 = SWCHLogHW();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315906;
      v17 = v24;
      v18 = 2112;
      v19 = v13;
      v20 = 1024;
      v21 = v9;
      v22 = 2112;
      v23 = v14;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Custom message received from %s (%@): %d, %@", &v16, 0x26u);
    }

    [v13 customMessageReceived:v9 withData:v14];
  }
}

- (void)addActivationReason:(id)reason
{
  reasonCopy = reason;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D814;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(queue, v7);
}

- (void)removeActivationReason:(id)reason
{
  reasonCopy = reason;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D8EC;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(queue, v7);
}

- (void)checkIfActiveForReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D9F4;
  block[3] = &unk_1001D4800;
  v12 = reasonCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = reasonCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)addDeviceListener:(id)listener
{
  listenerCopy = listener;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003DAD8;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeDeviceListener:(id)listener
{
  listenerCopy = listener;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003DB7C;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

- (void)getExtantDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003DCA4;
  v7[3] = &unk_1001D3EF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)sendCustomMessageToDevice:(id)device ofType:(int)type withData:(id)data
{
  deviceCopy = device;
  dataCopy = data;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003DDD0;
  v13[3] = &unk_1001D4828;
  typeCopy = type;
  v14 = deviceCopy;
  v15 = dataCopy;
  selfCopy = self;
  v11 = dataCopy;
  v12 = deviceCopy;
  dispatch_async(queue, v13);
}

- (void)sendConfigurationMessageToDevice:(id)device ofType:(unsigned __int8)type value:(unsigned int)value
{
  deviceCopy = device;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E0D8;
  block[3] = &unk_1001D4850;
  typeCopy = type;
  valueCopy = value;
  v12 = deviceCopy;
  selfCopy = self;
  v10 = deviceCopy;
  dispatch_async(queue, block);
}

@end