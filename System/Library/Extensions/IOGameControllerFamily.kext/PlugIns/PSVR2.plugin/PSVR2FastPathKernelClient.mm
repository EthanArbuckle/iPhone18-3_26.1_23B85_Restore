@interface PSVR2FastPathKernelClient
- (BOOL)setProperty:(id)a3 value:(id)a4;
- (PSVR2FastPathKernelClient)init;
- (id)getProperty:(id)a3;
- (int)close:(unsigned int)a3;
- (int)createControlQueueWithOptions:(id)a3 object:(IUnknownVTbl *)a4;
- (int)createInputQueueWithOptions:(id)a3 object:(IUnknownVTbl *)a4;
- (int)open:(unsigned int)a3;
- (int)probe:(id)a3 service:(unsigned int)a4 outScore:(int *)a5;
- (int)queryInterface:(id)a3 outInterface:(void *)a4;
- (int)start:(id)a3 service:(unsigned int)a4;
- (int)stop;
- (void)dealloc;
@end

@implementation PSVR2FastPathKernelClient

- (PSVR2FastPathKernelClient)init
{
  v4.receiver = self;
  v4.super_class = PSVR2FastPathKernelClient;
  v2 = [(PSVR2FastPathKernelClient *)&v4 init];
  v2->_IOCFPlugInVTBL = GCPrepareIOCFPlugInVtbl();
  v2->_IOGCFastPathClientVTBL = IOGCFastPathClientInterfacePrepareObjCVtbl();
  v2->_queue = dispatch_queue_create("PSVR2FastPathClient", 0);
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PSVR2FastPathKernelClient;
  [(PSVR2FastPathKernelClient *)&v3 dealloc];
}

- (int)queryInterface:(id)a3 outInterface:(void *)a4
{
  v6 = CFUUIDCreateFromUUIDBytes(0, a3);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v6, v8)))
  {
    v9 = 8;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xD2u, 0x4Au, 0x24u, 0x86u, 0x3Bu, 0xCDu, 0x4Eu, 0x96u, 0xB6u, 6u, 0x34u, 0xE1u, 0x5Fu, 0xD6u, 0x66u, 0x5Cu);
    if (!CFEqual(v6, v12))
    {
      v10 = -2147483644;
      goto LABEL_5;
    }

    v9 = 16;
  }

  *a4 = self + v9;
  CFRetain(self);
  v10 = 0;
LABEL_5:
  CFRelease(v6);
  return v10;
}

- (int)probe:(id)a3 service:(unsigned int)a4 outScore:(int *)a5
{
  if (!IOObjectConformsTo(a4, "PSVR2SenseDevice"))
  {
    return -536870201;
  }

  result = 0;
  *a5 = 1001;
  return result;
}

- (int)start:(id)a3 service:(unsigned int)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7528;
  block[3] = &unk_103A8;
  block[4] = self;
  block[5] = &v13;
  v12 = a4;
  dispatch_sync(queue, block);
  v7 = sub_F0C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(v14 + 6);
    *buf = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = a3;
    v21 = 1024;
    v22 = v10;
    _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%@::start(%@) -> %{mach.errno}x", buf, 0x1Cu);
  }

  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (int)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18F8;
  block[3] = &unk_103D0;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = sub_F0C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_7C78();
  }

  return 0;
}

- (int)open:(unsigned int)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1A48;
  v8[3] = &unk_103F8;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v5 = sub_F0C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_7CE0();
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (int)close:(unsigned int)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1EA8;
  v8[3] = &unk_103F8;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v5 = sub_F0C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_8198();
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)getProperty:(id)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_21E4;
  v22 = sub_21F4;
  v23 = 0;
  if ([a3 isEqualToString:@"ProviderID"])
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_serviceID];
  }

  else
  {
    if (![a3 isEqualToString:@"ClientID"])
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_7620;
      block[3] = &unk_10420;
      block[5] = a3;
      block[6] = &v18;
      block[4] = self;
      dispatch_sync(queue, block);
      if (a3)
      {
        goto LABEL_6;
      }

LABEL_11:
      v7 = v19;
      goto LABEL_16;
    }

    v5 = [NSNumber numberWithUnsignedLongLong:self->_clientID];
  }

  v19[5] = v5;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = [a3 isEqualToString:@"PSVR2DeviceType"];
  v7 = v19;
  if (v6)
  {
    v8 = v19[5];
    if (v8)
    {
      v9 = [v8 isEqual:@"Sense Right"];
      v10 = v19[5];
      if (v9)
      {

        v11 = &off_10C20;
      }

      else
      {
        v13 = [v10 isEqual:@"Sense Left"];
        v14 = v19[5];
        if (v13)
        {

          v11 = &off_10C38;
        }

        else
        {

          v11 = &off_10C50;
        }
      }

      v7 = v19;
      v19[5] = v11;
    }
  }

LABEL_16:
  v15 = v7[5];
  _Block_object_dispose(&v18, 8);
  return v15;
}

- (BOOL)setProperty:(id)a3 value:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7688;
  v7[3] = &unk_10448;
  v7[4] = self;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = &v8;
  dispatch_sync(queue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int)createControlQueueWithOptions:(id)a3 object:(IUnknownVTbl *)a4
{
  v7 = -536870206;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -536870201;
  v8 = [a3 objectForKey:@"QueueChannel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_23E4;
    block[3] = &unk_10470;
    block[4] = self;
    block[5] = v8;
    block[6] = a3;
    block[7] = &v12;
    block[8] = a4;
    dispatch_sync(queue, block);
    v7 = *(v13 + 6);
  }

  else
  {
    *(v13 + 6) = -536870206;
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int)createInputQueueWithOptions:(id)a3 object:(IUnknownVTbl *)a4
{
  v7 = -536870206;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -536870201;
  v8 = [a3 objectForKeyedSubscript:@"QueueChannel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2684;
    block[3] = &unk_10470;
    block[4] = self;
    block[5] = v8;
    block[6] = a3;
    block[7] = &v12;
    block[8] = a4;
    dispatch_sync(queue, block);
    v7 = *(v13 + 6);
  }

  else
  {
    *(v13 + 6) = -536870206;
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

@end