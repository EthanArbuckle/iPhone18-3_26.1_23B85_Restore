@interface ATCIOA2Device
- (ATCIOA2Device)initWithService:(id)a3;
- (BOOL)performConfiigChangeForNotification:(IOAudio2Notification *)a3 error:(id *)a4;
- (double)sampleRate;
- (id)_buildInputStreams;
- (id)_buildOutputStreams;
- (unsigned)clockDomain;
- (unsigned)inputLatency;
- (unsigned)inputSafetyOffset;
- (unsigned)ioBufferSize;
- (unsigned)outputLatency;
- (unsigned)outputSafetyOffset;
- (void)dealloc;
- (void)handleNotification:(IOAudio2Notification *)a3;
@end

@implementation ATCIOA2Device

- (ATCIOA2Device)initWithService:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v62.receiver = self;
  v62.super_class = ATCIOA2Device;
  v6 = [(ATCIOA2Device *)&v62 init];
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = v6;
  v8 = [v5 propertyForKey:@"device name"];
  name = v7->_name;
  v7->_name = v8;

  v10 = [v5 propertyForKey:@"device UID"];
  uid = v7->_uid;
  v7->_uid = v10;

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.audio.AudioTransportCommon.aeadevice.%@", v7->_uid];
  v13 = dispatch_queue_create([v12 UTF8String], 0);
  queue = v7->_queue;
  v7->_queue = v13;

  if (!v7->_queue)
  {
    [ATCIOA2Device initWithService:v7];
LABEL_43:
    v25 = 0;
    goto LABEL_44;
  }

  v15 = [objc_alloc(MEMORY[0x277D1AE18]) initOnDispatchQueue:v7->_queue];
  notificationPort = v7->_notificationPort;
  v7->_notificationPort = v15;

  if (!v7->_notificationPort)
  {
    [ATCIOA2Device initWithService:v7];
    goto LABEL_43;
  }

  v17 = [v5 connectToServiceOfType:0];
  connection = v7->_connection;
  v7->_connection = v17;

  v19 = v7->_connection;
  if (!v19)
  {
    [ATCIOA2Device initWithService:v7];
    goto LABEL_43;
  }

  v60 = 0;
  v61 = 0;
  if (([(IOKConnection *)v19 mapMemory64OfType:0 withOptions:1 atAddress:&v61 ofSize:&v60 error:0]& 1) == 0)
  {
    [ATCIOA2Device initWithService:];
LABEL_42:

    goto LABEL_43;
  }

  if (v60 != 40)
  {
    [ATCIOA2Device initWithService:];
    goto LABEL_42;
  }

  v20 = v61;
  v7->_engineStatus = v61;
  if (!v20)
  {
    [ATCIOA2Device initWithService:];
    goto LABEL_42;
  }

  v21 = [(IOKNotificationPort *)v7->_notificationPort machPort];
  v22 = dispatch_source_create(MEMORY[0x277D85D08], v21, 0, v7->_queue);
  notificationSource = v7->_notificationSource;
  v7->_notificationSource = v22;

  v24 = v7->_notificationSource;
  if (!v24)
  {
    [ATCIOA2Device initWithService:];
    goto LABEL_42;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__ATCIOA2Device_initWithService___block_invoke;
  handler[3] = &unk_278CEB868;
  v25 = v7;
  v59 = v25;
  dispatch_source_set_event_handler(v24, handler);
  dispatch_resume(v7->_notificationSource);
  if (([(IOKConnection *)v7->_connection setNotificationPort:v7->_notificationPort ofType:0 withReference:v25 error:0]& 1) == 0)
  {
    [ATCIOA2Device initWithService:v25];
    v25 = 0;
    goto LABEL_33;
  }

  objc_storeStrong(&v25->_service, a3);
  v26 = [(ATCIOA2Device *)v25 _buildInputStreams];
  inputStreams = v25->_inputStreams;
  v25->_inputStreams = v26;

  v28 = [(ATCIOA2Device *)v25 _buildOutputStreams];
  outputStreams = v25->_outputStreams;
  v25->_outputStreams = v28;

  if ([(NSArray *)v25->_inputStreams count])
  {
    v30 = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = [(NSArray *)v25->_inputStreams firstObject];
    v32 = [v31 availableFormats];

    v33 = [v32 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v55;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v55 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = MEMORY[0x277CCABB0];
          [*(*(&v54 + 1) + 8 * i) sampleRate];
          v38 = [v37 numberWithDouble:?];
          if (![(NSArray *)v30 containsObject:v38])
          {
            [(NSArray *)v30 addObject:v38];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v34);
    }
  }

  else
  {
    if (![(NSArray *)v25->_outputStreams count])
    {
      v47 = [MEMORY[0x277CBEA60] array];
      availableSampleRates = v25->_availableSampleRates;
      v25->_availableSampleRates = v47;
      goto LABEL_32;
    }

    v30 = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = [(NSArray *)v25->_outputStreams firstObject];
    v32 = [v39 availableFormats];

    v40 = [v32 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v51;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v51 != v42)
          {
            objc_enumerationMutation(v32);
          }

          v44 = MEMORY[0x277CCABB0];
          [*(*(&v50 + 1) + 8 * j) sampleRate];
          v45 = [v44 numberWithDouble:?];
          if (![(NSArray *)v30 containsObject:v45])
          {
            [(NSArray *)v30 addObject:v45];
          }
        }

        v41 = [v32 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v41);
    }
  }

  availableSampleRates = v25->_availableSampleRates;
  v25->_availableSampleRates = v30;
