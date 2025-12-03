@interface IAPDataBuffer
- (AccessoryIAPInterface)parentiAPInterface;
- (IAPDataBuffer)initWithiAPInterface:(id)interface;
- (void)dealloc;
@end

@implementation IAPDataBuffer

- (IAPDataBuffer)initWithiAPInterface:(id)interface
{
  interfaceCopy = interface;
  v14.receiver = self;
  v14.super_class = IAPDataBuffer;
  v5 = [(IAPDataBuffer *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_dataBufferInLen = 1024;
    v5->_dataBufferIn = malloc_type_calloc(1uLL, 0x400uLL, 0x8DA1B704uLL);
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [IAPDataBuffer initWithiAPInterface:?];
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "hard-code dataBufferInLen to 1024, change to calculate similarly to old project", v13, 2u);
    }

    objc_storeWeak(&v6->_parentiAPInterface, interfaceCopy);
  }

  return v6;
}

- (void)dealloc
{
  dataBufferIn = self->_dataBufferIn;
  if (dataBufferIn)
  {
    free(dataBufferIn);
    self->_dataBufferIn = 0;
  }

  self->_dataBufferInLen = 0;
  v4.receiver = self;
  v4.super_class = IAPDataBuffer;
  [(IAPDataBuffer *)&v4 dealloc];
}

- (AccessoryIAPInterface)parentiAPInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_parentiAPInterface);

  return WeakRetained;
}

- (void)initWithiAPInterface:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithiAPInterface:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end