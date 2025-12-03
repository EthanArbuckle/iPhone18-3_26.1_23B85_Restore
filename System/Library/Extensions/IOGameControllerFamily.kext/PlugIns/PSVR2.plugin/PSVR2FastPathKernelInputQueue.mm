@interface PSVR2FastPathKernelInputQueue
- (PSVR2FastPathKernelInputQueue)initWithClient:(id)client options:(id)options;
- (id)getProperty:(id)property;
- (int)createReaderObject:(IUnknownVTbl *)object;
- (int)getDataAvailableNotification:(unsigned int *)notification;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (void)dealloc;
@end

@implementation PSVR2FastPathKernelInputQueue

- (PSVR2FastPathKernelInputQueue)initWithClient:(id)client options:(id)options
{
  v24.receiver = self;
  v24.super_class = PSVR2FastPathKernelInputQueue;
  v6 = [(PSVR2FastPathKernelInputQueue *)&v24 init];
  *(v6 + 1) = IOGCFastPathInputQueueInterfacePrepareObjCVtbl();
  *(v6 + 2) = IOGCFastPathSampleContainerInterfacePrepareObjCVtbl();
  *(v6 + 3) = client;
  [options objectForKey:@"QueueChannel"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_27;
  }

  v23 = 0;
  if (!client)
  {
    *(v6 + 5) = 0;
LABEL_40:
    sub_8CB4(v6, v6);
    return 0;
  }

  v7 = *(client + 11);
  *(v6 + 5) = v7;
  if (!v7 || (*(v7 + 137) & 1) == 0)
  {
    goto LABEL_40;
  }

  v8 = *(v7 + 51);
  v6[32] = v8;
  if ((v8 - 1) >= 2)
  {
    v17 = sub_F0C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_88B4();
    }

    goto LABEL_27;
  }

  *(v6 + 6) = v7 + 52;
  v9 = *(v6 + 3);
  if (*(v9 + 56))
  {
    v10 = [*(v9 + 56) createInputQueueWithOptions:options error:&v23];
    *(v6 + 8) = v10;
    if (!v10)
    {
      sub_89B8();
      return 0;
    }

    v23 = [v10 mapMemoryAt:v6 + 80 ofSize:v6 + 88 options:1];
    if (v23)
    {
      sub_891C();
      return 0;
    }
  }

  else
  {
    v23 = sub_76E8(v9);
    if (v23)
    {
      sub_8A54();
      return 0;
    }

    v23 = IOConnectMapMemory64(*(*(v6 + 3) + 48), *(v6 + 14), mach_task_self_, v6 + 10, v6 + 11, 1u);
    if (v23)
    {
      sub_8AF0();
      return 0;
    }
  }

  v22 = 0;
  v11 = *(v6 + 8);
  if (v11)
  {
    v23 = [v11 getProperties:&off_10D10 dictionary:&v22];
    if (v23)
    {
      sub_8B8C(&v23);
      goto LABEL_27;
    }
  }

  else
  {
    v23 = sub_7870(*(v6 + 3), *(v6 + 14), &off_10D10, &v22);
    if (v23)
    {
      sub_8C20(&v23);
      goto LABEL_27;
    }
  }

  v12 = [v22 objectForKeyedSubscript:{@"QueueID", v22}];
  v13 = [v22 objectForKeyedSubscript:@"QueueGuard"];
  v14 = [v22 objectForKeyedSubscript:@"QueueMemorySize"];
  v15 = [v22 objectForKeyedSubscript:@"QueueEntrySize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v12 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  *(v6 + 9) = unsignedLongLongValue;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = sub_F0C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_86AC();
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = sub_F0C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_8714();
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = sub_F0C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_877C();
    }

LABEL_26:

LABEL_27:
    return 0;
  }

  *(v6 + 13) = [v13 unsignedLongLongValue];
  *(v6 + 28) = [v14 unsignedIntValue];
  *(v6 + 29) = [v15 unsignedIntValue];

  *(v6 + 12) = *(v6 + 10);
  return v6;
}

