@interface PSVR2FastPathKernelTrackingLEDControlQueue
- (BOOL)sample:(const __IOGCFastPathSample *)a3 getTraceProviderID:(unint64_t *)a4 queueID:(unint64_t *)a5 channel:(unsigned int *)a6 position:(unint64_t *)a7;
- (PSVR2FastPathKernelTrackingLEDControlQueue)initWithClient:(id)a3 options:(id)a4;
- (id)getProperty:(id)a3;
- (int)get:(unint64_t)a3 options:(unsigned int)a4 sample:(__IOGCFastPathSample *)a5;
- (int)queryInterface:(id)a3 outInterface:(void *)a4;
- (int)sampleDestroy:(__IOGCFastPathSample *)a3;
- (void)dealloc;
@end

@implementation PSVR2FastPathKernelTrackingLEDControlQueue

- (PSVR2FastPathKernelTrackingLEDControlQueue)initWithClient:(id)a3 options:(id)a4
{
  v19.receiver = self;
  v19.super_class = PSVR2FastPathKernelTrackingLEDControlQueue;
  v6 = [(PSVR2FastPathKernelTrackingLEDControlQueue *)&v19 init];
  *(v6 + 1) = IOGCFastPathControlQueueInterfacePrepareObjCVtbl();
  *(v6 + 2) = IOGCFastPathSampleContainerInterfacePrepareObjCVtbl();
  *(v6 + 3) = a3;
  [a4 objectForKey:@"QueueChannel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (sub_7794(*(v6 + 3)))
    {
      sub_84EC();
      return 0;
    }

    if (IOConnectMapMemory64(*(*(v6 + 3) + 48), *(v6 + 8), mach_task_self_, v6 + 6, v6 + 7, 1u))
    {
      sub_8584();
      return 0;
    }

    v18 = 0;
    if (sub_7870(*(v6 + 3), *(v6 + 8), &off_10CE0, &v18))
    {
      sub_861C();
    }

    else
    {
      v8 = v18;
      v9 = [v18 objectForKeyedSubscript:@"QueueID"];
      v10 = [v8 objectForKeyedSubscript:@"QueueGuard"];
      v11 = [v8 objectForKeyedSubscript:@"QueueMemorySize"];
      v12 = [v8 objectForKeyedSubscript:@"QueueEntrySize"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v9 unsignedLongLongValue];
      }

      else
      {
        v13 = 0;
      }

      *(v6 + 5) = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 unsignedLongLongValue];
            [v11 unsignedIntValue];
            [v12 unsignedIntValue];

            v14 = *(v6 + 6);
            if (!IOGCCircularControlQueueInit())
            {
              return v6;
            }

            sub_87E4();
            goto LABEL_2;
          }

          v17 = sub_F0C();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_877C();
          }
        }

        else
        {
          v16 = sub_F0C();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_8714();
          }
        }
      }

      else
      {
        v15 = sub_F0C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_86AC();
        }
      }
    }
  }

LABEL_2:

  return 0;
}

- (void)dealloc
{
  p_queueMapping = &self->_queueMapping;
  queueMapping = self->_queueMapping;
  if (queueMapping)
  {
    IOConnectUnmapMemory64(self->_client->_connection, self->_queuePort, mach_task_self_, queueMapping);
    *p_queueMapping = 0;
    p_queueMapping[1] = 0;
  }

  queuePort = self->_queuePort;
  if (queuePort)
  {
    sub_8874(self, queuePort, &self->_queuePort);
  }

  v6.receiver = self;
  v6.super_class = PSVR2FastPathKernelTrackingLEDControlQueue;
  [(PSVR2FastPathKernelTrackingLEDControlQueue *)&v6 dealloc];
}

- (int)queryInterface:(id)a3 outInterface:(void *)a4
{
  v6 = CFUUIDCreateFromUUIDBytes(0, a3);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x5Du, 0xF3u, 0x6Au, 0xD7u, 0xDDu, 0x2Bu, 0x49u, 0xBEu, 0xB3u, 0xFu, 0xF0u, 0xFAu, 0xEAu, 0x2Cu, 0xD7u, 0x74u), CFEqual(v6, v8)))
  {
    v9 = 8;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0x4Eu, 0x78u, 0xA7u, 0x1Fu, 0x35u, 0xD1u, 0x4Fu, 0x65u, 0xA7u, 0x27u, 0xC1u, 0x39u, 0x1Eu, 0x29u, 0xE2u, 0x31u);
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

- (id)getProperty:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v6 = 0;
    v7 = a3;
    if (sub_7870(self->_client, self->_queuePort, [NSArray arrayWithObjects:&v7 count:1], &v6))
    {
      return 0;
    }

    else
    {
      v5 = v6;
      v3 = [v6 objectForKeyedSubscript:v3];
    }
  }

  return v3;
}

- (int)get:(unint64_t)a3 options:(unsigned int)a4 sample:(__IOGCFastPathSample *)a5
{
  a5->var0 = &self->_IOGCFastPathSampleContainerVTBL;
  a5->var1[0] = &self->_queue;
  a5->var1[1] = a3;
  return 0;
}

- (int)sampleDestroy:(__IOGCFastPathSample *)a3
{
  a3->var0 = 0;
  a3->var1[0] = 0;
  a3->var1[1] = 0;
  return 0;
}

- (BOOL)sample:(const __IOGCFastPathSample *)a3 getTraceProviderID:(unint64_t *)a4 queueID:(unint64_t *)a5 channel:(unsigned int *)a6 position:(unint64_t *)a7
{
  *a4 = self->_client->_serviceID;
  *a5 = self->_queueID;
  *a6 = 4;
  *a7 = a3->var1[1];
  return 1;
}

@end