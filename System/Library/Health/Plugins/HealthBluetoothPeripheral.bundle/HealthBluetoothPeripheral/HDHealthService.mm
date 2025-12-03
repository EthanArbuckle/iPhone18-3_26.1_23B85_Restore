@interface HDHealthService
+ (id)serviceUUID;
+ (int64_t)serviceType;
- (BOOL)supportsWritingCharacteristic:(id)characteristic;
- (HDHealthPeripheral)healthPeripheral;
- (HDHealthService)initWithServiceManager:(id)manager peripheral:(id)peripheral advertisementData:(id)data profile:(id)profile;
- (HDProfile)profile;
- (id)description;
- (id)servicesInProfile;
- (void)characteristicDataReceived:(id)received;
- (void)deviceDisconnecting;
- (void)deviceInformationSetOnPeripheral;
- (void)mfaSucceededOnPeripheral;
- (void)performOperation:(id)operation onPeripheral:(id)peripheral withParameters:(id)parameters completion:(id)completion;
- (void)peripheral:(id)peripheral didDiscoverCharacteristics:(id)characteristics;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readProperty:(id)property;
- (void)setWritableCharacteristic:(id)characteristic;
- (void)writeCharacteristic:(id)characteristic expectResponse:(BOOL)response completion:(id)completion;
@end

@implementation HDHealthService

- (HDHealthService)initWithServiceManager:(id)manager peripheral:(id)peripheral advertisementData:(id)data profile:(id)profile
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  profileCopy = profile;
  v35.receiver = self;
  v35.super_class = HDHealthService;
  v14 = [(HDHealthService *)&v35 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_4;
  }

  v14->_deliverData = 1;
  objc_storeWeak(&v14->_serviceManager, managerCopy);
  v16 = objc_alloc_init(NSMutableDictionary);
  writableCharacteristics = v15->_writableCharacteristics;
  v15->_writableCharacteristics = v16;

  v18 = HKCreateSerialDispatchQueue();
  writeQueue = v15->_writeQueue;
  v15->_writeQueue = v18;

  v20 = +[NSMutableArray array];
  pendingWrites = v15->_pendingWrites;
  v15->_pendingWrites = v20;

  serviceUUID = [objc_opt_class() serviceUUID];
  uUIDString = [serviceUUID UUIDString];
  serviceId = v15->_serviceId;
  v15->_serviceId = uUIDString;

  v25 = objc_storeWeak(&v15->_healthPeripheral, peripheralCopy);
  cbPeripheral = [peripheralCopy cbPeripheral];
  identifier = [cbPeripheral identifier];
  peripheralUUID = v15->_peripheralUUID;
  v15->_peripheralUUID = identifier;

  objc_storeWeak(&v15->_profile, profileCopy);
  v29 = HKCreateSerialDispatchQueue();
  dataQueue = v15->_dataQueue;
  v15->_dataQueue = v29;

  v31 = objc_alloc_init(NSMutableArray);
  pendingCharacteristicBuffer = v15->_pendingCharacteristicBuffer;
  v15->_pendingCharacteristicBuffer = v31;

  if ([(HDHealthService *)v15 processAdvertisementData:dataCopy])
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

- (void)characteristicDataReceived:(id)received
{
  receivedCopy = received;
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
      v9 = receivedCopy;
      dispatch_async(dataQueue, v8);
    }

    else
    {
      sub_33784(self, receivedCopy);
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

- (void)performOperation:(id)operation onPeripheral:(id)peripheral withParameters:(id)parameters completion:(id)completion
{
  operationCopy = operation;
  parametersCopy = parameters;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_3406C();
  }
}

- (void)setWritableCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  writeQueue = self->_writeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A26C;
  v7[3] = &unk_5C8C8;
  v8 = characteristicCopy;
  selfCopy = self;
  v6 = characteristicCopy;
  dispatch_async(writeQueue, v7);
}

- (BOOL)supportsWritingCharacteristic:(id)characteristic
{
  uuid = [objc_opt_class() uuid];
  v5 = [(NSMutableDictionary *)self->_writableCharacteristics objectForKeyedSubscript:uuid];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (void)writeCharacteristic:(id)characteristic expectResponse:(BOOL)response completion:(id)completion
{
  characteristicCopy = characteristic;
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1A454;
  v13[3] = &unk_5D4F8;
  v14 = characteristicCopy;
  v15 = completionCopy;
  v13[4] = self;
  responseCopy = response;
  v11 = characteristicCopy;
  v12 = completionCopy;
  dispatch_async(writeQueue, v13);
}

- (void)readProperty:(id)property
{
  propertyCopy = property;
  _HKInitializeLogging();
  v4 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    sub_341F8(propertyCopy, v4);
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
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
  v15 = characteristicCopy;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  dispatch_async(writeQueue, block);
}

- (id)description
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  serviceUUID = [objc_opt_class() serviceUUID];
  uUIDString = [serviceUUID UUIDString];
  v6 = [NSString stringWithFormat:@"%@ %@", v3, uUIDString];

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

- (void)peripheral:(id)peripheral didDiscoverCharacteristics:(id)characteristics
{
  peripheralCopy = peripheral;
  characteristicsCopy = characteristics;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [characteristicsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(characteristicsCopy);
        }

        [(HDHealthService *)self peripheral:peripheralCopy didDiscoverCharacteristic:*(*(&v12 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [characteristicsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  sub_33C50(self);
}

@end