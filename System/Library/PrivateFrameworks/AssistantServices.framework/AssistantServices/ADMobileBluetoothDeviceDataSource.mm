@interface ADMobileBluetoothDeviceDataSource
- (ADMobileBluetoothDeviceDataSource)init;
- (id)_connectedDeviceProxies;
- (id)_deviceProxies;
- (id)_deviceProxyWithAddress:(id)address createsIfAbsent:(BOOL)absent;
- (id)_deviceProxyWithUID:(id)d createsIfAbsent:(BOOL)absent;
- (id)_fetchConnectedDeviceAddresses;
- (id)_fetchPairedDeviceAddresses;
- (id)_pairedDeviceProxies;
- (id)deviceWithAddress:(id)address;
- (id)deviceWithUID:(id)d;
- (id)wirelessSplitterSession;
- (void)_attachToSession;
- (void)_cleanUpDeviceProxies;
- (void)_cleanUpWirelessSplitterProxy;
- (void)_detachFromSession;
- (void)_handleInEarStatusChangedForBTDevice:(BTDeviceImpl *)device fromAccessoryManager:(BTAccessoryManagerImpl *)manager;
- (void)_handleListeningModeChangedForBTDevice:(BTDeviceImpl *)device fromAccessoryManager:(BTAccessoryManagerImpl *)manager;
- (void)_reloadForDevice:(BTDeviceImpl *)device;
- (void)_resetConnectedDeviceAddresses;
- (void)_resetPairedDeviceAddresses;
- (void)_sessionAttached:(BTSessionImpl *)attached result:(int)result;
- (void)_sessionDetached:(BTSessionImpl *)detached;
- (void)_sessionTerminated:(BTSessionImpl *)terminated;
- (void)_setUpAccessoryManager;
- (void)_setUpLocalDevice;
- (void)_tearDownAccessoryManager;
- (void)_tearDownLocalDevice;
- (void)accessoryManager:(BTAccessoryManagerImpl *)manager event:(int)event device:(BTDeviceImpl *)device state:(int)state;
- (void)device:(BTDeviceImpl *)device serviceMask:(unsigned int)mask serviceEventType:(int)type serviceSpecificEvent:(unsigned int)event result:(int)result;
- (void)getBTDeviceWithAddress:(id)address completion:(id)completion;
- (void)getBTDeviceWithDeviceUID:(id)d completion:(id)completion;
- (void)getBTLocalDeviceWithCompletion:(id)completion;
- (void)getConnectedDevicesWithCompletion:(id)completion;
- (void)getPairedDevicesWithCompletion:(id)completion;
- (void)invalidate;
- (void)localDevice:(BTLocalDeviceImpl *)device event:(int)event result:(int)result;
@end

@implementation ADMobileBluetoothDeviceDataSource

- (id)_pairedDeviceProxies
{
  if (self->_pairedDeviceAddresses || ([(ADMobileBluetoothDeviceDataSource *)self _fetchPairedDeviceAddresses], v3 = objc_claimAutoreleasedReturnValue(), pairedDeviceAddresses = self->_pairedDeviceAddresses, self->_pairedDeviceAddresses = v3, pairedDeviceAddresses, self->_pairedDeviceAddresses))
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_pairedDeviceAddresses, "count")}];
    os_unfair_lock_lock(&self->_deviceProxiesLock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_pairedDeviceAddresses;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxyWithAddress:*(*(&v13 + 1) + 8 * i) createsIfAbsent:1, v13];
          [v5 addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_deviceProxiesLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchPairedDeviceAddresses
{
  localDevice = self->_localDevice;
  v3 = AFSiriLogContextDaemon;
  if (!localDevice)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADMobileBluetoothDeviceDataSource _fetchPairedDeviceAddresses]";
      v9 = "%s Local device is NULL.";
      v10 = buf;
      v11 = v3;
      v12 = 12;
      goto LABEL_21;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADMobileBluetoothDeviceDataSource _fetchPairedDeviceAddresses]";
    *&buf[12] = 2048;
    *&buf[14] = localDevice;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Getting paired devices from local device %p...", buf, 0x16u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  PairedDevices = BTLocalDeviceGetPairedDevices();
  if (PairedDevices)
  {
    v6 = PairedDevices;
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_localDevice;
      *v19 = 136315650;
      v20 = "[ADMobileBluetoothDeviceDataSource _fetchPairedDeviceAddresses]";
      v21 = 2048;
      v22 = v8;
      v23 = 1024;
      LODWORD(v24) = v6;
      v9 = "%s Failed getting paired devices from local device %p (result = %d).";
      v10 = v19;
      v11 = v7;
      v12 = 28;
LABEL_21:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v9, v10, v12);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([0 count])
  {
    v13 = [0 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v13 count];
    v17 = self->_localDevice;
    *v19 = 136315650;
    v20 = "[ADMobileBluetoothDeviceDataSource _fetchPairedDeviceAddresses]";
    v21 = 2048;
    v22 = v16;
    v23 = 2048;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Got %tu paired devices from local device %p.", v19, 0x20u);
  }

  if (AFIsInternalInstall())
  {
    [v13 enumerateObjectsUsingBlock:&stru_1005115E0];
  }