- (void)dealloc
{
  p_queueMapping = &self->_queueMapping;
  queueMapping = self->_queueMapping;
  if (queueMapping)
  {
    queueProxy = self->_queueProxy;
    if (queueProxy)
    {
      [(IOGCFastPathProxyQueue *)queueProxy unmapMemoryAt:queueMapping];
    }

    else
    {
      IOConnectUnmapMemory64(self->_client->_connection, self->_queuePort, mach_task_self_, queueMapping);
    }

    *p_queueMapping = 0;
    p_queueMapping[1] = 0;
    p_queueMapping[2] = 0;
  }

  v6 = self->_queueProxy;
  if (v6)
  {
    [(IOGCFastPathProxyQueue *)v6 invalidate];

    self->_queueProxy = 0;
  }

  queuePort = self->_queuePort;
  if (queuePort)
  {
    sub_8874(self, queuePort, &self->_queuePort);
  }

  v8.receiver = self;
  v8.super_class = PSVR2FastPathKernelInputQueue;
  [(PSVR2FastPathKernelInputQueue *)&v8 dealloc];
}

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x19u, 0x43u, 0x1Bu, 0xCFu, 0xBBu, 0xEFu, 0x43u, 0x5Bu, 0x9Cu, 0x57u, 0xB3u, 0xF3u, 0x48u, 6u, 0x86u, 0x2Du), CFEqual(v6, v8)))
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

  *outInterface = self + v9;
  CFRetain(self);
  v10 = 0;
LABEL_5:
  CFRelease(v6);
  return v10;
}

- (id)getProperty:(id)property
{
  propertyCopy = property;
  if (![property isEqualToString:@"QueueID"])
  {
    if (!propertyCopy)
    {
      return propertyCopy;
    }

    v16 = 0;
    queueProxy = self->_queueProxy;
    if (queueProxy)
    {
      v24 = propertyCopy;
      v8 = [(IOGCFastPathProxyQueue *)queueProxy getProperties:[NSArray dictionary:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &v16];
      if (!v8)
      {
LABEL_8:
        propertyCopy = [v16 objectForKeyedSubscript:{propertyCopy, v16}];

        return propertyCopy;
      }

      v15 = v8;
      v13 = sub_F0C();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      v21 = propertyCopy;
      v22 = 1024;
      v23 = v15;
      v14 = "%@ (PROXY) GetProperty '%@' failed: %{mach.errno}d";
    }

    else
    {
      client = self->_client;
      queuePort = self->_queuePort;
      v17 = propertyCopy;
      v11 = sub_7870(client, queuePort, [NSArray arrayWithObjects:&v17 count:1], &v16);
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = v11;
      v13 = sub_F0C();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      v21 = propertyCopy;
      v22 = 1024;
      v23 = v12;
      v14 = "%@ GetProperty '%@' failed: %{mach.errno}d";
    }

    _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x1Cu);
    return 0;
  }

  queueID = self->_queueID;

  return [NSNumber numberWithUnsignedLongLong:queueID];
}

- (int)getDataAvailableNotification:(unsigned int *)notification
{
  if (!notification)
  {
    return 0;
  }

  NotificationPort = IODataQueueAllocateNotificationPort();
  if (!NotificationPort)
  {
    return -536870210;
  }

  v6 = NotificationPort;
  result = IOConnectSetNotificationPort(self->_client->_connection, self->_queuePort, NotificationPort, 0);
  if (!result)
  {
    *notification = v6;
  }

  return result;
}

- (int)createReaderObject:(IUnknownVTbl *)object
{
  v4 = [[PSVR2FastPathKernelReader alloc] initWithQueue:self];
  if (!v4)
  {
    return -536870199;
  }

  v5 = v4;
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  v7 = CFUUIDGetUUIDBytes(v6);
  object = [(PSVR2FastPathKernelReader *)v5 queryInterface:*&v7.byte0 outInterface:*&v7.byte8, object];

  return object;
}

@end