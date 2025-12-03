@interface IOHIDQueueClass
- (BOOL)setupAnalytics;
- (IOHIDQueueClass)initWithDevice:(id)device port:(unsigned int)port source:(__CFRunLoopSource *)source;
- (int)addElement:(__IOHIDElement *)element;
- (int)containsElement:(__IOHIDElement *)element pValue:(char *)value;
- (int)copyNextValue:(__IOHIDValue *)value;
- (int)getAsyncEventSource:(const void *)source;
- (int)getDepth:(unsigned int *)depth;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)removeElement:(__IOHIDElement *)element;
- (int)setDepth:(unsigned int)depth;
- (int)setValueAvailableCallback:(void *)callback context:(void *)context;
- (int)start;
- (int)stop;
- (void)dealloc;
- (void)mapMemory;
- (void)queueCallback:(__CFMachPort *)callback msg:(id *)msg size:(int64_t)size info:(void *)info;
- (void)signalQueueEmpty;
- (void)unmapMemory;
- (void)updateUsageAnalytics;
@end

@implementation IOHIDQueueClass

- (void)updateUsageAnalytics
{
  if (self->_queueHeader)
  {
    queueMemory = self->_queueMemory;
    if (queueMemory)
    {
      if (self->_usageAnalytics)
      {
        tail = queueMemory->tail;
        if (tail != self->_lastTail)
        {
          v5 = queueMemory->head - tail;
          queueMemorySize = self->_queueMemorySize;
          IOHIDAnalyticsHistogramEventSetIntegerValue();
          self->_lastTail = tail;
        }
      }
    }
  }
}

- (void)signalQueueEmpty
{
  v12 = *MEMORY[0x29EDCA608];
  queueHeader = self->_queueHeader;
  if (queueHeader)
  {
    v3 = atomic_load(&queueHeader->var0);
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_device);
      v7 = objc_msgSend_connect(WeakRetained, v5, v6);
      v8 = IOConnectCallScalarMethod(v7, 0x12u, 0, 0, 0, 0);

      if (v8)
      {
        v9 = _IOHIDLogCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109120;
          v11[1] = v8;
          _os_log_impl(&dword_29D3EE000, v9, OS_LOG_TYPE_DEFAULT, "kIOHIDLibUserClientResumeReports:%#x\n", v11, 8u);
        }
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Eu, 0xC7u, 0x8Bu, 0xDBu, 0x9Fu, 0x4Eu, 0x11u, 0xDAu, 0xB6u, 0x5Cu, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  if (!CFEqual(v6, v7))
  {
    v8 = -2147483644;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_3;
  }

  *outInterface = &self->_queue;
  CFRetain(self);
  v8 = 0;
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

  return v8;
}

- (int)getAsyncEventSource:(const void *)source
{
  if (!source)
  {
    return -536870206;
  }

  os_unfair_lock_lock(&self->_queueLock);
  *source = self->_runLoopSource;
  os_unfair_lock_unlock(&self->_queueLock);
  return 0;
}

- (int)setDepth:(unsigned int)depth
{
  os_unfair_lock_lock(&self->_queueLock);
  self->_depth = depth;
  os_unfair_lock_unlock(&self->_queueLock);
  return 0;
}

- (int)getDepth:(unsigned int *)depth
{
  if (!depth)
  {
    return -536870206;
  }

  os_unfair_lock_lock(&self->_queueLock);
  *depth = self->_depth;
  os_unfair_lock_unlock(&self->_queueLock);
  return 0;
}