LABEL_17:

  return v13;
}

- (void)_resetPairedDeviceAddresses
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADMobileBluetoothDeviceDataSource _resetPairedDeviceAddresses]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  pairedDeviceAddresses = self->_pairedDeviceAddresses;
  self->_pairedDeviceAddresses = 0;

  notify_post(AFBluetoothPairedDeviceInfoUpdated);
}

- (id)_connectedDeviceProxies
{
  if (self->_connectedDeviceAddresses || ([(ADMobileBluetoothDeviceDataSource *)self _fetchConnectedDeviceAddresses], v3 = objc_claimAutoreleasedReturnValue(), connectedDeviceAddresses = self->_connectedDeviceAddresses, self->_connectedDeviceAddresses = v3, connectedDeviceAddresses, self->_connectedDeviceAddresses))
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_connectedDeviceAddresses, "count")}];
    os_unfair_lock_lock(&self->_deviceProxiesLock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_connectedDeviceAddresses;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxyWithAddress:*(*(&v13 + 1) + 8 * i) createsIfAbsent:1, v13];
          [v5 addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_deviceProxiesLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchConnectedDeviceAddresses
{
  localDevice = self->_localDevice;
  v3 = AFSiriLogContextDaemon;
  if (!localDevice)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADMobileBluetoothDeviceDataSource _fetchConnectedDeviceAddresses]";
      v9 = "%s Local device is NULL.";
      v10 = buf;
      v11 = v3;
      v12 = 12;
      goto LABEL_21;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADMobileBluetoothDeviceDataSource _fetchConnectedDeviceAddresses]";
    *&buf[12] = 2048;
    *&buf[14] = localDevice;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Getting connected devices from local device %p...", buf, 0x16u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  ConnectedDevices = BTLocalDeviceGetConnectedDevices();
  if (ConnectedDevices)
  {
    v6 = ConnectedDevices;
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_localDevice;
      *v19 = 136315650;
      v20 = "[ADMobileBluetoothDeviceDataSource _fetchConnectedDeviceAddresses]";
      v21 = 2048;
      v22 = v8;
      v23 = 1024;
      LODWORD(v24) = v6;
      v9 = "%s Failed getting connected devices from local device %p (result = %d).";
      v10 = v19;
      v11 = v7;
      v12 = 28;
LABEL_21:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v9, v10, v12);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([0 count])
  {
    v13 = [0 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v13 count];
    v17 = self->_localDevice;
    *v19 = 136315650;
    v20 = "[ADMobileBluetoothDeviceDataSource _fetchConnectedDeviceAddresses]";
    v21 = 2048;
    v22 = v16;
    v23 = 2048;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Got %tu connected devices from local device %p.", v19, 0x20u);
  }

  if (AFIsInternalInstall())
  {
    [v13 enumerateObjectsUsingBlock:&stru_1005115C0];
  }

LABEL_17:

  return v13;
}

- (void)_resetConnectedDeviceAddresses
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADMobileBluetoothDeviceDataSource _resetConnectedDeviceAddresses]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  connectedDeviceAddresses = self->_connectedDeviceAddresses;
  self->_connectedDeviceAddresses = 0;
}

