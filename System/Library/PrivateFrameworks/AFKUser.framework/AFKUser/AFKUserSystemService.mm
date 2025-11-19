@interface AFKUserSystemService
- (AFKUserSystemService)initWithService:(unsigned int)a3;
- (BOOL)setMatchedServiceProperties:(id)a3 proprties:(id)a4 error:(id *)a5;
- (id)copyMatchedServiceProperties:(id)a3 key:(id)a4 error:(id *)a5;
- (id)registry:(id *)a3;
- (void)dealloc;
@end

@implementation AFKUserSystemService

- (AFKUserSystemService)initWithService:(unsigned int)a3
{
  if (!a3)
  {
    [AFKUserSystemService initWithService:?];
LABEL_7:
    v5 = 0;
    goto LABEL_4;
  }

  if (IOObjectRetain(a3))
  {
    [AFKUserSystemService initWithService:?];
    goto LABEL_7;
  }

  self->_service = a3;
  v5 = self;
LABEL_4:

  return v5;
}

- (void)dealloc
{
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v4.receiver = self;
  v4.super_class = AFKUserSystemService;
  [(AFKUserSystemService *)&v4 dealloc];
}

- (id)registry:(id *)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  service = self->_service;
  v51 = @"EnsureReportDelivery";
  v52[0] = &unk_284F113A8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v7 = [AFKEndpointInterface withService:service properties:v6];

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v8 = dispatch_semaphore_create(0);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v9 = dispatch_queue_create("afkregistry", 0);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__0;
  v32[4] = __Block_byref_object_dispose__0;
  v33 = 0;
  [v7 setDispatchQueue:v9];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __33__AFKUserSystemService_registry___block_invoke;
  v29[3] = &unk_278BBE910;
  v31 = &v34;
  v10 = v8;
  v30 = v10;
  [v7 setResponseHandler:v29];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __33__AFKUserSystemService_registry___block_invoke_2;
  v28[3] = &unk_278BBE938;
  v28[4] = self;
  v28[5] = v32;
  v28[6] = &v38;
  [v7 setReportHandler:v28];
  [v7 activate:0];
  v27 = 0;
  LODWORD(v24) = 0;
  v11 = [v7 enqueueCommand:129 timestamp:mach_continuous_time() inputBuffer:0 inputBufferSize:0 outputPayloadSize:16 context:&v27 options:v24];
  *(v35 + 6) = v11;
  if (!v11)
  {
    v12 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      *(v35 + 6) = -536870186;
    }
  }

  [v7 cancel];
  if (*(v35 + 6))
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:? userInfo:?];
      *a3 = v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    v15 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v16 = [v39[5] count];
      v17 = v39[5];
      if (v14 >= v16)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __33__AFKUserSystemService_registry___block_invoke_10;
        v25[3] = &unk_278BBE9B0;
        v25[4] = &v44;
        v25[5] = &v38;
        [v17 enumerateObjectsUsingBlock:v25];
        v13 = v45[5];
        goto LABEL_16;
      }

      v18 = [v17 objectAtIndexedSubscript:v14];
      errorString = 0;
      v19 = v18;
      v20 = IOCFUnserializeBinary([v18 bytes], objc_msgSend(v18, "length"), v15, 0, &errorString);
      if (!v20)
      {
        break;
      }

      [v39[5] setObject:v20 atIndexedSubscript:v14];

      ++v14;
    }

    v21 = _AFKUserLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(AFKUserSystemService *)&errorString registry:v50, [(AFKUserSystemService *)self regID], v21];
    }
  }

  v13 = 0;
LABEL_16:

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

void __33__AFKUserSystemService_registry___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = _AFKUserLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = [*(a1 + 32) regID];
    v20 = 134219008;
    v21 = v19;
    v22 = 1024;
    v23 = a3;
    v24 = 2048;
    v25 = a4;
    v26 = 2048;
    v27 = a5;
    v28 = 2048;
    v29 = a6;
    _os_log_debug_impl(&dword_23C487000, v11, OS_LOG_TYPE_DEBUG, "0x%llx: packetType:0x%x timestamp:%lld inputBuffer:%p inputBufferSize:%zu", &v20, 0x30u);
  }

  if (a3 == 130)
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (a6)
    {
      if (!v12)
      {
        v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:a6];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v12 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v12 appendBytes:a5 length:a6];
    }

    else if (v12)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:?];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __33__AFKUserSystemService_registry___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"class"];
  if ([v5 isEqual:@"AFKRootService"])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = [v4 objectForKeyedSubscript:@"children"];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __33__AFKUserSystemService_registry___block_invoke_2_20;
    v13 = &unk_278BBE988;
    v8 = *(a1 + 40);
    v14 = v7;
    v15 = v8;
    v9 = v7;
    [v6 enumerateObjectsUsingBlock:&v10];
    [v4 setObject:v9 forKeyedSubscript:{@"children", v10, v11, v12, v13}];
  }
}

