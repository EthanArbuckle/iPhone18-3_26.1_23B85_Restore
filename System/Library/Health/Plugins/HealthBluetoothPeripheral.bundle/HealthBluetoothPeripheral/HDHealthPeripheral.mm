@interface HDHealthPeripheral
+ (id)implementedProperties;
- (BOOL)hasServiceWithUUID:(id)d;
- (BOOL)updateCBPeripheral:(id)peripheral;
- (HDHealthPeripheral)initWithCBPeripheral:(id)peripheral name:(id)name serviceManager:(id)manager profile:(id)profile;
- (NSString)stateDescription;
- (id)healthServiceForType:(int64_t)type;
- (void)addHealthService:(id)service;
- (void)disconnectServices;
- (void)discoverServices;
- (void)getProperty:(id)property withHandler:(id)handler;
- (void)performOperation:(id)operation withParameters:(id)parameters completion:(id)completion;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)service:(id)service didReadProperty:(id)property value:(id)value error:(id)error;
- (void)writeCharacteristic:(id)characteristic expectResponse:(BOOL)response completion:(id)completion;
@end

@implementation HDHealthPeripheral

- (HDHealthPeripheral)initWithCBPeripheral:(id)peripheral name:(id)name serviceManager:(id)manager profile:(id)profile
{
  peripheralCopy = peripheral;
  nameCopy = name;
  managerCopy = manager;
  profileCopy = profile;
  v26.receiver = self;
  v26.super_class = HDHealthPeripheral;
  v15 = [(HDHealthPeripheral *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_cbPeripheral, peripheral);
    [peripheralCopy setDelegate:v16];
    objc_storeStrong(&v16->_name, name);
    v17 = objc_alloc_init(NSMutableDictionary);
    healthServices = v16->_healthServices;
    v16->_healthServices = v17;

    objc_storeWeak(&v16->_serviceManager, managerCopy);
    objc_storeWeak(&v16->_profile, profileCopy);
    v19 = HKCreateSerialDispatchQueue();
    servicesQueue = v16->_servicesQueue;
    v16->_servicesQueue = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    serviceForProperty = v16->_serviceForProperty;
    v16->_serviceForProperty = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    propertiesAwaiting = v16->_propertiesAwaiting;
    v16->_propertiesAwaiting = v23;
  }

  return v16;
}

- (NSString)stateDescription
{
  state = [(HDHealthPeripheral *)self state];
  if (state > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_5C938 + state);
  }
}

- (BOOL)updateCBPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  cbPeripheral = self->_cbPeripheral;
  p_cbPeripheral = &self->_cbPeripheral;
  identifier = [(CBPeripheral *)cbPeripheral identifier];
  identifier2 = [peripheralCopy identifier];
  v10 = [identifier isEqual:identifier2];

  if (v10)
  {
    objc_storeStrong(p_cbPeripheral, peripheral);
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_2770C(v11, peripheralCopy, p_cbPeripheral);
    }
  }

  return v10;
}

- (void)discoverServices
{
  v3 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  p_cbPeripheral = &self->_cbPeripheral;
  services = [(CBPeripheral *)self->_cbPeripheral services];
  v6 = [services countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(services);
        }

        uUID = [*(*(&v24 + 1) + 8 * v9) UUID];
        [v3 addObject:uUID];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [services countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  allKeys = [(NSMutableDictionary *)self->_healthServices allKeys];
  [v3 addObjectsFromArray:allKeys];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_healthServices allValues];
  v13 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        servicesInProfile = [*(*(&v20 + 1) + 8 * v16) servicesInProfile];
        [v3 addObjectsFromArray:servicesInProfile];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *p_cbPeripheral;
  allObjects = [v3 allObjects];
  [v18 discoverServices:allObjects];

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_27808(v3, p_cbPeripheral);
  }
}

- (void)addHealthService:(id)service
{
  serviceCopy = service;
  serviceUUID = [objc_opt_class() serviceUUID];
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_164C;
  block[3] = &unk_5C788;
  block[4] = self;
  v10 = serviceUUID;
  v11 = serviceCopy;
  v7 = serviceCopy;
  v8 = serviceUUID;
  dispatch_async(servicesQueue, block);
}

- (BOOL)hasServiceWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1728;
  block[3] = &unk_5C7B0;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(servicesQueue, block);
  LOBYTE(servicesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return servicesQueue;
}

- (id)healthServiceForType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1870;
  v11 = sub_1880;
  v12 = 0;
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1888;
  block[3] = &unk_5C7D8;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(servicesQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)disconnectServices
{
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A38;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(servicesQueue, block);
}

- (void)performOperation:(id)operation withParameters:(id)parameters completion:(id)completion
{
  operationCopy = operation;
  parametersCopy = parameters;
  completionCopy = completion;
  servicesQueue = self->_servicesQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1D1C;
  v15[3] = &unk_5C828;
  v15[4] = self;
  v16 = operationCopy;
  v17 = parametersCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = parametersCopy;
  v14 = operationCopy;
  dispatch_async(servicesQueue, v15);
}

