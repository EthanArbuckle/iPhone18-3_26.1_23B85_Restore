@interface AFKEndpointInterface
- (AFKEndpointInterface)initWithService:(unsigned int)service;
- (int)compleOOBBuffer:(unint64_t)buffer;
- (int)enqueueCommand:(unsigned int)command timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size outputPayloadSize:(unint64_t)payloadSize context:(void *)context options:(unsigned int)options;
- (int)enqueueCommandSync:(unsigned int)sync timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size responseTimestamp:(unint64_t *)responseTimestamp outputBuffer:(void *)outputBuffer inOutBufferSize:(unint64_t *)bufferSize options:(unsigned int)self0;
- (int)enqueueDescriptor:(id)descriptor packetType:(unsigned int)type timestamp:(unint64_t)timestamp options:(unsigned int)options;
- (int)enqueueReport:(unsigned int)report timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size options:(unsigned int)options;
- (int)enqueueResponseForContext:(void *)context status:(int)status timestamp:(unint64_t)timestamp outputBuffer:(void *)buffer outputBufferSize:(unint64_t)size options:(unsigned int)options;
- (int)startSession:(BOOL)session;
- (void)_cancel;
- (void)activate:(unsigned int)activate;
- (void)cancel;
- (void)dealloc;
- (void)dequeueDataMessage:(_IODataQueueMemory *)message;
- (void)handleCommand:(char *)command size:(unsigned int)size;
- (void)handleDescriptor:(char *)descriptor size:(unsigned int)size;
- (void)handleQueue:(char *)queue size:(unsigned int)size;
- (void)handleReport:(char *)report size:(unsigned int)size;
- (void)handleResponse:(char *)response size:(unsigned int)size;
- (void)setCommandHandler:(id)handler;
- (void)setCommandHandlerWithReturn:(id)return;
- (void)setDescriptorHandler:(id)handler;
- (void)setDescriptorManagers:(id)managers;
- (void)setDispatchQueue:(id)queue;
- (void)setEventHandler:(id)handler;
- (void)setReportHandler:(id)handler;
- (void)setResponseHandler:(id)handler;
@end

@implementation AFKEndpointInterface

- (AFKEndpointInterface)initWithService:(unsigned int)service
{
  v10[3] = *MEMORY[0x277D85DE8];
  if (!service)
  {
    v8 = _AFKUserLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)v10 initWithService:?];
    }

    goto LABEL_15;
  }

  if (IOObjectRetain(service))
  {
    v9 = _AFKUserLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface initWithService:];
    }

    goto LABEL_14;
  }

  self->_service = service;
  if (IORegistryEntryGetRegistryEntryID(service, &self->_regID))
  {
    v9 = _AFKUserLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface initWithService:];
    }

LABEL_14:

