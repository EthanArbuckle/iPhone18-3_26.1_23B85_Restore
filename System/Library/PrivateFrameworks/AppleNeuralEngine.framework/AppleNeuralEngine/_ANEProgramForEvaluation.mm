@interface _ANEProgramForEvaluation
- (BOOL)processInputBuffers:(id)buffers model:(id)model options:(id)options error:(id *)error;
- (BOOL)processOutputSet:(id)set model:(id)model options:(id)options error:(id *)error;
- (BOOL)processSessionHint:(id)hint options:(id)options report:(id)report error:(id *)error;
- (_ANEProgramForEvaluation)initWithController:(id)controller intermediateBufferHandle:(unint64_t)handle queueDepth:(char)depth;
- (id)description;
- (id)programInferenceOtherErrorForMessage:(ANENotificationMessageStruct *)message model:(id)model methodName:(id)name;
- (void)dealloc;
@end

@implementation _ANEProgramForEvaluation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { programHandle=%llu : intermediateBufferHandle=%llu : queueDepth=%d }", v5, -[_ANEProgramForEvaluation programHandle](self, "programHandle"), -[_ANEProgramForEvaluation intermediateBufferHandle](self, "intermediateBufferHandle"), -[_ANEProgramForEvaluation queueDepth](self, "queueDepth")];

  return v6;
}

- (void)dealloc
{
  [(_ANEDeviceController *)self->_controller stop];
  controller = self->_controller;
  self->_controller = 0;

  v4.receiver = self;
  v4.super_class = _ANEProgramForEvaluation;
  [(_ANEProgramForEvaluation *)&v4 dealloc];
}

- (_ANEProgramForEvaluation)initWithController:(id)controller intermediateBufferHandle:(unint64_t)handle queueDepth:(char)depth
{
  depthCopy = depth;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = _ANEProgramForEvaluation;
  v10 = [(_ANEProgramForEvaluation *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_controller, controller);
    v11->_programHandle = [controllerCopy programHandle];
    v11->_intermediateBufferHandle = handle;
    v11->_queueDepth = depthCopy;
    v12 = dispatch_semaphore_create(depthCopy);
    requestsInFlight = v11->_requestsInFlight;
    v11->_requestsInFlight = v12;

    v11->_currentAsyncRequestsInFlight = 0;
    [(_ANEDeviceController *)v11->_controller start];
  }

  return v11;
}

- (id)programInferenceOtherErrorForMessage:(ANENotificationMessageStruct *)message model:(id)model methodName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  nameCopy = name;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ANEProgramProcessRequestDirect() Failed with status=0x%x : statusType=0x%x", nameCopy, message->var1, message->var0];
  v10 = +[_ANELog common];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    var0 = message->var0;
    var1 = message->var1;
    *buf = 138413058;
    v20 = nameCopy;
    v21 = 1024;
    v22 = var1;
    v23 = 1024;
    v24 = var0;
    v25 = 2112;
    v26 = modelCopy;
    _os_log_error_impl(&dword_1AD246000, v10, OS_LOG_TYPE_ERROR, "%@: ANEProgramProcessRequestDirect() Failed with status=0x%x : statusType=0x%x lModel=%@", buf, 0x22u);
  }

  v11 = message->var1;
  if (v11 == 14)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program not found", v9];
    v13 = [_ANEErrors programInferenceProgramNotFoundForMethod:v12];
    goto LABEL_7;
  }

  if (v11 == 15)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program Inference timeout", v9];
    v13 = [_ANEErrors timeoutErrorForMethod:v12];
LABEL_7:
    v14 = v13;

    goto LABEL_9;
  }

  v14 = [_ANEErrors programInferenceOtherErrorForMethod:v9];
