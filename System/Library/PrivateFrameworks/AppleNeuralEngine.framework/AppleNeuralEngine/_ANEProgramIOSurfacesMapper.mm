@interface _ANEProgramIOSurfacesMapper
+ (_ANEProgramIOSurfacesMapper)mapperWithController:(id)controller;
+ (_ANEProgramIOSurfacesMapper)mapperWithProgramHandle:(unint64_t)handle;
+ (void)initialize;
- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error;
- (BOOL)unmapIOSurfacesWithModel:(id)model request:(id)request error:(id *)error;
- (BOOL)validateRequest:(id)request model:(id)model;
- (_ANEProgramIOSurfacesMapper)initWithController:(id)controller;
- (void)dealloc;
- (void)prepareANEMemoryMappingParams:(ANEMemoryMappingParamsStruct *)params request:(id)request;
@end

@implementation _ANEProgramIOSurfacesMapper

- (void)dealloc
{
  controller = [(_ANEProgramIOSurfacesMapper *)self controller];
  [controller stop];

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

- (_ANEProgramIOSurfacesMapper)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _ANEProgramIOSurfacesMapper;
  v6 = [(_ANEProgramIOSurfacesMapper *)&v8 init];
  if (v6)
  {
    v6->_programHandle = [controllerCopy programHandle];
    objc_storeStrong(&v6->_controller, controller);
    [(_ANEDeviceController *)v6->_controller start];
  }

  return v6;
}

+ (_ANEProgramIOSurfacesMapper)mapperWithProgramHandle:(unint64_t)handle
{
  v4 = [_ANEDeviceController controllerWithProgramHandle:handle];
  v5 = [[self alloc] initWithController:v4];

  return v5;
}

+ (_ANEProgramIOSurfacesMapper)mapperWithController:(id)controller
{
  controllerCopy = controller;
  v5 = [[self alloc] initWithController:controllerCopy];

  return v5;
}

- (BOOL)validateRequest:(id)request model:(id)model
{
  v41 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  modelCopy = model;
  if ([requestCopy validate])
  {
    procedureIndex = [requestCopy procedureIndex];
    aSelector = a2;
    unsignedIntegerValue = [procedureIndex unsignedIntegerValue];

    ioSurfacesCount = [requestCopy ioSurfacesCount];
    if ((ioSurfacesCount - 129) <= 0xFFFFFFFFFFFFFF7FLL)
    {
      v11 = +[_ANELog common];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(aSelector);
        [(_ANEProgramIOSurfacesMapper *)v12 validateRequest:v40 model:ioSurfacesCount, v11];
      }
    }

    v13 = [modelCopy inputSymbolIndicesForProcedureIndex:unsignedIntegerValue];
    inputIndexArray = [requestCopy inputIndexArray];
    v15 = [inputIndexArray count];
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = [inputIndexArray objectAtIndexedSubscript:v16];
        unsignedIntegerValue2 = [v18 unsignedIntegerValue];

        if (([v13 containsIndex:unsignedIntegerValue2] & 1) == 0)
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
        v39 = unsignedIntegerValue2;
        _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: request.inputIndexArray[%u]=%u is invalid", buf, 0x18u);
      }

      v27 = 0;
    }

    else
    {
LABEL_10:
      v20 = [modelCopy outputSymbolIndicesForProcedureIndex:unsignedIntegerValue];
      outputIndexArray = [requestCopy outputIndexArray];
      v22 = [outputIndexArray count];
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v25 = [outputIndexArray objectAtIndexedSubscript:v23];
          unsignedIntegerValue3 = [v25 unsignedIntegerValue];

          if (([v20 containsIndex:unsignedIntegerValue3]& 1) == 0)
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
          v39 = unsignedIntegerValue3;
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

- (void)prepareANEMemoryMappingParams:(ANEMemoryMappingParamsStruct *)params request:(id)request
{
  requestCopy = request;
  bzero(params, 0xC18uLL);
  params->var2 = [requestCopy ioSurfacesCount];
  procedureIndex = [requestCopy procedureIndex];
  params->var3 = [procedureIndex unsignedIntValue];

  params->var1 = [(_ANEProgramIOSurfacesMapper *)self programHandle];
  inputIndexArray = [requestCopy inputIndexArray];
  v7 = [inputIndexArray count];
  if (v7)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      inputArray = [requestCopy inputArray];
      v11 = [inputArray objectAtIndexedSubscript:v8];
      v12 = &params->var0[v8];
      v12->var0 = [v11 ioSurface];

      v13 = [inputIndexArray objectAtIndexedSubscript:v8];
      v12->var1 = [v13 unsignedIntValue];

      v12->var3 = 1;
      v8 = v9;
      v14 = v7 > v9++;
    }

    while (v14);
  }

  outputIndexArray = [requestCopy outputIndexArray];
  v16 = [outputIndexArray count];
  if (v16)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      outputArray = [requestCopy outputArray];
      v20 = [outputArray objectAtIndexedSubscript:v17];
      v21 = &params->var0[v17 + v7];
      v21->var0 = [v20 ioSurface];

      v22 = [outputIndexArray objectAtIndexedSubscript:v17];
      v21->var1 = [v22 unsignedIntValue];

      v21->var3 = 2;
      v17 = v18;
      v14 = v16 > v18++;
    }

    while (v14);
  }

  weightsBuffer = [requestCopy weightsBuffer];

  if (weightsBuffer)
  {
    weightsBuffer2 = [requestCopy weightsBuffer];
    v25 = &params->var0[v16 + v7];
    v25->var0 = [weightsBuffer2 ioSurface];

    v25->var3 = 8;
  }
}

- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  requestCopy = request;
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

    if (error)
    {
      v18 = NSStringFromSelector(a2);
      *error = [_ANEErrors hostTooOld:v18];

LABEL_5:
      LOBYTE(error) = 0;
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
    v20 = [(_ANEProgramIOSurfacesMapper *)self validateRequest:requestCopy model:modelCopy];
    if (v20)
    {
      [(_ANEProgramIOSurfacesMapper *)self prepareANEMemoryMappingParams:buf request:requestCopy];
      v21 = gANEMemoryMapperQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83___ANEProgramIOSurfacesMapper_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke;
      block[3] = &unk_1E79BA1E8;
      inferenceCopy = inference;
      v28 = buf;
      v29 = a2;
      block[4] = self;
      v26 = &v31;
      v25 = requestCopy;
      v27 = &v35;
      dispatch_sync(v21, block);
    }

    objc_autoreleasePoolPop(v19);
    if (v20)
    {
      if (error)
      {
        *error = v36[5];
      }

      LOBYTE(error) = *(v32 + 24);
    }

    else
    {
      LOBYTE(error) = 0;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }

  v22 = *MEMORY[0x1E69E9840];
  return error & 1;
}

- (BOOL)unmapIOSurfacesWithModel:(id)model request:(id)request error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  requestCopy = request;
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

    if (error)
    {
      v16 = NSStringFromSelector(a2);
      *error = [_ANEErrors hostTooOld:v16];

LABEL_5:
      LOBYTE(error) = 0;
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
    v18 = [(_ANEProgramIOSurfacesMapper *)self validateRequest:requestCopy model:modelCopy];
    if (v18)
    {
      [(_ANEProgramIOSurfacesMapper *)self prepareANEMemoryMappingParams:buf request:requestCopy];
      transactionHandle = [requestCopy transactionHandle];
      unsignedIntegerValue = [transactionHandle unsignedIntegerValue];

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
      if (error)
      {
        *error = v28[5];
      }

      LOBYTE(error) = *(v24 + 24);
    }

    else
    {
      LOBYTE(error) = 0;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }

  v20 = *MEMORY[0x1E69E9840];
  return error & 1;
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