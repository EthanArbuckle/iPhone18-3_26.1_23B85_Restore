@interface ADCoreBluetoothV2DeviceSource
- (ADCoreBluetoothV2DeviceSource)init;
- (id)_createDeviceWithAddress:(id)a3;
- (id)_createDeviceWithUID:(id)a3;
- (id)_deviceWithAddress:(id)a3 createsIfAbsent:(BOOL)a4;
- (id)_deviceWithUID:(id)a3 createsIfAbsent:(BOOL)a4;
- (id)deviceWithAddress:(id)a3;
- (id)deviceWithUID:(id)a3;
- (id)headGestureConfigurationForBTAddress:(id)a3;
- (void)_aadActivatingWithRetry:(BOOL)a3 andError:(id)a4;
- (void)_aadConnectionInterrupted;
- (void)_handleDeviceFound:(id)a3;
- (void)_handleDeviceLost:(id)a3;
- (void)_invalidate;
- (void)_setupDiscoveryWithRetry:(BOOL)a3;
- (void)aadActivatingWithRetry:(BOOL)a3 andError:(id)a4;
- (void)fetchAddressForDeviceWithCBUUID:(id)a3 completion:(id)a4;
- (void)fetchAudioAccessoryDeviceForBTAddress:(id)a3 completion:(id)a4;
- (void)fetchAudioAccessoryDeviceForCBUUID:(id)a3 completion:(id)a4;
- (void)fetchCBUUIDForDeviceWithAddress:(id)a3 completion:(id)a4;
- (void)handleDeviceFound:(id)a3;
- (void)handleDeviceLost:(id)a3;
- (void)invalidate;
- (void)invalidateDeviceWithAddress:(id)a3 cbuuid:(id)a4;
- (void)sendDeviceConfig:(id)a3 device:(id)a4 completion:(id)a5;
@end

@implementation ADCoreBluetoothV2DeviceSource

- (void)sendDeviceConfig:(id)a3 device:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  group = self->_group;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DA0AC;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_group_notify(group, queue, v16);
}

- (void)fetchAudioAccessoryDeviceForBTAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFNormalizeMacAddress();
  group = self->_group;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000DA258;
  v14[3] = &unk_10051E0D8;
  v14[4] = self;
  v15 = v8;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  dispatch_group_notify(group, queue, v14);
}

- (void)fetchAudioAccessoryDeviceForCBUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  group = self->_group;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA578;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_notify(group, queue, block);
}

- (void)fetchAddressForDeviceWithCBUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  group = self->_group;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA884;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_notify(group, queue, block);
}

- (void)fetchCBUUIDForDeviceWithAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  group = self->_group;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DAA54;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_notify(group, queue, block);
}

- (void)_aadConnectionInterrupted
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DAD5C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_aadActivatingWithRetry:(BOOL)a3 andError:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *location = 136315650;
      *&location[4] = "[ADCoreBluetoothV2DeviceSource _aadActivatingWithRetry:andError:]";
      v13 = 2112;
      v14 = v6;
      v15 = 1024;
      v16 = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to activate discovery, error: %@, will retry: %d", location, 0x1Cu);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else if (v4)
    {
LABEL_4:
      objc_initWeak(location, self);
      setupQueue = self->_setupQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000DB074;
      handler[3] = &unk_100519768;
      objc_copyWeak(&v11, location);
      notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", &unk_10058B0A8, setupQueue, handler);
      objc_destroyWeak(&v11);
      objc_destroyWeak(location);
      goto LABEL_10;
    }

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *location = 136315138;
      *&location[4] = "[ADCoreBluetoothV2DeviceSource _aadActivatingWithRetry:andError:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Discovery activation failed after a retry", location, 0xCu);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *location = 136315138;
    *&location[4] = "[ADCoreBluetoothV2DeviceSource _aadActivatingWithRetry:andError:]";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Discovery activation was successful", location, 0xCu);
  }

LABEL_10:
  dispatch_group_leave(self->_group);
}

- (void)aadActivatingWithRetry:(BOOL)a3 andError:(id)a4
{
  v6 = a4;
  setupQueue = self->_setupQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB204;
  block[3] = &unk_10051C890;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(setupQueue, block);
}

- (void)_handleDeviceLost:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothAddress];
  v6 = AFNormalizeMacAddress();

  v7 = [v4 identifier];

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[ADCoreBluetoothV2DeviceSource _handleDeviceLost:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Device lost: %@ (%@)", &v13, 0x20u);
  }

  [(NSMapTable *)self->_cbuuidByAddress removeObjectForKey:v6];
  [(NSMapTable *)self->_addressByCBUUID removeObjectForKey:v7];
  v9 = [(NSMapTable *)self->_devicesByDeviceUID objectForKey:v7];
  v10 = [(NSMapTable *)self->_devicesByAddress objectForKey:v7];
  if (v9)
  {
    v11 = v9;
LABEL_7:
    [v11 invalidate];
    goto LABEL_8;
  }

  v12 = [(NSMapTable *)self->_devicesByAddress objectForKey:v6];

  if (v12)
  {
    v11 = v10;
    goto LABEL_7;
  }