LABEL_15:
    selfCopy = 0;
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_5:

  v6 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)activate:(unsigned int)activate
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 0;
  input[1] = activate;
  v39 = 0;
  v40 = 0;
  objc_initWeak(&location, self);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __33__AFKEndpointInterface_activate___block_invoke;
  v36[3] = &unk_278BBE898;
  objc_copyWeak(&v37, &location);
  v4 = MEMORY[0x23EED3430](v36);
  if (atomic_fetch_or(&self->_state, 1u))
  {
    goto LABEL_33;
  }

  v5 = self->_queue;
  if (!v5)
  {
    v47[0] = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v41) = 134217984;
    *(&v41 + 4) = 0;
    _os_log_send_and_compose_impl();
    v24 = _os_crash_msg();
    [AFKEndpointInterface activate:v24];
  }

  v6 = MEMORY[0x277D85F48];
  v7 = IOServiceOpen(self->_service, *MEMORY[0x277D85F48], 0x696F706Bu, &self->_connect);
  if (v7)
  {
    v25 = _AFKUserLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKMemoryDescriptorManager initWithService:];
    }

    goto LABEL_52;
  }

  properties = self->_properties;
  if (properties)
  {
    v7 = IOConnectSetCFProperties(self->_connect, properties);
    if (v7)
    {
      v25 = _AFKUserLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        regID = [(AFKEndpointInterface *)self regID];
        v30 = self->_properties;
        *buf = 134218498;
        *&buf[4] = regID;
        *&buf[12] = 1024;
        *&buf[14] = v7;
        *&buf[18] = 2112;
        *&buf[20] = v30;
        _os_log_error_impl(&dword_23C487000, v25, OS_LOG_TYPE_ERROR, "0x%llx: Set IOConnectSetCFProperties:0x%x for:%@", buf, 0x1Cu);
      }

LABEL_52:
      v9 = 0;
      goto LABEL_53;
    }
  }

  if (self->_reportHandler)
  {
    input[0] |= 1uLL;
  }

  if (self->_commandHandlerWithReturn || self->_commandHandler)
  {
    input[0] |= 2uLL;
  }

  if (self->_descriptorHandler)
  {
    input[0] |= 4uLL;
  }

  if ([(NSSet *)self->_descriptorManagers count])
  {
    if ([(NSSet *)self->_descriptorManagers count]>= 0x10000)
    {
      v47[0] = 0;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v41) = 134217984;
      *(&v41 + 4) = 0;
      _os_log_send_and_compose_impl();
      v28 = _os_crash_msg();
      [AFKEndpointInterface activate:v28];
    }

    v9 = malloc_type_calloc([(NSSet *)self->_descriptorManagers count], 8uLL, 0x100004000313F17uLL);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = self->_descriptorManagers;
    v11 = [(NSSet *)v10 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v9[v12++] = [*(*(&v32 + 1) + 8 * i) regID];
        }

        v11 = [(NSSet *)v10 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v11);
    }

    v15 = 8 * [(NSSet *)self->_descriptorManagers count];
  }

  else
  {
    v15 = 0;
    v9 = 0;
  }

  v16 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  self->_asyncPort = v16;
  if (!v16)
  {
    v25 = _AFKUserLog();
    v7 = -536870210;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)v47 activate:?];
    }

    goto LABEL_53;
  }

  IONotificationPortSetDispatchQueue(v16, self->_queue);
  v7 = MEMORY[0x23EED2FD0](self->_connect, 0, *v6, &v40, &v39, 1);
  if (v7)
  {
    v25 = _AFKUserLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKMemoryDescriptor mapDescriptor];
    }

    goto LABEL_53;
  }

  v17 = v39;
  self->_dataQueue = v40;
  self->_dataQueueSize = v17;
  NotificationPort = IODataQueueAllocateNotificationPort();
  self->_dataQueuePort = NotificationPort;
  if (!NotificationPort)
  {
    v26 = _AFKUserLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)buf activate:?];
    }

    goto LABEL_45;
  }

  queue = self->_queue;
  v20 = dispatch_mach_create();
  dataQueueMachChannel = self->_dataQueueMachChannel;
  self->_dataQueueMachChannel = v20;

  if (!self->_dataQueueMachChannel)
  {
    v26 = _AFKUserLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)buf activate:?];
    }

LABEL_45:

    goto LABEL_30;
  }

  dataQueuePort = self->_dataQueuePort;
  dispatch_mach_connect();
  objc_storeStrong(&self->me, self);
  v7 = MEMORY[0x23EED2FF0](self->_connect, 0, self->_dataQueuePort, 0);
  if (v7)
  {
    v25 = _AFKUserLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface activate:];
    }
  }

  else
  {
    v7 = IOConnectCallMethod(self->_connect, 0, input, 2u, v9, v15, 0, 0, 0, 0);
    if (!v7)
    {
LABEL_30:
      atomic_fetch_or(&self->_state, 2u);
      goto LABEL_31;
    }

    v25 = _AFKUserLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface activate:];
    }
  }

LABEL_53:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  *&v49 = __Block_byref_object_dispose_;
  *(&v49 + 1) = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IOKit" code:v7 userInfo:0];
  *&v41 = 0;
  *(&v41 + 1) = &v41;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  selfCopy = self;
  v27 = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AFKEndpointInterface_activate___block_invoke_25;
  block[3] = &unk_278BBE8C0;
  block[4] = &v41;
  block[5] = buf;
  dispatch_async(v27, block);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(buf, 8);
LABEL_31:
  if (v9)
  {
    free(v9);
  }

LABEL_33:

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
  v23 = *MEMORY[0x277D85DE8];
}

void __33__AFKEndpointInterface_activate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = v9;
    v7 = WeakRetained;
    v8 = v7;
    if (a2 == 8)
    {
      [v7 _cancel];
    }

    else if (a2 == 2)
    {
      [v7 dequeueDataMessage:v7[13]];
    }
  }
}