LABEL_32:

LABEL_33:
LABEL_44:

  v48 = *MEMORY[0x277D85DE8];
  return v25;
}

void __33__ATCIOA2Device_initWithService___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v6.msgh_local_port = [*(*(a1 + 32) + 32) machPort];
  if (mach_msg(&v6, 2, 0, 0x88u, [*(*(a1 + 32) + 32) machPort], 0, 0))
  {
    __33__ATCIOA2Device_initWithService___block_invoke_cold_1();
  }

  else if (v7)
  {
    v3 = 0;
    v4 = &v8;
    do
    {
      [*(a1 + 32) handleNotification:v4];
      ++v3;
      v4 += 2;
    }

    while (v3 < v7);
  }

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

- (double)sampleRate
{
  v2 = [(IOKService *)self->_service propertyForKey:@"sample rate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = IOAudio2Fixed64ToFloat64([v3 longLongValue]);

  return v4;
}

- (unsigned)clockDomain
{
  v2 = [(IOKService *)self->_service propertyForKey:@"clock domain"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 unsignedIntValue];

  return v4;
}

- (unsigned)inputSafetyOffset
{
  v2 = [(IOKService *)self->_service propertyForKey:@"input safety offset"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 unsignedIntValue];

  return v4;
}

- (unsigned)inputLatency
{
  v2 = [(IOKService *)self->_service propertyForKey:@"input latency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 unsignedIntValue];

  return v4;
}

- (unsigned)outputSafetyOffset
{
  v2 = [(IOKService *)self->_service propertyForKey:@"output safety offset"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 unsignedIntValue];

  return v4;
}

- (unsigned)outputLatency
{
  v2 = [(IOKService *)self->_service propertyForKey:@"output latency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 unsignedIntValue];

  return v4;
}

- (unsigned)ioBufferSize
{
  v2 = [(IOKService *)self->_service propertyForKey:@"io buffer frame size"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 unsignedIntValue];

  return v4;
}

- (id)_buildInputStreams
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(IOKService *)self->_service propertyForKey:@"input streams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [ATCIOA2Stream alloc];
          v13 = [(ATCIOA2Stream *)v12 initWithService:self->_service connection:self->_connection index:v8 input:1 description:v11, v17];
          if (v13)
          {
            [v4 addObject:v13];
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_buildOutputStreams
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(IOKService *)self->_service propertyForKey:@"output streams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [ATCIOA2Stream alloc];
          v13 = [(ATCIOA2Stream *)v12 initWithService:self->_service connection:self->_connection index:v8 input:0 description:v11, v17];
          if (v13)
          {
            [v4 addObject:v13];
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)performConfiigChangeForNotification:(IOAudio2Notification *)a3 error:(id *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = [(IOKService *)self->_service properties];
  v8 = [(IOKConnection *)self->_connection callMethodWithSelector:3 scalarInputs:0 scalarInputCount:0 structInput:a3 structInputSize:32 scalarOutputs:0 scalarOutputCount:0 structOutput:0 structOutputSize:0 error:a4];
  v9 = [(IOKService *)self->_service properties];
  v10 = MEMORY[0x277CBEB18];
  v11 = [v7 allKeys];
  v12 = [v10 arrayWithArray:v11];

  v13 = [v9 allKeys];
  [v12 removeObjectsInArray:v13];

  v14 = MEMORY[0x277CBEB18];
  v15 = [v9 allKeys];
  v16 = [v14 arrayWithArray:v15];

  v17 = [v7 allKeys];
  [v16 removeObjectsInArray:v17];

  v18 = [(ATCIOA2Device *)self _buildInputStreams];
  [(ATCIOA2Device *)self setInputStreams:v18];

  v19 = [(ATCIOA2Device *)self _buildOutputStreams];
  [(ATCIOA2Device *)self setOutputStreams:v19];

  v20 = [(ATCIOA2Device *)self inputStreams];
  v21 = [v20 count];

  if (v21)
  {
    v45 = v16;
    v46 = v12;
    v47 = v8;
    v22 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = [(ATCIOA2Device *)self inputStreams];
    v24 = [v23 firstObject];
    v25 = [v24 availableFormats];

    v26 = [v25 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v53;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = MEMORY[0x277CCABB0];
          [*(*(&v52 + 1) + 8 * i) sampleRate];
          v31 = [v30 numberWithDouble:?];
          if (([v22 containsObject:v31] & 1) == 0)
          {
            [v22 addObject:v31];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v27);
    }
  }

  else
  {
    v32 = [(ATCIOA2Device *)self outputStreams];
    v33 = [v32 count];

    if (!v33)
    {
      v44 = [MEMORY[0x277CBEA60] array];
      [(ATCIOA2Device *)self setAvailableSampleRates:v44];

      goto LABEL_23;
    }

    v45 = v16;
    v46 = v12;
    v47 = v8;
    v22 = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = [(ATCIOA2Device *)self outputStreams];
    v35 = [v34 firstObject];
    v25 = [v35 availableFormats];

    v36 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v49;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(v25);
          }

          v40 = MEMORY[0x277CCABB0];
          [*(*(&v48 + 1) + 8 * j) sampleRate];
          v41 = [v40 numberWithDouble:?];
          if (([v22 containsObject:v41] & 1) == 0)
          {
            [v22 addObject:v41];
          }
        }

        v37 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v37);
    }
  }

  [(ATCIOA2Device *)self setAvailableSampleRates:v22];
  v8 = v47;
  v16 = v45;
  v12 = v46;
LABEL_23:

  v42 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)handleNotification:(IOAudio2Notification *)a3
{
  var1 = a3->var1;
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (var1 == 1751215220)
  {
    if (!v6)
    {
      return;
    }

    *buf = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "IO Stopped";
    goto LABEL_13;
  }

  if (var1 == 1735354734)
  {
    if (!v6)
    {
      return;
    }

    *buf = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "IO Started";
LABEL_13:
    _os_log_impl(&dword_241795000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
    return;
  }

  if (var1 != 1668247142)
  {
    if (!v6)
    {
      return;
    }

    *buf = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "Received an unexpected IOAudio2Notification";
    goto LABEL_13;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_241795000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Request Config Change", buf, 2u);
  }

  v7 = *&a3->var4;
  v12 = *&a3->var0;
  v13 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__ATCIOA2Device_handleNotification___block_invoke;
  v11[3] = &unk_278CEB890;
  v11[4] = self;
  v8 = MEMORY[0x245CEF500](v11);
  v8[2]();
}

void __36__ATCIOA2Device_handleNotification___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  [*(a1 + 32) performConfiigChangeForNotification:v4 error:0];
  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ATCIOA2Device;
  [(ATCIOA2Device *)&v2 dealloc];
}

- (void)initWithService:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 .cold.6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 .cold.7(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 .cold.8(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __33__ATCIOA2Device_initWithService___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241795000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end