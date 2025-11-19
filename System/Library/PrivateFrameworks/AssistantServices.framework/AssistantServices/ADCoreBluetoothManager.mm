@interface ADCoreBluetoothManager
+ (void)fetchCBUUIDForConnectedDeviceWithAddress:(id)a3 completion:(id)a4;
+ (void)retrieveConnectedDevicesInfoOnDoAPServiceWithCompletion:(id)a3;
+ (void)retrieveConnectedDevicesInfoWithCompletion:(id)a3;
- (id)_adCoreBluetoothDeviceForPeripheral:(id)a3 RSSI:(id)a4;
- (id)_getPeripheralStateDescriptionFromState:(int64_t)a3;
- (id)_init;
- (void)_connectToPeripherals:(id)a3;
- (void)_didReadRSSI:(id)a3 forPeripheral:(id)a4;
- (void)_retrieveConnectedDevicesInfoOnServices:(id)a3 completion:(id)a4;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)peripheral:(id)a3 didReadRSSI:(id)a4 error:(id)a5;
@end

@implementation ADCoreBluetoothManager

- (void)peripheral:(id)a3 didReadRSSI:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002BA62C;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a3 isEqual:self->_cbManager])
  {
    peripheralsPendingRSSI = self->_peripheralsPendingRSSI;
    v11 = [v8 identifier];
    v12 = [(NSMutableDictionary *)peripheralsPendingRSSI objectForKey:v11];

    if (v12)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315650;
        v15 = "[ADCoreBluetoothManager centralManager:didFailToConnectPeripheral:error:]";
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s %@: %@", &v14, 0x20u);
      }

      [(ADCoreBluetoothManager *)self _didReadRSSI:0 forPeripheral:v8];
    }
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_invalidated)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCoreBluetoothManager centralManager:didConnectPeripheral:]";
      v12 = 2112;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ already invalidated", &v10, 0x16u);
    }
  }

  else if ([v6 isEqual:self->_cbManager])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADCoreBluetoothManager centralManager:didConnectPeripheral:]";
      v12 = 2112;
      v13 = v7;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s %@ connected, now reading RSSI", &v10, 0x16u);
    }

    [(ADCoreBluetoothManager *)v7 readRSSI];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  if ([(NSArray *)v4 isEqual:self->_cbManager])
  {
    v5 = [(CBCentralManager *)self->_cbManager state];
    v6 = [(CBCentralManager *)self->_cbManager state];
    v7 = AFSiriLogContextDaemon;
    v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v6 > 4)
    {
      if (v8)
      {
        servicesToScan = self->_servicesToScan;
        v14 = 136315394;
        v15 = "[ADCoreBluetoothManager centralManagerDidUpdateState:]";
        v16 = 2112;
        v17 = servicesToScan;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s retrieving connected devices on services: %@", &v14, 0x16u);
      }

      v13 = [(CBCentralManager *)self->_cbManager retrieveConnectedPeripheralsWithServices:self->_servicesToScan allowAll:1];
      [(ADCoreBluetoothManager *)self _connectToPeripherals:v13];
    }

    else
    {
      if (v8)
      {
        v14 = 136315394;
        v15 = "[ADCoreBluetoothManager centralManagerDidUpdateState:]";
        v16 = 2048;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Invalid CBCentral manager state: %ld", &v14, 0x16u);
      }

      self->_invalidated = 1;
      if (self->_group)
      {
        WeakRetained = objc_loadWeakRetained(&self->_completionWrapper);
        [WeakRetained invoke];
      }
    }
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      cbManager = self->_cbManager;
      v14 = 136315650;
      v15 = "[ADCoreBluetoothManager centralManagerDidUpdateState:]";
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = cbManager;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Ignoring update from irrelevant CB manager: %@, current manager is %@", &v14, 0x20u);
    }
  }
}