- (int)addElement:(__IOHIDElement *)element
{
  input[3] = *MEMORY[0x29EDCA608];
  input[2] = 0;
  outputCnt = 1;
  if (element)
  {
    queueToken = self->_queueToken;
    output = 0xAAAAAAAAAAAAAAAALL;
    input[0] = queueToken;
    input[1] = IOHIDElementGetCookie(element);
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v8 = objc_msgSend_connect(WeakRetained, v6, v7);
    v9 = IOConnectCallScalarMethod(v8, 5u, input, 3u, &output, &outputCnt);

    self->_queueSizeChanged = (output | self->_queueSizeChanged) != 0;
  }

  else
  {
    v9 = -536870206;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

- (int)removeElement:(__IOHIDElement *)element
{
  input[2] = *MEMORY[0x29EDCA608];
  outputCnt = 1;
  if (element)
  {
    queueToken = self->_queueToken;
    output = 0xAAAAAAAAAAAAAAAALL;
    input[0] = queueToken;
    input[1] = IOHIDElementGetCookie(element);
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v8 = objc_msgSend_connect(WeakRetained, v6, v7);
    v9 = IOConnectCallScalarMethod(v8, 6u, input, 2u, &output, &outputCnt);

    self->_queueSizeChanged = (output | self->_queueSizeChanged) != 0;
  }

  else
  {
    v9 = -536870206;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

- (int)containsElement:(__IOHIDElement *)element pValue:(char *)value
{
  input[2] = *MEMORY[0x29EDCA608];
  outputCnt = 1;
  v4 = -536870206;
  if (element && value)
  {
    queueToken = self->_queueToken;
    output = 0xAAAAAAAAAAAAAAAALL;
    input[0] = queueToken;
    input[1] = IOHIDElementGetCookie(element);
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v11 = objc_msgSend_connect(WeakRetained, v9, v10);
    v4 = IOConnectCallScalarMethod(v11, 7u, input, 2u, &output, &outputCnt);

    *value = output;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

- (int)start
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v6 = objc_msgSend_connect(WeakRetained, v4, v5);
  v7 = IOConnectCallScalarMethod(v6, 8u, &self->_queueToken, 1u, 0, 0);

  os_unfair_lock_lock(&self->_queueLock);
  if (!self->_queueMemory || self->_queueSizeChanged)
  {
    objc_msgSend_mapMemory(self, v8, v9);
    self->_queueSizeChanged = 0;
  }

  os_unfair_lock_unlock(&self->_queueLock);
  return v7;
}

- (int)stop
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v6 = objc_msgSend_connect(WeakRetained, v4, v5);
  LODWORD(selfCopy) = IOConnectCallScalarMethod(v6, 9u, &selfCopy->_queueToken, 1u, 0, 0);

  return selfCopy;
}

- (int)setValueAvailableCallback:(void *)callback context:(void *)context
{
  os_unfair_lock_lock(&self->_queueLock);
  self->_valueAvailableCallback = callback;
  self->_valueAvailableContext = context;
  os_unfair_lock_unlock(&self->_queueLock);
  return 0;
}

- (int)copyNextValue:(__IOHIDValue *)value
{
  if (!value)
  {
    return -536870206;
  }

  dataSize = -1431655766;
  os_unfair_lock_lock(&self->_queueLock);
  objc_msgSend_updateUsageAnalytics(self, v5, v6);
  v7 = IODataQueuePeek(self->_queueMemory);
  if (v7)
  {
    v8 = v7;
    v9 = *v7->data;
    WeakRetained = objc_loadWeakRetained(&self->_device);
    objc_msgSend_getElement_(WeakRetained, v11, v9);
    v12 = *MEMORY[0x29EDB8ED8];
    *value = _IOHIDValueCreateWithElementValuePtr();

    if (*value && (_IOHIDValueGetFlags() & 1) != 0)
    {
      v13 = objc_loadWeakRetained(&self->_device);
      objc_msgSend_releaseReport_(v13, v14, *&v8[3]);
    }

    IODataQueueDequeue(self->_queueMemory, 0, &dataSize);
    if (*value)
    {
      v15 = 0;
    }

    else
    {
      v15 = -536870212;
    }
  }

  else
  {
    v15 = -536870169;
  }

  os_unfair_lock_unlock(&self->_queueLock);
  return v15;
}

- (void)queueCallback:(__CFMachPort *)callback msg:(id *)msg size:(int64_t)size info:(void *)info
{
  os_unfair_lock_lock(&self->_queueLock);
  valueAvailableCallback = self->_valueAvailableCallback;
  valueAvailableContext = self->_valueAvailableContext;
  os_unfair_lock_unlock(&self->_queueLock);
  if (valueAvailableCallback)
  {

    valueAvailableCallback(valueAvailableContext, 0, &self->_queue);
  }
}

- (void)unmapMemory
{
  if (self->_queueMemory)
  {
    queueHeader = self->_queueHeader;
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v7 = objc_msgSend_connect(WeakRetained, v5, v6);
    MEMORY[0x29ED55830](v7, LODWORD(self->_queueToken), *MEMORY[0x29EDCA6B0], queueHeader);

    self->_queueHeader = 0;
    self->_queueMemory = 0;
    self->_queueMemorySize = 0;
  }

  if (self->_usageAnalytics)
  {
    IOHIDAnalyticsEventCancel();
    CFRelease(self->_usageAnalytics);
    self->_usageAnalytics = 0;
  }
}

- (void)mapMemory
{
  v11 = 0;
  v12 = 0;
  objc_msgSend_unmapMemory(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v7 = objc_msgSend_connect(WeakRetained, v5, v6);
  MEMORY[0x29ED55810](v7, LODWORD(self->_queueToken), *MEMORY[0x29EDCA6B0], &v12, &v11, 1);

  v8 = v12;
  self->_queueHeader = v12;
  self->_queueMemory = &v8[1];
  self->_queueMemorySize = v11 - 48;
  objc_msgSend_setupAnalytics(self, v9, v10);
}

- (IOHIDQueueClass)initWithDevice:(id)device port:(unsigned int)port source:(__CFRunLoopSource *)source
{
  input[2] = *MEMORY[0x29EDCA608];
  deviceCopy = device;
  input[0] = 0;
  input[1] = 0;
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v9;
  v39 = v9;
  *reference = v9;
  v37 = v9;
  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  v32.receiver = self;
  v32.super_class = IOHIDQueueClass;
  v10 = [(IOHIDIUnknown2 *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  objc_storeWeak(&v10->_device, deviceCopy);
  v12 = malloc_type_malloc(0x70uLL, 0x8004065BD1A13uLL);
  v11->_queue = v12;
  v11->_queueLock._os_unfair_lock_opaque = 0;
  vtbl = v11->super._vtbl;
  Release = vtbl->Release;
  v15 = *&vtbl->QueryInterface;
  *v12 = v11;
  *(v12 + 8) = v15;
  *(v12 + 3) = Release;
  *(v12 + 4) = sub_29D3F2968;
  *(v12 + 5) = sub_29D3F2978;
  *(v12 + 6) = sub_29D3F2988;
  *(v12 + 7) = sub_29D3F2998;
  *(v12 + 8) = sub_29D3F29A8;
  *(v12 + 9) = sub_29D3F29B8;
  *(v12 + 10) = sub_29D3F29CC;
  *(v12 + 11) = sub_29D3F29D8;
  *(v12 + 12) = sub_29D3F29E4;
  *(v12 + 13) = sub_29D3F29F8;
  WeakRetained = objc_loadWeakRetained(&v11->_device);
  v19 = objc_msgSend_connect(WeakRetained, v17, v18);
  v20 = IOConnectCallScalarMethod(v19, 3u, input, 2u, &output, &outputCnt);

  if (!v20)
  {
    v11->_queueToken = output;
    if (port)
    {
      v11->_port = port;
    }

    else
    {
      NotificationPort = IODataQueueAllocateNotificationPort();
      v20 = -536870211;
      v11->_port = NotificationPort;
      if (!NotificationPort)
      {
        goto LABEL_11;
      }

      v22 = CFMachPortCreateWithPort(*MEMORY[0x29EDB8ED8], NotificationPort, sub_29D3F2A08, &context, 0);
      v11->_machPort = v22;
      if (!v22)
      {
        goto LABEL_11;
      }
    }

    if (source)
    {
      v11->_runLoopSource = source;
      CFRetain(source);
      goto LABEL_10;
    }

    RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x29EDB8ED8], v11->_machPort, 0);
    v11->_runLoopSource = RunLoopSource;
    if (RunLoopSource)
    {
LABEL_10:
      v24 = objc_loadWeakRetained(&v11->_device);
      v27 = objc_msgSend_connect(v24, v25, v26);
      v20 = IOConnectCallAsyncScalarMethod(v27, 0x10u, v11->_port, reference, 1u, &v11->_queueToken, 1u, 0, 0);

      if (!v20)
      {
        v29 = v11;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v20 = -536870211;
  }

LABEL_11:
  v28 = _IOHIDLogCategory();
  sub_29D3FA7E8(v28, v20);
LABEL_12:
  v29 = 0;
LABEL_14:

  v30 = *MEMORY[0x29EDCA608];
  return v29;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v6 = objc_msgSend_connect(WeakRetained, v4, v5);
  IOConnectCallScalarMethod(v6, 4u, &self->_queueToken, 1u, 0, 0);

  queue = self->_queue;
  if (queue)
  {
    free(queue);
  }

  runLoopSource = self->_runLoopSource;
  if (runLoopSource)
  {
    CFRelease(runLoopSource);
  }

  machPort = self->_machPort;
  if (machPort)
  {
    CFMachPortInvalidate(machPort);
    CFRelease(self->_machPort);
    port = self->_port;
    if (port)
    {
      mach_port_mod_refs(*MEMORY[0x29EDCA6B0], port, 1u, -1);
    }
  }

  objc_msgSend_unmapMemory(self, port, v8);
  v12.receiver = self;
  v12.super_class = IOHIDQueueClass;
  [(IOHIDIUnknown2 *)&v12 dealloc];
}

- (BOOL)setupAnalytics
{
  v26[2] = *MEMORY[0x29EDCA608];
  v25[0] = @"staticSize";
  v3 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], a2, self->_queueMemorySize);
  v25[1] = @"queueType";
  v26[0] = v3;
  v26[1] = @"deviceQueue";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v4, v26, v25, 2);
  v8 = objc_msgSend_mutableCopy(v5, v6, v7);

  WeakRetained = objc_loadWeakRetained(&self->_device);
  v12 = objc_msgSend_service(WeakRetained, v10, v11);
  v13 = *MEMORY[0x29EDB8ED8];
  CFProperty = IORegistryEntryCreateCFProperty(v12, @"DeviceUsagePairs", *MEMORY[0x29EDB8ED8], 0);

  v15 = objc_loadWeakRetained(&self->_device);
  v18 = objc_msgSend_service(v15, v16, v17);
  v19 = IORegistryEntryCreateCFProperty(v18, @"Transport", v13, 0);

  if (CFProperty)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v20, CFProperty, @"usagePairs");
  }

  if (v19)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v20, v19, @"transport");
  }

  v21 = IOHIDAnalyticsHistogramEventCreate();
  self->_usageAnalytics = v21;
  if (v21)
  {
    IOHIDAnalyticsEventActivate();
  }

  else
  {
    v24 = _IOHIDLogCategory();
    sub_29D3FA888(v24);
  }

  v22 = *MEMORY[0x29EDCA608];
  return v21 != 0;
}

@end