LABEL_9:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)processOutputSet:(id)set model:(id)model options:(id)options error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  setCopy = set;
  modelCopy = model;
  v12 = objc_autoreleasePoolPush();
  v13 = +[_ANELog common];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(a2);
    *buf = 138412802;
    v30 = v21;
    v31 = 2048;
    *v32 = setCopy;
    *&v32[8] = 2112;
    *&v32[10] = modelCopy;
    _os_log_debug_impl(&dword_1AD246000, v13, OS_LOG_TYPE_DEBUG, "-----> %@: processOutputSet() outputSet=%p lModel=%@ : ", buf, 0x20u);
  }

  procedureIndex = [setCopy procedureIndex];
  setIndex = [setCopy setIndex];
  signalValue = [setCopy signalValue];
  signalNotRequired = [setCopy signalNotRequired];
  BYTE1(signalNotRequired) = [setCopy isOpenLoop];
  controller = [(_ANEProgramForEvaluation *)self controller];
  device = [controller device];
  if (device && *device)
  {
    v16 = (*(*device + 40))(device, &v24);

    if (!v16)
    {
      v17 = 1;
      goto LABEL_11;
    }
  }

  else
  {

    v16 = 2;
  }

  v18 = +[_ANELog common];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = NSStringFromSelector(a2);
    programHandle = [(_ANEProgramForEvaluation *)self programHandle];
    *buf = 138413314;
    v30 = v22;
    v31 = 1024;
    *v32 = v16;
    *&v32[4] = 2112;
    *&v32[6] = modelCopy;
    *&v32[14] = 2048;
    *&v32[16] = programHandle;
    v33 = 2048;
    v34 = signalValue;
    _os_log_error_impl(&dword_1AD246000, v18, OS_LOG_TYPE_ERROR, "%@: Could not process output set enqueue request ret=0x%x lModel=%@ programHandle=%llu signalValue=%llu", buf, 0x30u);
  }

  v17 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v12);
  if (error)
  {
    *error = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)processInputBuffers:(id)buffers model:(id)model options:(id)options error:(id *)error
{
  v56[258] = *MEMORY[0x1E69E9840];
  buffersCopy = buffers;
  modelCopy = model;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  v9 = +[_ANELog common];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v34 = NSStringFromSelector(a2);
    *v52 = 138412802;
    *&v52[4] = v34;
    *v53 = 2048;
    *&v53[2] = buffersCopy;
    v54 = 2112;
    v55 = modelCopy;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "-----> %@: processInputBuffers() inputBuffers=%p lModel=%@ : ", v52, 0x20u);
  }

  bzero(&v53[4], 0xC08uLL);
  *v52 = [(_ANEProgramForEvaluation *)self programHandle];
  *&v52[8] = [buffersCopy procedureIndex];
  v56[255] = [buffersCopy executionDelay];
  inputBufferInfoIndex = [buffersCopy inputBufferInfoIndex];
  v11 = [inputBufferInfoIndex count] > 0xFF;

  if (v11)
  {
    v12 = +[_ANELog common];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      inputBufferInfoIndex2 = [buffersCopy inputBufferInfoIndex];
      *buf = 138412802;
      v47 = v37;
      v48 = 2048;
      *v49 = [inputBufferInfoIndex2 count];
      *&v49[8] = 1024;
      *&v49[10] = 255;
      _os_log_error_impl(&dword_1AD246000, v12, OS_LOG_TYPE_ERROR, "%@: inputBuffers inputBufferInfoIndex=%lu exceeds max=%d", buf, 0x1Cu);
    }
  }

  inputBufferInfoIndex3 = [buffersCopy inputBufferInfoIndex];
  *v53 = [inputBufferInfoIndex3 count];

  for (i = 0; ; ++i)
  {
    inputBufferInfoIndex4 = [buffersCopy inputBufferInfoIndex];
    v16 = [inputBufferInfoIndex4 count] > i;

    if (!v16)
    {
      break;
    }

    inputBufferInfoIndex5 = [buffersCopy inputBufferInfoIndex];
    v18 = [inputBufferInfoIndex5 objectAtIndexedSubscript:i];
    unsignedIntegerValue = [v18 unsignedIntegerValue];
    *&v53[4 * i + 4] = unsignedIntegerValue;

    v20 = +[_ANELog common];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v47 = v21;
      v48 = 1024;
      *v49 = unsignedIntegerValue;
      _os_log_debug_impl(&dword_1AD246000, v20, OS_LOG_TYPE_DEBUG, "-----> %@: processInputBuffers() inputBufferInfoIndex value is %d ", buf, 0x12u);
    }
  }

  for (j = 0; ; ++j)
  {
    inputFreeValue = [buffersCopy inputFreeValue];
    v24 = [inputFreeValue count] > j;

    if (!v24)
    {
      break;
    }

    inputFreeValue2 = [buffersCopy inputFreeValue];
    v26 = [inputFreeValue2 objectAtIndexedSubscript:j];
    v56[j] = [v26 unsignedIntegerValue];
  }

  controller = [(_ANEProgramForEvaluation *)self controller];
  device = [controller device];
  if (device && *device)
  {
    v29 = (*(*device + 48))(device, v52);

    if (!v29)
    {
      v30 = 1;
      goto LABEL_23;
    }
  }

  else
  {

    v29 = 2;
  }

  v31 = +[_ANELog common];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v35 = NSStringFromSelector(a2);
    programHandle = [(_ANEProgramForEvaluation *)self programHandle];
    *buf = 138413058;
    v47 = v35;
    v48 = 1024;
    *v49 = v29;
    *&v49[4] = 2112;
    *&v49[6] = modelCopy;
    v50 = 2048;
    v51 = programHandle;
    _os_log_error_impl(&dword_1AD246000, v31, OS_LOG_TYPE_ERROR, "%@: Could not process input ready request ret=0x%x lModel=%@ programHandle=%llu", buf, 0x26u);
  }

  v30 = 0;
