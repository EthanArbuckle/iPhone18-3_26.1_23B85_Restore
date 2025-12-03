@interface HDDeviceInformationService
+ (id)implementedProperties;
- (HDDeviceInformationService)initWithServiceManager:(id)manager peripheral:(id)peripheral advertisementData:(id)data profile:(id)profile;
- (void)performWhenDeviceInformationHasBeenLoaded:(id)loaded;
- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic updateTime:(id)time error:(id)error;
- (void)readProperty:(id)property;
@end

@implementation HDDeviceInformationService

- (HDDeviceInformationService)initWithServiceManager:(id)manager peripheral:(id)peripheral advertisementData:(id)data profile:(id)profile
{
  v18.receiver = self;
  v18.super_class = HDDeviceInformationService;
  v6 = [(HDHealthService *)&v18 initWithServiceManager:manager peripheral:peripheral advertisementData:data profile:profile];
  if (v6)
  {
    v8 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = +[NSMutableDictionary dictionary];
    characteristics = v6->_characteristics;
    v6->_characteristics = v10;

    v12 = +[NSMutableDictionary dictionary];
    propertyValues = v6->_propertyValues;
    v6->_propertyValues = v12;

    v14 = +[NSMutableSet set];
    propertiesLeftToFetch = v6->_propertiesLeftToFetch;
    v6->_propertiesLeftToFetch = v14;

    v6->_deviceInformationHasBeenLoaded = 0;
    v16 = objc_alloc_init(NSMutableArray);
    pendingDeviceInformationLoadedBlocks = v6->_pendingDeviceInformationLoadedBlocks;
    v6->_pendingDeviceInformationLoadedBlocks = v16;

    sub_2DE08(v6);
  }

  return v6;
}

- (void)performWhenDeviceInformationHasBeenLoaded:(id)loaded
{
  loadedCopy = loaded;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DC00;
  v7[3] = &unk_5C9D8;
  v7[4] = self;
  v8 = loadedCopy;
  v6 = loadedCopy;
  dispatch_async(queue, v7);
}

+ (id)implementedProperties
{
  v2 = _PropertyNamesToCharacteristicIdentifiers();
  allKeys = [v2 allKeys];

  return allKeys;
}

- (void)readProperty:(id)property
{
  propertyCopy = property;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DDBC;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = propertyCopy;
  v6 = propertyCopy;
  dispatch_async(queue, v7);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DF4C;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = peripheralCopy;
  v13 = characteristicCopy;
  v9 = characteristicCopy;
  v10 = peripheralCopy;
  dispatch_async(queue, block);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic updateTime:(id)time error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_E08C;
  v16[3] = &unk_5C8A0;
  v16[4] = self;
  v17 = peripheralCopy;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = characteristicCopy;
  v15 = peripheralCopy;
  dispatch_async(queue, v16);
}

@end