- (void)_didReadRSSI:(id)a3 forPeripheral:(id)a4
{
  v6 = a4;
  v10 = [(ADCoreBluetoothManager *)self _adCoreBluetoothDeviceForPeripheral:v6 RSSI:a3];
  [(NSMutableArray *)self->_peripheralsWithRSSIRead addObject:?];
  peripheralsPendingRSSI = self->_peripheralsPendingRSSI;
  v8 = [v6 identifier];
  [(NSMutableDictionary *)peripheralsPendingRSSI removeObjectForKey:v8];

  [(CBCentralManager *)self->_cbManager cancelPeripheralConnection:v6];
  group = self->_group;
  if (group)
  {
    dispatch_group_leave(group);
  }
}

- (void)_connectToPeripherals:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = dispatch_group_create();
    group = self->_group;
    self->_group = v7;

    v9 = [[NSMutableDictionary alloc] initWithCapacity:v6];
    peripheralsPendingRSSI = self->_peripheralsPendingRSSI;
    self->_peripheralsPendingRSSI = v9;

    v11 = [[NSMutableArray alloc] initWithCapacity:v6];
    peripheralsWithRSSIRead = self->_peripheralsWithRSSIRead;
    self->_peripheralsWithRSSIRead = v11;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = self->_peripheralsPendingRSSI;
          v20 = [v18 identifier];
          [(NSMutableDictionary *)v19 setObject:v18 forKey:v20];

          [v18 setDelegate:self];
          dispatch_group_enter(self->_group);
          [(CBCentralManager *)self->_cbManager connectPeripheral:v18 options:0];
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    queue = self->_queue;
    v21 = self->_group;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002BAFC0;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_group_notify(v21, queue, block);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_completionWrapper);
    [WeakRetained invoke];
  }
}

- (id)_adCoreBluetoothDeviceForPeripheral:(id)a3 RSSI:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[ADCoreBluetoothManager _getPeripheralStateDescriptionFromState:](self, "_getPeripheralStateDescriptionFromState:", [v7 state]);
  v9 = [ADCoreBluetoothDevice alloc];
  v10 = [v7 identifier];
  v11 = [v7 name];

  v12 = [(ADCoreBluetoothDevice *)v9 initWithIdentifier:v10 name:v11 RSSI:v6 state:v8];
  counter = self->_counter;
  self->_counter = counter + 1;
  v14 = [NSString stringWithFormat:@"%tu", counter];
  [(ADCoreBluetoothDevice *)v12 setIndex:v14];

  return v12;
}

- (id)_getPeripheralStateDescriptionFromState:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_100519BF8[a3];
  }
}

- (void)_retrieveConnectedDevicesInfoOnServices:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002BB20C;
  block[3] = &unk_10051E088;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = ADCoreBluetoothManager;
  v2 = [(ADCoreBluetoothManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADCoreBluetoothManagerQueue", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v2->_invalidated = 0;
    v2->_counter = 0;
    v6 = v2->_queue;
    v7 = +[ADQueueMonitor sharedMonitor];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002BB7DC;
    v10[3] = &unk_10051C2E0;
    v11 = v6;
    v8 = v6;
    [v7 addQueue:v8 heartBeatInterval:v10 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v2;
}

+ (void)fetchCBUUIDForConnectedDeviceWithAddress:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(CBController);
  v8 = objc_alloc_init(CBDevice);
  [v8 setIdentifier:v5];
  v9 = objc_alloc_init(CBDeviceRequest);
  [v9 setRequestFlags:64];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002BBA10;
  v12[3] = &unk_100519BB0;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  [v7 performDeviceRequest:v9 device:v8 completion:v12];
}

+ (void)retrieveConnectedDevicesInfoOnDoAPServiceWithCompletion:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[ADCoreBluetoothManager alloc] _init];
    v5 = [CBUUID UUIDWithString:CBUUIDDoAPServiceString];
    v7 = v5;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v4 _retrieveConnectedDevicesInfoOnServices:v6 completion:v3];
  }
}

+ (void)retrieveConnectedDevicesInfoWithCompletion:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[ADCoreBluetoothManager alloc] _init];
    [v4 _retrieveConnectedDevicesInfoOnServices:&__NSArray0__struct completion:v3];
  }
}

@end