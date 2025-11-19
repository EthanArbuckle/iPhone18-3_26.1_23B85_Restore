@interface _ANEProgramForEvaluation
- (BOOL)processInputBuffers:(id)a3 model:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)processOutputSet:(id)a3 model:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)processSessionHint:(id)a3 options:(id)a4 report:(id)a5 error:(id *)a6;
- (_ANEProgramForEvaluation)initWithController:(id)a3 intermediateBufferHandle:(unint64_t)a4 queueDepth:(char)a5;
- (id)description;
- (id)programInferenceOtherErrorForMessage:(ANENotificationMessageStruct *)a3 model:(id)a4 methodName:(id)a5;
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

- (_ANEProgramForEvaluation)initWithController:(id)a3 intermediateBufferHandle:(unint64_t)a4 queueDepth:(char)a5
{
  v5 = a5;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = _ANEProgramForEvaluation;
  v10 = [(_ANEProgramForEvaluation *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_controller, a3);
    v11->_programHandle = [v9 programHandle];
    v11->_intermediateBufferHandle = a4;
    v11->_queueDepth = v5;
    v12 = dispatch_semaphore_create(v5);
    requestsInFlight = v11->_requestsInFlight;
    v11->_requestsInFlight = v12;

    v11->_currentAsyncRequestsInFlight = 0;
    [(_ANEDeviceController *)v11->_controller start];
  }

  return v11;
}

- (id)programInferenceOtherErrorForMessage:(ANENotificationMessageStruct *)a3 model:(id)a4 methodName:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ANEProgramProcessRequestDirect() Failed with status=0x%x : statusType=0x%x", v8, a3->var1, a3->var0];
  v10 = +[_ANELog common];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    var0 = a3->var0;
    var1 = a3->var1;
    *buf = 138413058;
    v20 = v8;
    v21 = 1024;
    v22 = var1;
    v23 = 1024;
    v24 = var0;
    v25 = 2112;
    v26 = v7;
    _os_log_error_impl(&dword_1AD246000, v10, OS_LOG_TYPE_ERROR, "%@: ANEProgramProcessRequestDirect() Failed with status=0x%x : statusType=0x%x lModel=%@", buf, 0x22u);
  }

  v11 = a3->var1;
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