uint64_t __33__AFKEndpointInterface_activate___block_invoke_25(uint64_t a1)
{
  result = *(*(*(*(a1 + 32) + 8) + 40) + 96);
  if (result)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    return (*(result + 16))();
  }

  return result;
}

- (void)cancel
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10(self, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  v4 = *self;
  _os_crash_msg();
  __break(1u);
}

- (void)_cancel
{
  OUTLINED_FUNCTION_2_0(self, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  __break(1u);
}

- (void)setDispatchQueue:(id)queue
{
  v7 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (self->_queue)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v6 = _os_crash_msg();
    [AFKEndpointInterface activate:v6];
  }

  self->_queue = queueCopy;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setResponseHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    [AFKEndpointInterface activate:v7];
  }

  v4 = MEMORY[0x23EED3430]();
  responseHandler = self->_responseHandler;
  self->_responseHandler = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setReportHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    [AFKEndpointInterface activate:v7];
  }

  v4 = MEMORY[0x23EED3430]();
  reportHandler = self->_reportHandler;
  self->_reportHandler = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCommandHandlerWithReturn:(id)return
{
  v9 = *MEMORY[0x277D85DE8];
  returnCopy = return;
  if (self->_state)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    [AFKEndpointInterface activate:v7];
  }

  v4 = MEMORY[0x23EED3430]();
  commandHandlerWithReturn = self->_commandHandlerWithReturn;
  self->_commandHandlerWithReturn = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCommandHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    [AFKEndpointInterface activate:v7];
  }

  v4 = MEMORY[0x23EED3430]();
  commandHandler = self->_commandHandler;
  self->_commandHandler = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDescriptorHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    [AFKEndpointInterface activate:v7];
  }

  v4 = MEMORY[0x23EED3430]();
  descriptorHandler = self->_descriptorHandler;
  self->_descriptorHandler = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDescriptorManagers:(id)managers
{
  v10 = *MEMORY[0x277D85DE8];
  managersCopy = managers;
  v5 = managersCopy;
  if (self->_state)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v8 = _os_crash_msg();
    [AFKEndpointInterface activate:v8];
  }

  if ([(NSSet *)managersCopy count]>= 0x10000)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v9 = _os_crash_msg();
    [AFKEndpointInterface activate:v9];
  }

  descriptorManagers = self->_descriptorManagers;
  self->_descriptorManagers = v5;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setEventHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    [AFKEndpointInterface activate:v7];
  }

  v4 = MEMORY[0x23EED3430]();
  eventHandler = self->_eventHandler;
  self->_eventHandler = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_queue && ![(AFKEndpointInterface *)self hasState:13])
  {
    v9 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    state = self->_state;
    v10 = 67109120;
    v11 = state;
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    [AFKEndpointInterface activate:v7];
  }

  dataQueuePort = self->_dataQueuePort;
  if (dataQueuePort)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], dataQueuePort, 1u, -1);
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v8.receiver = self;
  v8.super_class = AFKEndpointInterface;
  [(AFKEndpointInterface *)&v8 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (int)enqueueCommand:(unsigned int)command timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size outputPayloadSize:(unint64_t)payloadSize context:(void *)context options:(unsigned int)options
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if ([(AFKEndpointInterface *)self hasState:2])
  {
    regID = self->_regID;
    kdebug_trace();
    v17 = malloc_type_calloc(0x18uLL, 1uLL, 0x1080040CC6EE3FDuLL);
    v17[2] = payloadSize;
    *v17 = context;
    input[0] = command;
    input[1] = timestamp;
    input[2] = buffer;
    input[3] = size;
    input[4] = v17;
    input[5] = payloadSize;
    input[6] = ~(options >> 2) & 8 | options;
    v18 = IOConnectCallMethod(self->_connect, 2u, input, 7u, 0, 0, 0, 0, 0, 0);
    if (v18)
    {
      free(v17);
    }
  }

  else
  {
    v18 = -536870184;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int)enqueueCommandSync:(unsigned int)sync timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size responseTimestamp:(unint64_t *)responseTimestamp outputBuffer:(void *)outputBuffer inOutBufferSize:(unint64_t *)bufferSize options:(unsigned int)self0
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if ([(AFKEndpointInterface *)self hasState:2])
  {
    regID = self->_regID;
    kdebug_trace();
    v22[1] = v22;
    input[0] = sync;
    input[1] = timestamp;
    input[2] = options;
    input[3] = outputBuffer;
    input[4] = *bufferSize;
    LODWORD(outputCnt) = 2;
    result = IOConnectCallMethod(self->_connect, 7u, input, 5u, buffer, size, &v20, &outputCnt, 0, 0);
    if (!result)
    {
      if (outputCnt == 2)
      {
        if (v21 > *bufferSize)
        {
          result = -536870210;
        }

        else
        {
          *bufferSize = v21;
          result = 0;
          if (responseTimestamp)
          {
            *responseTimestamp = v20;
          }
        }
      }

      else
      {
        result = -536870199;
      }
    }
  }

  else
  {
    result = -536870184;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)enqueueReport:(unsigned int)report timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size options:(unsigned int)options
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if ([(AFKEndpointInterface *)self hasState:2])
  {
    regID = self->_regID;
    kdebug_trace();
    input[0] = report;
    input[1] = timestamp;
    input[2] = ~(4 * options) & 0x20 | options;
    result = IOConnectCallMethod(self->_connect, 4u, input, 3u, buffer, size, 0, 0, 0, 0);
  }

  else
  {
    result = -536870184;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)enqueueResponseForContext:(void *)context status:(int)status timestamp:(unint64_t)timestamp outputBuffer:(void *)buffer outputBufferSize:(unint64_t)size options:(unsigned int)options
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  regID = self->_regID;
  kdebug_trace();
  input[0] = context;
  input[1] = status;
  input[2] = timestamp;
  input[3] = options | 8;
  result = IOConnectCallMethod(self->_connect, 3u, input, 4u, buffer, size, 0, 0, 0, 0);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)enqueueDescriptor:(id)descriptor packetType:(unsigned int)type timestamp:(unint64_t)timestamp options:(unsigned int)options
{
  v22 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *input = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v16 = _os_crash_msg();
    [AFKEndpointInterface activate:v16];
  }

  v11 = -536870206;
  if ([(AFKEndpointInterface *)self hasState:2])
  {
    regID = self->_regID;
    [descriptorCopy token];
    kdebug_trace();
    if (descriptorCopy)
    {
      input[0] = type;
      input[1] = timestamp;
      *&v18 = [descriptorCopy token];
      manager = [descriptorCopy manager];
      *(&v18 + 1) = [manager regID];
      *&v19 = ~(options >> 2) & 8 | options;

      v11 = IOConnectCallScalarMethod(self->_connect, 6u, input, 5u, 0, 0);
      if (!v11)
      {
        [descriptorCopy handleEnqueue];
      }
    }
  }

  else
  {
    v11 = -536870184;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dequeueDataMessage:(_IODataQueueMemory *)message
{
  v23 = *MEMORY[0x277D85DE8];
  dataSize = 0;
  v5 = IODataQueuePeek(message);
  if (v5)
  {
    v6 = v5;
    do
    {
      dataSize = v6->size;
      if (dataSize > 0xF)
      {
        v10 = v6->data[0];
        data = v6->data;
        v8 = v10;
        if (v10 <= 3)
        {
          if (v8 == 1)
          {
            [(AFKEndpointInterface *)self handleReport:data size:?];
            goto LABEL_7;
          }

          if (v8 == 2)
          {
            [(AFKEndpointInterface *)self handleCommand:data size:?];
            goto LABEL_7;
          }
        }

        else
        {
          switch(v8)
          {
            case 4:
              [(AFKEndpointInterface *)self handleDescriptor:data size:?];
              goto LABEL_7;
            case 8:
              [(AFKEndpointInterface *)self handleResponse:data size:?];
              goto LABEL_7;
            case 16:
              [(AFKEndpointInterface *)self handleQueue:data size:?];
              goto LABEL_7;
          }
        }

        v7 = _AFKUserLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          regID = [(AFKEndpointInterface *)self regID];
          v13 = *data;
          *buf = 134218240;
          v20 = regID;
          v21 = 1024;
          v22 = v13;
          _os_log_error_impl(&dword_23C487000, v7, OS_LOG_TYPE_ERROR, "0x%llx: Unknown message type:0x%x", buf, 0x12u);
        }
      }

      else
      {
        v7 = _AFKUserLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          regID2 = [(AFKEndpointInterface *)self regID];
          *buf = 134218240;
          v20 = regID2;
          v21 = 1024;
          v22 = dataSize;
          _os_log_error_impl(&dword_23C487000, v7, OS_LOG_TYPE_ERROR, "0x%llx: Data queue entry size:0x%x", buf, 0x12u);
        }
      }

LABEL_7:
      IODataQueueDequeue(message, 0, &dataSize);
      v6 = IODataQueuePeek(message);
    }

    while (v6);
  }

  v14 = (message->queue + message->queueSize);
  if (atomic_load(v14))
  {
    atomic_fetch_add(v14, 0xFFFFFFFF);
    if (IOConnectCallScalarMethod(self->_connect, 8u, 0, 0, 0, 0))
    {
      v16 = _AFKUserLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(AFKEndpointInterface *)self regID];
        [AFKEndpointInterface dequeueDataMessage:];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleReport:(char *)report size:(unsigned int)size
{
  v6 = *(report + 1);
  v7 = *(report + 3);
  regID = self->_regID;
  kdebug_trace();
  reportHandler = self->_reportHandler;
  if ((*report & 0x100) != 0)
  {
    (*(reportHandler + 2))(reportHandler, self, *(report + 1), *(report + 1), *(report + 3), *(report + 2));
    v12 = *(report + 3);

    [(AFKEndpointInterface *)self compleOOBBuffer:v12];
  }

  else
  {
    v10 = *(report + 2);
    v11 = *(reportHandler + 2);

    v11();
  }
}

- (void)handleCommand:(char *)command size:(unsigned int)size
{
  v26 = *MEMORY[0x277D85DE8];
  if ((*command & 0x100) != 0)
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleCommand:v25 size:?];
    }

    v17 = *(command + 1);
    v18 = *(command + 3);
    regID = self->_regID;
    kdebug_trace();
    commandHandlerWithReturn = self->_commandHandlerWithReturn;
    if (commandHandlerWithReturn || (commandHandlerWithReturn = self->_commandHandler) != 0)
    {
      (*(commandHandlerWithReturn + 2))(commandHandlerWithReturn, self, *(command + 3), *(command + 1), *(command + 1), *(command + 5), *(command + 4), *(command + 4));
    }

    v21 = *(command + 5);
    v22 = *MEMORY[0x277D85DE8];

    [(AFKEndpointInterface *)self compleOOBBuffer:v21];
  }

  else
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleCommand:v25 size:?];
    }

    v6 = *(command + 1);
    v7 = *(command + 3);
    v8 = self->_regID;
    kdebug_trace();
    commandHandler = self->_commandHandlerWithReturn;
    if (commandHandler || (commandHandler = self->_commandHandler) != 0)
    {
      v10 = *(command + 1);
      v11 = *(command + 1);
      v12 = *(command + 3);
      v13 = *(command + 4);
      v14 = *(command + 4);
      v15 = *(commandHandler + 2);
      v16 = *MEMORY[0x277D85DE8];

      v15();
    }

    else
    {
      v23 = *MEMORY[0x277D85DE8];
    }
  }
}