- (id)_deviceProxyWithUID:(id)d createsIfAbsent:(BOOL)absent
{
  absentCopy = absent;
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID objectForKey:dCopy];
  if (!v7 && dCopy && absentCopy)
  {
    v7 = [[ADMobileBluetoothDeviceProxy alloc] initWithDeviceUID:dCopy dataSource:self queue:self->_queue];
    [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID setObject:v7 forKey:dCopy];
  }

  return v7;
}

- (id)_deviceProxyWithAddress:(id)address createsIfAbsent:(BOOL)absent
{
  absentCopy = absent;
  addressCopy = address;
  v7 = [(NSMutableDictionary *)self->_deviceProxiesByAddress objectForKey:addressCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !absentCopy;
  }

  if (!v8)
  {
    if ([addressCopy length])
    {
      v7 = [[ADMobileBluetoothDeviceProxy alloc] initWithAddress:addressCopy dataSource:self queue:self->_queue];
      [(NSMutableDictionary *)self->_deviceProxiesByAddress setObject:v7 forKey:addressCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)wirelessSplitterSession
{
  if (AFSupportsWirelessSplitter())
  {
    os_unfair_lock_lock(&self->_wirelessSplitterSessionProxyLock);
    wirelessSplitterSessionProxy = self->_wirelessSplitterSessionProxy;
    if (!wirelessSplitterSessionProxy)
    {
      v4 = [[ADMobileBluetoothWirelessSplitterSessionProxy alloc] initWithDataSource:self queue:self->_queue];
      v5 = self->_wirelessSplitterSessionProxy;
      self->_wirelessSplitterSessionProxy = v4;

      wirelessSplitterSessionProxy = self->_wirelessSplitterSessionProxy;
    }

    v6 = wirelessSplitterSessionProxy;
    os_unfair_lock_unlock(&self->_wirelessSplitterSessionProxyLock);
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[ADMobileBluetoothDeviceDataSource wirelessSplitterSession]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Wireless Splitter is not supported on this platform.", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)getPairedDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001034C8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getConnectedDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100103780;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (id)deviceWithUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_deviceProxiesLock);
  v5 = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxyWithUID:dCopy createsIfAbsent:1];

  os_unfair_lock_unlock(&self->_deviceProxiesLock);

  return v5;
}

- (id)deviceWithAddress:(id)address
{
  addressCopy = address;
  os_unfair_lock_lock(&self->_deviceProxiesLock);
  v5 = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxyWithAddress:addressCopy createsIfAbsent:1];

  os_unfair_lock_unlock(&self->_deviceProxiesLock);

  return v5;
}

- (void)getBTLocalDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  sessionSetupGroup = self->_sessionSetupGroup;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100103B18;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_group_notify(sessionSetupGroup, queue, v8);
}

- (void)getBTDeviceWithDeviceUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  sessionSetupGroup = self->_sessionSetupGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103CD4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = dCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dCopy;
  dispatch_group_notify(sessionSetupGroup, queue, block);
}

- (void)getBTDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  sessionSetupGroup = self->_sessionSetupGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103F98;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = addressCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = addressCopy;
  dispatch_group_notify(sessionSetupGroup, queue, block);
}

- (id)_deviceProxies
{
  os_unfair_lock_lock(&self->_deviceProxiesLock);
  allValues = [(NSMutableDictionary *)self->_deviceProxiesByAddress allValues];
  allValues2 = [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID allValues];
  os_unfair_lock_unlock(&self->_deviceProxiesLock);
  v5 = objc_alloc_init(NSMutableArray);
  if ([allValues count])
  {
    [v5 addObjectsFromArray:allValues];
  }

  if ([allValues2 count])
  {
    [v5 addObjectsFromArray:allValues2];
  }

  return v5;
}

