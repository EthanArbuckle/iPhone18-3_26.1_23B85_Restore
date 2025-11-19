@interface HDHealthPeripheral
+ (id)implementedProperties;
- (BOOL)hasServiceWithUUID:(id)a3;
- (BOOL)updateCBPeripheral:(id)a3;
- (HDHealthPeripheral)initWithCBPeripheral:(id)a3 name:(id)a4 serviceManager:(id)a5 profile:(id)a6;
- (NSString)stateDescription;
- (id)healthServiceForType:(int64_t)a3;
- (void)addHealthService:(id)a3;
- (void)disconnectServices;
- (void)discoverServices;
- (void)getProperty:(id)a3 withHandler:(id)a4;
- (void)performOperation:(id)a3 withParameters:(id)a4 completion:(id)a5;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didReadRSSI:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)service:(id)a3 didReadProperty:(id)a4 value:(id)a5 error:(id)a6;
- (void)writeCharacteristic:(id)a3 expectResponse:(BOOL)a4 completion:(id)a5;
@end

@implementation HDHealthPeripheral

- (HDHealthPeripheral)initWithCBPeripheral:(id)a3 name:(id)a4 serviceManager:(id)a5 profile:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = HDHealthPeripheral;
  v15 = [(HDHealthPeripheral *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_cbPeripheral, a3);
    [v11 setDelegate:v16];
    objc_storeStrong(&v16->_name, a4);
    v17 = objc_alloc_init(NSMutableDictionary);
    healthServices = v16->_healthServices;
    v16->_healthServices = v17;

    objc_storeWeak(&v16->_serviceManager, v13);
    objc_storeWeak(&v16->_profile, v14);
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
  v2 = [(HDHealthPeripheral *)self state];
  if (v2 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_5C938 + v2);
  }
}

- (BOOL)updateCBPeripheral:(id)a3
{
  v5 = a3;
  cbPeripheral = self->_cbPeripheral;
  p_cbPeripheral = &self->_cbPeripheral;
  v8 = [(CBPeripheral *)cbPeripheral identifier];
  v9 = [v5 identifier];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    objc_storeStrong(p_cbPeripheral, a3);
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_2770C(v11, v5, p_cbPeripheral);
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
  v5 = [(CBPeripheral *)self->_cbPeripheral services];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * v9) UUID];
        [v3 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = [(NSMutableDictionary *)self->_healthServices allKeys];
  [v3 addObjectsFromArray:v11];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(NSMutableDictionary *)self->_healthServices allValues];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) servicesInProfile];
        [v3 addObjectsFromArray:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *p_cbPeripheral;
  v19 = [v3 allObjects];
  [v18 discoverServices:v19];

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_27808(v3, p_cbPeripheral);
  }
}

- (void)addHealthService:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() serviceUUID];
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_164C;
  block[3] = &unk_5C788;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(servicesQueue, block);
}

- (BOOL)hasServiceWithUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1728;
  block[3] = &unk_5C7B0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(servicesQueue, block);
  LOBYTE(servicesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return servicesQueue;
}

- (id)healthServiceForType:(int64_t)a3
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
  block[6] = a3;
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

- (void)performOperation:(id)a3 withParameters:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  servicesQueue = self->_servicesQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1D1C;
  v15[3] = &unk_5C828;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(servicesQueue, v15);
}

- (void)writeCharacteristic:(id)a3 expectResponse:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  servicesQueue = self->_servicesQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1F6C;
  v13[3] = &unk_5C850;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(servicesQueue, v13);
}

+ (id)implementedProperties
{
  v4 = @"RSSIdb";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getProperty:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_227C;
  block[3] = &unk_5C878;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(servicesQueue, block);
}

- (void)service:(id)a3 didReadProperty:(id)a4 value:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  servicesQueue = self->_servicesQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_274EC;
  v16[3] = &unk_5C8A0;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(servicesQueue, v16);
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      sub_27914();
    }

    v8 = [NSError hk_error:302 description:@"The device modified its service requiring a new discovery."];
    WeakRetained = objc_loadWeakRetained(&self->_serviceManager);
    v10 = [(HDHealthPeripheral *)self identifier];
    [WeakRetained servicesInvalidatedForDevice:v10 withError:v8];
  }
}

- (void)peripheral:(id)a3 didReadRSSI:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(servicesQueue, block);
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_279FC(v8, v6, v7);
  }

  servicesQueue = self->_servicesQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2758;
  v11[3] = &unk_5C8C8;
  v12 = v6;
  v13 = self;
  v10 = v6;
  dispatch_async(servicesQueue, v11);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "|>- didDiscoverCharacteristicsForService: %@, %@, error: %{public}@", buf, 0x20u);
  }

  servicesQueue = self->_servicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2FEC;
  block[3] = &unk_5C788;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v13 = v8;
  v14 = v9;
  dispatch_async(servicesQueue, block);
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    v20 = v11;
    v21 = [v9 value];
    *buf = 138413058;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v21;
    v34 = 2114;
    v35 = v10;
    _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "|>- peripheral:didUpdateValueForCharacteristic: %@, %@, %@, error: %{public}@", buf, 0x2Au);
  }

  v12 = [v9 UUID];
  v13 = [CBUUID UUIDWithString:@"2A00"];
  v14 = [v12 isEqual:v13];

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
    v15 = [v9 service];
    v16 = [v15 UUID];

    if (v16)
    {
      v17 = +[NSDate date];
      servicesQueue = self->_servicesQueue;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_36DC;
      v22[3] = &unk_5C8F0;
      v22[4] = self;
      v23 = v16;
      v24 = v8;
      v25 = v9;
      v26 = v17;
      v27 = v10;
      v19 = v17;
      dispatch_async(servicesQueue, v22);
    }
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2114;
    v25 = v10;
    _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "|>- peripheral:didWriteValueForCharacteristic: %@, %@, error: %{public}@", buf, 0x20u);
  }

  v12 = [v9 service];
  v13 = [v12 UUID];

  if (v13)
  {
    servicesQueue = self->_servicesQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_38FC;
    block[3] = &unk_5C918;
    block[4] = self;
    v16 = v13;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    dispatch_async(servicesQueue, block);
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  _HKInitializeLogging();
  v10 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "|>- peripheral:didUpdateNotificationStateForCharacteristic: %@, %@, error: %{public}@", &v11, 0x20u);
  }
}

@end