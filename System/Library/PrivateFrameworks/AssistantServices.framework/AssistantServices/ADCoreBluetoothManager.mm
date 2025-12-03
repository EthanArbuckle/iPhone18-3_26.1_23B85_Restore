@interface ADCoreBluetoothManager
+ (void)fetchCBUUIDForConnectedDeviceWithAddress:(id)address completion:(id)completion;
+ (void)retrieveConnectedDevicesInfoOnDoAPServiceWithCompletion:(id)completion;
+ (void)retrieveConnectedDevicesInfoWithCompletion:(id)completion;
- (id)_adCoreBluetoothDeviceForPeripheral:(id)peripheral RSSI:(id)i;
- (id)_getPeripheralStateDescriptionFromState:(int64_t)state;
- (id)_init;
- (void)_connectToPeripherals:(id)peripherals;
- (void)_didReadRSSI:(id)i forPeripheral:(id)peripheral;
- (void)_retrieveConnectedDevicesInfoOnServices:(id)services completion:(id)completion;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error;
@end

@implementation ADCoreBluetoothManager

- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error
{
  peripheralCopy = peripheral;
  iCopy = i;
  errorCopy = error;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002BA62C;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = peripheralCopy;
  v17 = errorCopy;
  v18 = iCopy;
  v12 = iCopy;
  v13 = errorCopy;
  v14 = peripheralCopy;
  dispatch_async(queue, v15);
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if ([manager isEqual:self->_cbManager])
  {
    peripheralsPendingRSSI = self->_peripheralsPendingRSSI;
    identifier = [peripheralCopy identifier];
    v12 = [(NSMutableDictionary *)peripheralsPendingRSSI objectForKey:identifier];

    if (v12)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315650;
        v15 = "[ADCoreBluetoothManager centralManager:didFailToConnectPeripheral:error:]";
        v16 = 2112;
        v17 = peripheralCopy;
        v18 = 2112;
        v19 = errorCopy;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s %@: %@", &v14, 0x20u);
      }

      [(ADCoreBluetoothManager *)self _didReadRSSI:0 forPeripheral:peripheralCopy];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  if (self->_invalidated)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCoreBluetoothManager centralManager:didConnectPeripheral:]";
      v12 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ already invalidated", &v10, 0x16u);
    }
  }

  else if ([managerCopy isEqual:self->_cbManager])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADCoreBluetoothManager centralManager:didConnectPeripheral:]";
      v12 = 2112;
      selfCopy = peripheralCopy;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s %@ connected, now reading RSSI", &v10, 0x16u);
    }

    [(ADCoreBluetoothManager *)peripheralCopy readRSSI];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if ([(NSArray *)stateCopy isEqual:self->_cbManager])
  {
    state = [(CBCentralManager *)self->_cbManager state];
    state2 = [(CBCentralManager *)self->_cbManager state];
    v7 = AFSiriLogContextDaemon;
    v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (state2 > 4)
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
        v17 = state;
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
      v17 = stateCopy;
      v18 = 2112;
      v19 = cbManager;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Ignoring update from irrelevant CB manager: %@, current manager is %@", &v14, 0x20u);
    }
  }
}

- (void)_didReadRSSI:(id)i forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v10 = [(ADCoreBluetoothManager *)self _adCoreBluetoothDeviceForPeripheral:peripheralCopy RSSI:i];
  [(NSMutableArray *)self->_peripheralsWithRSSIRead addObject:?];
  peripheralsPendingRSSI = self->_peripheralsPendingRSSI;
  identifier = [peripheralCopy identifier];
  [(NSMutableDictionary *)peripheralsPendingRSSI removeObjectForKey:identifier];

  [(CBCentralManager *)self->_cbManager cancelPeripheralConnection:peripheralCopy];
  group = self->_group;
  if (group)
  {
    dispatch_group_leave(group);
  }
}

- (void)_connectToPeripherals:(id)peripherals
{
  peripheralsCopy = peripherals;
  v5 = [peripheralsCopy count];
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
    v13 = peripheralsCopy;
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
          identifier = [v18 identifier];
          [(NSMutableDictionary *)v19 setObject:v18 forKey:identifier];

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

- (id)_adCoreBluetoothDeviceForPeripheral:(id)peripheral RSSI:(id)i
{
  iCopy = i;
  peripheralCopy = peripheral;
  v8 = -[ADCoreBluetoothManager _getPeripheralStateDescriptionFromState:](self, "_getPeripheralStateDescriptionFromState:", [peripheralCopy state]);
  v9 = [ADCoreBluetoothDevice alloc];
  identifier = [peripheralCopy identifier];
  name = [peripheralCopy name];

  v12 = [(ADCoreBluetoothDevice *)v9 initWithIdentifier:identifier name:name RSSI:iCopy state:v8];
  counter = self->_counter;
  self->_counter = counter + 1;
  counter = [NSString stringWithFormat:@"%tu", counter];
  [(ADCoreBluetoothDevice *)v12 setIndex:counter];

  return v12;
}

- (id)_getPeripheralStateDescriptionFromState:(int64_t)state
{
  if (state > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_100519BF8[state];
  }
}

- (void)_retrieveConnectedDevicesInfoOnServices:(id)services completion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002BB20C;
  block[3] = &unk_10051E088;
  v12 = servicesCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = servicesCopy;
  v10 = completionCopy;
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

+ (void)fetchCBUUIDForConnectedDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v7 = objc_alloc_init(CBController);
  v8 = objc_alloc_init(CBDevice);
  [v8 setIdentifier:addressCopy];
  v9 = objc_alloc_init(CBDeviceRequest);
  [v9 setRequestFlags:64];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002BBA10;
  v12[3] = &unk_100519BB0;
  v13 = addressCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = addressCopy;
  [v7 performDeviceRequest:v9 device:v8 completion:v12];
}

+ (void)retrieveConnectedDevicesInfoOnDoAPServiceWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    _init = [[ADCoreBluetoothManager alloc] _init];
    v5 = [CBUUID UUIDWithString:CBUUIDDoAPServiceString];
    v7 = v5;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [_init _retrieveConnectedDevicesInfoOnServices:v6 completion:completionCopy];
  }
}

+ (void)retrieveConnectedDevicesInfoWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    _init = [[ADCoreBluetoothManager alloc] _init];
    [_init _retrieveConnectedDevicesInfoOnServices:&__NSArray0__struct completion:completionCopy];
  }
}

@end