- (void)_handleListeningModeChangedForBTDevice:(BTDeviceImpl *)device fromAccessoryManager:(BTAccessoryManagerImpl *)manager
{
  if (device && manager)
  {
    v7 = sub_1000F9D38(device);
    v8 = sub_1000FB660(device, manager);
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "[ADMobileBluetoothDeviceDataSource _handleListeningModeChangedForBTDevice:fromAccessoryManager:]";
      v27 = 2112;
      v28 = v7;
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s address = %@, headphoneListeningMode = %ld", buf, 0x20u);
    }

    if (v7)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      _deviceProxies = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxies];
      v11 = [_deviceProxies countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          v14 = 0;
          do
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(_deviceProxies);
            }

            v15 = *(*(&v20 + 1) + 8 * v14);
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 3221225472;
            v16[2] = sub_1001044BC;
            v16[3] = &unk_100511580;
            v17 = v7;
            v18 = v15;
            v19 = v8;
            [v15 getDeviceInfo:v16];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [_deviceProxies countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)_handleInEarStatusChangedForBTDevice:(BTDeviceImpl *)device fromAccessoryManager:(BTAccessoryManagerImpl *)manager
{
  if (device && manager)
  {
    v7 = sub_1000F9D38(device);
    v8 = sub_1000FBA70(device, manager);
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "[ADMobileBluetoothDeviceDataSource _handleInEarStatusChangedForBTDevice:fromAccessoryManager:]";
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s address = %@, headphoneInEarDetectionState = %@", buf, 0x20u);
    }

    if (v7)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      _deviceProxies = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxies];
      v11 = [_deviceProxies countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          v14 = 0;
          do
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(_deviceProxies);
            }

            v15 = *(*(&v20 + 1) + 8 * v14);
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 3221225472;
            v16[2] = sub_100104754;
            v16[3] = &unk_10051D088;
            v17 = v7;
            v18 = v15;
            v19 = v8;
            [v15 getDeviceInfo:v16];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [_deviceProxies countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)_reloadForDevice:(BTDeviceImpl *)device
{
  v4 = sub_1000F9D38(device);
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _deviceProxies = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxies];
    v6 = [_deviceProxies countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(_deviceProxies);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100104944;
          v11[3] = &unk_100511558;
          v12 = v4;
          v13 = v10;
          [v10 getDeviceInfo:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [_deviceProxies countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)accessoryManager:(BTAccessoryManagerImpl *)manager event:(int)event device:(BTDeviceImpl *)device state:(int)state
{
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v16 = "[ADMobileBluetoothDeviceDataSource accessoryManager:event:device:state:]";
    v17 = 2048;
    managerCopy = manager;
    v19 = 1024;
    eventCopy = event;
    v21 = 2048;
    deviceCopy = device;
    v23 = 1024;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s accessoryManager = %p, accessoryEvent = %d, device = %p, state = %d", buf, 0x2Cu);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100104B04;
  v13[3] = &unk_100511530;
  v13[4] = self;
  v13[5] = manager;
  eventCopy2 = event;
  v13[6] = device;
  dispatch_async(queue, v13);
}

- (void)_tearDownAccessoryManager
{
  if (self->_accessoryManager)
  {
    BTAccessoryManagerRemoveCallbacks();
    self->_accessoryManager = 0;
  }
}

- (void)_setUpAccessoryManager
{
  [(ADMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
  if (!self->_session)
  {
    v10 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = 136315138;
    v17 = "[ADMobileBluetoothDeviceDataSource _setUpAccessoryManager]";
    v7 = "%s Session is NULL.";
    v8 = v10;
    v9 = 12;
    goto LABEL_10;
  }

  Default = BTAccessoryManagerGetDefault();
  if (Default)
  {
    v4 = Default;
    v5 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    session = self->_session;
    v16 = 136315650;
    v17 = "[ADMobileBluetoothDeviceDataSource _setUpAccessoryManager]";
    v18 = 2048;
    v19 = session;
    v20 = 1024;
    LODWORD(v21) = v4;
    v7 = "%s Failed getting default accessory manager from session %p (result = %d).";
    v8 = v5;
    v9 = 28;
    goto LABEL_10;
  }

  v11 = BTAccessoryManagerAddCallbacks();
  if (v11)
  {
    v12 = v11;
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      accessoryManager = self->_accessoryManager;
      v15 = self->_session;
      v16 = 136315906;
      v17 = "[ADMobileBluetoothDeviceDataSource _setUpAccessoryManager]";
      v18 = 2048;
      v19 = accessoryManager;
      v20 = 2048;
      v21 = v15;
      v22 = 1024;
      v23 = v12;
      v7 = "%s Failed adding callbacks to accessory manager %p from session %p (result = %d).";
      v8 = v13;
      v9 = 38;
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, &v16, v9);
    }
  }
}

- (void)localDevice:(BTLocalDeviceImpl *)device event:(int)event result:(int)result
{
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v14 = "[ADMobileBluetoothDeviceDataSource localDevice:event:result:]";
    v15 = 2048;
    deviceCopy = device;
    v17 = 1024;
    eventCopy = event;
    v19 = 1024;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s localDevice = %p, event = %d, result = %d", buf, 0x22u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104F64;
  block[3] = &unk_10051CB88;
  block[4] = self;
  block[5] = device;
  eventCopy2 = event;
  dispatch_async(queue, block);
}

- (void)_tearDownLocalDevice
{
  if (self->_localDevice)
  {
    BTLocalDeviceRemoveCallbacks();
    self->_localDevice = 0;
  }
}

- (void)_setUpLocalDevice
{
  [(ADMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
  if (!self->_session)
  {
    v10 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = 136315138;
    v17 = "[ADMobileBluetoothDeviceDataSource _setUpLocalDevice]";
    v7 = "%s Session is NULL.";
    v8 = v10;
    v9 = 12;
    goto LABEL_10;
  }

  Default = BTLocalDeviceGetDefault();
  if (Default)
  {
    v4 = Default;
    v5 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    session = self->_session;
    v16 = 136315650;
    v17 = "[ADMobileBluetoothDeviceDataSource _setUpLocalDevice]";
    v18 = 2048;
    v19 = session;
    v20 = 1024;
    LODWORD(v21) = v4;
    v7 = "%s Failed getting default local device from session %p (result = %d).";
    v8 = v5;
    v9 = 28;
    goto LABEL_10;
  }

  v11 = BTLocalDeviceAddCallbacks();
  if (v11)
  {
    v12 = v11;
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_session;
      localDevice = self->_localDevice;
      v16 = 136315906;
      v17 = "[ADMobileBluetoothDeviceDataSource _setUpLocalDevice]";
      v18 = 2048;
      v19 = localDevice;
      v20 = 2048;
      v21 = v15;
      v22 = 1024;
      v23 = v12;
      v7 = "%s Failed adding callbacks to local device %p from session %p (result = %d).";
      v8 = v13;
      v9 = 38;
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, &v16, v9);
    }
  }
}

- (void)device:(BTDeviceImpl *)device serviceMask:(unsigned int)mask serviceEventType:(int)type serviceSpecificEvent:(unsigned int)event result:(int)result
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100105298;
  v8[3] = &unk_1005114D0;
  typeCopy = type;
  v8[4] = self;
  dispatch_async(queue, v8);
}

- (void)_sessionTerminated:(BTSessionImpl *)terminated
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADMobileBluetoothDeviceDataSource _sessionTerminated:]";
    v8 = 2048;
    terminatedCopy = terminated;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s session = %p", &v6, 0x16u);
  }

  if (self->_session == terminated)
  {
    [(ADMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
    [(ADMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
    if (self->_session)
    {
      BTServiceRemoveCallbacks();
      self->_session = 0;
    }

    [(ADMobileBluetoothDeviceDataSource *)self _attachToSession];
  }
}

- (void)_sessionDetached:(BTSessionImpl *)detached
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADMobileBluetoothDeviceDataSource _sessionDetached:]";
    v8 = 2048;
    detachedCopy = detached;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s session = %p", &v6, 0x16u);
  }

  if (self->_session == detached)
  {
    [(ADMobileBluetoothDeviceDataSource *)self _cleanUpWirelessSplitterProxy];
    [(ADMobileBluetoothDeviceDataSource *)self _cleanUpDeviceProxies];
    [(ADMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
    [(ADMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
    if (self->_session)
    {
      BTServiceRemoveCallbacks();
      self->_session = 0;
    }
  }
}

- (void)_sessionAttached:(BTSessionImpl *)attached result:(int)result
{
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[ADMobileBluetoothDeviceDataSource _sessionAttached:result:]";
    v20 = 2048;
    attachedCopy = attached;
    v22 = 1024;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s session = %p, result = %d", buf, 0x1Cu);
  }

  self->_attachingToSession = 0;
  if (!result)
  {
    [(ADMobileBluetoothDeviceDataSource *)self _detachFromSession];
    self->_session = attached;
    if (attached)
    {
      BTServiceAddCallbacks();
    }

    [(ADMobileBluetoothDeviceDataSource *)self _setUpLocalDevice];
    [(ADMobileBluetoothDeviceDataSource *)self _setUpAccessoryManager];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _deviceProxies = [(ADMobileBluetoothDeviceDataSource *)self _deviceProxies];
    v9 = [_deviceProxies countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(_deviceProxies);
          }

          [*(*(&v13 + 1) + 8 * v12) reload];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [_deviceProxies countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    if (AFSupportsWirelessSplitter())
    {
      [(ADMobileBluetoothWirelessSplitterSessionProxy *)self->_wirelessSplitterSessionProxy reload];
    }
  }

  dispatch_group_leave(self->_sessionSetupGroup);
}

- (void)_attachToSession
{
  if (self->_attachingToSession)
  {
    v2 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315138;
    v11 = "[ADMobileBluetoothDeviceDataSource _attachToSession]";
    v3 = "%s Already attaching to session!";
    v4 = v2;
    v5 = 12;
LABEL_7:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v3, &v10, v5);
    return;
  }

  [(ADMobileBluetoothDeviceDataSource *)self _detachFromSession];
  v7 = BTSessionAttachWithQueue();
  v8 = AFSiriLogContextDaemon;
  if (v7)
  {
    v9 = v7;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315394;
    v11 = "[ADMobileBluetoothDeviceDataSource _attachToSession]";
    v12 = 1024;
    v13 = v9;
    v3 = "%s Failed attaching to bt session %d";
    v4 = v8;
    v5 = 18;
    goto LABEL_7;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADMobileBluetoothDeviceDataSource _attachToSession]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Attaching to session", &v10, 0xCu);
  }

  self->_attachingToSession = 1;
  dispatch_group_enter(self->_sessionSetupGroup);
}

- (void)_detachFromSession
{
  [(ADMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
  [(ADMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
  session = self->_session;
  p_session = &self->_session;
  if (session)
  {
    BTServiceRemoveCallbacks();
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = *p_session;
      v7 = 136315394;
      v8 = "[ADMobileBluetoothDeviceDataSource _detachFromSession]";
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Detaching from session %p", &v7, 0x16u);
    }

    BTSessionDetachWithQueue();
    *p_session = 0;
  }
}

- (void)_cleanUpWirelessSplitterProxy
{
  if (AFSupportsWirelessSplitter())
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADMobileBluetoothDeviceDataSource _cleanUpWirelessSplitterProxy]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
    }

    os_unfair_lock_lock(&self->_wirelessSplitterSessionProxyLock);
    wirelessSplitterSessionProxy = self->_wirelessSplitterSessionProxy;
    self->_wirelessSplitterSessionProxy = 0;
    v5 = wirelessSplitterSessionProxy;

    os_unfair_lock_unlock(&self->_wirelessSplitterSessionProxyLock);
    [(ADMobileBluetoothWirelessSplitterSessionProxy *)v5 invalidate];
  }
}

- (void)_cleanUpDeviceProxies
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADMobileBluetoothDeviceDataSource _cleanUpDeviceProxies]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_deviceProxiesLock);
  allValues = [(NSMutableDictionary *)self->_deviceProxiesByAddress allValues];
  [(NSMutableDictionary *)self->_deviceProxiesByAddress removeAllObjects];
  allValues2 = [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID allValues];
  [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID removeAllObjects];
  os_unfair_lock_unlock(&self->_deviceProxiesLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v20 + 1) + 8 * v10) invalidate];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = allValues2;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15) invalidate];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100105D54;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (ADMobileBluetoothDeviceDataSource)init
{
  v22.receiver = self;
  v22.super_class = ADMobileBluetoothDeviceDataSource;
  v2 = [(ADMobileBluetoothDeviceDataSource *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("ADMobileBluetoothDeviceDataSource", v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = dispatch_group_create();
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    *(v2 + 14) = 0;
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = *(v2 + 8);
    *(v2 + 8) = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = *(v2 + 9);
    *(v2 + 9) = v11;

    *(v2 + 20) = 0;
    dispatch_group_enter(*(v2 + 6));
    v13 = *(v2 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100105F84;
    block[3] = &unk_10051DFE8;
    v21 = v2;
    dispatch_async(v13, block);
    v14 = *(v2 + 1);
    v15 = +[ADQueueMonitor sharedMonitor];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100105FC4;
    v18[3] = &unk_10051C2E0;
    v19 = v14;
    v16 = v14;
    [v15 addQueue:v16 heartBeatInterval:v18 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v2;
}

@end