- (BOOL)processOutputSet:(id)a3 model:(id)a4 options:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  v13 = +[_ANELog common];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(a2);
    *buf = 138412802;
    v30 = v21;
    v31 = 2048;
    *v32 = v10;
    *&v32[8] = 2112;
    *&v32[10] = v11;
    _os_log_debug_impl(&dword_1AD246000, v13, OS_LOG_TYPE_DEBUG, "-----> %@: processOutputSet() outputSet=%p lModel=%@ : ", buf, 0x20u);
  }

  v25 = [v10 procedureIndex];
  v26 = [v10 setIndex];
  v27 = [v10 signalValue];
  v28 = [v10 signalNotRequired];
  BYTE1(v28) = [v10 isOpenLoop];
  v14 = [(_ANEProgramForEvaluation *)self controller];
  v15 = [v14 device];
  if (v15 && *v15)
  {
    v16 = (*(*v15 + 40))(v15, &v24);

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
    v23 = [(_ANEProgramForEvaluation *)self programHandle];
    *buf = 138413314;
    v30 = v22;
    v31 = 1024;
    *v32 = v16;
    *&v32[4] = 2112;
    *&v32[6] = v11;
    *&v32[14] = 2048;
    *&v32[16] = v23;
    v33 = 2048;
    v34 = v27;
    _os_log_error_impl(&dword_1AD246000, v18, OS_LOG_TYPE_ERROR, "%@: Could not process output set enqueue request ret=0x%x lModel=%@ programHandle=%llu signalValue=%llu", buf, 0x30u);
  }

  v17 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v12);
  if (a6)
  {
    *a6 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)processInputBuffers:(id)a3 model:(id)a4 options:(id)a5 error:(id *)a6
{
  v56[258] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v43 = a4;
  v42 = a5;
  context = objc_autoreleasePoolPush();
  v9 = +[_ANELog common];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v34 = NSStringFromSelector(a2);
    *v52 = 138412802;
    *&v52[4] = v34;
    *v53 = 2048;
    *&v53[2] = v8;
    v54 = 2112;
    v55 = v43;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "-----> %@: processInputBuffers() inputBuffers=%p lModel=%@ : ", v52, 0x20u);
  }

  bzero(&v53[4], 0xC08uLL);
  *v52 = [(_ANEProgramForEvaluation *)self programHandle];
  *&v52[8] = [v8 procedureIndex];
  v56[255] = [v8 executionDelay];
  v10 = [v8 inputBufferInfoIndex];
  v11 = [v10 count] > 0xFF;

  if (v11)
  {
    v12 = +[_ANELog common];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = [v8 inputBufferInfoIndex];
      *buf = 138412802;
      v47 = v37;
      v48 = 2048;
      *v49 = [v38 count];
      *&v49[8] = 1024;
      *&v49[10] = 255;
      _os_log_error_impl(&dword_1AD246000, v12, OS_LOG_TYPE_ERROR, "%@: inputBuffers inputBufferInfoIndex=%lu exceeds max=%d", buf, 0x1Cu);
    }
  }

  v13 = [v8 inputBufferInfoIndex];
  *v53 = [v13 count];

  for (i = 0; ; ++i)
  {
    v15 = [v8 inputBufferInfoIndex];
    v16 = [v15 count] > i;

    if (!v16)
    {
      break;
    }

    v17 = [v8 inputBufferInfoIndex];
    v18 = [v17 objectAtIndexedSubscript:i];
    v19 = [v18 unsignedIntegerValue];
    *&v53[4 * i + 4] = v19;

    v20 = +[_ANELog common];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v47 = v21;
      v48 = 1024;
      *v49 = v19;
      _os_log_debug_impl(&dword_1AD246000, v20, OS_LOG_TYPE_DEBUG, "-----> %@: processInputBuffers() inputBufferInfoIndex value is %d ", buf, 0x12u);
    }
  }

  for (j = 0; ; ++j)
  {
    v23 = [v8 inputFreeValue];
    v24 = [v23 count] > j;

    if (!v24)
    {
      break;
    }

    v25 = [v8 inputFreeValue];
    v26 = [v25 objectAtIndexedSubscript:j];
    v56[j] = [v26 unsignedIntegerValue];
  }

  v27 = [(_ANEProgramForEvaluation *)self controller];
  v28 = [v27 device];
  if (v28 && *v28)
  {
    v29 = (*(*v28 + 48))(v28, v52);

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
    v36 = [(_ANEProgramForEvaluation *)self programHandle];
    *buf = 138413058;
    v47 = v35;
    v48 = 1024;
    *v49 = v29;
    *&v49[4] = 2112;
    *&v49[6] = v43;
    v50 = 2048;
    v51 = v36;
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

- (BOOL)processSessionHint:(id)a3 options:(id)a4 report:(id)a5 error:(id *)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v40 = a5;
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
    *&v49[14] = v11;
    *&v49[22] = 2048;
    v50 = [(_ANEProgramForEvaluation *)self programHandle];
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@: %@ - 0x%llx", v49, 0x20u);
  }

  v42 = 0;
  memset(v49, 0, sizeof(v49));
  v41 = [(_ANEProgramForEvaluation *)self programHandle];
  if ([v11 isEqualToString:kANEFHintSessionStart])
  {
    v16 = 2;
LABEL_11:
    LODWORD(v42) = v16;
    if (v12)
    {
      v17 = [v12 objectForKeyedSubscript:kANEFHintEnergyEfficientWorkloadKey];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [v12 objectForKeyedSubscript:kANEFHintEnergyEfficientWorkloadKey];
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
      *&v46[6] = v41;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, v14, "_ANEF_SEND_SESSION_HINT", " hintParams.hintType:%u hintParams.programHandle:%llu", buf, 0x12u);
    }

    v23 = [(_ANEProgramForEvaluation *)self controller];
    v24 = [v23 device];
    if (v24 && *v24)
    {
      v25 = (*(*v24 + 80))(v24, &v41, v49);

      if (!v25)
      {
        v26 = +[_ANELog common];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEProgramForEvaluation processSessionHint:options:report:error:];
        }

        if (v40)
        {
          if (v42 == 5)
          {
            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&v49[16]];
            [v40 setObject:v28 forKeyedSubscript:kANEFHintReportSessionStatusKey];
            goto LABEL_45;
          }

          if (v42 == 2)
          {
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v49];
            [v40 setObject:v27 forKeyedSubscript:kANEFHintReportTotalPagesKey];

            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v49[8]];
            [v40 setObject:v28 forKeyedSubscript:kANEFHintReportResidentPagesKey];
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
          *(v44 + 6) = v41;
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
    if (!a6 || v25 != 4)
    {
      goto LABEL_33;
    }

    v28 = NSStringFromSelector(a2);
    [_ANEErrors invalidModelErrorForMethod:v28];
    *a6 = v30 = 0;
    goto LABEL_32;
  }

  if ([v11 isEqualToString:kANEFHintSessionStop])
  {
    v16 = 3;
    goto LABEL_11;
  }

  if ([v11 isEqualToString:kANEFHintSessionAbort])
  {
    v16 = 4;
    goto LABEL_11;
  }

  if ([v11 isEqualToString:kANEFHintSessionInfo])
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