- (void)handleResponse:(char *)response size:(unsigned int)size
{
  v27 = *MEMORY[0x277D85DE8];
  if ((*response & 0x100) != 0)
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleResponse:v26 size:?];
    }

    v15 = *(response + 1);
    v7 = *(response + 2);
    v16 = *v7;
    regID = self->_regID;
    v18 = *(response + 6);
    kdebug_trace();
    v19 = *v7;
    v20 = *(response + 6);
    v21 = *(response + 1);
    v23 = *(response + 4);
    v22 = *(response + 5);
    (*(self->_responseHandler + 2))();
    [(AFKEndpointInterface *)self compleOOBBuffer:*(response + 5)];
  }

  else
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleResponse:v26 size:?];
    }

    v6 = *(response + 1);
    v7 = *(response + 2);
    v8 = *v7;
    v9 = self->_regID;
    v10 = *(response + 6);
    kdebug_trace();
    v11 = *v7;
    v12 = *(response + 6);
    v13 = *(response + 1);
    v14 = *(response + 4);
    (*(self->_responseHandler + 2))();
  }

  v24 = *MEMORY[0x277D85DE8];

  free(v7);
}

- (void)handleDescriptor:(char *)descriptor size:(unsigned int)size
{
  v36 = *MEMORY[0x277D85DE8];
  if (size <= 7)
  {
    [AFKEndpointInterface handleDescriptor:buf size:?];
  }

  v6 = *(descriptor + 1);
  v7 = *(descriptor + 2);
  regID = self->_regID;
  kdebug_trace();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = self->_descriptorManagers;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = *v25;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      if ([v13 regID] == *(descriptor + 3))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSSet *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v14 = v13;

    if (!v14)
    {
      goto LABEL_17;
    }

    if (descriptor[36])
    {
      v15 = off_278BBE7D0;
    }

    else
    {
      v15 = off_278BBE7E0;
    }

    v16 = [(__objc2_class *)*v15 withManager:v14 capacity:*(descriptor + 8) token:*(descriptor + 2)];
    if (v16)
    {
      v17 = *(descriptor + 1);
      v18 = *(descriptor + 1);
      (*(self->_descriptorHandler + 2))();
      goto LABEL_21;
    }

    v19 = _AFKUserLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      regID = [(AFKEndpointInterface *)self regID];
      v23 = *(descriptor + 2);
      v22 = *(descriptor + 3);
      *buf = 134218496;
      v31 = regID;
      v32 = 2048;
      v33 = v22;
      v34 = 2048;
      v35 = v23;
      _os_log_error_impl(&dword_23C487000, v19, OS_LOG_TYPE_ERROR, "0x%llx: Couldn't create descriptor for AFKDescMsg (regID:0x%llx token:0x%llx)", buf, 0x20u);
    }
  }

  else
  {
LABEL_10:

LABEL_17:
    v19 = _AFKUserLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)descriptor handleDescriptor:buf size:[(AFKEndpointInterface *)self regID], v19];
    }

    v14 = 0;
  }

  v16 = 0;
LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleQueue:(char *)queue size:(unsigned int)size
{
  v10 = *MEMORY[0x277D85DE8];
  if (size <= 7)
  {
    [AFKEndpointInterface handleQueue:v9 size:?];
  }

  [(AFKEndpointInterface *)self dequeueDataMessage:*(queue + 3)];
  v6 = *(queue + 3);
  v7 = *MEMORY[0x277D85DE8];

  [(AFKEndpointInterface *)self compleOOBBuffer:v6];
}

- (int)compleOOBBuffer:(unint64_t)buffer
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = buffer;
  v5 = IOConnectCallMethod(self->_connect, 9u, input, 1u, 0, 0, 0, 0, 0, 0);
  if (v5)
  {
    v6 = _AFKUserLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      regID = [(AFKEndpointInterface *)self regID];
      v11 = 2048;
      bufferCopy = buffer;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_23C487000, v6, OS_LOG_TYPE_ERROR, "0x%llx: kDataQueueFreeOOBMsgMethod (%llx):0x%x", buf, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)startSession:(BOOL)session
{
  sessionCopy = session;
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if ([(AFKEndpointInterface *)self hasState:2])
  {
    input[0] = sessionCopy;
    result = IOConnectCallMethod(self->_connect, 5u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    result = -536870184;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)initWithService:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOObjectRetain:0x%x", v3, v4);
}

- (void)initWithService:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IORegistryEntryGetRegistryEntryID:0x%x", v3, v4);
}

- (void)activate:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOConnectSetNotificationPort:0x%x", v3, v4);
}

- (void)activate:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kOpenMethod:0x%x", v3, v4);
}

- (void)enqueueCommand:(void *)a1 timestamp:(_OWORD *)a2 inputBuffer:inputBufferSize:outputPayloadSize:context:options:.cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  __break(1u);
}

- (void)dequeueDataMessage:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kDataQueueSpaceAvailableMethod:0x%x", v3, v4);
}

- (void)handleCommand:(void *)a1 size:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  __break(1u);
}

- (void)handleResponse:(void *)a1 size:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  __break(1u);
}

- (void)handleDescriptor:(uint64_t *)a1 size:(_OWORD *)a2 .cold.1(uint64_t *a1, _OWORD *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)handleDescriptor:(uint64_t)a3 size:(os_log_t)log .cold.2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(a1 + 24);
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_23C487000, log, OS_LOG_TYPE_ERROR, "0x%llx: Couldn't find manager for AFKDescMsg (regID:0x%llx)", buf, 0x16u);
}

- (void)handleQueue:(void *)a1 size:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  __break(1u);
}

@end