LABEL_23:
  objc_autoreleasePoolPop(context);
  if (v40)
  {
    *v40 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

- (BOOL)processSessionHint:(id)hint options:(id)options report:(id)report error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  hintCopy = hint;
  optionsCopy = options;
  reportCopy = report;
  v39 = mach_continuous_time();
  v13 = +[_ANELog common];
  v14 = os_signpost_id_generate(v13);

  v15 = +[_ANELog common];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v37 = NSStringFromSelector(a2);
    *v49 = 138412802;
    *&v49[4] = v37;
    *&v49[12] = 2112;
    *&v49[14] = hintCopy;
    *&v49[22] = 2048;
    programHandle = [(_ANEProgramForEvaluation *)self programHandle];
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@: %@ - 0x%llx", v49, 0x20u);
  }

  v42 = 0;
  memset(v49, 0, sizeof(v49));
  programHandle2 = [(_ANEProgramForEvaluation *)self programHandle];
  if ([hintCopy isEqualToString:kANEFHintSessionStart])
  {
    v16 = 2;
LABEL_11:
    LODWORD(v42) = v16;
    if (optionsCopy)
    {
      v17 = [optionsCopy objectForKeyedSubscript:kANEFHintEnergyEfficientWorkloadKey];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [optionsCopy objectForKeyedSubscript:kANEFHintEnergyEfficientWorkloadKey];
        BYTE4(v42) = [v19 BOOLValue];
      }
    }

    kdebug_trace();
    v20 = +[_ANELog common];
    v21 = v20;
    v22 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 67109376;
      *v46 = v42;
      *&v46[4] = 2048;
      *&v46[6] = programHandle2;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, v14, "_ANEF_SEND_SESSION_HINT", " hintParams.hintType:%u hintParams.programHandle:%llu", buf, 0x12u);
    }

    controller = [(_ANEProgramForEvaluation *)self controller];
    device = [controller device];
    if (device && *device)
    {
      v25 = (*(*device + 80))(device, &programHandle2, v49);

      if (!v25)
      {
        v26 = +[_ANELog common];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEProgramForEvaluation processSessionHint:options:report:error:];
        }

        if (reportCopy)
        {
          if (v42 == 5)
          {
            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&v49[16]];
            [reportCopy setObject:v28 forKeyedSubscript:kANEFHintReportSessionStatusKey];
            goto LABEL_45;
          }

          if (v42 == 2)
          {
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v49];
            [reportCopy setObject:v27 forKeyedSubscript:kANEFHintReportTotalPagesKey];

            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v49[8]];
            [reportCopy setObject:v28 forKeyedSubscript:kANEFHintReportResidentPagesKey];
LABEL_45:
            v30 = 1;
LABEL_32:

            goto LABEL_33;
          }
        }

        v30 = 1;
LABEL_33:
        kdebug_trace();
        v31 = +[_ANELog common];
        v32 = v31;
        if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *v43 = 67109376;
          LODWORD(v44[0]) = v42;
          WORD2(v44[0]) = 2048;
          *(v44 + 6) = programHandle2;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v32, OS_SIGNPOST_EVENT, v14, "_ANEF_SEND_SESSION_HINT", " hintParams.hintType:%u hintParams.programHandle:%llu", v43, 0x12u);
        }

        v33 = +[_ANELog common];
        v34 = v33;
        if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *v43 = 134349056;
          v44[0] = v39;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v34, OS_SIGNPOST_EVENT, v14, "_ANEF_SEND_SESSION_HINT", "%{public, signpost.description:begin_time}llu ", v43, 0xCu);
        }

        goto LABEL_43;
      }
    }

    else
    {

      v25 = 2;
    }

    v29 = +[_ANELog common];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      *buf = 138412802;
      *v46 = v38;
      *&v46[8] = 1024;
      *&v46[10] = v42;
      v47 = 1024;
      v48 = v25;
      _os_log_error_impl(&dword_1AD246000, v29, OS_LOG_TYPE_ERROR, "%@: Failed to set session hint %u ret=0x%x", buf, 0x18u);
    }

    v30 = 0;
    if (!error || v25 != 4)
    {
      goto LABEL_33;
    }

    v28 = NSStringFromSelector(a2);
    [_ANEErrors invalidModelErrorForMethod:v28];
    *error = v30 = 0;
    goto LABEL_32;
  }

  if ([hintCopy isEqualToString:kANEFHintSessionStop])
  {
    v16 = 3;
    goto LABEL_11;
  }

  if ([hintCopy isEqualToString:kANEFHintSessionAbort])
  {
    v16 = 4;
    goto LABEL_11;
  }

  if ([hintCopy isEqualToString:kANEFHintSessionInfo])
  {
    v16 = 5;
    goto LABEL_11;
  }

  v34 = +[_ANELog common];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEProgramForEvaluation processSessionHint:options:report:error:];
  }

  v30 = 0;
LABEL_43:

  v35 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)processRequest:model:qos:qIndex:modelStringID:options:returnValue:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_2_1(&dword_1AD246000, "-----> %@: ANEProgramProcessRequestDirect() disableIOFences option not nil value is %d ", v4, v5);
}

- (void)processRequest:model:qos:qIndex:modelStringID:options:returnValue:error:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_2_1(&dword_1AD246000, "-----> %@: ANEProgramProcessRequestDirect() enableFWToFWSignal option not nil value is %d ", v4, v5);
}

- (void)processSessionHint:options:report:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  _os_log_error_impl(&dword_1AD246000, v5, OS_LOG_TYPE_ERROR, "%@: Unknown hint %@", v4, 0x16u);
}

- (void)processSessionHint:options:report:error:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_2_1(&dword_1AD246000, "%@: Set session hint %u success", v5, v6);
}

@end