- (void)writeCharacteristic:(id)characteristic expectResponse:(BOOL)response completion:(id)completion
{
  characteristicCopy = characteristic;
  completionCopy = completion;
  servicesQueue = self->_servicesQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1F6C;
  v13[3] = &unk_5C850;
  v13[4] = self;
  v14 = characteristicCopy;
  responseCopy = response;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = characteristicCopy;
  dispatch_async(servicesQueue, v13);
}

+ (id)implementedProperties
{
  v4 = @"RSSIdb";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getProperty:(id)property withHandler:(id)handler
{
  propertyCopy = property;
  handlerCopy = handler;
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_227C;
  block[3] = &unk_5C878;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = propertyCopy;
  v9 = handlerCopy;
  v10 = propertyCopy;
  dispatch_async(servicesQueue, block);
}

- (void)service:(id)service didReadProperty:(id)property value:(id)value error:(id)error
{
  propertyCopy = property;
  valueCopy = value;
  errorCopy = error;
  servicesQueue = self->_servicesQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_274EC;
  v16[3] = &unk_5C8A0;
  v16[4] = self;
  v17 = valueCopy;
  v18 = propertyCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = propertyCopy;
  v15 = valueCopy;
  dispatch_async(servicesQueue, v16);
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  if ([servicesCopy count])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      sub_27914();
    }

    v8 = [NSError hk_error:302 description:@"The device modified its service requiring a new discovery."];
    WeakRetained = objc_loadWeakRetained(&self->_serviceManager);
    identifier = [(HDHealthPeripheral *)self identifier];
    [WeakRetained servicesInvalidatedForDevice:identifier withError:v8];
  }
}

- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error
{
  peripheralCopy = peripheral;
  iCopy = i;
  errorCopy = error;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_27988();
  }

  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_276E8;
  block[3] = &unk_5C788;
  block[4] = self;
  v15 = iCopy;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = iCopy;
  dispatch_async(servicesQueue, block);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  _HKInitializeLogging();
  v8 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_279FC(v8, peripheralCopy, servicesCopy);
  }

  servicesQueue = self->_servicesQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2758;
  v11[3] = &unk_5C8C8;
  v12 = peripheralCopy;
  selfCopy = self;
  v10 = peripheralCopy;
  dispatch_async(servicesQueue, v11);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  _HKInitializeLogging();
  v11 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v20 = peripheralCopy;
    v21 = 2112;
    v22 = serviceCopy;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "|>- didDiscoverCharacteristicsForService: %@, %@, error: %{public}@", buf, 0x20u);
  }

  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2FEC;
  block[3] = &unk_5C788;
  v16 = serviceCopy;
  selfCopy = self;
  v18 = peripheralCopy;
  v13 = peripheralCopy;
  v14 = serviceCopy;
  dispatch_async(servicesQueue, block);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  _HKInitializeLogging();
  v11 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    v20 = v11;
    value = [characteristicCopy value];
    *buf = 138413058;
    v29 = peripheralCopy;
    v30 = 2112;
    v31 = characteristicCopy;
    v32 = 2112;
    v33 = value;
    v34 = 2114;
    v35 = errorCopy;
    _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "|>- peripheral:didUpdateValueForCharacteristic: %@, %@, %@, error: %{public}@", buf, 0x2Au);
  }

  uUID = [characteristicCopy UUID];
  v13 = [CBUUID UUIDWithString:@"2A00"];
  v14 = [uUID isEqual:v13];

  if (v14)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      sub_27AB8();
    }
  }

  else
  {
    service = [characteristicCopy service];
    uUID2 = [service UUID];

    if (uUID2)
    {
      v17 = +[NSDate date];
      servicesQueue = self->_servicesQueue;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_36DC;
      v22[3] = &unk_5C8F0;
      v22[4] = self;
      v23 = uUID2;
      v24 = peripheralCopy;
      v25 = characteristicCopy;
      v26 = v17;
      v27 = errorCopy;
      v19 = v17;
      dispatch_async(servicesQueue, v22);
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  _HKInitializeLogging();
  v11 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v21 = peripheralCopy;
    v22 = 2112;
    v23 = characteristicCopy;
    v24 = 2114;
    v25 = errorCopy;
    _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "|>- peripheral:didWriteValueForCharacteristic: %@, %@, error: %{public}@", buf, 0x20u);
  }

  service = [characteristicCopy service];
  uUID = [service UUID];

  if (uUID)
  {
    servicesQueue = self->_servicesQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_38FC;
    block[3] = &unk_5C918;
    block[4] = self;
    v16 = uUID;
    v17 = peripheralCopy;
    v18 = characteristicCopy;
    v19 = errorCopy;
    dispatch_async(servicesQueue, block);
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  _HKInitializeLogging();
  v10 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = peripheralCopy;
    v13 = 2112;
    v14 = characteristicCopy;
    v15 = 2114;
    v16 = errorCopy;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "|>- peripheral:didUpdateNotificationStateForCharacteristic: %@, %@, error: %{public}@", &v11, 0x20u);
  }
}

@end