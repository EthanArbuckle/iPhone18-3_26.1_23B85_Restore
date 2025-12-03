@interface PSVR2FastPathKernelDriverDebugTimeSyncQueue
- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position;
- (PSVR2FastPathKernelDriverDebugTimeSyncQueue)initWithClient:(id)client options:(id)options;
- (id)getProperty:(id)property;
- (int)get:(unint64_t)get options:(unsigned int)options sample:(__IOGCFastPathSample *)sample;
- (int)getDataAvailableNotification:(unsigned int *)notification;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0;
- (int)sampleDestroy:(__IOGCFastPathSample *)destroy;
- (void)dealloc;
@end

@implementation PSVR2FastPathKernelDriverDebugTimeSyncQueue

- (PSVR2FastPathKernelDriverDebugTimeSyncQueue)initWithClient:(id)client options:(id)options
{
  v40.receiver = self;
  v40.super_class = PSVR2FastPathKernelDriverDebugTimeSyncQueue;
  v6 = [(PSVR2FastPathKernelDriverDebugTimeSyncQueue *)&v40 init];
  *(v6 + 1) = IOGCFastPathInputQueueInterfacePrepareObjCVtbl();
  *(v6 + 2) = IOGCFastPathSampleContainerInterfacePrepareObjCVtbl();
  *(v6 + 3) = client;
  [options objectForKey:@"QueueChannel"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = sub_751C(client);
  *(v6 + 4) = v7;
  if (!v7)
  {
    sub_9158(v6, v6);
    return 0;
  }

  v8 = sub_76E8(*(v6 + 3));
  if (v8)
  {
    sub_8E0C(v6, v8, v6);
    return 0;
  }

  v9 = sub_7ABC(*(v6 + 3));
  v10 = IOConnectMapMemory64(v9, *(v6 + 10), mach_task_self_, v6 + 7, v6 + 8, 1u);
  if (v10)
  {
    sub_8EB4(v6, v10, v6);
    return 0;
  }

  v39 = 0;
  v11 = sub_7870(*(v6 + 3), *(v6 + 10), &off_10D28, &v39);
  if (v11)
  {
    sub_8F5C(v6, v11);
LABEL_19:

    return 0;
  }

  v12 = [v39 objectForKeyedSubscript:@"QueueID"];
  v13 = [v39 objectForKeyedSubscript:@"QueueGuard"];
  v14 = [v39 objectForKeyedSubscript:@"QueueMemorySize"];
  v15 = [v39 objectForKeyedSubscript:@"QueueEntrySize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v12 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  *(v6 + 6) = unsignedLongLongValue;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = sub_F0C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_9014(v6, v17, v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = sub_F0C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_9080(v6, v24, v25, v26, v27, v28, v29, v30);
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = sub_F0C();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_90EC(v6, v31, v32, v33, v34, v35, v36, v37);
    }

    goto LABEL_19;
  }

  *(v6 + 10) = [v13 unsignedLongLongValue];
  *(v6 + 22) = [v14 unsignedIntValue];
  *(v6 + 23) = [v15 unsignedIntValue];
  *(v6 + 9) = *(v6 + 7);
  return v6;
}

- (void)dealloc
{
  p_queueMapping = &self->_queueMapping;
  if (self->_queueMapping)
  {
    v4 = sub_7ABC(self->_client);
    IOConnectUnmapMemory64(v4, self->_queuePort, mach_task_self_, self->_queueMapping);
    p_queueMapping[1] = 0;
    p_queueMapping[2] = 0;
    *p_queueMapping = 0;
  }

  queuePort = self->_queuePort;
  if (queuePort)
  {
    sub_7840(self->_client, queuePort);
    mach_port_deallocate(mach_task_self_, self->_queuePort);
    self->_queuePort = 0;
  }

  v6.receiver = self;
  v6.super_class = PSVR2FastPathKernelDriverDebugTimeSyncQueue;
  [(PSVR2FastPathKernelDriverDebugTimeSyncQueue *)&v6 dealloc];
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
  if ([property isEqualToString:@"QueueID"])
  {
    queueID = self->_queueID;

    return [NSNumber numberWithUnsignedLongLong:queueID];
  }

  else
  {
    if (property)
    {
      v12 = 0;
      client = self->_client;
      queuePort = self->_queuePort;
      propertyCopy = property;
      v9 = sub_7870(client, queuePort, [NSArray arrayWithObjects:&propertyCopy count:1], &v12);
      if (!v9)
      {
        return [v12 objectForKeyedSubscript:property];
      }

      v10 = v9;
      v11 = sub_F0C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy = self;
        v15 = 2112;
        propertyCopy2 = property;
        v17 = 1024;
        v18 = v10;
        _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%@ GetProperty '%@' failed: %{mach.errno}d", buf, 0x1Cu);
      }
    }

    return 0;
  }
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0
{
  if (!dword_165EC)
  {
    mach_timebase_info(&dword_165E8);
  }

  return sub_6AE4(self, sample);
}

- (int)sampleDestroy:(__IOGCFastPathSample *)destroy
{
  destroy->var0 = 0;
  destroy->var1[0] = 0;
  destroy->var1[1] = 0;
  destroy->var1[2] = -1;
  return 0;
}

- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position
{
  *d = sub_7AB0(self->_client);
  *iD = self->_queueID;
  *channel = 255;
  *position = sample->var1[2];
  return 1;
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
  v7 = sub_7ABC(self->_client);
  result = IOConnectSetNotificationPort(v7, self->_queuePort, v6, 0);
  if (!result)
  {
    *notification = v6;
  }

  return result;
}

- (int)get:(unint64_t)get options:(unsigned int)options sample:(__IOGCFastPathSample *)sample
{
  queueMemory = self->_queueMemory;
  result = IOCircularDataQueueCursorReset();
  if (!result)
  {
    sample->var0 = &self->_IOGCFastPathSampleContainerVTBL;
    sample->var1[0] = self;
  }

  return result;
}

@end