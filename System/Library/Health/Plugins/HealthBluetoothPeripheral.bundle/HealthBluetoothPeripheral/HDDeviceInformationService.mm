@interface HDDeviceInformationService
+ (id)implementedProperties;
- (HDDeviceInformationService)initWithServiceManager:(id)a3 peripheral:(id)a4 advertisementData:(id)a5 profile:(id)a6;
- (void)performWhenDeviceInformationHasBeenLoaded:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristic:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 updateTime:(id)a5 error:(id)a6;
- (void)readProperty:(id)a3;
@end

@implementation HDDeviceInformationService

- (HDDeviceInformationService)initWithServiceManager:(id)a3 peripheral:(id)a4 advertisementData:(id)a5 profile:(id)a6
{
  v18.receiver = self;
  v18.super_class = HDDeviceInformationService;
  v6 = [(HDHealthService *)&v18 initWithServiceManager:a3 peripheral:a4 advertisementData:a5 profile:a6];
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

- (void)performWhenDeviceInformationHasBeenLoaded:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DC00;
  v7[3] = &unk_5C9D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

+ (id)implementedProperties
{
  v2 = _PropertyNamesToCharacteristicIdentifiers();
  v3 = [v2 allKeys];

  return v3;
}

- (void)readProperty:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DDBC;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DF4C;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 updateTime:(id)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_E08C;
  v16[3] = &unk_5C8A0;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(queue, v16);
}

@end