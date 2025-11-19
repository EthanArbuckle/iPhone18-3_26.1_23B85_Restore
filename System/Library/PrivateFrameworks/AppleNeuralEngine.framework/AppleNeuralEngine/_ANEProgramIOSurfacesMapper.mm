@interface _ANEProgramIOSurfacesMapper
+ (_ANEProgramIOSurfacesMapper)mapperWithController:(id)a3;
+ (_ANEProgramIOSurfacesMapper)mapperWithProgramHandle:(unint64_t)a3;
+ (void)initialize;
- (BOOL)mapIOSurfacesWithModel:(id)a3 request:(id)a4 cacheInference:(BOOL)a5 error:(id *)a6;
- (BOOL)unmapIOSurfacesWithModel:(id)a3 request:(id)a4 error:(id *)a5;
- (BOOL)validateRequest:(id)a3 model:(id)a4;
- (_ANEProgramIOSurfacesMapper)initWithController:(id)a3;
- (void)dealloc;
- (void)prepareANEMemoryMappingParams:(ANEMemoryMappingParamsStruct *)a3 request:(id)a4;
@end

@implementation _ANEProgramIOSurfacesMapper

- (void)dealloc
{
  v3 = [(_ANEProgramIOSurfacesMapper *)self controller];
  [v3 stop];

  v4.receiver = self;
  v4.super_class = _ANEProgramIOSurfacesMapper;
  [(_ANEProgramIOSurfacesMapper *)&v4 dealloc];
}

+ (void)initialize
{
  if (+[_ANEProgramIOSurfacesMapper initialize]::onceToken != -1)
  {
    +[_ANEProgramIOSurfacesMapper initialize];
  }
}

- (_ANEProgramIOSurfacesMapper)initWithController:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = _ANEProgramIOSurfacesMapper;
  v6 = [(_ANEProgramIOSurfacesMapper *)&v8 init];
  if (v6)
  {
    v6->_programHandle = [v5 programHandle];
    objc_storeStrong(&v6->_controller, a3);
    [(_ANEDeviceController *)v6->_controller start];
  }

  return v6;
}

+ (_ANEProgramIOSurfacesMapper)mapperWithProgramHandle:(unint64_t)a3
{
  v4 = [_ANEDeviceController controllerWithProgramHandle:a3];
  v5 = [[a1 alloc] initWithController:v4];

  return v5;
}

+ (_ANEProgramIOSurfacesMapper)mapperWithController:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithController:v4];

  return v5;
}

- (BOOL)validateRequest:(id)a3 model:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 validate])
  {
    v8 = [v6 procedureIndex];
    aSelector = a2;
    v9 = [v8 unsignedIntegerValue];

    v10 = [v6 ioSurfacesCount];
    if ((v10 - 129) <= 0xFFFFFFFFFFFFFF7FLL)
    {
      v11 = +[_ANELog common];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(aSelector);
        [(_ANEProgramIOSurfacesMapper *)v12 validateRequest:v40 model:v10, v11];
      }
    }

    v13 = [v7 inputSymbolIndicesForProcedureIndex:v9];
    v14 = [v6 inputIndexArray];
    v15 = [v14 count];
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = [v14 objectAtIndexedSubscript:v16];
        v19 = [v18 unsignedIntegerValue];

        if (([v13 containsIndex:v19] & 1) == 0)
        {
          break;
        }

        v16 = ++v17;
        if (v15 <= v17)
        {
          goto LABEL_10;
        }
      }

      v20 = +[_ANELog common];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v35 = v31;
        v36 = 1024;
        v37 = v17;
        v38 = 1024;
        v39 = v19;
        _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: request.inputIndexArray[%u]=%u is invalid", buf, 0x18u);
      }

      v27 = 0;
    }

    else
    {
LABEL_10:
      v20 = [v7 outputSymbolIndicesForProcedureIndex:v9];
      v21 = [v6 outputIndexArray];
      v22 = [v21 count];
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v25 = [v21 objectAtIndexedSubscript:v23];
          v26 = [v25 unsignedIntegerValue];

          if (([v20 containsIndex:v26]& 1) == 0)
          {
            break;
          }

          v23 = ++v24;
          if (v22 <= v24)
          {
            goto LABEL_14;
          }
        }

        v28 = +[_ANELog common];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v32 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v35 = v32;
          v36 = 1024;
          v37 = v24;
          v38 = 1024;
          v39 = v26;
          _os_log_error_impl(&dword_1AD246000, v28, OS_LOG_TYPE_ERROR, "%@: request.outputIndexArray[%u]=%u is invalid", buf, 0x18u);
        }

        v27 = 0;
      }

      else
      {
LABEL_14:
        v27 = 1;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)prepareANEMemoryMappingParams:(ANEMemoryMappingParamsStruct *)a3 request:(id)a4
{
  v27 = a4;
  bzero(a3, 0xC18uLL);
  a3->var2 = [v27 ioSurfacesCount];
  v6 = [v27 procedureIndex];
  a3->var3 = [v6 unsignedIntValue];

  a3->var1 = [(_ANEProgramIOSurfacesMapper *)self programHandle];
  v26 = [v27 inputIndexArray];
  v7 = [v26 count];
  if (v7)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [v27 inputArray];
      v11 = [v10 objectAtIndexedSubscript:v8];
      v12 = &a3->var0[v8];
      v12->var0 = [v11 ioSurface];

      v13 = [v26 objectAtIndexedSubscript:v8];
      v12->var1 = [v13 unsignedIntValue];

      v12->var3 = 1;
      v8 = v9;
      v14 = v7 > v9++;
    }

    while (v14);
  }

  v15 = [v27 outputIndexArray];
  v16 = [v15 count];
  if (v16)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = [v27 outputArray];
      v20 = [v19 objectAtIndexedSubscript:v17];
      v21 = &a3->var0[v17 + v7];
      v21->var0 = [v20 ioSurface];

      v22 = [v15 objectAtIndexedSubscript:v17];
      v21->var1 = [v22 unsignedIntValue];

      v21->var3 = 2;
      v17 = v18;
      v14 = v16 > v18++;
    }

    while (v14);
  }

  v23 = [v27 weightsBuffer];

  if (v23)
  {
    v24 = [v27 weightsBuffer];
    v25 = &a3->var0[v16 + v7];
    v25->var0 = [v24 ioSurface];

    v25->var3 = 8;
  }
}