LABEL_8:
  [(NSMapTable *)self->_devicesByDeviceUID removeObjectForKey:v7];
  [(NSMapTable *)self->_devicesByAddress removeObjectForKey:v6];
}

- (void)handleDeviceLost:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DB450;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleDeviceFound:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bluetoothAddress];
    v7 = AFNormalizeMacAddress();

    v8 = [v5 identifier];
    [(NSMapTable *)self->_addressByCBUUID setObject:v7 forKey:v8];
    [(NSMapTable *)self->_cbuuidByAddress setObject:v8 forKey:v7];
    v9 = [(NSMapTable *)self->_devicesByDeviceUID objectForKey:v8];
    v10 = [(NSMapTable *)self->_devicesByAddress objectForKey:v7];
    if (v9)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADCoreBluetoothV2DeviceSource _handleDeviceFound:]";
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Device found with UID: %@", &v20, 0x16u);
      }

      [v9 updateDevice:v5];
      if (v10)
      {
        goto LABEL_14;
      }

      devicesByAddress = self->_devicesByAddress;
      v13 = v9;
      v14 = v7;
    }

    else
    {
      v16 = AFSiriLogContextDaemon;
      v17 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (!v10)
      {
        if (v17)
        {
          v20 = 136315650;
          v21 = "[ADCoreBluetoothV2DeviceSource _handleDeviceFound:]";
          v22 = 2112;
          v23 = v7;
          v24 = 2112;
          v25 = v8;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Device not found, no need to update device: %@ (%@)", &v20, 0x20u);
        }

        goto LABEL_14;
      }

      if (v17)
      {
        v20 = 136315394;
        v21 = "[ADCoreBluetoothV2DeviceSource _handleDeviceFound:]";
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Device found with address: %@", &v20, 0x16u);
      }

      [(NSMapTable *)self->_devicesByDeviceUID setObject:v10 forKey:v8];
      [v10 updateDevice:v5];
      devicesByAddress = self->_devicesByDeviceUID;
      v13 = v10;
      v14 = v8;
    }

    [(NSMapTable *)devicesByAddress setObject:v13 forKey:v14];
LABEL_14:
    v18 = sub_10024D178(v5);
    if (AFDeviceSupportsBobble() && [v18 isSupported])
    {
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315650;
        v21 = "[ADCoreBluetoothV2DeviceSource _handleDeviceFound:]";
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Updating headGestureConfiguration for supported device: %@ (%@)", &v20, 0x20u);
      }

      [(NSMapTable *)self->_headGestureConfigurationByAddress setObject:v18 forKey:v7];
    }

    goto LABEL_20;
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315138;
    v21 = "[ADCoreBluetoothV2DeviceSource _handleDeviceFound:]";
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Device found in nil", &v20, 0xCu);
  }

LABEL_20:
}

- (void)handleDeviceFound:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DB864;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_setupDiscoveryWithRetry:(BOOL)a3
{
  v3 = a3;
  dispatch_group_enter(self->_group);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *location = 136315394;
    *&location[4] = "[ADCoreBluetoothV2DeviceSource _setupDiscoveryWithRetry:]";
    v22 = 1024;
    v23 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s  %d:", location, 0x12u);
  }

  v6 = objc_alloc_init(off_10058B0B0());
  aaDeviceManager = self->_aaDeviceManager;
  self->_aaDeviceManager = v6;

  [(AADeviceManager *)self->_aaDeviceManager setDispatchQueue:self->_queue];
  objc_initWeak(location, self);
  v8 = self->_aaDeviceManager;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000DBB74;
  v19[3] = &unk_100510F38;
  objc_copyWeak(&v20, location);
  [(AADeviceManager *)v8 setDeviceFoundHandler:v19];
  v9 = self->_aaDeviceManager;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000DBBD8;
  v17[3] = &unk_100510F38;
  objc_copyWeak(&v18, location);
  [(AADeviceManager *)v9 setDeviceLostHandler:v17];
  v10 = self->_aaDeviceManager;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000DBC3C;
  v14[3] = &unk_100510F60;
  objc_copyWeak(&v15, location);
  v16 = v3;
  [(AADeviceManager *)v10 activateWithCompletion:v14];
  v11 = self->_aaDeviceManager;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DBCA4;
  v12[3] = &unk_10051B5F0;
  objc_copyWeak(&v13, location);
  [(AADeviceManager *)v11 setInterruptionHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(location);
}

- (id)_createDeviceWithUID:(id)a3
{
  v4 = a3;
  v5 = [[ADCoreBluetoothV2Device alloc] initWithDeviceUID:v4 dataSource:self];

  return v5;
}

