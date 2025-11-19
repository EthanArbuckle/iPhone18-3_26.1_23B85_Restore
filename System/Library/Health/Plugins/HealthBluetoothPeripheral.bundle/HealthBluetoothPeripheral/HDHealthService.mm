@interface HDHealthService
+ (id)serviceUUID;
+ (int64_t)serviceType;
- (BOOL)supportsWritingCharacteristic:(id)a3;
- (HDHealthPeripheral)healthPeripheral;
- (HDHealthService)initWithServiceManager:(id)a3 peripheral:(id)a4 advertisementData:(id)a5 profile:(id)a6;
- (HDProfile)profile;
- (id)description;
- (id)servicesInProfile;
- (void)characteristicDataReceived:(id)a3;
- (void)deviceDisconnecting;
- (void)deviceInformationSetOnPeripheral;
- (void)mfaSucceededOnPeripheral;
- (void)performOperation:(id)a3 onPeripheral:(id)a4 withParameters:(id)a5 completion:(id)a6;
- (void)peripheral:(id)a3 didDiscoverCharacteristics:(id)a4;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readProperty:(id)a3;
- (void)setWritableCharacteristic:(id)a3;
- (void)writeCharacteristic:(id)a3 expectResponse:(BOOL)a4 completion:(id)a5;
@end

@implementation HDHealthService

- (HDHealthService)initWithServiceManager:(id)a3 peripheral:(id)a4 advertisementData:(id)a5 profile:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35.receiver = self;
  v35.super_class = HDHealthService;
  v14 = [(HDHealthService *)&v35 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_4;
  }

  v14->_deliverData = 1;
  objc_storeWeak(&v14->_serviceManager, v10);
  v16 = objc_alloc_init(NSMutableDictionary);
  writableCharacteristics = v15->_writableCharacteristics;
  v15->_writableCharacteristics = v16;

  v18 = HKCreateSerialDispatchQueue();
  writeQueue = v15->_writeQueue;
  v15->_writeQueue = v18;

  v20 = +[NSMutableArray array];
  pendingWrites = v15->_pendingWrites;
  v15->_pendingWrites = v20;

  v22 = [objc_opt_class() serviceUUID];
  v23 = [v22 UUIDString];
  serviceId = v15->_serviceId;
  v15->_serviceId = v23;

  v25 = objc_storeWeak(&v15->_healthPeripheral, v11);
  v26 = [v11 cbPeripheral];
  v27 = [v26 identifier];
  peripheralUUID = v15->_peripheralUUID;
  v15->_peripheralUUID = v27;

  objc_storeWeak(&v15->_profile, v13);
  v29 = HKCreateSerialDispatchQueue();
  dataQueue = v15->_dataQueue;
  v15->_dataQueue = v29;

  v31 = objc_alloc_init(NSMutableArray);
  pendingCharacteristicBuffer = v15->_pendingCharacteristicBuffer;
  v15->_pendingCharacteristicBuffer = v31;

  if ([(HDHealthService *)v15 processAdvertisementData:v12])
  {
    v33 = v15;
  }

  else
  {
LABEL_4:
    v33 = 0;
  }

  return v33;
}

- (void)deviceDisconnecting
{
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19D70;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(writeQueue, block);
}

+ (int64_t)serviceType
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [NSException raise:NSInvalidArgumentException format:@"Subclass %@ must override serviceType.", v3];

  return -1;
}

+ (id)serviceUUID
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [NSException raise:NSInvalidArgumentException format:@"Subclass %@ must override serviceUUID.", v3];

  return 0;
}

- (id)servicesInProfile
{
  v2 = +[HDDeviceInformationService serviceUUID];
  v6[0] = v2;
  v3 = +[HDBatteryService serviceUUID];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)characteristicDataReceived:(id)a3
{
  v4 = a3;
  if ([(HDHealthService *)self deliverData])
  {
    if (self && (v5 = atomic_load(&self->_deviceInformationLoaded), (v5 & 1) != 0))
    {
      dataQueue = self->_dataQueue;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1A14C;
      v8[3] = &unk_5C8C8;
      v8[4] = self;
      v9 = v4;
      dispatch_async(dataQueue, v8);
    }

    else
    {
      sub_33784(self, v4);
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      sub_34028(v7);
    }
  }
}

- (void)performOperation:(id)a3 onPeripheral:(id)a4 withParameters:(id)a5 completion:(id)a6
{
  v7 = a3;
  v8 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_3406C();
  }
}

- (void)setWritableCharacteristic:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A26C;
  v7[3] = &unk_5C8C8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(writeQueue, v7);
}

- (BOOL)supportsWritingCharacteristic:(id)a3
{
  v4 = [objc_opt_class() uuid];
  v5 = [(NSMutableDictionary *)self->_writableCharacteristics objectForKeyedSubscript:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (void)writeCharacteristic:(id)a3 expectResponse:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  writeQueue = self->_writeQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1A454;
  v13[3] = &unk_5D4F8;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(writeQueue, v13);
}

- (void)readProperty:(id)a3
{
  v3 = a3;
  _HKInitializeLogging();
  v4 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_341F8(v3, v4);
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_34270();
  }

  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A6C4;
  block[3] = &unk_5C788;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(writeQueue, block);
}

- (id)description
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [objc_opt_class() serviceUUID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (void)mfaSucceededOnPeripheral
{
  dataQueue = self->_dataQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A84C;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(dataQueue, block);
}

- (void)deviceInformationSetOnPeripheral
{
  dataQueue = self->_dataQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_33F8C;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(dataQueue, block);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HDHealthPeripheral)healthPeripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_healthPeripheral);

  return WeakRetained;
}

- (void)peripheral:(id)a3 didDiscoverCharacteristics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDHealthService *)self peripheral:v6 didDiscoverCharacteristic:*(*(&v12 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  sub_33C50(self);
}

@end