- (BOOL)mapIOSurfacesWithModel:(id)a3 request:(id)a4 cacheInference:(BOOL)a5 error:(id *)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = +[_ANEVirtualClient sharedConnection];

  if (v13)
  {
    v14 = +[_ANELog common];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v42 = v15;
      _os_log_impl(&dword_1AD246000, v14, OS_LOG_TYPE_INFO, "%@: No support for VirtualClient yet.", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v16 = +[_ANELog common];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      [_ANEProgramIOSurfacesMapper mapIOSurfacesWithModel:v17 request:buf cacheInference:v16 error:?];
    }

    if (a6)
    {
      v18 = NSStringFromSelector(a2);
      *a6 = [_ANEErrors hostTooOld:v18];

LABEL_5:
      LOBYTE(a6) = 0;
    }
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v40 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v19 = objc_autoreleasePoolPush();
    v20 = [(_ANEProgramIOSurfacesMapper *)self validateRequest:v12 model:v11];
    if (v20)
    {
      [(_ANEProgramIOSurfacesMapper *)self prepareANEMemoryMappingParams:buf request:v12];
      v21 = gANEMemoryMapperQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83___ANEProgramIOSurfacesMapper_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke;
      block[3] = &unk_1E79BA1E8;
      v30 = a5;
      v28 = buf;
      v29 = a2;
      block[4] = self;
      v26 = &v31;
      v25 = v12;
      v27 = &v35;
      dispatch_sync(v21, block);
    }

    objc_autoreleasePoolPop(v19);
    if (v20)
    {
      if (a6)
      {
        *a6 = v36[5];
      }

      LOBYTE(a6) = *(v32 + 24);
    }

    else
    {
      LOBYTE(a6) = 0;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }

  v22 = *MEMORY[0x1E69E9840];
  return a6 & 1;
}

- (BOOL)unmapIOSurfacesWithModel:(id)a3 request:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = +[_ANEVirtualClient sharedConnection];

  if (v11)
  {
    v12 = +[_ANELog common];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_1AD246000, v12, OS_LOG_TYPE_INFO, "%@: No support for VirtualClient yet.", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v14 = +[_ANELog common];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      [_ANEProgramIOSurfacesMapper mapIOSurfacesWithModel:v15 request:buf cacheInference:v14 error:?];
    }

    if (a5)
    {
      v16 = NSStringFromSelector(a2);
      *a5 = [_ANEErrors hostTooOld:v16];

LABEL_5:
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__1;
    v31 = __Block_byref_object_dispose__1;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = objc_autoreleasePoolPush();
    v18 = [(_ANEProgramIOSurfacesMapper *)self validateRequest:v10 model:v9];
    if (v18)
    {
      [(_ANEProgramIOSurfacesMapper *)self prepareANEMemoryMappingParams:buf request:v10];
      v19 = [v10 transactionHandle];
      v35 = [v19 unsignedIntegerValue];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70___ANEProgramIOSurfacesMapper_unmapIOSurfacesWithModel_request_error___block_invoke;
      block[3] = &unk_1E79BA210;
      block[7] = buf;
      block[8] = a2;
      block[4] = self;
      block[5] = &v23;
      block[6] = &v27;
      dispatch_sync(gANEMemoryMapperQueue, block);
    }

    objc_autoreleasePoolPop(v17);
    if (v18)
    {
      if (a5)
      {
        *a5 = v28[5];
      }

      LOBYTE(a5) = *(v24 + 24);
    }

    else
    {
      LOBYTE(a5) = 0;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }

  v20 = *MEMORY[0x1E69E9840];
  return a5 & 1;
}

- (void)validateRequest:(uint64_t)a3 model:(os_log_t)log .cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  *(buf + 11) = 1024;
  *(buf + 6) = 128;
  _os_log_error_impl(&dword_1AD246000, log, OS_LOG_TYPE_ERROR, "%@: [request ioSurfacesCount]=%lu is invalid. Expected: (1 - %d)", buf, 0x1Cu);
}

- (void)mapIOSurfacesWithModel:(os_log_t)log request:cacheInference:error:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AD246000, log, OS_LOG_TYPE_ERROR, "%@: Virtual Machine environment detected but no virtualClient available.", buf, 0xCu);
}

@end