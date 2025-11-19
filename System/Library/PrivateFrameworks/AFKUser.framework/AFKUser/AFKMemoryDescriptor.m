@interface AFKMemoryDescriptor
+ (id)withManager:(id)a3 capacity:(unint64_t)a4;
+ (id)withManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5;
- (AFKMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 buffer:(BOOL)a5;
- (AFKMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)mapDescriptor;
- (int)assertPower:(BOOL)a3;
- (int)assumeControl;
- (int)readBytes:(void *)a3 size:(unint64_t)a4 fromOffset:(unint64_t)a5;
- (int)releaseControl:(BOOL)a3;
- (int)writeBytes:(const void *)a3 size:(unint64_t)a4 toOffset:(unint64_t)a5;
- (unint64_t)length;
- (void)assumeControl;
- (void)dealloc;
- (void)mapDescriptor;
- (void)setLength:(unint64_t)a3;
@end

@implementation AFKMemoryDescriptor

+ (id)withManager:(id)a3 capacity:(unint64_t)a4
{
  v5 = a3;
  v6 = [[AFKMemoryDescriptor alloc] initWithManager:v5 capacity:a4 buffer:0];

  return v6;
}

- (AFKMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 buffer:(BOOL)a5
{
  v5 = a5;
  input[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  input[0] = a4;
  input[1] = v5;
  outputCnt = 1;
  v19.receiver = self;
  v19.super_class = AFKMemoryDescriptor;
  v10 = [(AFKMemoryDescriptor *)&v19 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v10->_manager, a3);
  v11->_capacity = a4;
  v11->_regID = [v9 regID];
  v11->_cachedLength = 0;
  v12 = [(AFKMemoryDescriptor *)v11 manager];
  v13 = IOConnectCallScalarMethod([v12 connect], 0, input, 2u, &output, &outputCnt);

  if (v13)
  {
    v15 = _AFKUserLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)v11 regID];
      [AFKMemoryDescriptor initWithManager:capacity:buffer:];
    }

    goto LABEL_12;
  }

  if (outputCnt != 1)
  {
    v16 = _AFKUserLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AFKMemoryDescriptor initWithManager:v21 capacity:[(AFKMemoryDescriptor *)v11 regID] buffer:?];
    }

    goto LABEL_12;
  }

  v11->_token = output;
  if (![(AFKMemoryDescriptor *)v11 mapDescriptor])
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v14 = v11;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)withManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5
{
  v7 = a3;
  v8 = [[AFKMemoryDescriptor alloc] initWithManager:v7 capacity:a4 token:a5];

  return v8;
}

- (AFKMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = AFKMemoryDescriptor;
  v10 = [(AFKMemoryDescriptor *)&v14 init];
  v11 = v10;
  if (v10 && (objc_storeStrong(&v10->_manager, a3), v11->_token = a5, v11->_cachedLength = 0, v11->_capacity = a4, [(AFKMemoryDescriptor *)v11 mapDescriptor]))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)mapDescriptor
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  v15 = 0;
  v16 = 0;
  v3 = [(AFKMemoryDescriptor *)self manager];
  v4 = IOConnectCallScalarMethod([v3 connect], 1u, input, 1u, 0, 0);

  if (v4)
  {
    v11 = _AFKUserLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor mapDescriptor];
    }

    goto LABEL_12;
  }

  v5 = [(AFKMemoryDescriptor *)self manager];
  v6 = [v5 connect];
  v7 = MEMORY[0x23EED2FD0](v6, 0, *MEMORY[0x277D85F48], &v16, &v15, 1);

  if (v7)
  {
    v11 = _AFKUserLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor mapDescriptor];
    }

    goto LABEL_12;
  }

  v8 = v15;
  self->_buffer = v16;
  if (v8 != [(AFKMemoryDescriptor *)self capacity])
  {
    v11 = _AFKUserLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(AFKMemoryDescriptor *)self regID];
      v13 = v15;
      v14 = [(AFKMemoryDescriptor *)self capacity];
      *buf = 134218496;
      v18 = v12;
      v19 = 2048;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      _os_log_error_impl(&dword_23C487000, v11, OS_LOG_TYPE_ERROR, "0x%llx: IOConnectMapMemory size mismatch:0x%zx,0x%zx", buf, 0x20u);
    }