- (id)_createDeviceWithAddress:(id)a3
{
  v4 = a3;
  v5 = [[ADCoreBluetoothV2Device alloc] initWithAddress:v4 dataSource:self];

  return v5;
}

- (void)_invalidate
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[ADCoreBluetoothV2DeviceSource _invalidate]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_devicesByAddress;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMapTable *)self->_devicesByAddress objectForKey:*(*(&v20 + 1) + 8 * v8)];
        [v9 invalidate];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_devicesByDeviceUID;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMapTable *)self->_devicesByDeviceUID objectForKey:*(*(&v16 + 1) + 8 * v14), v16];
        [v15 invalidate];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  [(NSMapTable *)self->_devicesByAddress removeAllObjects];
  [(NSMapTable *)self->_devicesByDeviceUID removeAllObjects];
  [(NSMapTable *)self->_cbuuidByAddress removeAllObjects];
  [(NSMapTable *)self->_addressByCBUUID removeAllObjects];
  [(NSMapTable *)self->_headGestureConfigurationByAddress removeAllObjects];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC26C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidateDeviceWithAddress:(id)a3 cbuuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC338;
  block[3] = &unk_10051DB68;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (id)_deviceWithUID:(id)a3 createsIfAbsent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  devicesByDeviceUID = self->_devicesByDeviceUID;
  v8 = [v6 UUIDString];
  v9 = [(NSMapTable *)devicesByDeviceUID objectForKey:v8];

  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "[ADCoreBluetoothV2DeviceSource _deviceWithUID:createsIfAbsent:]";
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v9;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s  %@: %@", buf, 0x20u);
    }
  }

  else if (v6 && v4)
  {
    v11 = [(ADCoreBluetoothV2DeviceSource *)self _createDeviceWithUID:v6];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "[ADCoreBluetoothV2DeviceSource _deviceWithUID:createsIfAbsent:]";
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s  %@ not found, created %@", buf, 0x20u);
    }

    v13 = self->_devicesByDeviceUID;
    v14 = [v6 UUIDString];
    [(NSMapTable *)v13 setObject:v11 forKey:v14];

    v15 = [v6 UUIDString];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000DC6D0;
    v17[3] = &unk_100510F10;
    v9 = v11;
    v18 = v9;
    v19 = self;
    [(ADCoreBluetoothV2DeviceSource *)self fetchAddressForDeviceWithCBUUID:v15 completion:v17];
  }

  return v9;
}

- (id)_deviceWithAddress:(id)a3 createsIfAbsent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFNormalizeMacAddress();
  v8 = [(NSMapTable *)self->_devicesByAddress objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "[ADCoreBluetoothV2DeviceSource _deviceWithAddress:createsIfAbsent:]";
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v9;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s  %@: %@", buf, 0x20u);
    }
  }

  else if (v4 && [v7 length])
  {
    v11 = [(ADCoreBluetoothV2DeviceSource *)self _createDeviceWithAddress:v6];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "[ADCoreBluetoothV2DeviceSource _deviceWithAddress:createsIfAbsent:]";
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s  %@ not found, created %@", buf, 0x20u);
    }

    [(NSMapTable *)self->_devicesByAddress setObject:v11 forKey:v7];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000DC9F0;
    v14[3] = &unk_100510F10;
    v9 = v11;
    v15 = v9;
    v16 = self;
    [(ADCoreBluetoothV2DeviceSource *)self fetchCBUUIDForDeviceWithAddress:v7 completion:v14];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)headGestureConfigurationForBTAddress:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000DCBF4;
  v17 = sub_1000DCC04;
  v18 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DCC0C;
  block[3] = &unk_10051C588;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)deviceWithUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000DCBF4;
  v16 = sub_1000DCC04;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DCE34;
  block[3] = &unk_10051C588;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)deviceWithAddress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000DCBF4;
  v16 = sub_1000DCC04;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD15C;
  block[3] = &unk_10051C588;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (ADCoreBluetoothV2DeviceSource)init
{
  v16.receiver = self;
  v16.super_class = ADCoreBluetoothV2DeviceSource;
  v2 = [(ADCoreBluetoothV2DeviceSource *)&v16 init];
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v18 = "[ADCoreBluetoothV2DeviceSource init]";
      v19 = 2112;
      v20 = v2;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Creating %@", buf, 0x16u);
    }

    v4 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.assistantd.ADCoreBluetoothV2DeviceSource.setup", v6);

    setupQueue = v2->_setupQueue;
    v2->_setupQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.assistantd.ADCoreBluetoothV2DeviceSource", v9);

    queue = v2->_queue;
    v2->_queue = v10;

    v12 = v2->_setupQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DD540;
    block[3] = &unk_10051DFE8;
    v15 = v2;
    dispatch_async(v12, block);
  }

  return v2;
}

@end