void __33__AFKUserSystemService_registry___block_invoke_2_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__AFKUserSystemService_registry___block_invoke_3;
  v6[3] = &unk_278BBE960;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __33__AFKUserSystemService_registry___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 objectForKeyedSubscript:@"id"];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    [*(a1 + 40) addObject:v9];
    *a4 = 1;
  }
}

- (BOOL)setMatchedServiceProperties:(id)a3 proprties:(id)a4 error:(id *)a5
{
  v28[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v27[0] = @"properties";
  v27[1] = @"service-matching";
  v28[0] = v9;
  v28[1] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v11 = IOCFSerialize(v10, 1uLL);
  if (v11)
  {
    v24 = a5;
    v12 = [AFKEndpointInterface withService:self->_service];
    v13 = dispatch_queue_create("setMatchedServiceProperties", 0);
    v14 = dispatch_semaphore_create(0);
    [v12 setDispatchQueue:v13];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke;
    v25[3] = &unk_278BBE9D8;
    v25[4] = self;
    v15 = v14;
    v26 = v15;
    [v12 setResponseHandler:v25];
    [v12 activate:0];
    LODWORD(v23) = 0;
    [v12 enqueueCommand:215 timestamp:mach_continuous_time() inputBuffer:-[__CFData bytes](v11 inputBufferSize:"bytes") outputPayloadSize:-[__CFData length](v11 context:"length") options:{0, 0, v23}];
    v16 = dispatch_time(0, 10000000000);
    v17 = dispatch_semaphore_wait(v15, v16);
    v18 = v17 == 0;
    if (v17)
    {
      v19 = _AFKUserLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AFKUserSystemService setMatchedServiceProperties:? proprties:? error:?];
      }

      if (v24)
      {
        *v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870186 userInfo:0];
      }
    }

    [v12 cancel];
  }

  else
  {
    v20 = _AFKUserLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AFKUserSystemService setMatchedServiceProperties:? proprties:? error:?];
    }

    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870206 userInfo:0];
      *a5 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

intptr_t __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = _AFKUserLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke_cold_1(a1);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)copyMatchedServiceProperties:(id)a3 key:(id)a4 error:(id *)a5
{
  v38[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v37[0] = @"properties";
  v37[1] = @"service-matching";
  v38[0] = v9;
  v38[1] = v8;
  v25 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v11 = IOCFSerialize(v10, 1uLL);
  if (v11)
  {
    v12 = [AFKEndpointInterface withService:self->_service];
    v13 = dispatch_queue_create("copyMatchedServiceProperties", 0);
    v14 = dispatch_semaphore_create(0);
    [v12 setDispatchQueue:v13];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke;
    v26[3] = &unk_278BBEA00;
    v26[4] = self;
    v28 = &v30;
    v29 = a5;
    v15 = v14;
    v27 = v15;
    [v12 setResponseHandler:v26];
    [v12 activate:0];
    v16 = mach_continuous_time();
    v17 = v11;
    LODWORD(v24) = 0;
    [v12 enqueueCommand:214 timestamp:v16 inputBuffer:-[__CFData bytes](v11 inputBufferSize:"bytes") outputPayloadSize:-[__CFData length](v11 context:"length") options:{0, 0, v24}];
    v18 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v15, v18))
    {
      v19 = _AFKUserLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AFKUserSystemService copyMatchedServiceProperties:v9 key:v36 error:[(AFKUserSystemService *)self regID]];
      }

      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870186 userInfo:0];
    }

    [v12 cancel];
    v20 = v31[5];
  }

  else
  {
    v21 = _AFKUserLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [AFKUserSystemService copyMatchedServiceProperties:v10 key:v36 error:[(AFKUserSystemService *)self regID]];
    }

    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870206 userInfo:0];
      *a5 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  _Block_object_dispose(&v30, 8);
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, const char *a6, size_t a7)
{
  v11 = a2;
  if (a4)
  {
    v12 = _AFKUserLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_1(a1);
    }
  }

  if (a6 && a7)
  {
    errorString = 0;
    v13 = IOCFUnserializeWithSize(a6, a7, *MEMORY[0x277CBECE8], 0, &errorString);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      **(a1 + 56) = [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870206 userInfo:0];
      v16 = _AFKUserLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_2(a1, &errorString);
      }
    }

    if (errorString)
    {
      CFRelease(errorString);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)initWithService:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _AFKUserLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [a1 regID];
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _AFKUserLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [a1 regID];
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)registry:(uint64_t)a3 .cold.1(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v4 = *a1;
  *a2 = 134218242;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = v4;
  OUTLINED_FUNCTION_4_1(&dword_23C487000, "0x%llx: IOCFUnserializeBinary failed:%@", a2, a4);
}

- (void)setMatchedServiceProperties:(void *)a1 proprties:error:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 regID];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setMatchedServiceProperties:(void *)a1 proprties:error:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 regID];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) regID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) regID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) regID];
  v3 = *a2;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

@end