@interface VCRateControlMachineLearningInference
- (VCRateControlMachineLearningInference)initWithModelPath:(id)a3;
- (void)compileModel;
- (void)createStreamOperation;
- (void)dealloc;
- (void)logSetupError;
- (void)setUpBufferPointer:(const char *)a3 portType:(unsigned __int8)a4 io_array:(void *)a5;
- (void)setUpCacheWithInputPortName:(char *)a3 outputPortName:(char *)a4;
- (void)setUpModel;
- (void)setupIOBuffersAndCreateStream;
@end

@implementation VCRateControlMachineLearningInference

- (VCRateControlMachineLearningInference)initWithModelPath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCRateControlMachineLearningInference;
  v4 = [(VCObject *)&v10 init];
  if (v4)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v6 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCRateControlMachineLearningInference.compilationQueue", 0, CustomRootQueue);
    v4->_compilationQueue = v6;
    if (v6)
    {
      v4->_modelPath = a3;
      compilationQueue = v4->_compilationQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__VCRateControlMachineLearningInference_initWithModelPath___block_invoke;
      v9[3] = &unk_1E85F3778;
      v9[4] = v4;
      dispatch_async(compilationQueue, v9);
    }

    else
    {
      [VCRateControlMachineLearningInference initWithModelPath:v4];
      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  compilationQueue = self->_compilationQueue;
  if (compilationQueue)
  {
    dispatch_sync(compilationQueue, &__block_literal_global_95);
    dispatch_release(self->_compilationQueue);
  }

  e5rt_execution_stream_release();
  v4.receiver = self;
  v4.super_class = VCRateControlMachineLearningInference;
  [(VCObject *)&v4 dealloc];
}

- (void)setUpModel
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_compilationQueue);
  self->_setupStatus = 0;
  [(VCRateControlMachineLearningInference *)self compileModel];
  if (self->_setupStatus || ([(VCRateControlMachineLearningInference *)self createStreamOperation], self->_setupStatus) || ([(VCRateControlMachineLearningInference *)self setupIOBuffersAndCreateStream], self->_setupStatus))
  {

    [(VCRateControlMachineLearningInference *)self logSetupError];
  }

  else
  {
    self->_setupStatus = 1;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v4;
          v13 = 2080;
          v14 = "[VCRateControlMachineLearningInference setUpModel]";
          v15 = 1024;
          v16 = 160;
          v6 = " [%s] %s:%d Initialized Machine Learning Rate Controller";
          v7 = v5;
          v8 = 28;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCRateControlMachineLearningInference *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316162;
          v12 = v9;
          v13 = 2080;
          v14 = "[VCRateControlMachineLearningInference setUpModel]";
          v15 = 1024;
          v16 = 160;
          v17 = 2112;
          v18 = v3;
          v19 = 2048;
          v20 = self;
          v6 = " [%s] %s:%d %@(%p) Initialized Machine Learning Rate Controller";
          v7 = v10;
          v8 = 48;
          goto LABEL_14;
        }
      }
    }
  }
}

- (void)logSetupError
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136316162;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCRateControlMachineLearningInference logSetupError]";
  v7 = 1024;
  OUTLINED_FUNCTION_4_24();
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRateControlMachineLearningInference.m:%d: E5RT error occurred. Last error message=%s", &v3, 0x2Cu);
}

- (void)compileModel
{
  dispatch_assert_queue_V2(self->_compilationQueue);
  if (e5rt_e5_compiler_create() || e5rt_e5_compiler_options_create() || e5rt_e5_compiler_options_set_compute_device_types_mask() || e5rt_e5_compiler_options_set_preferred_cpu_backends() || ([(NSString *)self->_modelPath UTF8String], e5rt_e5_compiler_compile()))
  {
    self->_setupStatus = 2;
  }

  e5rt_e5_compiler_options_release();
  e5rt_e5_compiler_release();
}

- (void)setUpBufferPointer:(const char *)a3 portType:(unsigned __int8)a4 io_array:(void *)a5
{
  if (a4)
  {
    if (e5rt_execution_stream_operation_retain_output_port())
    {
      goto LABEL_10;
    }
  }

  else if (e5rt_execution_stream_operation_retain_input_port())
  {
LABEL_10:
    self->_setupStatus = 2;
    goto LABEL_9;
  }

  if (e5rt_io_port_retain_tensor_desc() || e5rt_tensor_desc_alloc_buffer_object() || e5rt_io_port_bind_buffer_object() || e5rt_buffer_object_get_data_ptr())
  {
    goto LABEL_10;
  }

LABEL_9:
  e5rt_tensor_desc_release();
  e5rt_buffer_object_release();
  e5rt_io_port_release();
}

- (void)createStreamOperation
{
  if (e5rt_program_library_retain_program_function() || e5rt_precompiled_compute_op_create_options_create_with_program_function() || e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options())
  {
    self->_setupStatus = 2;
  }

  e5rt_program_library_release();
  e5rt_program_function_release();
  e5rt_precompiled_compute_op_create_options_release();
}

- (void)setUpCacheWithInputPortName:(char *)a3 outputPortName:(char *)a4
{
  v5[5] = *MEMORY[0x1E69E9840];
  memset(v5, 0, 40);
  [(VCRateControlMachineLearningInference *)self setUpBufferPointer:a3 portType:0 io_array:v5];
  if (e5rt_execution_stream_operation_retain_output_port() || e5rt_io_port_retain_tensor_desc() || e5rt_tensor_desc_get_size() || e5rt_buffer_object_create_from_data_pointer() || e5rt_io_port_bind_buffer_object())
  {
    self->_setupStatus = 2;
  }

  e5rt_tensor_desc_release();
  e5rt_buffer_object_release();
  e5rt_io_port_release();
}

- (void)setupIOBuffersAndCreateStream
{
  [(VCRateControlMachineLearningInference *)self setUpBufferPointer:"states" portType:0 io_array:&self->_states];
  if (self->_setupStatus || ([(VCRateControlMachineLearningInference *)self setUpBufferPointer:"index" portType:0 io_array:&self->_index], self->_setupStatus) || ([(VCRateControlMachineLearningInference *)self setUpBufferPointer:"logits" portType:1 io_array:&self->_logits], self->_setupStatus) || ([(VCRateControlMachineLearningInference *)self setUpBufferPointer:"value" portType:1 io_array:&self->_value], self->_setupStatus) || ([(VCRateControlMachineLearningInference *)self setUpCacheWithInputPortName:"cache_policy_in" outputPortName:"cache_policy_out"], self->_setupStatus) || ([(VCRateControlMachineLearningInference *)self setUpCacheWithInputPortName:"cache_value_in" outputPortName:"cache_value_out"], self->_setupStatus))
  {
    [(VCRateControlMachineLearningInference *)self logSetupError];
  }

  else if (e5rt_execution_stream_create() || e5rt_execution_stream_encode_operation())
  {
    self->_setupStatus = 2;
  }

  MEMORY[0x1EEE03370](&self->_executionStreamOperation);
}

- (void)initWithModelPath:(void *)a1 .cold.1(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0_27();
    v5 = " [%s] %s:%d Unable to initialize the asynchronous compilation dispatch queue.";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0_27();
      v12 = 2112;
      v13 = v2;
      v14 = 2048;
      v15 = a1;
      v5 = " [%s] %s:%d %@(%p) Unable to initialize the asynchronous compilation dispatch queue.";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
}

@end