@interface PSVR2Device
- (PSVR2Device)init;
- (id)getProperty:(id)property;
- (int)probe:(id)probe service:(unsigned int)service outScore:(int *)score;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)start:(id)start service:(unsigned int)service;
- (int)stop;
@end

@implementation PSVR2Device

- (PSVR2Device)init
{
  v6.receiver = self;
  v6.super_class = PSVR2Device;
  v2 = [(PSVR2Device *)&v6 init];
  v2->_IOCFPlugInVTBL = GCPrepareIOCFPlugInVtbl();
  v2->_IOGCDeviceInVTBL = IOGCDeviceInterfacePrepareObjCVtbl();
  v3 = dispatch_queue_create("PSVR2Device", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  return v2;
}

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v6, v8)))
  {
    v9 = 8;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0x3Au, 0xE7u, 0x17u, 0x8Eu, 0xEAu, 0x88u, 0x44u, 0x2Cu, 0x8Cu, 0xE9u, 0x8Fu, 0x85u, 0xBBu, 0xD5u, 0x67u, 0xDAu);
    if (!CFEqual(v6, v12))
    {
      v10 = -2147483644;
      goto LABEL_5;
    }

    v9 = 16;
  }

  *outInterface = self + v9;
  CFRetain(self);
  v10 = 0;
LABEL_5:
  CFRelease(v6);
  return v10;
}

- (int)probe:(id)probe service:(unsigned int)service outScore:(int *)score
{
  if (!IOObjectConformsTo(service, "PSVR2SenseDevice"))
  {
    return -536870201;
  }

  result = 0;
  *score = 1001;
  return result;
}

- (int)start:(id)start service:(unsigned int)service
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7438;
  block[3] = &unk_10330;
  block[4] = self;
  block[5] = &v9;
  serviceCopy = service;
  dispatch_sync(queue, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (int)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12AC;
  block[3] = &unk_10358;
  block[4] = self;
  dispatch_sync(queue, block);
  return 0;
}

- (id)getProperty:(id)property
{
  propertyCopy = property;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1404;
  v16 = sub_1414;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_74AC;
  block[3] = &unk_10380;
  v10 = propertyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = propertyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end