LABEL_12:

    result = 0;
    goto LABEL_5;
  }

  result = 1;
LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kFreeMethod:0x%x", v3, v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AFKMemoryDescriptor *)self manager];
    v6 = [v4 manager];
    if ([v5 isEqual:v6])
    {
      v7 = [(AFKMemoryDescriptor *)self token];
      v8 = v7 == [v4 token];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLength:(unint64_t)a3
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = a3;
  v5 = [(AFKMemoryDescriptor *)self manager];
  v6 = IOConnectCallScalarMethod([v5 connect], 2u, input, 2u, 0, 0);

  if (v6)
  {
    v7 = _AFKUserLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor setLength:];
    }
  }

  else
  {
    self->_cachedLength = a3;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)length
{
  input[1] = *MEMORY[0x277D85DE8];
  result = self->_cachedLength;
  if (!result)
  {
    input[0] = [(AFKMemoryDescriptor *)self token];
    outputCnt = 1;
    v4 = [(AFKMemoryDescriptor *)self manager];
    v5 = IOConnectCallScalarMethod([v4 connect], 3u, input, 1u, &output, &outputCnt);

    if (v5 || outputCnt != 1)
    {
      v6 = _AFKUserLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = [(AFKMemoryDescriptor *)self regID];
        *buf = 134218496;
        v11 = v8;
        v12 = 1024;
        v13 = v5;
        v14 = 1024;
        v15 = outputCnt;
        _os_log_error_impl(&dword_23C487000, v6, OS_LOG_TYPE_ERROR, "0x%llx: kGetLengthMethod:0x%x cnt:%u", buf, 0x18u);
      }

      result = 0;
    }

    else
    {
      result = output;
      self->_cachedLength = output;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)assertPower:(BOOL)a3
{
  v3 = a3;
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = v3;
  v5 = [(AFKMemoryDescriptor *)self manager];
  v6 = IOConnectCallScalarMethod([v5 connect], 0xAu, input, 2u, 0, 0);

  if (v6)
  {
    v9 = _AFKUserLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor assertPower:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)assumeControl
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  v3 = [(AFKMemoryDescriptor *)self manager];
  v4 = IOConnectCallScalarMethod([v3 connect], 4u, input, 1u, 0, 0);

  if (v4)
  {
    v7 = _AFKUserLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor assumeControl];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)releaseControl:(BOOL)a3
{
  v3 = a3;
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = v3;
  v5 = [(AFKMemoryDescriptor *)self manager];
  v6 = IOConnectCallScalarMethod([v5 connect], 5u, input, 2u, 0, 0);

  if (v6)
  {
    v9 = _AFKUserLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor releaseControl:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)readBytes:(void *)a3 size:(unint64_t)a4 fromOffset:(unint64_t)a5
{
  v9 = -536870206;
  if (!__CFADD__(a5, a4) && a5 + a4 <= OUTLINED_FUNCTION_4(self, a2))
  {
    memcpy(v7, ([v8 buffer] + v6), v5);
    return 0;
  }

  return v9;
}

- (int)writeBytes:(const void *)a3 size:(unint64_t)a4 toOffset:(unint64_t)a5
{
  v9 = -536870206;
  if (!__CFADD__(a5, a4) && a5 + a4 <= OUTLINED_FUNCTION_4(self, a2))
  {
    memcpy(([v8 buffer] + v6), v7, v5);
    return 0;
  }

  return v9;
}

- (void)initWithManager:capacity:buffer:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kCreateMethod:0x%x", v3, v4);
}

- (void)initWithManager:(unsigned int *)a1 capacity:(uint64_t)a2 buffer:(uint64_t)a3 .cold.2(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3(3.8521e-34, a1, a2, a3);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kCreateMethod outputCount %u", v4, v5);
}

- (void)mapDescriptor
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOConnectMapMemory:0x%x", v3, v4);
}

- (void)setLength:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kSetLengthMethod:0x%x", v3, v4);
}

- (void)assertPower:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kAssertPowerMethod:0x%x", v3, v4);
}

- (void)assumeControl
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kAssumeMethod:0x%x", v3, v4);
}

- (void)releaseControl:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kReleaseMethod:0x%x", v3, v4);
}

@end