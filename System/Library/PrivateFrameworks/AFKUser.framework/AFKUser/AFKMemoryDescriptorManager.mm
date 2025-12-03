@interface AFKMemoryDescriptorManager
- (AFKMemoryDescriptorManager)initWithService:(unsigned int)service;
- (void)dealloc;
@end

@implementation AFKMemoryDescriptorManager

- (AFKMemoryDescriptorManager)initWithService:(unsigned int)service
{
  output[1] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  v9.receiver = self;
  v9.super_class = AFKMemoryDescriptorManager;
  v4 = [(AFKMemoryDescriptorManager *)&v9 init];
  if (!v4 || IOObjectRetain(service))
  {
    goto LABEL_16;
  }

  v4->_service = service;
  if (IOServiceOpen(service, *MEMORY[0x277D85F48], 0x6D646D72u, &v4->_connect))
  {
    v6 = _AFKUserLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptorManager *)v4 regID];
      [AFKMemoryDescriptorManager initWithService:];
    }

    goto LABEL_15;
  }

  if (IOConnectCallScalarMethod(v4->_connect, 9u, 0, 0, output, &outputCnt))
  {
    v6 = _AFKUserLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptorManager *)v4 regID];
      [AFKMemoryDescriptorManager initWithService:];
    }

    goto LABEL_15;
  }

  if (outputCnt != 1)
  {
    v6 = _AFKUserLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptorManager *)&outputCnt initWithService:v11, [(AFKMemoryDescriptorManager *)v4 regID]];
    }

LABEL_15:

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v4->_regID = output[0];
  v5 = v4;
LABEL_17:

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  connect = self->_connect;
  if (connect)
  {
    IOServiceClose(connect);
    self->_connect = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v5.receiver = self;
  v5.super_class = AFKMemoryDescriptorManager;
  [(AFKMemoryDescriptorManager *)&v5 dealloc];
}

- (void)initWithService:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOServiceOpen:0x%x", v3, v4);
}

- (void)initWithService:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kGetIDMethod:0x%x", v3, v4);
}

- (void)initWithService:(uint64_t)a3 .cold.3(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3(3.8521e-34, a1, a2, a3);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kGetIDMethod outputCount %u", v4, v5);
}

@end